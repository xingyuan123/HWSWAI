// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_6_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_6_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_6_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_6_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111110001110001110011011001001";
        ram[1] = "0b00111100010111111111101110110000";
        ram[2] = "0b00111101100011011001111101010101";
        ram[3] = "0b10111101111101011001010001100010";
        ram[4] = "0b10111110011001001111001111001010";
        ram[5] = "0b10111101010010011000101111001011";
        ram[6] = "0b00111101111101011000100000010001";
        ram[7] = "0b00111101101110100110000000001110";
        ram[8] = "0b10111101001101000001110000011101";
        ram[9] = "0b10111101101000110010101000110110";
        ram[10] = "0b10111110000101010001001101111000";
        ram[11] = "0b10111100101001001000000110101000";
        ram[12] = "0b10111101010101100000110111010101";
        ram[13] = "0b00111110000100111000000001100011";
        ram[14] = "0b00111101101111011010010011110111";
        ram[15] = "0b00111011100001010000001011011001";
        ram[16] = "0b10111110001001001111010011111100";
        ram[17] = "0b00111110011110101110111001100110";
        ram[18] = "0b00111110010011010111110010110100";
        ram[19] = "0b10111101011111101111011111000000";
        ram[20] = "0b00111101000100010100010000101100";
        ram[21] = "0b00111101101111101101000110000010";
        ram[22] = "0b00111110100000011110010011000101";
        ram[23] = "0b00111101000111000110110101011001";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_6_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_6_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_6_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_6_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_6_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_6_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
