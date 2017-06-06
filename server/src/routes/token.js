var express = require('express')
var router = express.Router()
var jwt = require('jsonwebtoken')

/* GET users listing. */
router.get('/', function (req, res) {
  var token = jwt.sign({ first_name: 'John', last_name: 'Doe' }, process.env.JWT_SECRET)
  return res.json({
    data: { token }
  })
})

module.exports = router
