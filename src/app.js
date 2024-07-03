const express = require('express');
const userRoutes = require('../routes/userRoutes');

const PORT = 3000;

const app = express();

app.use(express.json());

app.use("/user", userRoutes);
app.get('/prueba',(req,res)=>{
    res.send("Estoy ON")
});


app.use(express.json()); // Middleware para parsear JSON

// Ruta de prueba
app.get('/', (req, res) => {
    res.send('¡Hola, mundo!');
});

// Ruta para recibir datos POST
app.post('/data', (req, res) => {
    res.json({
        message: 'Datos recibidos',
        data: req.body
    });
});

app.listen( PORT, () => {
    console.log("Server running at port: " + PORT);
});