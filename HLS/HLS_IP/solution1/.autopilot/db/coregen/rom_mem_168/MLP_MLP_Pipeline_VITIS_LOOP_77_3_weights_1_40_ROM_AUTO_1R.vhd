-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_40_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_40_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110110001000110011101011000", 
    1 => "00111101001010001100000101001000", 
    2 => "10111100110011010100100110001101", 
    3 => "10111110000010011110111000111010", 
    4 => "10111110010011110011110000110010", 
    5 => "10111101111001101101001100011011", 
    6 => "00111101110001110100010100011110", 
    7 => "10111101011011001100000010001110", 
    8 => "10111100000000111111111100101010", 
    9 => "00111101111000100000100010110111", 
    10 => "10111101000100100110000100010001", 
    11 => "00111101110010001100101000110100", 
    12 => "00111101111000101101011000100000", 
    13 => "00111110100111000110111000011010", 
    14 => "00111100111111101100011011110010", 
    15 => "10111100101010001100100000111100", 
    16 => "00111110011100110111001011110001", 
    17 => "00111110110101111000110000000100", 
    18 => "00111101101100000111001001101101", 
    19 => "00111101110101100110011111110100", 
    20 => "10111101001011100000001101010011", 
    21 => "00111110001101110100100100100011", 
    22 => "10111101101001100110101011111101", 
    23 => "00111101100101110111001110010001" );


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

