// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_0_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_0_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_0_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_0_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111111000010111111111000010110";
        ram[1] = "0b10111100011011001111111001110000";
        ram[2] = "0b00111100100011110100100100011100";
        ram[3] = "0b00111101001010101000110010110100";
        ram[4] = "0b10111101100010001010010111110110";
        ram[5] = "0b00111011101111110100011010011001";
        ram[6] = "0b00111110001111101110001001110011";
        ram[7] = "0b10111101001010011101010110000110";
        ram[8] = "0b00111101101011000101011001000110";
        ram[9] = "0b00111110100000001110000101010000";
        ram[10] = "0b00111101100101101010000010110000";
        ram[11] = "0b10111101111111001111010110000010";
        ram[12] = "0b10111101001000100111101100010011";
        ram[13] = "0b00111110101001011101110000100111";
        ram[14] = "0b00111100101000001011110101100001";
        ram[15] = "0b10111110000100011000011011000100";
        ram[16] = "0b00111110101101001110101010000010";
        ram[17] = "0b00111110110100001110010000111101";
        ram[18] = "0b00111100101010100010011010111000";
        ram[19] = "0b00111100010100001101010011011011";
        ram[20] = "0b10111101000011100010110011010100";
        ram[21] = "0b10111011100101111110011101111001";
        ram[22] = "0b00111100010110100101000101001011";
        ram[23] = "0b10111100000011000101100001010011";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_0_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_0_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_0_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_0_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_0_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_0_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
