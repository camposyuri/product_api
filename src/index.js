const express = require("express");

const app = express();

app.get("/", (request, response) => {
  response.json({ message: "Hello World" });
});

app.listen(3001, () => {
  console.log("Server start at http://localhost:3001");
});
