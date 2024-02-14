// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_13_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_13_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_13_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_13_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111110101101110111110010011000";
        ram[1] = "0b00111100100100101001011010111000";
        ram[2] = "0b00111110010000010011100101110101";
        ram[3] = "0b00111101110100110011101100011100";
        ram[4] = "0b00111110000101101000100001101011";
        ram[5] = "0b00111101110110011110010011010011";
        ram[6] = "0b10111101110011010010010101110100";
        ram[7] = "0b10111101100100000110011001100000";
        ram[8] = "0b10111110000000001001110001000000";
        ram[9] = "0b10111110100000010101010000110100";
        ram[10] = "0b10111101101000011001010000000100";
        ram[11] = "0b10111101000110110110100000000000";
        ram[12] = "0b10111101000010100110010001111001";
        ram[13] = "0b10111110010110110011100000011110";
        ram[14] = "0b00111110100100011110110100000110";
        ram[15] = "0b00111100110000010100010110100001";
        ram[16] = "0b10111100101110001101100001101000";
        ram[17] = "0b10111110100110010010010111110101";
        ram[18] = "0b00111100111110111111001110101111";
        ram[19] = "0b00111101101110001010110011111011";
        ram[20] = "0b10111101100001110100010111101011";
        ram[21] = "0b10111110100101011100100100011100";
        ram[22] = "0b00111110010011000110100000110111";
        ram[23] = "0b10111101111000001000010111000000";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_13_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_13_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_13_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_13_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_13_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_13_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
