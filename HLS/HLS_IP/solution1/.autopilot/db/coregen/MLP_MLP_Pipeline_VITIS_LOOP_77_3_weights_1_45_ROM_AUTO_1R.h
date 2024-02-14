// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_45_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_45_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_45_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_45_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111101110101100010010111111000";
        ram[1] = "0b10111101111000111110101100100111";
        ram[2] = "0b00111101101001001011010100111111";
        ram[3] = "0b10111101010000111101110010000110";
        ram[4] = "0b10111101100110000011001000111001";
        ram[5] = "0b10111110000011001001010101000101";
        ram[6] = "0b10111101110011010100000100001011";
        ram[7] = "0b10111101000000101010010101100000";
        ram[8] = "0b00111110000011011010100110100111";
        ram[9] = "0b00111101101001101110101000111100";
        ram[10] = "0b10111101101001011101010100111000";
        ram[11] = "0b10111101111110101110100110110000";
        ram[12] = "0b10111101101011100001001100100010";
        ram[13] = "0b00111110000110100110101101100000";
        ram[14] = "0b00111101111111000010000110110000";
        ram[15] = "0b00111101010010011010010100010000";
        ram[16] = "0b00111100111110110000010111010100";
        ram[17] = "0b00111101101110101011100001000001";
        ram[18] = "0b00111110000010011001000011100101";
        ram[19] = "0b10111101010000111001010001100010";
        ram[20] = "0b10111101010010100010101100100111";
        ram[21] = "0b00111101111011010000011111111100";
        ram[22] = "0b00111110001001001100111100101101";
        ram[23] = "0b00111110000100101110111010100100";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_45_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_45_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_45_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_45_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_45_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_45_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
