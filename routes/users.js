var express = require('express');
var router = express.Router();
  
const {getAllUsers, getUser, getUserByNom_livre, deletcompte,addCompte,updateLivre} = require('../model/users.js')// ajoute les nom des function defini
 
/**
 * getall livre
*/ 
 
 router.get('/', function(req, res, next) {
     getAllUsers().then(users =>res.json(users))
 
 });

// router.get('/:id ([0-9]+)', function(req, res, next) {//chaque fuction    un router
//     getUser(+req.params.id).then(user =>res.json(users ))//ne pas oublie le + pour les entiers
 
// }); 

// router.get('/:nom_livre', function(req, res, next) {
//     getUserByNom_livre(req.params.nom_livre).then(user =>res.json(users)) 
// });

/**
 * crée compte
*/ 
router.post('/', function(req, res, next) {
    addCompte(req.body).then(user =>res.json(user)) 
   });

/** 
 * delete compte
*/ 

router.delete('/:id', function(req, res, next) {
     deletcompte(+req.params.id).then(user =>res.json(user)) 
    });

/**
 * modifie livre
*/ 

router.patch('/:id', function(req, res, next) {
    updateLivre(req.body).then(user =>res.json(user)) 
   });

// /**
//  * modifie catalogue
// */ 

// router.patch('/:id', function(req, res, next) {
//     updateCatalogue(req.body).then(user =>res.json(user)) 
//    });



module.exports = router;
   