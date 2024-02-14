-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_41_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_41_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110100101100011010100001100", 
    1 => "00111110000011111001011100100000", 
    2 => "00111110101110101000001011101001", 
    3 => "10111101110101100111100010010110", 
    4 => "00111110101110010110101011001001", 
    5 => "10111101101101100101001000101111", 
    6 => "10111110100011010110010111001001", 
    7 => "10111101111001101010100010011110", 
    8 => "00111110000000111100001111101011", 
    9 => "00111110111100011110110000011000", 
    10 => "10111101111001010110101000101000", 
    11 => "10111011000101000001001010000000", 
    12 => "10111101101011101101011010101001", 
    13 => "10111101011000000111100001101101", 
    14 => "10111101010100111111111101111101", 
    15 => "00111110010000010011011010101001", 
    16 => "00111110111000100010001110001010", 
    17 => "00111110100100110001101101100111", 
    18 => "10111110001111000110111100001100", 
    19 => "10111101001010010011100011100011", 
    20 => "10111110010011000000101101011001", 
    21 => "00111101101000110100010001101000", 
    22 => "10111110100000110101011010100001", 
    23 => "00111110011000101110000110011000" );


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

