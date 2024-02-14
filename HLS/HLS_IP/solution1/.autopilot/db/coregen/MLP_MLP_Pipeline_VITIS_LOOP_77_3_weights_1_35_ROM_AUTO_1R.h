// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_35_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_35_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_35_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_35_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111110100111011100100000111110";
        ram[1] = "0b00111101010001110000011000100000";
        ram[2] = "0b00111101010110111011111000001111";
        ram[3] = "0b10111110000010111110111110101101";
        ram[4] = "0b10111110011001011001000100001011";
        ram[5] = "0b10111100001111110101111101101110";
        ram[6] = "0b10111101100010100000100000111000";
        ram[7] = "0b10111101101100011000001100110000";
        ram[8] = "0b00111101101100101000101110000110";
        ram[9] = "0b10111101000001001111000001100001";
        ram[10] = "0b00111101111100000101101111011111";
        ram[11] = "0b10111101001010101011001100111010";
        ram[12] = "0b10111101100111111110111010000101";
        ram[13] = "0b10111101000100000010000000011110";
        ram[14] = "0b00111110010111000100101100000100";
        ram[15] = "0b00111010101100000111100101101010";
        ram[16] = "0b10111101100010101111111110010000";
        ram[17] = "0b10111110010110100000111011010111";
        ram[18] = "0b00111101101111111011100011010101";
        ram[19] = "0b10111101110101001100100011011000";
        ram[20] = "0b00111101111011001101100010100111";
        ram[21] = "0b10111100110000001010001001010011";
        ram[22] = "0b00111110010001101101000111001001";
        ram[23] = "0b00111110001000000001110110000111";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_35_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_35_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_35_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_35_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_35_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_35_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
