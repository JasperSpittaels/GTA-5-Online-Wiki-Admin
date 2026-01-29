@echo off
set /p IP=Geef het IP=

start "" "http://%IP%:8080/shutdown?key=HamyKey"