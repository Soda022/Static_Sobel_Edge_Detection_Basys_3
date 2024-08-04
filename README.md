This the branch contraining the Uart Transseiver files , the main code file , the schematic result and the simulation result . 
The UART needs an RS-232 port for communication. Unfortunately, Basys3
and Arty boards do not have such a port. However, they share the micro USB
port for the UART communication. To run UART
applications in this section, we needed a terminal software such 
"RealTerm" on the host PC by connecting our Basys3 board to the PC through its USB
cable and turning the board on and finding the assigned COM port number by looking at
the device manager. On the terminal, we have set the baud rate to 9600 bps;(which will be changed later depeding on the pixel bit amount) the COM port
to the one Basys3 board connected; parity bit to “None”; data bits to eight; and
stop bits to one. The clock has been set to 10KHz , which will be later set as 25MHz to meet our applocation specifications.
