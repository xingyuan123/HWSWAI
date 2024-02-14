-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_17_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_17_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110110011011010000000001100", 
    1 => "10111101101011110001110000010101", 
    2 => "00111110101000011101011001001110", 
    3 => "00111101001101101010010010001100", 
    4 => "00111000100101101001110000101100", 
    5 => "10111101100011011010111101000011", 
    6 => "10111110010111000001100011110000", 
    7 => "10111011110011110100011000100000", 
    8 => "00111101100011110000111010010110", 
    9 => "00111110001101000110001101011010", 
    10 => "10111010111100000011111101101100", 
    11 => "00111101001110110010001101000000", 
    12 => "10111110000110000100110111001110", 
    13 => "10111110011110001101100100001111", 
    14 => "00111110100011011010101101110100", 
    15 => "00111101110101110010101001000111", 
    16 => "10111110000101001011011100111100", 
    17 => "10111100001010110010100001010110", 
    18 => "10111101100100010110001000000111", 
    19 => "00111101111110010110101001001010", 
    20 => "00111110011110101010001110111011", 
    21 => "10111100011100011011110010100101", 
    22 => "00111101101110001000101101001100", 
    23 => "00111101101111000101010100100011" );


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

