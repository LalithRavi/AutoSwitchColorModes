@echo off

:x
set hour=%TIME:~0,2%
set minute=%TIME:~3,2%
set second=%TIME:~6,2%
if %hour% GEQ 8 (if %minute% GEQ 00 (REG IMPORT light_mode.reg && goto y))
goto x



:y
set hour=%TIME:~0,2%
set minute=%TIME:~3,2%
set second=%TIME:~6,2%
if %hour% GEQ 20 (if %minute% GEQ 00 (REG IMPORT dark_mode.reg && exit))
goto y
