@echo off
set SRC_FOLDER=..\messages
set DEST_FOLDER=..\src
protoc -I=%SRC_FOLDER% --java_out=%DEST_FOLDER% %SRC_FOLDER%\*.proto
