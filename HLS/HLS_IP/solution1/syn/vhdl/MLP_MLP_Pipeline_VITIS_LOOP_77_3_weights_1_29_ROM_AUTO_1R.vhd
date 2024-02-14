-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_29_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_29_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100011101110111001000010101", 
    1 => "10111101001110001010100110110110", 
    2 => "00111100011011100111100010111101", 
    3 => "10111110000000110011011001110010", 
    4 => "00111110000010111100110000001111", 
    5 => "10111101000011011010010111011010", 
    6 => "10111101100010001010101101110010", 
    7 => "00111101000001000100010100000100", 
    8 => "00111100111110000101000001000110", 
    9 => "00111110000110011101111100011000", 
    10 => "00111011101001101010100000010111", 
    11 => "10111101100001001110000111100010", 
    12 => "00111101101011101110001111110111", 
    13 => "10111101110000011111001101110110", 
    14 => "00111101101011000101001111011101", 
    15 => "00111100001100001011101101000100", 
    16 => "00111110001010001011011011100011", 
    17 => "10111101110011011011100001101111", 
    18 => "10111101111000000111011101010100", 
    19 => "00111101100101101111010001010011", 
    20 => "00111101110110100111110011111101", 
    21 => "00111101111110011001101001100011", 
    22 => "00111110000000001101010000001100", 
    23 => "00111011101010000000001111011110" );


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

