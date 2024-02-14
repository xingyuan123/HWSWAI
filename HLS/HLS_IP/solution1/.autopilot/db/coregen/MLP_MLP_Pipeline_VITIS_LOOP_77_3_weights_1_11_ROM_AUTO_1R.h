// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_11_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_11_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_11_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_11_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111001011001110111111010110011";
        ram[1] = "0b00111101101101011100100011111000";
        ram[2] = "0b00111110001000101010100011010011";
        ram[3] = "0b00111101000100101101011011011000";
        ram[4] = "0b00111101100100000110000110000001";
        ram[5] = "0b10111101100001100100011010101000";
        ram[6] = "0b00111110000011010110101101000001";
        ram[7] = "0b10111100000001010010011110110000";
        ram[8] = "0b10111110000100111100101101010100";
        ram[9] = "0b10111110000110011000010110100111";
        ram[10] = "0b00111110000000111011111110100011";
        ram[11] = "0b10111100110000001011010101011100";
        ram[12] = "0b00111101011011000001010001001001";
        ram[13] = "0b00111101000010001010000110000010";
        ram[14] = "0b00111110100101000110001001111101";
        ram[15] = "0b00111101000010011000101010101111";
        ram[16] = "0b00111110001011010001011110011101";
        ram[17] = "0b10111101101110000011111100000010";
        ram[18] = "0b00111100100110001111001110010101";
        ram[19] = "0b00111101100101100110100001111000";
        ram[20] = "0b00111110001000100100111100001000";
        ram[21] = "0b10111101010011111001110000110100";
        ram[22] = "0b00111110000001111010100101001111";
        ram[23] = "0b10111101011101001110011101110100";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_11_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_11_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_11_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_11_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_11_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_11_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
