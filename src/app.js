const express = require('express');

const userRoutes = require('../routes/userRoutes');
const commentsRoutes = require('../routes/commentsRoutes.js/index.js');
const travelRoutes = require('../routes/travelRoutes.js');

const PORT = 3000;

const app = express();
app.use(express.json());

app.use("/user", userRoutes);
app.use("/comments", commentsRoutes);
app.use("/travel", travelRoutes);


// Ruta de prueba
app.get('/', (req, res) => {
    res.send('¡Hola, mundo!');
});



app.listen( PORT, () => {
    console.log("Server running at port: " + PORT);
});