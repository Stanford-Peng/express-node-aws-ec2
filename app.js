const express = require("express");
const app = express();
const port = 3000;

app.get('/',(req,res) => {
    res.send("<h1>Hello World</h1> <p>new version 12.0</p>");
})

app.listen(port, ()=>{
    console.log(`App is listening to port: ${port}`);
})