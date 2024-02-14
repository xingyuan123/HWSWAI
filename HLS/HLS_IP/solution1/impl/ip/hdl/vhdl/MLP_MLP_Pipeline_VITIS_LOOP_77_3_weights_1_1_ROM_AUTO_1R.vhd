-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_1_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_1_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101001111110111110010111101", 
    1 => "10111101111010100011110011001000", 
    2 => "00111110101110100100110000000001", 
    3 => "10111011100100011110110100100000", 
    4 => "00111110010001111001110000101001", 
    5 => "10111101100101111000011011110001", 
    6 => "10111110011000101101000010001001", 
    7 => "10111101111000011000000001011100", 
    8 => "00111101111011101100101001000110", 
    9 => "00111110100001110111010110001111", 
    10 => "10111100111011000101110110111111", 
    11 => "10111101011001101000011100001000", 
    12 => "00111101001001010010000000001010", 
    13 => "10111110010110010010110011001001", 
    14 => "00111101101100111111101001001101", 
    15 => "00111101100111001110110010001101", 
    16 => "00111101000110101101010000111000", 
    17 => "00111101010000010000111110001110", 
    18 => "10111110001000011010011101100001", 
    19 => "10111100101101101011110001011111", 
    20 => "10111110000000111110100001101011", 
    21 => "00111101101110011110111001101011", 
    22 => "00111101001011100010001100101101", 
    23 => "00111110101001110111011000111000" );


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

