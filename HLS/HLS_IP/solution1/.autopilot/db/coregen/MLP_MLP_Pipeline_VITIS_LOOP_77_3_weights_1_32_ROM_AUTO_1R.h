// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_32_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_32_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_32_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_32_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111110110111000011001000001000";
        ram[1] = "0b10111100111101100101111000001000";
        ram[2] = "0b10111110100010000000110110110011";
        ram[3] = "0b10111101010000101001111110011110";
        ram[4] = "0b00111100100001101100000011101010";
        ram[5] = "0b00111101110001100001101000001100";
        ram[6] = "0b00111110011010000111001101011010";
        ram[7] = "0b00111101100110010010111010110110";
        ram[8] = "0b00111101001001001000110100101010";
        ram[9] = "0b00111110001101010110001110111010";
        ram[10] = "0b10111100010110010010100100110111";
        ram[11] = "0b00111100100000001001110101101000";
        ram[12] = "0b00111101110010001110101010111110";
        ram[13] = "0b00111110001110100100110001000100";
        ram[14] = "0b00111101101101111101010001101101";
        ram[15] = "0b00111110000011011101011110010101";
        ram[16] = "0b00111110110100110100010110000011";
        ram[17] = "0b00111110100010000000011001110111";
        ram[18] = "0b00111101100111001000100111000101";
        ram[19] = "0b10111101100100101100101101011010";
        ram[20] = "0b10111101001110111000000011110110";
        ram[21] = "0b10111100110110101101011000101100";
        ram[22] = "0b10111101110100000000111110011010";
        ram[23] = "0b10111110011001001110000110001011";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_32_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_32_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_32_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_32_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_32_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_32_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
