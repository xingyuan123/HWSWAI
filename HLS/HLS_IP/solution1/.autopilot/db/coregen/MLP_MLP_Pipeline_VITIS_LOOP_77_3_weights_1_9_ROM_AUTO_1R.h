// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_9_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_9_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_9_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_9_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111110110100011101010111110110";
        ram[1] = "0b10111101001111000100010000111010";
        ram[2] = "0b00111110011101001001001100010110";
        ram[3] = "0b00111100011100101000101011100000";
        ram[4] = "0b00111110100001001110110100001111";
        ram[5] = "0b10111101011110100111000111001110";
        ram[6] = "0b10111101110110000110100110000011";
        ram[7] = "0b10111101101010001110101000101100";
        ram[8] = "0b10111110000000110010001000000011";
        ram[9] = "0b10111100101000000011101101000100";
        ram[10] = "0b00111100100100111001101010101001";
        ram[11] = "0b10111011011100110101011101000000";
        ram[12] = "0b10111101111010000000100001110011";
        ram[13] = "0b10111110101001011010100101010110";
        ram[14] = "0b00111111000101101000000001100110";
        ram[15] = "0b00111110110110101010000001101011";
        ram[16] = "0b00111110010100010000001101101011";
        ram[17] = "0b10111110111111101011100110110010";
        ram[18] = "0b10111101101010000000110000100001";
        ram[19] = "0b10111101100110111000001011110111";
        ram[20] = "0b10111101101101011111001011010110";
        ram[21] = "0b10111110011110010000000011001111";
        ram[22] = "0b10111100111111101101011000000101";
        ram[23] = "0b10111011110001100010011011100111";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_9_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_9_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_9_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_9_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_9_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_9_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
