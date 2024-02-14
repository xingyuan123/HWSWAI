-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_26_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_26_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110001000100100101110101100", 
    1 => "00111101001001111100110111000000", 
    2 => "00111100010101100100110110011010", 
    3 => "10111101110110110100100010010100", 
    4 => "10111101011001001010011100111001", 
    5 => "10111100100101101111011111010101", 
    6 => "10111101101001110111101010000011", 
    7 => "00111100110001100111001101010000", 
    8 => "10111101100100101011001000110100", 
    9 => "00111110001011111000110011010111", 
    10 => "10111101011111000001110101111010", 
    11 => "10111011110100010010001011000000", 
    12 => "10111110000000111110101001001111", 
    13 => "00111110000100000000110111100100", 
    14 => "10111110011110111101011010000110", 
    15 => "00111101101010100110101100100110", 
    16 => "10111110001111001000010110111110", 
    17 => "00111110110101100000100100000100", 
    18 => "00111101100110100110101010010100", 
    19 => "10111100110111101010010001101100", 
    20 => "00111110001000111101101100110011", 
    21 => "00111110101110110010111111011110", 
    22 => "00111101100000000000111101101101", 
    23 => "00111110100010011010111010100110" );


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

