#!/bin/bash
for file in /var/data/apk/myapp/full/*
do
    if test -f $file
    then
       echo $file 是文件

       echo ${file:0:65}
       #需要获取root权限
       sudo mkdir -p /usr/apk/myapp/full/${file:25:2}/${file:27:2}/${file:29:2}
       sudo cp -r  $file /usr/apk/myapp/full/${file:25:2}/${file:27:2}/${file:29:2}
    fi
    if test -d $file
    then
       echo $file 是目录
    fi
done
