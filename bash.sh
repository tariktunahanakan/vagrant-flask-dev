#!/bin/sh
git commit -a -m "update"

git push origin main

sleep 25

vagrant destroy -f
sleep 10

vagrant up
sleep 5
vagrant ssh
