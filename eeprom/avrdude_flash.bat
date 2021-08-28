set /p flash=<avrdude_flash.txt
set /p prog=<avrdude_prog.txt
set /p chip=<avrdude_chip.txt
avrdude\avrdude.exe -C avrdude\avrdude.conf -c %prog% -p %chip% -U flash:w:"%flash%":i -v
@pause
