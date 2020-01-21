const express = require('express');


const app = express();

const PORT = 8080;

app.listen(PORT,()=>{
    console.log(`Docker for NodeJS on AWS Fargate is listening on PORT: ${PORT}`);
});

app.get("/",(req,res)=>{
    data = {
        "name":"docker-node"
    }
    res.json(data);
});