-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_24_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_24_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110011110110000110111111111", 
    1 => "10111101110100011100001001111110", 
    2 => "10111110000000000000101001110101", 
    3 => "10111110000100111100010010110100", 
    4 => "10111101011010110110110110001100", 
    5 => "00111101111110100010110001110110", 
    6 => "00111101110100001110101010010101", 
    7 => "10111101111100011011000010100111", 
    8 => "10111101010000100011010001000101", 
    9 => "00111110000000000110100100101010", 
    10 => "00111110000001000111111101110000", 
    11 => "10111100011101101001001000100000", 
    12 => "00111100111110011110100110011011", 
    13 => "00111100110100001010111000101000", 
    14 => "00111101110011100101011111000111", 
    15 => "00111100110011010010100011111010", 
    16 => "00111110000011111100111011100001", 
    17 => "00111101100000110011110110101000", 
    18 => "10111101100100000001110111001001", 
    19 => "00111011101010000100100101000011", 
    20 => "10111101111100000011011110001011", 
    21 => "10111011111111100100011010100101", 
    22 => "10111101000101100110110111100101", 
    23 => "10111011111010000000101000101100" );


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

