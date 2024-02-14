// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_34_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_34_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_34_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_34_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111110110011000001101001100010";
        ram[1] = "0b10111101110011100111000001101110";
        ram[2] = "0b00111110110101110011111010111101";
        ram[3] = "0b00111101100000010000111101101000";
        ram[4] = "0b10111110100100001100100000110011";
        ram[5] = "0b00111110000000010101001011000001";
        ram[6] = "0b10111101001100001110110100011000";
        ram[7] = "0b00111101111011001000110010100000";
        ram[8] = "0b00111011010110000001000010100100";
        ram[9] = "0b10111101000011010110100011111010";
        ram[10] = "0b10111101001001011001010100101001";
        ram[11] = "0b00111100010000111011110100000000";
        ram[12] = "0b10111101000011001101100000001111";
        ram[13] = "0b00111100110111011001111110000010";
        ram[14] = "0b00111101111111101111011001011010";
        ram[15] = "0b10111110000111110011000101110101";
        ram[16] = "0b10111111000011111000000010010100";
        ram[17] = "0b00111110011011000101001001100011";
        ram[18] = "0b00111101111100011001101000111000";
        ram[19] = "0b10111101100010101011010111111001";
        ram[20] = "0b00111110111000110111110001101110";
        ram[21] = "0b00111110110010010101100010100000";
        ram[22] = "0b00111110101001001001111011101010";
        ram[23] = "0b00111110111111010011010111001101";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_34_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_34_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_34_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_34_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_34_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_34_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
