#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="other/tools/apktool"

if [ $2 = "out/framework" ]
then
    echo "delete framework redundance files"
    for file2 in `find oppoframework.jar.out -name *.smali`; do
            file=${file2/oppoframework.jar.out/out\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

    echo "make oppoframework.jar"
    mkdir -p "out/ZIP/system/framework"
    cp -r "oppoframework.jar.out" "out/"
    mv "out/framework/smali/miui" "out/oppoframework.jar.out/smali"
    
    $APKTOOL b  "out/oppoframework.jar.out" "out/oppoframework.jar"
    cp "out/oppoframework.jar" "out/ZIP/system/framework/oppoframework.jar"

fi
