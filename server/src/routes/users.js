var express = require('express')
var router = express.Router()

/* GET users listing. */
router.get('/', function (req, res, next) {
  res.json({data: {
    type: 'user',
    attributes: {
      id: 1,
      first_name: 'John',
      last_name: 'Doe'
    }
  }})
})

module.exports = router
