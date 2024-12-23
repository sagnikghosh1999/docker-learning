const express = require("express");

const app = express();

const PORT = process.env.PORT || 5000;

app.get("/", (req, res) => {
  res.status(200).json({
    data: "hello from docker, v2",
  });
});

app.listen(PORT, () => {
  console.log(`Server is running on  http://localhost:${PORT}`);
});
