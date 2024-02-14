-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_46_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_46_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110001111000101100010010010", 
    1 => "00111110000000010000101000001100", 
    2 => "10111100011110111011110010010101", 
    3 => "10111100110001000111001110111000", 
    4 => "10111110010100000100101101110001", 
    5 => "00111101100111010011011001000000", 
    6 => "00111110001010100100100000110001", 
    7 => "00111110000001011010101100000100", 
    8 => "10111110000011001110000100101111", 
    9 => "10111100100110000000000001001100", 
    10 => "00111011000110111001010101000111", 
    11 => "10111101100100001001101100000110", 
    12 => "10111101000010010001001111010110", 
    13 => "00111110010111000101011001111101", 
    14 => "00111100011000110000010110110001", 
    15 => "10111101101001111011000000111001", 
    16 => "00111101110111000110000011101001", 
    17 => "10111101111101011100110100100001", 
    18 => "00111101101001100100111111100010", 
    19 => "10111101010111001011001011110100", 
    20 => "10111101001010101010110000001101", 
    21 => "10111100100001011110110011000111", 
    22 => "00111101101101101011111111101001", 
    23 => "10111110001000101011101100101010" );


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

