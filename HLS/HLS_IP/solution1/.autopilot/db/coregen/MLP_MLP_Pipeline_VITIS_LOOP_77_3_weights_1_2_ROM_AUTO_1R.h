// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_2_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_2_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_2_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_2_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111101101100110000000010110001";
        ram[1] = "0b10111101000100100101001000001110";
        ram[2] = "0b00111101100011101100011000111001";
        ram[3] = "0b00111101110001101000100000000000";
        ram[4] = "0b10111101101101000111101001111011";
        ram[5] = "0b10111101010111010000100110000011";
        ram[6] = "0b00111110001101101111111000001010";
        ram[7] = "0b10111101110000001101100011000010";
        ram[8] = "0b00111011100010101100011000001111";
        ram[9] = "0b00111101011011101011010111001001";
        ram[10] = "0b00111101110010100110111111101001";
        ram[11] = "0b10111101010001010101011110010010";
        ram[12] = "0b10111101010100111011011011011100";
        ram[13] = "0b00111101100101011000111000010110";
        ram[14] = "0b00111110101010001001001000000100";
        ram[15] = "0b00111101000101111100101111110001";
        ram[16] = "0b00111100110010101110000001011000";
        ram[17] = "0b10111110000110010110101111101000";
        ram[18] = "0b00111101101111011011111101100101";
        ram[19] = "0b10111101101011001100011000100101";
        ram[20] = "0b10111101010100011111111110111111";
        ram[21] = "0b10111110010010011000100111010010";
        ram[22] = "0b10111101100000100100010100000100";
        ram[23] = "0b10111110011000110011010001001001";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_2_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_2_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_2_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_2_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_2_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_2_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
