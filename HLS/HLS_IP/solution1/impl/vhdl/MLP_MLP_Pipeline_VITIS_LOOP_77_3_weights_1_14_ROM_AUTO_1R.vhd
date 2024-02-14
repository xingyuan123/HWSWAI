-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_14_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_14_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110000010001110101110101001", 
    1 => "00111101100111100100100001011000", 
    2 => "10111110001001000111111110000100", 
    3 => "00111100000000001001000101100000", 
    4 => "10111101101010001011100010110000", 
    5 => "00111101110011010101011101010101", 
    6 => "00111110100000100110111000010101", 
    7 => "00111101101011111101010000100110", 
    8 => "10111101011010101010011101001111", 
    9 => "00111101010111010000111100100100", 
    10 => "10111011101111100101100001011001", 
    11 => "00111101010111100100100001110000", 
    12 => "00111101101001110000010001100001", 
    13 => "00111110001100100000001010101010", 
    14 => "00111110010101110110000110011010", 
    15 => "00111101111000111110101111110111", 
    16 => "00111110000001100000000101000011", 
    17 => "10111101011000011001001000100100", 
    18 => "00111110000110111001011000010010", 
    19 => "10111101101100101101010011111100", 
    20 => "10111110000101001100000110011001", 
    21 => "10111101111011001001001001011100", 
    22 => "10111011110001001001011101000010", 
    23 => "10111100010010011001011011011110" );


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

