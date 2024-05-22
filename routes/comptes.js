
var express = require('express');
var router = express.Router();

const {getAllComptes}=require('../model/comptes.js')


router.get('/',function(req, res, next){
    getAllComptes().then(comptes =>res.json(comptes))

});

module.exports = router;
