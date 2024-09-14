require('dotenv').config();
const mysql = require('mysql2/promise');

const connection = mysql.createPool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  connectionLimit: 10
});

async function extractEntities(searchTerm) {
  const queries = {
    cities: "SELECT id, name FROM cities WHERE name LIKE ?",
    brands: "SELECT id, name FROM brands WHERE name LIKE ?",
    dishes: "SELECT id, name FROM dish_types WHERE name LIKE ?",
    diets: "SELECT id, name FROM diets WHERE name LIKE ?"
  };

  const excludedWords = new Set(['in', 'or', 'the']);
  const tokens = searchTerm.split(/\s+/).filter(token => !excludedWords.has(token.toLowerCase()));

  async function queryEntities(query, token) {
    const [rows] = await connection.query(query, [`%${token}%`]);
    return rows.map(row => ({
      id: row.id,
      name: row.name.trim()
    }));
  }

  const tokenResults = tokens.map(async (token) => {
    return {
      token,
      cities: await queryEntities(queries.cities, token),
      brands: await queryEntities(queries.brands, token),
      dishes: await queryEntities(queries.dishes, token),
      diets: await queryEntities(queries.diets, token)
    };
  });

  const results = await Promise.all(tokenResults);

  function generateCombinations(results, index, currentCombination) {
    if (index === results.length) {
      return [currentCombination];
    }

    const combinations = [];
    const currentResults = results[index];
    const types = ['cities', 'brands', 'dishes', 'diets'];
    
    for (const type of types) {
      for (const entity of currentResults[type]) {
        const newCombination = { ...currentCombination, [type.slice(0, -1)]: entity };
        combinations.push(...generateCombinations(results, index + 1, newCombination));
      }
    }

    if (combinations.length === 0) {
      combinations.push(...generateCombinations(results, index + 1, currentCombination));
    }

    return combinations;
  }

  const allCombinations = generateCombinations(results, 0, {});

  return allCombinations.filter(combination => {
    const entityTypes = new Set();
    for (const [type, entity] of Object.entries(combination)) {
      if (entity && entityTypes.has(type)) {
        return false;
      }
      entityTypes.add(type);
    }
    return true;
  });
}

const searchTerm = process.argv[2] || '';

if (!searchTerm) {
  console.log('No search term provided. Please try again!');
  process.exit(1);
}

extractEntities(searchTerm)
  .then(results => {
    console.log('Results:', JSON.stringify(results, null, 2));
  })
  .catch(err => {
    console.error('Error:', err.message);
    process.exit(1);
  });