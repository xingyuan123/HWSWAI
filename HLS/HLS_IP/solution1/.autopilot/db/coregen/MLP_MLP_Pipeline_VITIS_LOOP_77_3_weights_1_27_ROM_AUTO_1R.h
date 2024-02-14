// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_27_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_27_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_27_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_27_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111110100011001010010000101011";
        ram[1] = "0b10111101101010010000100111010110";
        ram[2] = "0b10111101101000101111010010111010";
        ram[3] = "0b10111110000001100000101011000111";
        ram[4] = "0b10111110011001101011100110010110";
        ram[5] = "0b10111101111101100000001111000011";
        ram[6] = "0b00111110001101110100101111100000";
        ram[7] = "0b10111011110001011111000110000000";
        ram[8] = "0b00111101001000111010111111100011";
        ram[9] = "0b10111110010000001100001011111000";
        ram[10] = "0b10111011101101111001001100100010";
        ram[11] = "0b10111110000011101100110010001000";
        ram[12] = "0b00111110001010101010110000100000";
        ram[13] = "0b00111101010011011100110110000001";
        ram[14] = "0b10111110001100111111010000010010";
        ram[15] = "0b00111101011110100110100001111010";
        ram[16] = "0b00111110001001011010101100100111";
        ram[17] = "0b00111110011010110010111110100001";
        ram[18] = "0b10111100110100110100100010011110";
        ram[19] = "0b00111101001001111101010011000110";
        ram[20] = "0b10111101000110110010010010001011";
        ram[21] = "0b10111101010010100011000000000110";
        ram[22] = "0b00111101111111010100111001010100";
        ram[23] = "0b00111101001110111111010111000100";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_27_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_27_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_27_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_27_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_27_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_27_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
