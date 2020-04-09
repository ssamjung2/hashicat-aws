#!/bin/bash
# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Woof!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>Doggies are the best world!  Cats can be nice, but they aren't dogs!</h2></center>
  <p>Welcome to ${PREFIX}'s app. Woot! I'm doing Terraform training for deploying and managing infrastructure as code. "You can do it better :)", said Gopi.
  Yes, I can; Yes, I most certainly can.</p>
  <p>Here's a random joke at the time of apply:
EOM

curl -H "Accept: text/plain" https://icanhazdadjoke.com/ > /var/www/html/index.html 2>/dev/null

cat << EOM >> /var/www/html/index.html
  </p>
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."
