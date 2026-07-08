const express = require("express");

const app = express();

app.use(express.static("public"));

app.get("/attendance", (req, res) => {
    res.json({
        school: "ABC School",
        totalStudents: 30,
        present: 27,
        absent: 3
    });
});

app.listen(3000, () => {
    console.log("Server running on port 3000");
});