const dotenv = require("dotenv");
dotenv.config();
const express = require("express");
const path = require("path");
const db = require("./controllers/db"); // import the db instance

const app = express();

const publicDirectory = path.join(__dirname, "./public");
app.use(express.static(publicDirectory));

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

app.set("view engine", "hbs");

// Routes
app.use("/", require("./routes/pages"));
app.use("/auth", require("./routes/auth"));

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`✅ Server started on http://localhost:${PORT}`);
});
