-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_32_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_32_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110110111000011001000001000", 
    1 => "10111100111101100101111000001000", 
    2 => "10111110100010000000110110110011", 
    3 => "10111101010000101001111110011110", 
    4 => "00111100100001101100000011101010", 
    5 => "00111101110001100001101000001100", 
    6 => "00111110011010000111001101011010", 
    7 => "00111101100110010010111010110110", 
    8 => "00111101001001001000110100101010", 
    9 => "00111110001101010110001110111010", 
    10 => "10111100010110010010100100110111", 
    11 => "00111100100000001001110101101000", 
    12 => "00111101110010001110101010111110", 
    13 => "00111110001110100100110001000100", 
    14 => "00111101101101111101010001101101", 
    15 => "00111110000011011101011110010101", 
    16 => "00111110110100110100010110000011", 
    17 => "00111110100010000000011001110111", 
    18 => "00111101100111001000100111000101", 
    19 => "10111101100100101100101101011010", 
    20 => "10111101001110111000000011110110", 
    21 => "10111100110110101101011000101100", 
    22 => "10111101110100000000111110011010", 
    23 => "10111110011001001110000110001011" );


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

