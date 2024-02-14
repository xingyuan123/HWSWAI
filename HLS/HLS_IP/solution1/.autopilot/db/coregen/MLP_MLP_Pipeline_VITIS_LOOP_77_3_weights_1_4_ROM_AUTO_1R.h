// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_4_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_4_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_4_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_4_ROM_AUTO_1R_ram) {
        ram[0] = "0b10111110100111011100100000001100";
        ram[1] = "0b00111101110110101000010000110100";
        ram[2] = "0b10111101101000000101101001101001";
        ram[3] = "0b10111110000001100001101110001111";
        ram[4] = "0b10111110011100011000001111101101";
        ram[5] = "0b00111101100000110010101011010111";
        ram[6] = "0b00111110011001000110111101100101";
        ram[7] = "0b10111101100110001010100110000100";
        ram[8] = "0b10111101110101010000110000011011";
        ram[9] = "0b10111101110010101110001100001001";
        ram[10] = "0b10111101101111011100010101000010";
        ram[11] = "0b10111101001111110011101100000110";
        ram[12] = "0b00111101101011010110011100100000";
        ram[13] = "0b00111101101011000110111110011111";
        ram[14] = "0b00111110010011001110010001101000";
        ram[15] = "0b00111101010110110100001100010101";
        ram[16] = "0b10111101110110110101011110011100";
        ram[17] = "0b10111101101101010001111101110110";
        ram[18] = "0b00111110001010101110001101000110";
        ram[19] = "0b00111101000000100100110011101101";
        ram[20] = "0b00111101001000010001111110000011";
        ram[21] = "0b00111100101100111101100110100001";
        ram[22] = "0b00111110101011101000010010110011";
        ram[23] = "0b10111100110100001110110111001011";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_4_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_4_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_4_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_4_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_4_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_4_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
