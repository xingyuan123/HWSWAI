// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_21_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_21_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_21_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_21_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111110100110011101100010001110";
        ram[1] = "0b00111101011110001010110001100100";
        ram[2] = "0b00111110000100100101000011010111";
        ram[3] = "0b00111010100111100011100000000000";
        ram[4] = "0b10111110000001101110110111111110";
        ram[5] = "0b00111101001111101100111110101011";
        ram[6] = "0b00111101011111000110000010100000";
        ram[7] = "0b10111101110000001111000011011001";
        ram[8] = "0b10111101110000011101110011011001";
        ram[9] = "0b10111100001100101101010101010110";
        ram[10] = "0b00111110000001110111111000011110";
        ram[11] = "0b10111101000000110011110011010010";
        ram[12] = "0b10111101101101010010000000110110";
        ram[13] = "0b10111100001010010101011010011100";
        ram[14] = "0b00111110011111011101011100000100";
        ram[15] = "0b00111101110000001011000011000111";
        ram[16] = "0b10111110001100010100111001001110";
        ram[17] = "0b10111110101101011111111001000111";
        ram[18] = "0b10111101001111110100010000101101";
        ram[19] = "0b00111101110100011100110010110000";
        ram[20] = "0b00111110000111100101000110010000";
        ram[21] = "0b10111101011001000110001100101011";
        ram[22] = "0b00111110000010001111010110010111";
        ram[23] = "0b00111010001011000111100000110000";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_21_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_21_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_21_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_21_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_21_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_21_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
