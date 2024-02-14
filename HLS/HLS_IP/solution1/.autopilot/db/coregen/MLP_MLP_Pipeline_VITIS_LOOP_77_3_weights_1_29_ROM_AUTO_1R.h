// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_29_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_29_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_29_ROM_AUTO_1R_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 24;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_29_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111100011101110111001000010101";
        ram[1] = "0b10111101001110001010100110110110";
        ram[2] = "0b00111100011011100111100010111101";
        ram[3] = "0b10111110000000110011011001110010";
        ram[4] = "0b00111110000010111100110000001111";
        ram[5] = "0b10111101000011011010010111011010";
        ram[6] = "0b10111101100010001010101101110010";
        ram[7] = "0b00111101000001000100010100000100";
        ram[8] = "0b00111100111110000101000001000110";
        ram[9] = "0b00111110000110011101111100011000";
        ram[10] = "0b00111011101001101010100000010111";
        ram[11] = "0b10111101100001001110000111100010";
        ram[12] = "0b00111101101011101110001111110111";
        ram[13] = "0b10111101110000011111001101110110";
        ram[14] = "0b00111101101011000101001111011101";
        ram[15] = "0b00111100001100001011101101000100";
        ram[16] = "0b00111110001010001011011011100011";
        ram[17] = "0b10111101110011011011100001101111";
        ram[18] = "0b10111101111000000111011101010100";
        ram[19] = "0b00111101100101101111010001010011";
        ram[20] = "0b00111101110110100111110011111101";
        ram[21] = "0b00111101111110011001101001100011";
        ram[22] = "0b00111110000000001101010000001100";
        ram[23] = "0b00111011101010000000001111011110";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_29_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_29_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_29_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_29_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_29_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_29_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
