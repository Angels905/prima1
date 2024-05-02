var express = require('express');
var router = express.Router();
const {getAllUsers, getUser, getUserByNom_livre} = require('../model/users.js')// ajoute les nom des function defini
 
/**
 * getall users 
*/ 
router.get('/', function(req, res, next) {
    getAllUsers().then(users =>res.json(users))
 
});

// router.get('/:id ([0-9]+)', function(req, res, next) {//chaque fuction    un router
//     getUser(+req.params.id).then(users =>res.json(user ))//ne pas oublie le + pour les entiers
 
// });

router.get('/:nom_livre', function(req, res, next) {
    getUserByNom_livre(req.params.nom_livre).then(users =>res.json(user)) 
});

module.exports = router;
 