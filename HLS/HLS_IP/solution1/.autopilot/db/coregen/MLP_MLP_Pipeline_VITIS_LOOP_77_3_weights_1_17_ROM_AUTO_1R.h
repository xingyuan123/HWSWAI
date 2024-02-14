// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_17_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_17_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_17_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_17_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111110110011011010000000001100";
        ram[1] = "0b10111101101011110001110000010101";
        ram[2] = "0b00111110101000011101011001001110";
        ram[3] = "0b00111101001101101010010010001100";
        ram[4] = "0b00111000100101101001110000101100";
        ram[5] = "0b10111101100011011010111101000011";
        ram[6] = "0b10111110010111000001100011110000";
        ram[7] = "0b10111011110011110100011000100000";
        ram[8] = "0b00111101100011110000111010010110";
        ram[9] = "0b00111110001101000110001101011010";
        ram[10] = "0b10111010111100000011111101101100";
        ram[11] = "0b00111101001110110010001101000000";
        ram[12] = "0b10111110000110000100110111001110";
        ram[13] = "0b10111110011110001101100100001111";
        ram[14] = "0b00111110100011011010101101110100";
        ram[15] = "0b00111101110101110010101001000111";
        ram[16] = "0b10111110000101001011011100111100";
        ram[17] = "0b10111100001010110010100001010110";
        ram[18] = "0b10111101100100010110001000000111";
        ram[19] = "0b00111101111110010110101001001010";
        ram[20] = "0b00111110011110101010001110111011";
        ram[21] = "0b10111100011100011011110010100101";
        ram[22] = "0b00111101101110001000101101001100";
        ram[23] = "0b00111101101111000101010100100011";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_17_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_17_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_17_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_17_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_17_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_17_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
