// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_15_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_15_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_15_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_15_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111101111110010010100001001000";
        ram[1] = "0b00111010100010000100000000000000";
        ram[2] = "0b10111101111110101111010010000111";
        ram[3] = "0b00111101101101011001100001101000";
        ram[4] = "0b00111101110000011111000001000100";
        ram[5] = "0b00111110000000110110111111000110";
        ram[6] = "0b00111110000110000100000111111111";
        ram[7] = "0b00111110000000110111001100111000";
        ram[8] = "0b10111101110111110100110111101111";
        ram[9] = "0b10111100000010101110000100011001";
        ram[10] = "0b00111101100011101010110000110010";
        ram[11] = "0b00111101011010101110101010111100";
        ram[12] = "0b00111101111100100010011111001010";
        ram[13] = "0b10111110000001100110001111011110";
        ram[14] = "0b00111110100000110010100111000100";
        ram[15] = "0b10111101011010011001011101100110";
        ram[16] = "0b00111110001010001000101110001110";
        ram[17] = "0b10111110000011110101010001110101";
        ram[18] = "0b00111101110010100001010101010111";
        ram[19] = "0b00111101110000000000101000011010";
        ram[20] = "0b00111011001100000001000110010001";
        ram[21] = "0b10111110001011001001010111011100";
        ram[22] = "0b00111110000100110000011101011100";
        ram[23] = "0b10111101100010100110010000111111";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_15_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_15_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_15_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_15_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_15_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_15_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
