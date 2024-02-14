// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_15_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_15_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_15_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_15_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111101010111101000101100000100";
        ram[1] = "0b00111111000101101000110011111100";
        ram[2] = "0b00111110011000001000101001110011";
        ram[3] = "0b10111101111011111101110101010111";
        ram[4] = "0b00111101101011101101001011100100";
        ram[5] = "0b00111101000000101110110101011000";
        ram[6] = "0b00111110010000001101111000001011";
        ram[7] = "0b00111110001100101110100001010100";
        ram[8] = "0b10111110001000111000100000010010";
        ram[9] = "0b00111101010101001111101100010001";
        ram[10] = "0b00111101100101110100011001101100";
        ram[11] = "0b00111101001001011010000111101100";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_15_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 12;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_15_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_15_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_15_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_15_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_94_5_weights_2_15_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
