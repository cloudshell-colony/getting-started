#!/bin/bash

if [ -z "$(nodejs --version | grep -E 'v6.*')" ] ; then 
  echo 'Install NodeJs'
  curl -sL https://deb.nodesource.com/setup_6.x | /bin/bash -E;
  apt-get update && apt-get install --no-install-recommends --no-install-suggests -y nodejs;
fi

cat >~/fasty/fasty.js <<ENDOFCONTENT
var http = require('http');
http.createServer(function (req, res) {
  res.write('Faster Fasty Online');
  res.end(); 
}).listen(3000, function(){
 console.log("New Example app listening on port 3000!"); 
});
ENDOFCONTENT


