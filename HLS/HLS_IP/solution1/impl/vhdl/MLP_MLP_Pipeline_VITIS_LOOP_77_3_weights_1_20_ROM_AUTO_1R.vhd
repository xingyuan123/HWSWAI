-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_20_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_20_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110110000100001010111000111", 
    1 => "10111101111101000111000011101100", 
    2 => "10111101111011100100111111110100", 
    3 => "00111101011001110101000100010100", 
    4 => "00111101111111110011110001110100", 
    5 => "10111101011001000100100000110011", 
    6 => "10111101101001100111011000000110", 
    7 => "10111101110111011110011101111110", 
    8 => "10111101101010000011100100111100", 
    9 => "00111110001001101101101101110111", 
    10 => "00111101010010010111100001110111", 
    11 => "10111101110110000010001000001110", 
    12 => "00111101010110000000001000011110", 
    13 => "00111101010110110001100011011110", 
    14 => "00111101010010111001000100110110", 
    15 => "00111110001001000110111011110101", 
    16 => "00111110101100111111011110101010", 
    17 => "00111101111101110010001111111100", 
    18 => "10111110001101101100101001110101", 
    19 => "10111100111011011011010100001100", 
    20 => "10111110010001001000100000101100", 
    21 => "10111101001111111110001000111001", 
    22 => "10111110001001100011011001111111", 
    23 => "10111101100110100110010010000110" );


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

