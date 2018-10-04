BR main ; Branch around data
sum: .WORD 0x0000 ; Set up word with zero
num1: .BLOCK 2 ; Set up a two byte block for num1
num2: .BLOCK 2 ; Set up a two byte block for num2
num3: .BLOCK 2 ; Set up a two byte block for num3

main:    LDA sum,d ; Load zero into accumulator
         DECI num1,d ; Read and store num1
         ADDA num1,d ; Add num1 to the accumulator
         DECI num2,d ; Read and store num2
         ADDA num2,d ; Add num2 to the accumulator
         DECI num3,d ; Read and store num3
         ADDA num3,d ; Add num3 to the accumulator
         STA sum,d ; Store accumulator into sum
         DECO sum,d ; Output the sum of num1, num2, and num3
         STOP ; Stop the processing
         .END ; End of the program