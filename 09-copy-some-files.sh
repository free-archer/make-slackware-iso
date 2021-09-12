#!/bin/bash

cp setpkg-cutefish-kdemin slackware64-current/isolinux/setpkg
cp message.txt slackware64-current/isolinux/
cp -r pkg/cutefish/ slackware64-current/slackware64/
cp -r pkg/extra/ slackware64-current/slackware64/

