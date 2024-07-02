const express = require('express');
const userRoutes = require('./routes/userRoutes');

const PORT = 3000;

const app = express();

app.use(express.json());

app.use("/user", userRoutes);
app.get('/prueba',(req,res)=>{
    res.send("Estoy ON")
});
app.listen( PORT, () => {
    console.log("Server running at port: " + PORT);
});