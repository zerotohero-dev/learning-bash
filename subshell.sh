#/usr/bin/env bash

echo {file1,file2}\ :{\ A," B",' C'}
echo {a..z}{a..z}
echo a{file1,file2}b

(
echo "`date` Hello world"
) >> hello
