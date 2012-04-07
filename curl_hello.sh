#!/bin/bash
base_url="http://localhost:8080`pwd`"
curl --silent $base_url/echo_hello.php
result=`curl --silent $base_url/echo_hello.php`

echo "does it work?"

if [ "$result" == "hello" ]
then
    echo "works!"
    exit 0;
fi

echo "failed :("
exit 1
