#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="other/tools/apktool"

if [ $2 = "out/framework" ]
then
    echo "make oppoframework.jar"

    cp -r "oppoframework.jar.out" "out/oppoframework"
    mv "out/framework/smali/miui" "out/oppoframework/smali"
    mkdir -p "out/oppoframework/smali/android"
    mv "out/framework/smali/android/widget" "out/oppoframework/smali/android"

    $APKTOOL b  "out/oppoframework" "out/oppoframework.jar"
    mkdir -p "out/ZIP/system/framework"
    cp "out/oppoframework.jar" "out/ZIP/system/framework/oppoframework.jar"

elif [ $2 = "out/android.policy" ];then
    curdir=`pwd`
    cd overlay/android.policy.jar.out
    for file in `find . -name *.smali`
    do
        dstfile="$curdir/out/android.policy/$file"
        cat $file >> $dstfile
    done
    cd -
fi
