// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_22_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_22_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_22_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_22_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111110100111010101100001100111";
        ram[1] = "0b10111101110101001101110111110000";
        ram[2] = "0b10111110001111001110011011101100";
        ram[3] = "0b00111101110000001011110010010110";
        ram[4] = "0b10111101011100100100010001000000";
        ram[5] = "0b10111010011100100101100010101111";
        ram[6] = "0b00111110100000101111110000101111";
        ram[7] = "0b00111101011111101011011110010100";
        ram[8] = "0b00111110000000010010001010111100";
        ram[9] = "0b10111101111010001100110101101111";
        ram[10] = "0b10111101100011011101111000111010";
        ram[11] = "0b00111010001000101011000100000000";
        ram[12] = "0b10111110000001011000101110111101";
        ram[13] = "0b00111110011000111001110000011010";
        ram[14] = "0b10111101111001010000001110011111";
        ram[15] = "0b10111110000110010101011111101001";
        ram[16] = "0b10111101001100100000001100110000";
        ram[17] = "0b00111101111010101111100001001010";
        ram[18] = "0b00111110011110001100101011110011";
        ram[19] = "0b00111101111010001010011011001101";
        ram[20] = "0b10111101011000100011000100110010";
        ram[21] = "0b00111101100010001100001001111111";
        ram[22] = "0b00111110001010111111011101110101";
        ram[23] = "0b10111011110100101001110110001111";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_22_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_22_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_22_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_22_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_22_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_22_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
