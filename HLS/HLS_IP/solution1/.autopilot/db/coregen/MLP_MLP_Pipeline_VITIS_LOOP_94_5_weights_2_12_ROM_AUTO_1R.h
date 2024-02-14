// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_12_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_12_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_12_ROM_AUTO_1R_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 12;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_12_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111011101111101010111100111011";
        ram[1] = "0b10111110100010100101100101111011";
        ram[2] = "0b00111100110111100100011110110010";
        ram[3] = "0b10111101101101111010000100110000";
        ram[4] = "0b10111101011001000101010100010000";
        ram[5] = "0b10111101001010010110000111011100";
        ram[6] = "0b00111110001100000101111000001010";
        ram[7] = "0b10111101011101100011010101010110";
        ram[8] = "0b00111101001101001101110110000100";
        ram[9] = "0b10111101010001010001111110111111";
        ram[10] = "0b00111101001001000001111111101100";
        ram[11] = "0b10111100110111001011000010100100";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_12_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 12;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_12_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_12_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_12_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_12_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_12_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
