-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_2_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_2_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101101100110000000010110001", 
    1 => "10111101000100100101001000001110", 
    2 => "00111101100011101100011000111001", 
    3 => "00111101110001101000100000000000", 
    4 => "10111101101101000111101001111011", 
    5 => "10111101010111010000100110000011", 
    6 => "00111110001101101111111000001010", 
    7 => "10111101110000001101100011000010", 
    8 => "00111011100010101100011000001111", 
    9 => "00111101011011101011010111001001", 
    10 => "00111101110010100110111111101001", 
    11 => "10111101010001010101011110010010", 
    12 => "10111101010100111011011011011100", 
    13 => "00111101100101011000111000010110", 
    14 => "00111110101010001001001000000100", 
    15 => "00111101000101111100101111110001", 
    16 => "00111100110010101110000001011000", 
    17 => "10111110000110010110101111101000", 
    18 => "00111101101111011011111101100101", 
    19 => "10111101101011001100011000100101", 
    20 => "10111101010100011111111110111111", 
    21 => "10111110010010011000100111010010", 
    22 => "10111101100000100100010100000100", 
    23 => "10111110011000110011010001001001" );


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

