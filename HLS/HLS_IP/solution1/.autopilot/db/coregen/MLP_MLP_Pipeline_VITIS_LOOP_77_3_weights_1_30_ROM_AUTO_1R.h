// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_30_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_30_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_30_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_30_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111101011100110011010101101001";
        ram[1] = "0b00111011011001010101111011000000";
        ram[2] = "0b10111110000101111010000010010100";
        ram[3] = "0b00111101101000110010010111110010";
        ram[4] = "0b10111110011111001010111011110000";
        ram[5] = "0b00111101101000101011100010010110";
        ram[6] = "0b00111110010001110110111011110110";
        ram[7] = "0b00111100100000111010011000101000";
        ram[8] = "0b10111101000011100111101100100000";
        ram[9] = "0b00111101101001111101001001010101";
        ram[10] = "0b00111100010111111000101011010010";
        ram[11] = "0b10111101100001101111100111111001";
        ram[12] = "0b10111100101100001011100010011000";
        ram[13] = "0b00111100101111100110110111101010";
        ram[14] = "0b10111110000001110101101000010100";
        ram[15] = "0b10111101101011001000100011101000";
        ram[16] = "0b10111101011110110001111111011110";
        ram[17] = "0b10111100100011111000001011001000";
        ram[18] = "0b00111110010100010111110101000101";
        ram[19] = "0b00111100100111010100010100011001";
        ram[20] = "0b00111110001111101110110111110000";
        ram[21] = "0b00111101111010100011011001010111";
        ram[22] = "0b00111101000111100110000011111011";
        ram[23] = "0b00111101000100011000101010110010";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_30_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_30_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_30_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_30_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_30_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_30_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
