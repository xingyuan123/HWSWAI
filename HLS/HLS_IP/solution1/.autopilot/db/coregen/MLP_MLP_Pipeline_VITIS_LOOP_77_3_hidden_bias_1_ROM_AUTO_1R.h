// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_hidden_bias_1_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_hidden_bias_1_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_hidden_bias_1_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_hidden_bias_1_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111110111100111100011100011011";
        ram[1] = "0b10111101111000000110001010110000";
        ram[2] = "0b10111101100101111101010001101110";
        ram[3] = "0b10111101111110010000101001011010";
        ram[4] = "0b00111100001011101111110110101011";
        ram[5] = "0b10111101100010100100101100111100";
        ram[6] = "0b00111110011011101111010111100101";
        ram[7] = "0b10111011101011000010011111000000";
        ram[8] = "0b10111101011111111101111100101010";
        ram[9] = "0b10111110010001100100011001001000";
        ram[10] = "0b10111101101001010010111011100011";
        ram[11] = "0b10111101010101110100010010111100";
        ram[12] = "0b00111101100111100110110011010111";
        ram[13] = "0b00111110001000110100100111011100";
        ram[14] = "0b00111110100011000110101111010011";
        ram[15] = "0b10111100111010011111011111000010";
        ram[16] = "0b00111111000011110100010100010000";
        ram[17] = "0b00111110011010011110100111011110";
        ram[18] = "0b00111101000010101010001101111111";
        ram[19] = "0b10111110000010010011000100000101";
        ram[20] = "0b10111100101010111011100101110001";
        ram[21] = "0b10111110101000010000110011010110";
        ram[22] = "0b00111110000001110100111011011111";
        ram[23] = "0b10111110011011000101110011101111";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_hidden_bias_1_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_hidden_bias_1_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_hidden_bias_1_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_hidden_bias_1_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_hidden_bias_1_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_hidden_bias_1_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
