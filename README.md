# avrdude_eeprom_generator

This [Processing](https://processing.org/) project generate a simple eeprom `.hex` and the `.bat` to write the eeprom the mcu using avrdude.

## eeprom

The eeprom file is created only change the first 32 bytes and only the first byte is changed based on the file name.

* eeprom1.hex -> 01
* eeprom2.hex -> 02
* eeprom3.hex -> 03
* ...
* eeprom10.hex -> 0A
* eeprom11.hex -> 0B
* ...
* eeprom31.hex -> 1F
* eeprom32.hex -> 20

## avrdude_chip.txt

This file has the mcu used on the `eepromX.bat` file, change to set your chip.

**avrdude_chip.txt** - atmega328p
```
atmega328p
```

**avrdude_chip.txt** - atmega8
```
atmega8
```

**avrdude_chip.txt** - attiny85
```
attiny85
```

## avrdude_prog.txt

This file has the programmer to write the eeprom file using the avrdude, change to set your programmer.

**avrdude_prog.txt** - USBasp
```
usbasp
```

**avrdude_prog.txt** - Arduino to SPI
```
arduino -P COM1 -b 19200
```

**avrdude_prog.txt** - USBtiny
```
usbtiny
```

---

Do you like this project? Please [star this project on GitHub](https://github.com/ricaun/avrdude_eeprom_generator/stargazers)!