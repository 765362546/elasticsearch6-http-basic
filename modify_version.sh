#!/bin/bash
#修改这个插件适用的版本  --- 待测
ver=6.8.1
find ./ -type f|xargs sed -i "s/6.5.2/${ver}/g"
