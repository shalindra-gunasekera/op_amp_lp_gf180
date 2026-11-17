# Low Power Op Amp Design in Global Foundaries 180nm Process

The aim of this project was to design a low power operational amplifier for tapeout on a MPW run by wafer.space . To build on op amps designed in coursework, I aimed to increase the difficulty in three main ways

1. As the design is aimed for low power applications, this called for **design via the gm/Id method**
2. Improved frequency metrics using the __[indirect compensation method](https://cmosedu.com/cmos1/bad_design/bad_design3/bad_design_3.htm)__ .
3. Implement internal biasing, so the circuitry could bias itself from VDD.

The latter point annoyed me greatly in coursework - the biasing was always left as this magical source that we didn't need to worry about.

## Specs
- Supply voltage, 3v3
- GBW, 1MHz
- Slew rate, >2V/us
- Power consumption, <250uW
- Offset voltage (input ref), 2mV. 

All for nominal load capacitance of 10pF.

A detailed report of the design process will be released following submission of this project

This readme is a bit of a rush job but will be updated shortly.
