
const a=require('express');
const app=a();

app.get('/',(req,res)=>{
    res.send("heyy hii")
})
port=3000
app.listen(port,(err)=>{
    if(err){
        console.log("error")
    }
    console.log(`server created successfully URL http://localhost:${port}/`)
})