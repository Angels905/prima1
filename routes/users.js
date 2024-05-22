var express = require('express');
var router = express.Router();
  
const {getAllUsers, getUser, deletcompte,addCompte,updateLivre} = require('../model/users.js')// ajoute les nom des function defini
 
/**
 * getall livre
*/ 
 
 router.get('/', function(req, res, next) {
     getAllUsers().then(users =>res.json(users))
 
 });

router.get('/:id', function(req, res, next) {//chaque fuction    un router
    getUser(+req.params.id).then(user =>res.json(user))//ne pas oublie le + pour les entiers
 
}); 



/**
 * crée livre
*/ 
router.post('/', function(req, res, next) {
    addCompte(req.body).then(user =>res.json(user)) 
   });

/** 
 * delete livre
*/ 

router.delete('/:id', function(req, res, next) {
     deletcompte(+req.params.id).then(user =>res.json(user)) 
    });

/**
 * modifie livre
*/ 

router.patch('/', function(req, res, next) {
    updateLivre(req.body).then(user =>res.json(user)) 
   });



module.exports = router;
   