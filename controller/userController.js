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
- Bucar por username
- Retorna lo que encuentra sin importar si es nulo
--------------------------*/
const createUser = (req, res) => {

    //idUsersTable se genera automatica
    const sql = 'INSERT INTO `mydb23`.`userstable` (`username`, `name`, `surrname`, `email`, `password`, `created_at`, `updated_at`) VALUES(`?`,`?`,`?`,`?`,`?`,`?`,`?`);'

}

const updateUser = (req, res) => {

};

const deleteUser = (req, res) => {

}

module.exports = { getUser, createUser, updateUser, deleteUser };