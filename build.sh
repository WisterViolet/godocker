#!/bin/sh
target=$1
cd golang/${target}
go build
./${target}
rm ${target}
