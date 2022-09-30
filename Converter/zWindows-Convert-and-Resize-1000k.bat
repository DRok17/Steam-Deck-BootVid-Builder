:CHKROM
@echo off

move ".\input\*.mp4*" "."

cd ".\.batch\"

wscript.exe "zinviz.vbs" "FileSplitter.bat"

timeout 3 >nul

cd ".."

:CONVERT
set /p file=< .\file2.txt
set /p filename=< .\file-no-ext.txt

:: 500 K 64 Bit
::ffmpeg.exe -i %file% -filter:v "scale='min(1280,iw)':min'(800,ih)':force_original_aspect_ratio=decrease,pad=1280:800:(ow-iw)/2:(oh-ih)/2" -b:v 500K -maxrate 500K -minrate 500K -b:a 64k %filename%.webm

:: 1000 K 64 Bit
ffmpeg.exe -i %file% -filter:v "scale='min(1280,iw)':min'(800,ih)':force_original_aspect_ratio=decrease,pad=1280:800:(ow-iw)/2:(oh-ih)/2" -b:v 1000K -maxrate 1000K -minrate 1000K -b:a 64k deck_startup.webm

:: For Testing
::move ".\*.mp4*" ".\Input\"

:: Normal Operation
move ".\deck_startup.webm" ".\out\%filename%.webm"
move ".\*.mp4*" ".\Input\Done"

del "file2.txt"
del "file-no-ext.txt"