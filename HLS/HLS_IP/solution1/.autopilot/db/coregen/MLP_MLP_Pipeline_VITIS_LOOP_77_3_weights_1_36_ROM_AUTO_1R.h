// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_36_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_36_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_36_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_36_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111100110100110000001110101011";
        ram[1] = "0b10111101001111001110100110001100";
        ram[2] = "0b00111101010110110111000110111100";
        ram[3] = "0b00111101101000001001110110101000";
        ram[4] = "0b00111110010100001001000101000110";
        ram[5] = "0b10111101111010100110011100001110";
        ram[6] = "0b10111101110000010011101110101111";
        ram[7] = "0b00111110000100001101101010100010";
        ram[8] = "0b10111101110100001000111101011100";
        ram[9] = "0b10111101011000110111110111100011";
        ram[10] = "0b00111101100100100011101101000000";
        ram[11] = "0b00111101100100110110010000010000";
        ram[12] = "0b00111101100000001101001100110100";
        ram[13] = "0b10111100110111010101110110110110";
        ram[14] = "0b00111110011010010011101011000101";
        ram[15] = "0b10111100101101000100010100001000";
        ram[16] = "0b00111110001001101111011111011011";
        ram[17] = "0b00111100000111011111111101001101";
        ram[18] = "0b00111101100001111110011110011111";
        ram[19] = "0b10111101011110011011100111000001";
        ram[20] = "0b00111110000001001100001010001010";
        ram[21] = "0b10111101111100101110011100001111";
        ram[22] = "0b00111101100101111010010010001110";
        ram[23] = "0b00111110010000100110110010101001";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_36_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_36_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_36_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_36_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_36_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_36_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
