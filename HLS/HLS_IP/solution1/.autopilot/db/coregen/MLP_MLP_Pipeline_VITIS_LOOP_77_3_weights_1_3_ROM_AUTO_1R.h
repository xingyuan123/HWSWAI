// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_3_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_3_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_3_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_3_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111101100010011001000010010001";
        ram[1] = "0b00111110000000010100100010101000";
        ram[2] = "0b00111101110101010000010000101001";
        ram[3] = "0b00111100101111110011000001000000";
        ram[4] = "0b10111101101011101001111110011000";
        ram[5] = "0b00111101101011100100010010000100";
        ram[6] = "0b10111110001011010001000001010110";
        ram[7] = "0b00111101110001011000111100100010";
        ram[8] = "0b10111101111101111001101110100010";
        ram[9] = "0b00111110100100100111000101101001";
        ram[10] = "0b10111101000101100010111111010100";
        ram[11] = "0b00111011010001001101111100000000";
        ram[12] = "0b00111101000111000001110110011110";
        ram[13] = "0b00111101100101110001001110000000";
        ram[14] = "0b10111110000110000100101010100011";
        ram[15] = "0b10111010100100010101001001010100";
        ram[16] = "0b10111110010101011000001010111011";
        ram[17] = "0b00111110000000000100100011101100";
        ram[18] = "0b10111101010101001101110011011100";
        ram[19] = "0b00111101100110100011101101111001";
        ram[20] = "0b00111110011000011111000111110100";
        ram[21] = "0b00111110010111111001101000011010";
        ram[22] = "0b00111101110000101010110001011000";
        ram[23] = "0b00111101110110000111001111011110";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_3_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_3_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_3_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_3_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_3_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_3_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
