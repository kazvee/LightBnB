const { Pool } = require('pg');
const dotenv = require('dotenv');

dotenv.config();

const pool = new Pool({
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  host: process.env.DB_HOST,
  database: process.env.DB_NAME
});

pool.connect().then(() => {
  console.log('Connected to the database! 😃');
});

module.exports = {
  query: (text, params, callback) => {
    return pool.query(text, params, callback);
  }
};