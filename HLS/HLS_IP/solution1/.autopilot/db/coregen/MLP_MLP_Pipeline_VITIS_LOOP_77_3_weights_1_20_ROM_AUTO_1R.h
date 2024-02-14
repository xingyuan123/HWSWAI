// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_20_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_20_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_20_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_20_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111110110000100001010111000111";
        ram[1] = "0b10111101111101000111000011101100";
        ram[2] = "0b10111101111011100100111111110100";
        ram[3] = "0b00111101011001110101000100010100";
        ram[4] = "0b00111101111111110011110001110100";
        ram[5] = "0b10111101011001000100100000110011";
        ram[6] = "0b10111101101001100111011000000110";
        ram[7] = "0b10111101110111011110011101111110";
        ram[8] = "0b10111101101010000011100100111100";
        ram[9] = "0b00111110001001101101101101110111";
        ram[10] = "0b00111101010010010111100001110111";
        ram[11] = "0b10111101110110000010001000001110";
        ram[12] = "0b00111101010110000000001000011110";
        ram[13] = "0b00111101010110110001100011011110";
        ram[14] = "0b00111101010010111001000100110110";
        ram[15] = "0b00111110001001000110111011110101";
        ram[16] = "0b00111110101100111111011110101010";
        ram[17] = "0b00111101111101110010001111111100";
        ram[18] = "0b10111110001101101100101001110101";
        ram[19] = "0b10111100111011011011010100001100";
        ram[20] = "0b10111110010001001000100000101100";
        ram[21] = "0b10111101001111111110001000111001";
        ram[22] = "0b10111110001001100011011001111111";
        ram[23] = "0b10111101100110100110010010000110";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_20_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_20_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_20_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_20_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_20_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_20_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
