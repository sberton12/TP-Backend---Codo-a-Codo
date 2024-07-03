const db = require('../db/db');
/*----------------------
- Bucar por username
- Retorna lo que encuentra sin importar si es nulo
--------------------------*/
const getUser = (req, res) => {
    const id = req.params.id; 
    const sql = 'SELECT * FROM mydb23.userstable WHERE username=?';
    db.query(sql,[id], (err, result) => {
        if (err) throw err;
        res.send(result); 
    });
}
/*----------------------

--------------------------*/
const createUser = (req, res) => {
    const dataRequest = (Object.keys(req.params).length > 0 ) ? req.params: req.body;

    const {username, name, surrname, email, password}= dataRequest ;
    const sql = 'INSERT INTO `mydb23`.`userstable` (`username`, `name`, `surrname`, `email`, `password`) VALUES(?,?,?,?,?);'
    db.query(sql,[username, name, surrname, email, password] ,(err, result) => {
        if (err) throw err;
        res.send(result);        
    });
}
/*----------------------
Actualiza todos los campos consultado por el id
--------------------------*/
const updateUser = (req, res) => {
    const id = req.params.id; 
    const dataRequest = req.body;

    const {username, name, surrname, email, password}= dataRequest ;

    const sql = 'UPDATE `mydb23`.`userstable` SET `username` = ?, `name` = ?, `surrname` = ?, `email` =?, `password` = ? WHERE idUsersTable=?';
    db.query(sql,[username, name, surrname, email, password,id] ,(err, result) => {
        if (err) throw err;
        res.send(result);        
    });
};
/*----------------------
Elimina un usuario por ID
--------------------------*/
const deleteUser = (req, res) => {
    const id = req.params.id; 
  
    const sql = 'DELETE FROM `mydb23`.`userstable` WHERE idUsersTable=?';
    db.query(sql,id,(err, result) => {
        if (err) throw err;
        res.send(result);        
    });
}

module.exports = { getUser, createUser, updateUser, deleteUser };