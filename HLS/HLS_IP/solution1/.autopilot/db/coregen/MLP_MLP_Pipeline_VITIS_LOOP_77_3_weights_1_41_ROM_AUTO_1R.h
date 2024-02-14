// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_41_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_41_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_41_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_41_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111110100101100011010100001100";
        ram[1] = "0b00111110000011111001011100100000";
        ram[2] = "0b00111110101110101000001011101001";
        ram[3] = "0b10111101110101100111100010010110";
        ram[4] = "0b00111110101110010110101011001001";
        ram[5] = "0b10111101101101100101001000101111";
        ram[6] = "0b10111110100011010110010111001001";
        ram[7] = "0b10111101111001101010100010011110";
        ram[8] = "0b00111110000000111100001111101011";
        ram[9] = "0b00111110111100011110110000011000";
        ram[10] = "0b10111101111001010110101000101000";
        ram[11] = "0b10111011000101000001001010000000";
        ram[12] = "0b10111101101011101101011010101001";
        ram[13] = "0b10111101011000000111100001101101";
        ram[14] = "0b10111101010100111111111101111101";
        ram[15] = "0b00111110010000010011011010101001";
        ram[16] = "0b00111110111000100010001110001010";
        ram[17] = "0b00111110100100110001101101100111";
        ram[18] = "0b10111110001111000110111100001100";
        ram[19] = "0b10111101001010010011100011100011";
        ram[20] = "0b10111110010011000000101101011001";
        ram[21] = "0b00111101101000110100010001101000";
        ram[22] = "0b10111110100000110101011010100001";
        ram[23] = "0b00111110011000101110000110011000";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_41_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_41_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_41_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_41_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_41_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_41_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
