var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/i', function(req, res, next) {
  res.render('index', { title: 'Expresstt' });
});

module.exports = router;
