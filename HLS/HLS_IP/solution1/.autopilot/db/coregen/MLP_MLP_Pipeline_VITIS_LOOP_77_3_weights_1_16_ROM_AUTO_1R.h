// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_16_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_16_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_16_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_16_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111101111110100110111001101100";
        ram[1] = "0b00111011100110110101011011000000";
        ram[2] = "0b10111101001010100001001000110001";
        ram[3] = "0b10111101110010101111100100101000";
        ram[4] = "0b00111101100100100111110000011101";
        ram[5] = "0b10111101100001110011100010100100";
        ram[6] = "0b00111110001101011010100111010111";
        ram[7] = "0b00111101110100111110100100011000";
        ram[8] = "0b00111110000011101011100110010111";
        ram[9] = "0b10111110101000001111000100100111";
        ram[10] = "0b10111101110100011001100100001111";
        ram[11] = "0b00111011010011101010100111000000";
        ram[12] = "0b10111100100101011001111000010010";
        ram[13] = "0b10111110001100000111001110101000";
        ram[14] = "0b00111110111111111011101000010000";
        ram[15] = "0b00111110001010001011001111111100";
        ram[16] = "0b00111110001100100000101000001010";
        ram[17] = "0b10111111000000100101001000001000";
        ram[18] = "0b00111101101010111011000001001110";
        ram[19] = "0b10111101100101101100010011000000";
        ram[20] = "0b00111101010110000110001110010010";
        ram[21] = "0b10111110011111001110101000110110";
        ram[22] = "0b00111101110010100101011011001110";
        ram[23] = "0b10111110101100100100001000011000";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_16_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_16_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_16_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_16_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_16_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_16_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
