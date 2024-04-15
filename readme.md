# H8/300H normal mode processor module for Ghidra
Specific default symbols for the H8/38602R family are added. You can delete those inside ghidra if you want.

## Building/Installing
1. Set the correct ghidra path on the Makefile
2. `make` and `make install`

## TODOs

- Fix stack and dynamic reference issues

## C interface

### Renesas C compiler
Currently the Renesas compiler default ABI is implemented (GCC's is a little different).

[https://www.renesas.com/us/en/document/mat/h8s-h8300-series-cc-compiler-package-ver700-users-manual?language=en&r=1169476](Renesas c compiler manual page 279)

Default 2 registers reserved for parameters

* ER0-ER1 caller-save (H8/300: R0-R1) (also E/R2 if 3 parameter registers defined)
  These registers can be overwritten by function at will
* ER2-ER6 calee-save (H8/300: R2-R6) (or E/R3.. if 3 parameter registers defined)
  These registers are restored before returning

## Credits
This repository was built upon work from carllom https://github.com/carllom/sleigh-h8. I am more focusing on accurate normal mode support (his only works for advanced mode at the time of writing)
