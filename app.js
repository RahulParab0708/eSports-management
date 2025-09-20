const express = require("express");
const path = require("path")
const mysql = require("mysql");
const dotenv = require("dotenv");

dotenv.config({ path: './.env'});

const app = express();

 db = mysql.createConnection({
    host: process.env.DB_HOST, 
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
         port : process.env.DB_PORT,

});

const publicDirectory = path.join(__dirname,'./public');
app.use(express.static(publicDirectory));


app.use(express.urlencoded({extended: false}));

app.use(express.json());

app.set('view engine','hbs');

db.connect((error) => {
  if(error){
    console.log(error)
  }else{
    console.log("MYSQL Connected....")
  }
})

//Define Routes
app.use('/', require('./routes/pages'));
app.use('/auth', require('./routes/auth'));

const port = process.env.PORT || 3000;
app.listen(port, "0.0.0.0", () => {
  console.log(`Server running on port ${port}`);
});
