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

// module.exports = {
//   query: (text, params, callback) => {
//     return pool.query(text, params, callback);
//   }
// };

// Log every query executed, how long it took, and the number of rows it returned
module.exports = {
  query: (text, params, callback) => {
    const start = Date.now();
    const res = pool.query(text, params, callback);
    const duration = Date.now() - start;
    console.log('Executed query! 🙂', { text, duration, rows: res.rowCount });
    return res;
  }
};