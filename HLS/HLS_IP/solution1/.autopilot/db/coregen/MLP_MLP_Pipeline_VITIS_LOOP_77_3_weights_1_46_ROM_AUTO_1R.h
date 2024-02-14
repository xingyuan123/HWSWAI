// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_46_ROM_AUTO_1R_H__
#define __MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_46_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_46_ROM_AUTO_1R_ram : public sc_core::sc_module {

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


   SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_46_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111110001111000101100010010010";
        ram[1] = "0b00111110000000010000101000001100";
        ram[2] = "0b10111100011110111011110010010101";
        ram[3] = "0b10111100110001000111001110111000";
        ram[4] = "0b10111110010100000100101101110001";
        ram[5] = "0b00111101100111010011011001000000";
        ram[6] = "0b00111110001010100100100000110001";
        ram[7] = "0b00111110000001011010101100000100";
        ram[8] = "0b10111110000011001110000100101111";
        ram[9] = "0b10111100100110000000000001001100";
        ram[10] = "0b00111011000110111001010101000111";
        ram[11] = "0b10111101100100001001101100000110";
        ram[12] = "0b10111101000010010001001111010110";
        ram[13] = "0b00111110010111000101011001111101";
        ram[14] = "0b00111100011000110000010110110001";
        ram[15] = "0b10111101101001111011000000111001";
        ram[16] = "0b00111101110111000110000011101001";
        ram[17] = "0b10111101111101011100110100100001";
        ram[18] = "0b00111101101001100100111111100010";
        ram[19] = "0b10111101010111001011001011110100";
        ram[20] = "0b10111101001010101010110000001101";
        ram[21] = "0b10111100100001011110110011000111";
        ram[22] = "0b00111101101101101011111111101001";
        ram[23] = "0b10111110001000101011101100101010";


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


SC_MODULE(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_46_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_46_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_46_ROM_AUTO_1R) {
meminst = new MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_46_ROM_AUTO_1R_ram("MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_46_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_46_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
