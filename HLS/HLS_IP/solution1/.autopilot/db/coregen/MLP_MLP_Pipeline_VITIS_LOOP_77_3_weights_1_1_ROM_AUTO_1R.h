// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_1_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_1_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_1_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_1_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111101001111110111110010111101";
        ram[1] = "0b10111101111010100011110011001000";
        ram[2] = "0b00111110101110100100110000000001";
        ram[3] = "0b10111011100100011110110100100000";
        ram[4] = "0b00111110010001111001110000101001";
        ram[5] = "0b10111101100101111000011011110001";
        ram[6] = "0b10111110011000101101000010001001";
        ram[7] = "0b10111101111000011000000001011100";
        ram[8] = "0b00111101111011101100101001000110";
        ram[9] = "0b00111110100001110111010110001111";
        ram[10] = "0b10111100111011000101110110111111";
        ram[11] = "0b10111101011001101000011100001000";
        ram[12] = "0b00111101001001010010000000001010";
        ram[13] = "0b10111110010110010010110011001001";
        ram[14] = "0b00111101101100111111101001001101";
        ram[15] = "0b00111101100111001110110010001101";
        ram[16] = "0b00111101000110101101010000111000";
        ram[17] = "0b00111101010000010000111110001110";
        ram[18] = "0b10111110001000011010011101100001";
        ram[19] = "0b10111100101101101011110001011111";
        ram[20] = "0b10111110000000111110100001101011";
        ram[21] = "0b00111101101110011110111001101011";
        ram[22] = "0b00111101001011100010001100101101";
        ram[23] = "0b00111110101001110111011000111000";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_1_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_1_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_1_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_1_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_1_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_1_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
