const db = require('../db/db');

const getComments = (req, res) => {
    const sql = 'SELECT * FROM mydb23.commentstable';
    db.query(sql, (err, result) => {
        if (err) throw err;
        res.send(result); 
    });
}
module.exports = { getComments};