// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_44_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_44_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_44_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_44_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111110100001011101110100011100";
        ram[1] = "0b00111100110010011000101111000000";
        ram[2] = "0b00111110101010000100000010011111";
        ram[3] = "0b10111101011101001101110111010010";
        ram[4] = "0b00111101101001111100100110001111";
        ram[5] = "0b00111101110100001010010001110010";
        ram[6] = "0b10111110100011001001000111001010";
        ram[7] = "0b10111101110100101111101010101111";
        ram[8] = "0b10111110000011111100100101001001";
        ram[9] = "0b00111110001010001101001111100101";
        ram[10] = "0b10111101101100111010011010100001";
        ram[11] = "0b00111101000111100101011111100100";
        ram[12] = "0b10111100100011111011100011011011";
        ram[13] = "0b00111101000100111101100011011000";
        ram[14] = "0b00111110001101110000000100010011";
        ram[15] = "0b00111101011101101100000010011000";
        ram[16] = "0b10111110011000111010010000101101";
        ram[17] = "0b00111110011111000101011000000001";
        ram[18] = "0b10111100001001111100001011001110";
        ram[19] = "0b00111101100001111001010000110000";
        ram[20] = "0b00111110100100011010110000010111";
        ram[21] = "0b00111110011111111110110001111001";
        ram[22] = "0b00111110000101001001010101101001";
        ram[23] = "0b00111110011010001111110000001111";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_44_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_44_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_44_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_44_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_44_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_44_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
