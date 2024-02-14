// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_39_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_39_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_39_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_39_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111110110011110100100111100011";
        ram[1] = "0b10111101011101000100100010010100";
        ram[2] = "0b00111110101101001110000011000001";
        ram[3] = "0b00111101010111011000010001001100";
        ram[4] = "0b10111110110100100100000011000101";
        ram[5] = "0b10111100110011110010000110011000";
        ram[6] = "0b10111101110001101110100100011101";
        ram[7] = "0b10111110000001010111100000011111";
        ram[8] = "0b00111101110110000111000101111110";
        ram[9] = "0b10111100111110101101010111001110";
        ram[10] = "0b10111101011101011000001101010001";
        ram[11] = "0b10111101110010101111001101010110";
        ram[12] = "0b00111101010000111111111111010100";
        ram[13] = "0b10111101100100100101110100000000";
        ram[14] = "0b10111101111110111001100011111100";
        ram[15] = "0b10111100001100010110000010011001";
        ram[16] = "0b10111111000011101011001110111010";
        ram[17] = "0b00111100101001101110111011000101";
        ram[18] = "0b00111110100100110100111111101011";
        ram[19] = "0b00111011001101011001100111000001";
        ram[20] = "0b00111111000101011001000101111000";
        ram[21] = "0b00111110101000111011101001011001";
        ram[22] = "0b00111110111101111000010001010110";
        ram[23] = "0b00111110101101101001011001100111";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_39_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_39_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_39_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_39_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_39_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_39_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
