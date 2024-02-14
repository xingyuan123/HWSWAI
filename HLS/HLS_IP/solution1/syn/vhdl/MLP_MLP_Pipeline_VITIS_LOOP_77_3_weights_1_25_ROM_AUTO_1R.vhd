-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_25_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_25_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101111000100001100001001010", 
    1 => "00111100010110101001000101000000", 
    2 => "00111101110000010010111100111101", 
    3 => "10111101011001101110001000100000", 
    4 => "00111100000000011011011001110111", 
    5 => "10111101010011000111110001111000", 
    6 => "00111011101110011100101100101100", 
    7 => "10111101101001101100100110100010", 
    8 => "10111101011101001001000101111000", 
    9 => "00111110010100001111010000110000", 
    10 => "10111101100011100001110111110110", 
    11 => "10111101010011101111110111100000", 
    12 => "10111100010001011001011011101111", 
    13 => "00111110011001100000010011110011", 
    14 => "10111110011101000110010011110001", 
    15 => "10111101100101011010101111100001", 
    16 => "10111110100111011111111010111001", 
    17 => "00111111000001000001101110100001", 
    18 => "00111101010001000110000001000100", 
    19 => "00111100111000101000010100100100", 
    20 => "00111110100110110110000111100110", 
    21 => "00111110110000101101110001010110", 
    22 => "00111110000110101010101100011111", 
    23 => "00111110101011110000111011001100" );


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

