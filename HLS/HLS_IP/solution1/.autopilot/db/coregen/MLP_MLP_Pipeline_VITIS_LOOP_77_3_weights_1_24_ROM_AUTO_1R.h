// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_24_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_24_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_24_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_24_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111110011110110000110111111111";
        ram[1] = "0b10111101110100011100001001111110";
        ram[2] = "0b10111110000000000000101001110101";
        ram[3] = "0b10111110000100111100010010110100";
        ram[4] = "0b10111101011010110110110110001100";
        ram[5] = "0b00111101111110100010110001110110";
        ram[6] = "0b00111101110100001110101010010101";
        ram[7] = "0b10111101111100011011000010100111";
        ram[8] = "0b10111101010000100011010001000101";
        ram[9] = "0b00111110000000000110100100101010";
        ram[10] = "0b00111110000001000111111101110000";
        ram[11] = "0b10111100011101101001001000100000";
        ram[12] = "0b00111100111110011110100110011011";
        ram[13] = "0b00111100110100001010111000101000";
        ram[14] = "0b00111101110011100101011111000111";
        ram[15] = "0b00111100110011010010100011111010";
        ram[16] = "0b00111110000011111100111011100001";
        ram[17] = "0b00111101100000110011110110101000";
        ram[18] = "0b10111101100100000001110111001001";
        ram[19] = "0b00111011101010000100100101000011";
        ram[20] = "0b10111101111100000011011110001011";
        ram[21] = "0b10111011111111100100011010100101";
        ram[22] = "0b10111101000101100110110111100101";
        ram[23] = "0b10111011111010000000101000101100";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_24_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_24_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_24_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_24_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_24_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_24_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
