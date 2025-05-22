const express = require("express")
const app = express()
const PORT  = process.env.PORT || 4000



app.get("/",(req,res)=>{
    res.send("<h1>Hello world mom and dad</h1>")
    
})

app.listen(PORT,()=>{
    console.log("server is running ......")
})