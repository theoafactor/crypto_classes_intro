#!/bin/bash

users1File="passwords/users1.txt.out"
users2File="passwords/users2.txt.out"

openssl enc -aes-256-cbc -d -in $users1File -out "passwords/users1.txt" -k "mysimplepassword"
rm $users1File

openssl enc -aes-256-cbc -d -in $users2File -out "passwords/users2.txt" -k "mysimplepassword"
rm $users2File