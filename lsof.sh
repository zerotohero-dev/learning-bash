#!/usr/bin/env bash
exec 3> test18file1
exec 6> test18file2
exec 7< test18file3

lsof -a -p $$ -d 0,1,2,3,6,7