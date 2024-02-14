// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_26_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_26_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_26_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_26_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111110001000100100101110101100";
        ram[1] = "0b00111101001001111100110111000000";
        ram[2] = "0b00111100010101100100110110011010";
        ram[3] = "0b10111101110110110100100010010100";
        ram[4] = "0b10111101011001001010011100111001";
        ram[5] = "0b10111100100101101111011111010101";
        ram[6] = "0b10111101101001110111101010000011";
        ram[7] = "0b00111100110001100111001101010000";
        ram[8] = "0b10111101100100101011001000110100";
        ram[9] = "0b00111110001011111000110011010111";
        ram[10] = "0b10111101011111000001110101111010";
        ram[11] = "0b10111011110100010010001011000000";
        ram[12] = "0b10111110000000111110101001001111";
        ram[13] = "0b00111110000100000000110111100100";
        ram[14] = "0b10111110011110111101011010000110";
        ram[15] = "0b00111101101010100110101100100110";
        ram[16] = "0b10111110001111001000010110111110";
        ram[17] = "0b00111110110101100000100100000100";
        ram[18] = "0b00111101100110100110101010010100";
        ram[19] = "0b10111100110111101010010001101100";
        ram[20] = "0b00111110001000111101101100110011";
        ram[21] = "0b00111110101110110010111111011110";
        ram[22] = "0b00111101100000000000111101101101";
        ram[23] = "0b00111110100010011010111010100110";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_26_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_26_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_26_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_26_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_26_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_26_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
