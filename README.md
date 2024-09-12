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

## 4. Create the Database
- Run creatingTables.sql file to set up your MySQL database and tables.

## 5. Run the Application
- To use the smart search algorithm, run the following command:

node algorithm.js "your search term"

## 6. Examples

- node algorithm.js "McDonald's"
<br>
![image](https://github.com/user-attachments/assets/a3e3c632-77dc-44a2-870f-ec58c8d8cc14)


- node algorithm.js "sushi in London"
<br>
![image](https://github.com/user-attachments/assets/fa987507-4272-446b-ae6f-d52976370f8d)

- 
<br>


- node algorithm.js "sushi in London or manchester"
<br>
![image](https://github.com/user-attachments/assets/f2d27438-5e78-4153-a131-39894cae9d4a)



