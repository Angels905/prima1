var express = require('express');
var router = express.Router();

const {getAllComptes, getUsercomptes} = require('../model/comptes')// ajoute les nom des function defini

/**
 * getall livre
*/ 

 router.get('/', function(req, res, next) {
     getAllComptes().then(comptes =>res.json(comptes))

 });

router.get('/:id', function(req, res, next) {
    getUsercomptes(+req.params.id).then(comptes =>res.json(comptes))
 
});



module.exports = router;