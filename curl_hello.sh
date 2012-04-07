#!/bin/bash
base_url="http://localhost:8080`pwd`"
result=`curl $base_url/echo_hello.php`

if [ "$result" == "hello" ]
then
    echo "works!"
    exit 0;
fi

echo "failed :("
exit 1
