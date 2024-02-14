// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_31_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_31_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_31_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_31_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111100000010010101000110000110";
        ram[1] = "0b00111011100100100001001001100000";
        ram[2] = "0b00111101100111000101101001111111";
        ram[3] = "0b00111101111101000010100001101000";
        ram[4] = "0b10111100111010001100111011011011";
        ram[5] = "0b00111101011110110100110000001101";
        ram[6] = "0b10111110000011001011110110000011";
        ram[7] = "0b10111101000011001101010111110000";
        ram[8] = "0b00111101100111100011100011110001";
        ram[9] = "0b00111101110000111111011000000100";
        ram[10] = "0b10111101000111010100010011100011";
        ram[11] = "0b10111100100001111101011010010000";
        ram[12] = "0b00111101000100100000000001000011";
        ram[13] = "0b00111110000101101000001101110111";
        ram[14] = "0b00111100000100111101000100001100";
        ram[15] = "0b10111101000001000111110010100001";
        ram[16] = "0b10111110001010011000100101100000";
        ram[17] = "0b00111110100001001110011111000010";
        ram[18] = "0b10111011010100010101001001010111";
        ram[19] = "0b00111101100111011000000110001011";
        ram[20] = "0b00111110011101111011010010000111";
        ram[21] = "0b00111110101100001101010101000011";
        ram[22] = "0b10111011011001001001110001010001";
        ram[23] = "0b00111110101011000011111011111100";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_31_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_31_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_31_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_31_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_31_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_31_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
