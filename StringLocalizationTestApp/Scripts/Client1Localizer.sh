#!/bin/sh

#  Client1Localizer.sh
#  StringLocalizationTestApp
#
#  Created by Frederixon, Sara on 3/21/18.
#  Copyright © 2018 Frederixon, Sara. All rights reserved.

set -x

PROJDIR="$1"
DIRNAME=$PROJDIR/Client1Localization
rm -r $DIRNAME
mkdir $DIRNAME
#FILES=($(find * -type f))
#echo $FILES
for f in $(find $PROJDIR/* -type f)
do
echo "$f"
xcrun extractLocStrings "$f" -skipTable Client2 -a -o $DIRNAME/ || error=true
filename="${f##*/}"
base="${filename%.[^.]*}"
ibtool --export-strings-file $DIRNAME/$base.strings $f || error=true

done

