import express from "express";

const app = express();

app.get("/", (req, res) => {
  res.send("Hello Madrid v2!");
});

let PORT = process.env.PORT || 9000;

app.listen(PORT, () => console.log("Listening on", PORT));
