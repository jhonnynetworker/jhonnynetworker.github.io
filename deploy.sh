#!/usr/bin/env sh
TO=/var/www/eddservicos.com
cp -r css/  $TO
cp -r js/ $TO
cp -r vendor/ $TO
cp -r image/ $TO
cp *.html $TO

echo "Done copying files\n Restarting nginx"
service nginx restart
