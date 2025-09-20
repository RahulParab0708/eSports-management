const mysql = require("mysql");
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');

const db = mysql.createConnection({
  host: process.env.DATABASE_HOST,
  user: process.env.DATABASE_USER,
  password: process.env.DATABASE_PASSWORD,
  database: process.env.DATABASE
});

exports.register = (req, res) => {
  console.log(req.body);

  const { Name, Email, Password, PasswordConfirm } = req.body;

  db.query('SELECT email FROM users WHERE Email = ?', [Email], async (error, results) => {
    if (error) {
      console.log(error);
      return res.status(500).send("Database error");
    }

    if (results && results.length > 0) {
      return res.render('register', {
        message: 'That Email has already been taken* '
      });
    } else if (Password !== PasswordConfirm) {
      return res.render('register', {
        message: 'Passwords do not match* '
      });
    }

    let hashedPassword = await bcrypt.hash(Password, 8);
    console.log("Hashed password:", hashedPassword);

    db.query(
      'INSERT INTO users SET ?',
      { Name: Name, Email: Email, Password: hashedPassword },
      (error, results) => {
        if (error) {
          console.log(error);
          return res.status(500).send("Insert error");
        } else {
          console.log(results);
          return res.render('register', {
            message: 'User registered'
          });
        }
      }
    );
  });
};
