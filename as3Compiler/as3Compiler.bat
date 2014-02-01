@echo off
set SRC_FOLDER=..\messages
set DEST_FOLDER=..\as3src
protoc --plugin=protoc-gen-as3=protoc-gen-as3.bat -I=%SRC_FOLDER% --as3_out=%DEST_FOLDER% %SRC_FOLDER%\*.proto