// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_25_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_25_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_25_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_25_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111101111000100001100001001010";
        ram[1] = "0b00111100010110101001000101000000";
        ram[2] = "0b00111101110000010010111100111101";
        ram[3] = "0b10111101011001101110001000100000";
        ram[4] = "0b00111100000000011011011001110111";
        ram[5] = "0b10111101010011000111110001111000";
        ram[6] = "0b00111011101110011100101100101100";
        ram[7] = "0b10111101101001101100100110100010";
        ram[8] = "0b10111101011101001001000101111000";
        ram[9] = "0b00111110010100001111010000110000";
        ram[10] = "0b10111101100011100001110111110110";
        ram[11] = "0b10111101010011101111110111100000";
        ram[12] = "0b10111100010001011001011011101111";
        ram[13] = "0b00111110011001100000010011110011";
        ram[14] = "0b10111110011101000110010011110001";
        ram[15] = "0b10111101100101011010101111100001";
        ram[16] = "0b10111110100111011111111010111001";
        ram[17] = "0b00111111000001000001101110100001";
        ram[18] = "0b00111101010001000110000001000100";
        ram[19] = "0b00111100111000101000010100100100";
        ram[20] = "0b00111110100110110110000111100110";
        ram[21] = "0b00111110110000101101110001010110";
        ram[22] = "0b00111110000110101010101100011111";
        ram[23] = "0b00111110101011110000111011001100";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_25_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_25_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_25_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_25_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_25_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_25_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
