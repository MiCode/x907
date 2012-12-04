#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

curdir=`pwd`

if [ $1 = "Phone" ];then

    for file in `find $1/smali -name *.part`
    do
	filepath=`dirname $file`
	filename=`basename $file .part`
        dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done

    $XMLMERGYTOOL $1/res/values $2/res/values

	echo "replace functions"
	$PORT_ROOT/x907/replace_functions_IccCard.sh $2
fi

if [ $1 = "MiuiGallery" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Settings" ];then

    cp $1/BatteryHistoryChart.patch out/
    cd out
    $GIT_APPLY BatteryHistoryChart.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Settings patch fail"
        exit 1
    done

	echo "replace functions"
	$PORT_ROOT/x907/replace_functions_IccCard.sh $2
fi

if [ $1 = "ThemeManager" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "DeskClock" ];then

    cp $1/DeskClock.patch out/
    cd out
    $GIT_APPLY DeskClock.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
        echo "DeskClock patch fail"
        exit 1
    done

fi

