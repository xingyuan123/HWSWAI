// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_18_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_18_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_18_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_18_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111011111110111110000010011101";
        ram[1] = "0b10111101110100110001100101001000";
        ram[2] = "0b00111110100001001111000000100111";
        ram[3] = "0b00111101011001001111001101100000";
        ram[4] = "0b10111101011101000100101111111101";
        ram[5] = "0b10111110000000011110011100101010";
        ram[6] = "0b00111110000000100010101111110111";
        ram[7] = "0b10111101111101100110101010100100";
        ram[8] = "0b00111110000001011100011100111101";
        ram[9] = "0b00111101000111011010000011011101";
        ram[10] = "0b10111101001000101011111000111011";
        ram[11] = "0b00111100100100010010111010010000";
        ram[12] = "0b10111101111010010111110010110110";
        ram[13] = "0b10111101001100011101111110011100";
        ram[14] = "0b10111100100011010001101000100111";
        ram[15] = "0b00111100100011110110110010110011";
        ram[16] = "0b10111101001100010000011000001101";
        ram[17] = "0b00111011110011100110000100000011";
        ram[18] = "0b00111110000000111001100011010101";
        ram[19] = "0b00111101010100110000111011111010";
        ram[20] = "0b00111110011101001000100110000101";
        ram[21] = "0b00111101101010101111100111111110";
        ram[22] = "0b00111101101010111101100111101000";
        ram[23] = "0b00111101101111100110111010101111";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_18_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_18_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_18_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_18_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_18_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_18_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
