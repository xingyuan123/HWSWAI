-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_18_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_18_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111011111110111110000010011101", 
    1 => "10111101110100110001100101001000", 
    2 => "00111110100001001111000000100111", 
    3 => "00111101011001001111001101100000", 
    4 => "10111101011101000100101111111101", 
    5 => "10111110000000011110011100101010", 
    6 => "00111110000000100010101111110111", 
    7 => "10111101111101100110101010100100", 
    8 => "00111110000001011100011100111101", 
    9 => "00111101000111011010000011011101", 
    10 => "10111101001000101011111000111011", 
    11 => "00111100100100010010111010010000", 
    12 => "10111101111010010111110010110110", 
    13 => "10111101001100011101111110011100", 
    14 => "10111100100011010001101000100111", 
    15 => "00111100100011110110110010110011", 
    16 => "10111101001100010000011000001101", 
    17 => "00111011110011100110000100000011", 
    18 => "00111110000000111001100011010101", 
    19 => "00111101010100110000111011111010", 
    20 => "00111110011101001000100110000101", 
    21 => "00111101101010101111100111111110", 
    22 => "00111101101010111101100111101000", 
    23 => "00111101101111100110111010101111" );


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

