// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_10_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_10_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_10_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_10_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111101001011110110001001110101";
        ram[1] = "0b10111101111111010010111000001011";
        ram[2] = "0b00111110000111000110001001000010";
        ram[3] = "0b10111101110001001110110000101000";
        ram[4] = "0b00111100011100110010101010001000";
        ram[5] = "0b00111101100101110011100101111100";
        ram[6] = "0b10111101100110001010111011010110";
        ram[7] = "0b10111110000011011011101010101000";
        ram[8] = "0b10111101111010110010000100100000";
        ram[9] = "0b00111100000101000000111010111000";
        ram[10] = "0b10111101101100111100100000000010";
        ram[11] = "0b00111110000100110011111010000000";
        ram[12] = "0b00111100010001001110110011011000";
        ram[13] = "0b10111110001000000010111100110110";
        ram[14] = "0b00111110111010100100000100011111";
        ram[15] = "0b00111110011000111111010100101001";
        ram[16] = "0b00111110100000100001111110101101";
        ram[17] = "0b10111110011001010010000100001010";
        ram[18] = "0b00111100011101110111101010010110";
        ram[19] = "0b10111101111111011110111101001010";
        ram[20] = "0b10111100110000101000001010100000";
        ram[21] = "0b10111100011111010001010111001101";
        ram[22] = "0b00111110000100000101001111100100";
        ram[23] = "0b10111101111100100010011010101001";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_10_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_10_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_10_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_10_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_10_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_10_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
