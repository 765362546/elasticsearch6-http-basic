#!/bin/bash
#ES=/usr/share/elasticsearch
ES=/opt/elasticsearch

#卸载
$ES/bin/elasticsearch-plugin remove elasticsearch6-http-basic

#通过maven打包
mvn -DskipTests clean package
FILE=`ls ./target/elasticsearch-*zip`

#安装  如果mvn和es不在同一台，手动拷贝上一步打好的包到es上，然后执行安装  $FILE 为路径
$ES/bin/elasticsearch-plugin install file:$FILE
