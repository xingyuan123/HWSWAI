// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_40_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_40_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_40_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_40_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111110110001000110011101011000";
        ram[1] = "0b00111101001010001100000101001000";
        ram[2] = "0b10111100110011010100100110001101";
        ram[3] = "0b10111110000010011110111000111010";
        ram[4] = "0b10111110010011110011110000110010";
        ram[5] = "0b10111101111001101101001100011011";
        ram[6] = "0b00111101110001110100010100011110";
        ram[7] = "0b10111101011011001100000010001110";
        ram[8] = "0b10111100000000111111111100101010";
        ram[9] = "0b00111101111000100000100010110111";
        ram[10] = "0b10111101000100100110000100010001";
        ram[11] = "0b00111101110010001100101000110100";
        ram[12] = "0b00111101111000101101011000100000";
        ram[13] = "0b00111110100111000110111000011010";
        ram[14] = "0b00111100111111101100011011110010";
        ram[15] = "0b10111100101010001100100000111100";
        ram[16] = "0b00111110011100110111001011110001";
        ram[17] = "0b00111110110101111000110000000100";
        ram[18] = "0b00111101101100000111001001101101";
        ram[19] = "0b00111101110101100110011111110100";
        ram[20] = "0b10111101001011100000001101010011";
        ram[21] = "0b00111110001101110100100100100011";
        ram[22] = "0b10111101101001100110101011111101";
        ram[23] = "0b00111101100101110111001110010001";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_40_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_40_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_40_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_40_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_40_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_40_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
