@echo off

if exist ipconfig.txt del ipconfig.txt
ipconfig >> ipconfig.txt
type ipconfig.txt
