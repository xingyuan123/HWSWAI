// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_19_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_19_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_19_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_19_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111110010110001000000111101101";
        ram[1] = "0b00111010101010011000001110000000";
        ram[2] = "0b00111110011111111111111110000101";
        ram[3] = "0b00111101110100101011010101000110";
        ram[4] = "0b10111101101001100101011101110000";
        ram[5] = "0b00111101011101110010100011100001";
        ram[6] = "0b00111110001000100111000001101101";
        ram[7] = "0b10111101111011110110101101101100";
        ram[8] = "0b00111110000010010011001110011111";
        ram[9] = "0b10111110100101001110000110011001";
        ram[10] = "0b00111101111010000101001011110010";
        ram[11] = "0b00111010011111000110000100000000";
        ram[12] = "0b00111101110001110000011011000011";
        ram[13] = "0b10111110000110101010010000000101";
        ram[14] = "0b00111110010100000011010001110010";
        ram[15] = "0b00111110000001011011001110000011";
        ram[16] = "0b10111110001111010001011100100000";
        ram[17] = "0b10111110011000111110000101110110";
        ram[18] = "0b00111101100000011110111100011011";
        ram[19] = "0b00111101000001000001100010111010";
        ram[20] = "0b00111110000110110001001101100011";
        ram[21] = "0b10111101000011010000010011001011";
        ram[22] = "0b00111110000101111010010000100101";
        ram[23] = "0b10111011000101110100000011100110";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_19_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_19_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_19_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_19_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_19_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_19_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
