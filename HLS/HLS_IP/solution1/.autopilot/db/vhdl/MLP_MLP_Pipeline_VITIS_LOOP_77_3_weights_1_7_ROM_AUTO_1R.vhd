-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_7_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 32; 
             AddressWidth     : integer := 5; 
             AddressRange    : integer := 24
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_7_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110000010110101100010100110", 
    1 => "00111101010011001111001100110000", 
    2 => "00111011101110011011101100100011", 
    3 => "00111100110111011000000011100000", 
    4 => "10111101100001101101100010101101", 
    5 => "00111110000001011000110001011100", 
    6 => "00111110000101100110000000011011", 
    7 => "10111101100011001000010000101011", 
    8 => "00111101110110111100010100000000", 
    9 => "10111110101001010101011111100110", 
    10 => "10111110000011011011011111010000", 
    11 => "10111100110111011010111000000000", 
    12 => "00111110000100001000000101001011", 
    13 => "10111100110000010100001110110111", 
    14 => "00111110010100000001110100111100", 
    15 => "10111100011110000110000100011111", 
    16 => "00111110010000011001111100010110", 
    17 => "10111110100111011001101001101110", 
    18 => "00111110011101001001111011101110", 
    19 => "10111101011000001000001010001000", 
    20 => "00111100101000011010001101111110", 
    21 => "10111110011001101011010011100011", 
    22 => "10111101110010100010111001101010", 
    23 => "10111101110001001110100000000000" );


begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;

end rtl;

