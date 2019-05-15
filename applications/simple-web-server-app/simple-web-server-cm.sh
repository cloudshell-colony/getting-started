#!/bin/bash

cat >fasty.js <<ENDOFCONTENT
var http = require('http');
var username = '$username' || 'world';
http.createServer(function (req, res) {
  res.write('Hello ' + username);
  res.end(); 
}).listen(3000, function(){
 console.log("New Example app listening on port 3000!"); 
});
ENDOFCONTENT

