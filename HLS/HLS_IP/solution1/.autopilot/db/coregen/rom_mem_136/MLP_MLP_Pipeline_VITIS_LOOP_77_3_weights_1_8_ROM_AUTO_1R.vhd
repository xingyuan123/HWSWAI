-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_8_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_8_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101000110001100000111101010", 
    1 => "10111101111000111010011011100100", 
    2 => "10111101011100111011010011010101", 
    3 => "00111100001010110000111010000000", 
    4 => "00111101111001100100001011001011", 
    5 => "10111110000100100000011110010010", 
    6 => "00111110001001111111110100101001", 
    7 => "10111101111000010000111110100010", 
    8 => "10111101110110000011101010101000", 
    9 => "10111101111101110111101011101101", 
    10 => "00111100110000101100011011101111", 
    11 => "10111101000011111100001110001000", 
    12 => "00111101110101011111111100011110", 
    13 => "00111110000101100011101001100001", 
    14 => "00111110100100010001001111110100", 
    15 => "10111101011010110001001110111001", 
    16 => "00111110011100100111101001001100", 
    17 => "10111101101010111010011101111100", 
    18 => "00111110001100110010111100111000", 
    19 => "00111100100000001001110110111011", 
    20 => "10111101000101101011001011110101", 
    21 => "10111110100000101100111110110110", 
    22 => "00111101001101011001100011011001", 
    23 => "10111101100110011111000001100101" );


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

