var express = require('express')
var router = express.Router()

/* GET users listing. */
router.get('/', function(req, res) {
  res.json({ data: { user: req.user } })
})

module.exports = router
