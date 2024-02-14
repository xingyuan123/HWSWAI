// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_43_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_43_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_43_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_43_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111101100111000101111100000100";
        ram[1] = "0b00111101110001111101100010010110";
        ram[2] = "0b10111110000011011110100001010100";
        ram[3] = "0b00111110000100011100011111011100";
        ram[4] = "0b00111110101110111010001001010101";
        ram[5] = "0b00111101011101000110000101001010";
        ram[6] = "0b10111110010100001111100110100011";
        ram[7] = "0b00111010010001001011100100000000";
        ram[8] = "0b10111101101001110000101010001010";
        ram[9] = "0b00111101001101111100010011010110";
        ram[10] = "0b00111100111001001101001101100110";
        ram[11] = "0b00111101111111001111001000001100";
        ram[12] = "0b00111100001011001011100101101101";
        ram[13] = "0b10111110011100100111111111010100";
        ram[14] = "0b00111101111000110000100110101100";
        ram[15] = "0b00111110010111111111001011101111";
        ram[16] = "0b00111110111110010110101000100011";
        ram[17] = "0b10111110001111100011100010110000";
        ram[18] = "0b10111101110101101111110100100100";
        ram[19] = "0b10111101100110000100010001101111";
        ram[20] = "0b10111110110011100111011111110001";
        ram[21] = "0b10111110110100110001111111011011";
        ram[22] = "0b10111110100010100000011111100000";
        ram[23] = "0b10111110100000111110000011100000";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_43_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_43_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_43_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_43_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_43_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_43_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
