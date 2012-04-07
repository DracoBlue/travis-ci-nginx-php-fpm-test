#!/bin/bash
result=`curl http://localhost:8080/echo_hello.php`

if [ "$result" == "hello" ]
then
    echo "works!"
    exit 0;
fi

echo "failed :("
exit 1
