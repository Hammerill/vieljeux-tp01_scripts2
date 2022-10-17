@echo off

del ipconfig.txt
ipconfig >> ipconfig.txt
type ipconfig.txt
