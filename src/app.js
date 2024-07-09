const express = require('express');
const cors = require('cors');


const userRoutes = require('../routes/userRoutes');
const commentsRoutes = require('../routes/commentsRoutes.js');
const travelRoutes = require('../routes/travelRoutes.js');
const contactRoutes = require('../routes/contactRoutes.js');

const PORT = process.env.PORT||3000;

const app = express();
app.use(express.json());
app.use(cors());    

app.use("/user", userRoutes);
app.use("/comments", commentsRoutes);
app.use("/travel", travelRoutes);
app.use("/contact", contactRoutes);


app.listen( PORT, () => {
    console.log("Server running at port: " + PORT);
});