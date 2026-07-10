const express = require("express");

const app = express();

const PORT = 3001;

app.get("/", (req, res) => {
    res.send("User Service Running");
});

app.get("/users", (req, res) => {
    res.json([
        {
            id:1,
            name:"Prasanth"
        },
        {
            id:2,
            name:"Anand"
        }
    ]);
});

app.listen(PORT, () => {
    console.log(`User Service running on ${PORT}`);
});