-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_38_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_38_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110010011111101010010010111", 
    1 => "10111110000000001011100001011011", 
    2 => "10111101010101100110010011111011", 
    3 => "10111100011100001111001110110000", 
    4 => "10111110011010011000110110001010", 
    5 => "00111101010110100100011100010101", 
    6 => "00111110000010101111010010100011", 
    7 => "10111011001010000111001101000000", 
    8 => "10111101100001001001010110001111", 
    9 => "10111101100100100011011000011010", 
    10 => "00111101101011011101001111001111", 
    11 => "10111101011010000100111111001010", 
    12 => "10111101100011000100000101011101", 
    13 => "00111110111001001000001010110001", 
    14 => "10111110100000011001100110010001", 
    15 => "10111110000110011101000100100011", 
    16 => "10111110110011101001011110010001", 
    17 => "00111110101011010001011100011011", 
    18 => "00111101010001100110001010111101", 
    19 => "00111100001010111111011101011000", 
    20 => "00111110100011011100000000000100", 
    21 => "00111110101100100001010011101110", 
    22 => "00111110100010000110010010110001", 
    23 => "00111110100101001011100010001100" );


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

