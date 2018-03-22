#!/bin/sh

#  Client2Localizer.sh
#  StringLocalizationTestApp
#
#  Created by Frederixon, Sara on 3/22/18.
#  Copyright © 2018 Frederixon, Sara. All rights reserved.

DIR=$1
LOCPATH=$DIR/Client2Localizations
rm -r $LOCPATH
mkdir $LOCPATH
xcodebuild -exportLocalizations -localizationPath $LOCPATH/Main -project $DIR/StringLocalizationTestApp.xcodeproj -exportLanguage en
xcodebuild -exportLocalizations -localizationPath $LOCPATH/Localization -project $DIR/Localization/Localization.xcodeproj -exportLanguage en
xcodebuild -exportLocalizations -localizationPath $LOCPATH/Client2 -project $DIR/Client2Strings/Client2Strings.xcodeproj -exportLanguage en
