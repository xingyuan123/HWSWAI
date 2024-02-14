// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_8_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_8_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_8_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_8_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111101000110001100000111101010";
        ram[1] = "0b10111101111000111010011011100100";
        ram[2] = "0b10111101011100111011010011010101";
        ram[3] = "0b00111100001010110000111010000000";
        ram[4] = "0b00111101111001100100001011001011";
        ram[5] = "0b10111110000100100000011110010010";
        ram[6] = "0b00111110001001111111110100101001";
        ram[7] = "0b10111101111000010000111110100010";
        ram[8] = "0b10111101110110000011101010101000";
        ram[9] = "0b10111101111101110111101011101101";
        ram[10] = "0b00111100110000101100011011101111";
        ram[11] = "0b10111101000011111100001110001000";
        ram[12] = "0b00111101110101011111111100011110";
        ram[13] = "0b00111110000101100011101001100001";
        ram[14] = "0b00111110100100010001001111110100";
        ram[15] = "0b10111101011010110001001110111001";
        ram[16] = "0b00111110011100100111101001001100";
        ram[17] = "0b10111101101010111010011101111100";
        ram[18] = "0b00111110001100110010111100111000";
        ram[19] = "0b00111100100000001001110110111011";
        ram[20] = "0b10111101000101101011001011110101";
        ram[21] = "0b10111110100000101100111110110110";
        ram[22] = "0b00111101001101011001100011011001";
        ram[23] = "0b10111101100110011111000001100101";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_8_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_8_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_8_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_8_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_8_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_8_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
