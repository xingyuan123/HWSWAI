// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_5_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_5_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_5_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_5_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111100100010101111000111001011";
        ram[1] = "0b10111101111101100011010111001000";
        ram[2] = "0b00111101110010010011110001011110";
        ram[3] = "0b00111101111000010001111011010000";
        ram[4] = "0b00111100111110111010100110010110";
        ram[5] = "0b10111101110010100100100010100111";
        ram[6] = "0b00111011100101101101011111011110";
        ram[7] = "0b10111101111101100001001010100110";
        ram[8] = "0b10111110000010011110001100110110";
        ram[9] = "0b00111110010101010000111010101111";
        ram[10] = "0b10111101110010000000110100001010";
        ram[11] = "0b10111100100100101101100001111000";
        ram[12] = "0b10111110000001001111001000001001";
        ram[13] = "0b10111100110110010001001111000010";
        ram[14] = "0b00111101110101100010100010100001";
        ram[15] = "0b00111001110010110101110101111001";
        ram[16] = "0b00111110000100010111111000011101";
        ram[17] = "0b00111110000111111101111001100101";
        ram[18] = "0b10111101001111110110011000010000";
        ram[19] = "0b00111101010010001010010100001011";
        ram[20] = "0b00111011111111001100010001110110";
        ram[21] = "0b00111101111100110011101110010110";
        ram[22] = "0b00111101000111110001010100100001";
        ram[23] = "0b00111101100010010111100010011101";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_5_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_5_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_5_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_5_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_5_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_5_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
