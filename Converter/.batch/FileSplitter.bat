@echo off
cd ".."

for %%i in (..\*.txt*) do if not "%%i"=="..\template.txt" if not "%%i"=="..\core.txt" if not "%%i"=="..\rom.txt" if not "%%i"=="..\rom-id.txt" if not "%%i"=="..\rom-name.txt" if not "%%i"=="..\sys-id.txt" del /q "%%i"

cd "."

dir *.mp4 *.webm /b > .\file2.txt
for %%i in (*.mp4) do @echo %%~ni >> file-no-ext.txt
for %%i in (*.webm) do @echo %%~ni >> file-no-ext.txt

