// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_42_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_42_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_42_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_42_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111110011001100100000001000001";
        ram[1] = "0b10111100000111001001110111010000";
        ram[2] = "0b00111110011001001000101111001011";
        ram[3] = "0b00111101001000110110100111000100";
        ram[4] = "0b00111110101011111111001000110111";
        ram[5] = "0b10111101001110000011000101010101";
        ram[6] = "0b10111110100001001101000111101001";
        ram[7] = "0b10111101101110110110101010001100";
        ram[8] = "0b10111101001000001011000110011010";
        ram[9] = "0b00111111000011100110000001101010";
        ram[10] = "0b00111100110010101110101101111010";
        ram[11] = "0b10111100011101110011110111000000";
        ram[12] = "0b10111101110110110101000011100110";
        ram[13] = "0b10111101111011100001000010001011";
        ram[14] = "0b00111101110011111001111000110011";
        ram[15] = "0b00111110010100000000110110010001";
        ram[16] = "0b00111110011100010011011001101100";
        ram[17] = "0b00111110100010001000011110111001";
        ram[18] = "0b10111110011100010011111000001011";
        ram[19] = "0b10111101000110111101010000100010";
        ram[20] = "0b00111100000011100110100000000010";
        ram[21] = "0b00111110001110011111001100001110";
        ram[22] = "0b10111101101110000111011010110101";
        ram[23] = "0b00111110000111111111010001110001";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_42_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_42_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_42_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_42_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_42_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_42_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
