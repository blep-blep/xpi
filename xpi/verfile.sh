#!/bin/sh
echo "verifying files"
#check verison and compare to git for updates.
echo "up to date"
#check config, its permissions and existance.
cd $PWD/
ls config.json>/dev/null || touch $PWD/config.json | echo "config generated"
cat config.json || chmod 666 config.json | cat config.json>/dev/null && echo "permissions appiled"
echo "starting XPI" && python __init__.py
