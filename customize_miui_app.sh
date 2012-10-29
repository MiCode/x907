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

	echo "replace functions"
	$PORT_ROOT/x907/replace_functions_IccCard.sh $2
fi

if [ $1 = "MiuiGallery" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Settings" ];then
	echo "replace functions"
	$PORT_ROOT/x907/replace_functions_IccCard.sh $2
fi
