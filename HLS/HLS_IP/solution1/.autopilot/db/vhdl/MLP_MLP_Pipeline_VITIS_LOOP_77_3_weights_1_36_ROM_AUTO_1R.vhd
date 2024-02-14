-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_36_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_36_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100110100110000001110101011", 
    1 => "10111101001111001110100110001100", 
    2 => "00111101010110110111000110111100", 
    3 => "00111101101000001001110110101000", 
    4 => "00111110010100001001000101000110", 
    5 => "10111101111010100110011100001110", 
    6 => "10111101110000010011101110101111", 
    7 => "00111110000100001101101010100010", 
    8 => "10111101110100001000111101011100", 
    9 => "10111101011000110111110111100011", 
    10 => "00111101100100100011101101000000", 
    11 => "00111101100100110110010000010000", 
    12 => "00111101100000001101001100110100", 
    13 => "10111100110111010101110110110110", 
    14 => "00111110011010010011101011000101", 
    15 => "10111100101101000100010100001000", 
    16 => "00111110001001101111011111011011", 
    17 => "00111100000111011111111101001101", 
    18 => "00111101100001111110011110011111", 
    19 => "10111101011110011011100111000001", 
    20 => "00111110000001001100001010001010", 
    21 => "10111101111100101110011100001111", 
    22 => "00111101100101111010010010001110", 
    23 => "00111110010000100110110010101001" );


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

