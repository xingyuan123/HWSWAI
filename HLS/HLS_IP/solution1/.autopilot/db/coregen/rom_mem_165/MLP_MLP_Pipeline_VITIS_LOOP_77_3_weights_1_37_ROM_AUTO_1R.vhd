-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_37_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_37_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101111111111111001101011111", 
    1 => "00111101111001011111100111011000", 
    2 => "00111101110001100000001101010100", 
    3 => "00111101000101010100110000001100", 
    4 => "00111101101110100000100011101010", 
    5 => "10111101010100000111110010111001", 
    6 => "00111110000000000010010111010110", 
    7 => "10111101001001000111000110101100", 
    8 => "00111101100011101001101001111000", 
    9 => "00111101011111001001000111101001", 
    10 => "10111101111001110001100100000001", 
    11 => "10111101101000000000111010001000", 
    12 => "10111101110001000011100111001101", 
    13 => "00111101101110011101111011110010", 
    14 => "00111110011100000100011000001011", 
    15 => "00111011111110011110011110011001", 
    16 => "00111101000111111101010001101000", 
    17 => "10111101110010000010111111001111", 
    18 => "10111101100110000110001010000111", 
    19 => "00111101110000111001000011101101", 
    20 => "10111100000000001110110101010101", 
    21 => "10111101110100010100110100001100", 
    22 => "10111100010011000100001111011010", 
    23 => "00111110000111111100001011100000" );


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

