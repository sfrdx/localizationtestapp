#!/bin/sh

#  Script.sh
#  StringLocalizationTestApp
#
#  Created by Frederixon, Sara on 3/22/18.
#  Copyright © 2018 Frederixon, Sara. All rights reserved.

#xcodebuild -exportLocalizations -localizationPath <path> -project <projectname> [-exportLanguage <targetlanguage>...]

DIR=$1
LOCPATH=$DIR/Client1Localizations
rm -r $LOCPATH
mkdir $LOCPATH
xcodebuild -exportLocalizations -localizationPath $LOCPATH/Main -project $DIR/StringLocalizationTestApp.xcodeproj -exportLanguage en
xcodebuild -exportLocalizations -localizationPath $LOCPATH/Localization -project $DIR/Localization/Localization.xcodeproj -exportLanguage en
xcodebuild -exportLocalizations -localizationPath $LOCPATH/Client1 -project $DIR/Client1Strings/Client1Strings.xcodeproj -exportLanguage en
