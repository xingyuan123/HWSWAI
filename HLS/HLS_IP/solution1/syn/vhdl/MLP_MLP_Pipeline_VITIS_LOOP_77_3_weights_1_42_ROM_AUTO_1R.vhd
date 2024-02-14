-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_42_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_42_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110011001100100000001000001", 
    1 => "10111100000111001001110111010000", 
    2 => "00111110011001001000101111001011", 
    3 => "00111101001000110110100111000100", 
    4 => "00111110101011111111001000110111", 
    5 => "10111101001110000011000101010101", 
    6 => "10111110100001001101000111101001", 
    7 => "10111101101110110110101010001100", 
    8 => "10111101001000001011000110011010", 
    9 => "00111111000011100110000001101010", 
    10 => "00111100110010101110101101111010", 
    11 => "10111100011101110011110111000000", 
    12 => "10111101110110110101000011100110", 
    13 => "10111101111011100001000010001011", 
    14 => "00111101110011111001111000110011", 
    15 => "00111110010100000000110110010001", 
    16 => "00111110011100010011011001101100", 
    17 => "00111110100010001000011110111001", 
    18 => "10111110011100010011111000001011", 
    19 => "10111101000110111101010000100010", 
    20 => "00111100000011100110100000000010", 
    21 => "00111110001110011111001100001110", 
    22 => "10111101101110000111011010110101", 
    23 => "00111110000111111111010001110001" );


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

