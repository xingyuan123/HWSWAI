// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_23_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_23_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_23_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_23_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111101000001001101000001110001";
        ram[1] = "0b00111101111111100111101000010100";
        ram[2] = "0b00111101010101001100001101110001";
        ram[3] = "0b10111101110010111001000101110111";
        ram[4] = "0b10111001111010010010100111101110";
        ram[5] = "0b00111101111110000100101110011111";
        ram[6] = "0b00111101100011011011101111111100";
        ram[7] = "0b00111101000100100001110101000100";
        ram[8] = "0b10111101100111101111111100010011";
        ram[9] = "0b00111101110001111011111111010110";
        ram[10] = "0b10111101110101101001100000011100";
        ram[11] = "0b00111110000100010111110110011100";
        ram[12] = "0b10111101000110111110100000000111";
        ram[13] = "0b00111010001101111100101010100101";
        ram[14] = "0b10111101110000000010001000001001";
        ram[15] = "0b00111101100111010001100100011110";
        ram[16] = "0b00111110000010011010000011010101";
        ram[17] = "0b00111110100000111110101001100100";
        ram[18] = "0b10111110000010010111000111101001";
        ram[19] = "0b10111100100001010110001011111010";
        ram[20] = "0b10111100010110111000010110110101";
        ram[21] = "0b00111110100001100110100100011101";
        ram[22] = "0b00111110001100100001111111111111";
        ram[23] = "0b10111100101100010110000100101011";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_23_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_23_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_23_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_23_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_23_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_23_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
