# Barrel Shifter
Two versions of a left-right barrel shifter to compare efficiency of each design

I implement a barrel shifter using 2 techniques. First method uses a multiplexer to select between the left or right shift which utilizes the multiplexers in the FPGA. The second method involves reversing the bits order (changing endianness), this is done by selecting whether the input goes as it is or the bits are reversed, after that, the shifting occurs and finally the order of the output bits is fixed to be in the original order (little endian).
