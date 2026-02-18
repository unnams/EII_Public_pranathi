const http=require('http');

const server=http.createServer((req,res)=>{
    res.writeHead(200,'content-type:plain text')
    res.end('heyy!Helo')
})

server.listen(2000,(err)=>{
    if(err){
        console.log("error occured")
    }
    console.log("server created")
})
