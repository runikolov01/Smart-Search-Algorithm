# Smart Search Algorithm
This project is a Smart Search Algorithm that extracts specific entities such as cities, brands, dish types and diets from a search term and returns possible combinations of those entities based on the search term.

## Features
- Extracts entities from a search string.
- Filters out unnecessary words like "in", "or", and "the".
- Searches for matches in the database for the entities: cities, brands, dish types, and diets.
- Returns all possible combinations of entities without repeating any entity type in the same combination.

## Prerequisites
### Make sure you have the following installed:
- Node.js
- MySQL Database
- Visual Studio

# Getting Started

## 1. Clone the Repository
- Clone the repository to your local machine:

git clone https://github.com/runikolov01/Smart-Search-Algorithm
cd smart-search-algorithm

## 2. Install Dependencies
- Install the necessary dependencies by running:

npm install

## 3. Set Up Environment Variables
- Create a .env file in the config/ directory with the following content:

DB_HOST=your-database-host
<br>
DB_USER=your-database-user
<br>
DB_PASSWORD=your-database-password
<br>
DB_NAME=your-database-name

## 4. Create and seed the Database
- Open "exported_db" folder and run the files: "search_algorithm_brands.sql", "search_algorithm_cities.sql", "search_algorithm_diets.sql", "search_algorithm_dish_types.sql".
  
## 5. Run the Application
- To use the smart search algorithm, run the following command in the terminal of Visual Studio Code:

node algorithm.js "your search term"

## 6. Examples

- node algorithm.js "McDonald's"
![image](https://github.com/user-attachments/assets/a3e3c632-77dc-44a2-870f-ec58c8d8cc14)
<br>


- node algorithm.js "McDonald's in London"
![image](https://github.com/user-attachments/assets/f2fcf3b5-7aac-467e-a8bb-3dc17739a387)
<br>

- node algorithm.js "vegan sushi in London"
![image](https://github.com/user-attachments/assets/6fee418d-c7b7-4740-8180-165548a37dd0)
<br>

- node algorithm.js "veg london"
![image](https://github.com/user-attachments/assets/6782fc8a-2f4c-43d8-84ce-8fabe367fdc2)
<br>

- node algorithm.js "McDonald's in London or Manchester"
![image](https://github.com/user-attachments/assets/7cbd8131-17fe-4835-a141-e8bc72e9829a)
<br>

- node algorithm.js "sushi in London"
![image](https://github.com/user-attachments/assets/fa987507-4272-446b-ae6f-d52976370f8d)
<br>
