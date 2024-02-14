// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_7_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_7_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_7_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_7_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111110000010110101100010100110";
        ram[1] = "0b00111101010011001111001100110000";
        ram[2] = "0b00111011101110011011101100100011";
        ram[3] = "0b00111100110111011000000011100000";
        ram[4] = "0b10111101100001101101100010101101";
        ram[5] = "0b00111110000001011000110001011100";
        ram[6] = "0b00111110000101100110000000011011";
        ram[7] = "0b10111101100011001000010000101011";
        ram[8] = "0b00111101110110111100010100000000";
        ram[9] = "0b10111110101001010101011111100110";
        ram[10] = "0b10111110000011011011011111010000";
        ram[11] = "0b10111100110111011010111000000000";
        ram[12] = "0b00111110000100001000000101001011";
        ram[13] = "0b10111100110000010100001110110111";
        ram[14] = "0b00111110010100000001110100111100";
        ram[15] = "0b10111100011110000110000100011111";
        ram[16] = "0b00111110010000011001111100010110";
        ram[17] = "0b10111110100111011001101001101110";
        ram[18] = "0b00111110011101001001111011101110";
        ram[19] = "0b10111101011000001000001010001000";
        ram[20] = "0b00111100101000011010001101111110";
        ram[21] = "0b10111110011001101011010011100011";
        ram[22] = "0b10111101110010100010111001101010";
        ram[23] = "0b10111101110001001110100000000000";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_7_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_7_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_7_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_7_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_7_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_7_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
