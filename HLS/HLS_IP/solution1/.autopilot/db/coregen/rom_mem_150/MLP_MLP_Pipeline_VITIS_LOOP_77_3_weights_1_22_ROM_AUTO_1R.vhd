-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_22_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_22_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110100111010101100001100111", 
    1 => "10111101110101001101110111110000", 
    2 => "10111110001111001110011011101100", 
    3 => "00111101110000001011110010010110", 
    4 => "10111101011100100100010001000000", 
    5 => "10111010011100100101100010101111", 
    6 => "00111110100000101111110000101111", 
    7 => "00111101011111101011011110010100", 
    8 => "00111110000000010010001010111100", 
    9 => "10111101111010001100110101101111", 
    10 => "10111101100011011101111000111010", 
    11 => "00111010001000101011000100000000", 
    12 => "10111110000001011000101110111101", 
    13 => "00111110011000111001110000011010", 
    14 => "10111101111001010000001110011111", 
    15 => "10111110000110010101011111101001", 
    16 => "10111101001100100000001100110000", 
    17 => "00111101111010101111100001001010", 
    18 => "00111110011110001100101011110011", 
    19 => "00111101111010001010011011001101", 
    20 => "10111101011000100011000100110010", 
    21 => "00111101100010001100001001111111", 
    22 => "00111110001010111111011101110101", 
    23 => "10111011110100101001110110001111" );


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

