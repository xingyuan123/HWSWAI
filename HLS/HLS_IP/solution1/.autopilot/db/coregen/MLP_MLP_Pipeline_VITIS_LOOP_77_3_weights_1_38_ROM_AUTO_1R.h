// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_38_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_38_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_38_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_38_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111110010011111101010010010111";
        ram[1] = "0b10111110000000001011100001011011";
        ram[2] = "0b10111101010101100110010011111011";
        ram[3] = "0b10111100011100001111001110110000";
        ram[4] = "0b10111110011010011000110110001010";
        ram[5] = "0b00111101010110100100011100010101";
        ram[6] = "0b00111110000010101111010010100011";
        ram[7] = "0b10111011001010000111001101000000";
        ram[8] = "0b10111101100001001001010110001111";
        ram[9] = "0b10111101100100100011011000011010";
        ram[10] = "0b00111101101011011101001111001111";
        ram[11] = "0b10111101011010000100111111001010";
        ram[12] = "0b10111101100011000100000101011101";
        ram[13] = "0b00111110111001001000001010110001";
        ram[14] = "0b10111110100000011001100110010001";
        ram[15] = "0b10111110000110011101000100100011";
        ram[16] = "0b10111110110011101001011110010001";
        ram[17] = "0b00111110101011010001011100011011";
        ram[18] = "0b00111101010001100110001010111101";
        ram[19] = "0b00111100001010111111011101011000";
        ram[20] = "0b00111110100011011100000000000100";
        ram[21] = "0b00111110101100100001010011101110";
        ram[22] = "0b00111110100010000110010010110001";
        ram[23] = "0b00111110100101001011100010001100";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_38_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_38_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_38_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_38_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_38_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_38_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
