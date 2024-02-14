// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_14_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_14_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_14_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_14_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111110000010001110101110101001";
        ram[1] = "0b00111101100111100100100001011000";
        ram[2] = "0b10111110001001000111111110000100";
        ram[3] = "0b00111100000000001001000101100000";
        ram[4] = "0b10111101101010001011100010110000";
        ram[5] = "0b00111101110011010101011101010101";
        ram[6] = "0b00111110100000100110111000010101";
        ram[7] = "0b00111101101011111101010000100110";
        ram[8] = "0b10111101011010101010011101001111";
        ram[9] = "0b00111101010111010000111100100100";
        ram[10] = "0b10111011101111100101100001011001";
        ram[11] = "0b00111101010111100100100001110000";
        ram[12] = "0b00111101101001110000010001100001";
        ram[13] = "0b00111110001100100000001010101010";
        ram[14] = "0b00111110010101110110000110011010";
        ram[15] = "0b00111101111000111110101111110111";
        ram[16] = "0b00111110000001100000000101000011";
        ram[17] = "0b10111101011000011001001000100100";
        ram[18] = "0b00111110000110111001011000010010";
        ram[19] = "0b10111101101100101101010011111100";
        ram[20] = "0b10111110000101001100000110011001";
        ram[21] = "0b10111101111011001001001001011100";
        ram[22] = "0b10111011110001001001011101000010";
        ram[23] = "0b10111100010010011001011011011110";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_14_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_14_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_14_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_14_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_14_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_14_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
