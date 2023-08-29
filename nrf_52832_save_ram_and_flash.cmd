echo off
set shortTime=%time:~0,8%
set shortTime=%shortTime: =0%
set FILENAME=%date:-=%_%shortTime::=%
echo on
nrfjprog --memrd 0x0 --w 8 --n 0x80000 >%FILENAME%_flash.data
nrfjprog --memrd 0x800000 --w 8 --n 0x10000 >%FILENAME%_ram.data
set /p DUMMY=Hit ENTER to continue...
