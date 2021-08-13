set /p prog=<avrdude_prog.txt
set /p chip=<avrdude_chip.txt
avrdude\avrdude.exe -C avrdude\avrdude.conf -c %prog% -p %chip% -U eeprom:w:eeprom13.hex:i -v
@pause
