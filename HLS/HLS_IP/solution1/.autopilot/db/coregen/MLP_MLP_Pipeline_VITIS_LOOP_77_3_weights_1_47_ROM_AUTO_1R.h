// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_47_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_47_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_47_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_47_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111101111110110011100011011001";
        ram[1] = "0b00111101011111010001101111001000";
        ram[2] = "0b00111101101000010000111111001001";
        ram[3] = "0b10111101000110010010011010101010";
        ram[4] = "0b00111110111000100000100001101111";
        ram[5] = "0b10111101000001011001111110010010";
        ram[6] = "0b10111110100100101100101110000101";
        ram[7] = "0b00111101101011111011001011010110";
        ram[8] = "0b10111101111001101110011100100011";
        ram[9] = "0b00111110110000010000000011100100";
        ram[10] = "0b00111110000000111100000111010100";
        ram[11] = "0b10111101011110110110011111110110";
        ram[12] = "0b00111101110010111100110111010001";
        ram[13] = "0b10111101111110011100101100000011";
        ram[14] = "0b10111100100100010101001010101100";
        ram[15] = "0b00111110010011101100011011010000";
        ram[16] = "0b00111110101101111000001011111100";
        ram[17] = "0b00111110000000011100001010110000";
        ram[18] = "0b10111110100010110111001000010000";
        ram[19] = "0b10111101111101011100111111011010";
        ram[20] = "0b10111110011000101011001000011110";
        ram[21] = "0b10111101111101011010000000010010";
        ram[22] = "0b10111110000001000001100010111000";
        ram[23] = "0b00111100101011100011011001000110";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_47_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_47_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_47_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_47_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_47_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_47_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
