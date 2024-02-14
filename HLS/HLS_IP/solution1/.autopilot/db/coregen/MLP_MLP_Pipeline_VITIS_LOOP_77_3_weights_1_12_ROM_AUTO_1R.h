// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_12_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_12_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_12_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_12_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111100110100001010000010000000";
        ram[1] = "0b10111101100111011101000110110001";
        ram[2] = "0b00111110100111011000110101101000";
        ram[3] = "0b00111101111010100011010011000100";
        ram[4] = "0b00111101011000100101110001000110";
        ram[5] = "0b10111101101011100010110000011100";
        ram[6] = "0b10111101100100110001101010110001";
        ram[7] = "0b00111100010011101001011101000000";
        ram[8] = "0b00111101111110111110000111101010";
        ram[9] = "0b10111100100010000010000010011100";
        ram[10] = "0b00111100111010001101110000100011";
        ram[11] = "0b10111101100111111101111101000101";
        ram[12] = "0b00111101110111100011000110010010";
        ram[13] = "0b00111100111101101100111110111010";
        ram[14] = "0b00111110100011101110100000010011";
        ram[15] = "0b10111011010001110001101011100101";
        ram[16] = "0b10111100100111001100100000100011";
        ram[17] = "0b10111110100101100110101100110010";
        ram[18] = "0b00111101101000010110111101000010";
        ram[19] = "0b00111101101110010100111011111110";
        ram[20] = "0b10111101101111100110101100101010";
        ram[21] = "0b00111100100111011000010000100110";
        ram[22] = "0b00111110010111100110001111010111";
        ram[23] = "0b00111101010001100001101111001000";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_12_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_12_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_12_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_12_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_12_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_12_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
