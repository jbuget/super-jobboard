var express = require('express')
var router = express.Router()
var GoogleAuth = require('google-auth-library');

var CLIENT_ID = '1095728091059-u6m5nusuq5mdqjb0ddlufgrd6fo7gn06.apps.googleusercontent.com';

router.post('/google', function(req, res) {
  const token = req.body.idToken;
  const auth = new GoogleAuth;
  const client = new auth.OAuth2(CLIENT_ID, '', '');
  client.verifyIdToken(
    token,
    CLIENT_ID,
    // Or, if multiple clients access the backend:
    //[CLIENT_ID_1, CLIENT_ID_2, CLIENT_ID_3],
    function(e, login) {
      var payload = login.getPayload();
      var userid = payload['sub'];
      // If request specified a G Suite domain:
      //var domain = payload['hd'];
    });

  res.json({ data: { user: req.user } })
})

module.exports = router
