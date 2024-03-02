`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2024 17:41:09
// Design Name: 
// Module Name: RIPPLE_CARRY_ADDER_8_BITS
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//A0 SW0, A1 SW1, A2 SW2, A3 SW3, A4 SW4, A5 SW5, A6 SW6, A7 SW7
//B0 SW8, B1 SW9, B2 SW10, B3 SW11, B4 SW12, B5 SW13, B6 SW14, B7 SW15
//Cin SW16
//S0 LED0, S1 LED1, S2 LED2, S3 LED3, S4 LED4, S5 LED5, S6 LED6 S7 LED7 
//Cout LED8

module RIPPLE_CARRY_ADDER_8_BITS(
    input logic [16:0]sw,
    output logic [8:0]LED
    );
    logic p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19;
    logic p20, p21, p22, p23, p24, p25, p26, p27, p28, p29;
    //FULL ADDER 0
    assign p0 = sw[0] ^ sw[8];
    assign LED[0] = p0 ^ sw[16]; //S0
    assign p1 = sw[0] & sw[8];
    assign p2 = p0 & sw[16]; 
    assign p3 = p1 | p2; //Cout0
    //FULL ADDER 1
    assign p4 = sw[1] ^ sw[9]; 
    assign LED[1] = p4 ^ p3; //S1
    assign p5 = sw[1] & sw[9];
    assign p6 = p4 & p3; 
    assign p7 = p5 | p6; //Cout1
    //FULL ADDER 2
    assign p8 = sw[2] ^ sw[10]; 
    assign LED[2] = p8 ^ p7; //S2
    assign p9 = sw[2] & sw[10];
    assign p10 = p8 & p7; 
    assign p11 = p9 | p10; //Cout2
    //FULL ADDER 3
    assign p12 = sw[3] ^ sw[11]; 
    assign LED[3] = p12 ^ p11; //S3
    assign p13 = sw[3] & sw[11];
    assign p14 = p12 & p11; 
    assign p15 = p13 | p14; //Cout3
    //FULL ADDER 4
    assign p16 = sw[4] ^ sw[12]; 
    assign LED[4] = p16 ^ p15; //S4
    assign p17 = sw[4] & sw[12];
    assign p18 = p16 & p15; 
    assign p19 = p17 | p18; //Cout4
    //FULL ADDER 5
    assign p20 = sw[5] ^ sw[13]; 
    assign LED[5] = p20 ^ p19; //S5
    assign p21 = sw[5] & sw[13];
    assign p22 = p20 & p19; 
    assign p23 = p21 | p22; //Cout5
    //FULL ADDER 6
    assign p24 = sw[6] ^ sw[14]; 
    assign LED[6] = p24 ^ p23; //S6
    assign p25 = sw[6] & sw[14];
    assign p26 = p24 & p23; 
    assign p27 = p25 | p26; //Cout6 
    //FULL ADDER 7
    assign p28 = sw[7] ^ sw[15]; 
    assign LED[7] = p28 ^ p27; //S7
    assign p29 = sw[7] & sw[15];
    assign p30 = p28 & p27; 
    assign LED[8] = p29 | p30; //Cout     
endmodule
