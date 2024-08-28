const { onRequest } = require("firebase-functions/v2/https");

exports.testing = onRequest((request, response) => {
  response.send("Testing another function...");
});
