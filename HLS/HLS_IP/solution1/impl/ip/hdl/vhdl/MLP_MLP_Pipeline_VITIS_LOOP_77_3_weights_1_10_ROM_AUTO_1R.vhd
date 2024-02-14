-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_10_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_10_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101001011110110001001110101", 
    1 => "10111101111111010010111000001011", 
    2 => "00111110000111000110001001000010", 
    3 => "10111101110001001110110000101000", 
    4 => "00111100011100110010101010001000", 
    5 => "00111101100101110011100101111100", 
    6 => "10111101100110001010111011010110", 
    7 => "10111110000011011011101010101000", 
    8 => "10111101111010110010000100100000", 
    9 => "00111100000101000000111010111000", 
    10 => "10111101101100111100100000000010", 
    11 => "00111110000100110011111010000000", 
    12 => "00111100010001001110110011011000", 
    13 => "10111110001000000010111100110110", 
    14 => "00111110111010100100000100011111", 
    15 => "00111110011000111111010100101001", 
    16 => "00111110100000100001111110101101", 
    17 => "10111110011001010010000100001010", 
    18 => "00111100011101110111101010010110", 
    19 => "10111101111111011110111101001010", 
    20 => "10111100110000101000001010100000", 
    21 => "10111100011111010001010111001101", 
    22 => "00111110000100000101001111100100", 
    23 => "10111101111100100010011010101001" );


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

