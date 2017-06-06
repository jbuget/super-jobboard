var logger = require('morgan');
var jwt = require('jsonwebtoken')

module.exports = function (req, res, next) {
  var token

  if (req.hasOwnProperty('headers') && req.headers.hasOwnProperty('authorization')) {
    token = req.headers['authorization']

    try {
      req.user = jwt.verify(token, process.env.JWT_SECRET)
    } catch (err) {
      return res.status(401).json({
        error: {
          msg: 'Failed to authenticate token!'
        }
      })
    }
  } else {
    return res.status(401).json({
      error: {
        msg: 'No token!'
      }
    })
  }
  next()
}
