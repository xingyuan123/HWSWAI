-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_11_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_11_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111001011001110111111010110011", 
    1 => "00111101101101011100100011111000", 
    2 => "00111110001000101010100011010011", 
    3 => "00111101000100101101011011011000", 
    4 => "00111101100100000110000110000001", 
    5 => "10111101100001100100011010101000", 
    6 => "00111110000011010110101101000001", 
    7 => "10111100000001010010011110110000", 
    8 => "10111110000100111100101101010100", 
    9 => "10111110000110011000010110100111", 
    10 => "00111110000000111011111110100011", 
    11 => "10111100110000001011010101011100", 
    12 => "00111101011011000001010001001001", 
    13 => "00111101000010001010000110000010", 
    14 => "00111110100101000110001001111101", 
    15 => "00111101000010011000101010101111", 
    16 => "00111110001011010001011110011101", 
    17 => "10111101101110000011111100000010", 
    18 => "00111100100110001111001110010101", 
    19 => "00111101100101100110100001111000", 
    20 => "00111110001000100100111100001000", 
    21 => "10111101010011111001110000110100", 
    22 => "00111110000001111010100101001111", 
    23 => "10111101011101001110011101110100" );


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

