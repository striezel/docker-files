#!/bin/bash

# write first part of HTML skeleton
echo "<!DOCTYPE html>
<html lang=\"en\">
  <head>
    <title>The talking cow</title>
  </head>
  <body>
    <pre>" > /usr/local/apache2/htdocs/index.html
# write new fortune with cowsay to index.html
/usr/games/fortune | /usr/games/cowsay >> /usr/local/apache2/htdocs/index.html
# write second part of HTML skeleton
echo "    </pre>
  </body>
</html>" >> /usr/local/apache2/htdocs/index.html
# start httpd
httpd-foreground
