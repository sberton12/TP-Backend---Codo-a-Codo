const db = require('../db/db');

const getTravels = (req, res) => {
    const sql = 'SELECT * FROM mydb23.travelstable';
    db.query(sql, (err, result) => {
        if (err) throw err;
        res.send(result); 
    });
}
module.exports = { getTravels};