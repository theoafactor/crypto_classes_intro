#!/bin/bash

users1File="passwords/users1.txt"
users2File="passwords/users2.txt"

openssl enc -aes-256-cbc -salt -in $users1File -out $users1File.out -k "mysimplepassword"

rm -rf $users1File

openssl enc -aes-256-cbc -salt -in $users2File -out $users2File.out -k "mysimplepassword"

rm -rf $users2File