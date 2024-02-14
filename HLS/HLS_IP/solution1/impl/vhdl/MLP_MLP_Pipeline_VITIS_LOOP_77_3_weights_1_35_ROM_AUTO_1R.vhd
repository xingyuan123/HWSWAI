-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_35_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_35_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110100111011100100000111110", 
    1 => "00111101010001110000011000100000", 
    2 => "00111101010110111011111000001111", 
    3 => "10111110000010111110111110101101", 
    4 => "10111110011001011001000100001011", 
    5 => "10111100001111110101111101101110", 
    6 => "10111101100010100000100000111000", 
    7 => "10111101101100011000001100110000", 
    8 => "00111101101100101000101110000110", 
    9 => "10111101000001001111000001100001", 
    10 => "00111101111100000101101111011111", 
    11 => "10111101001010101011001100111010", 
    12 => "10111101100111111110111010000101", 
    13 => "10111101000100000010000000011110", 
    14 => "00111110010111000100101100000100", 
    15 => "00111010101100000111100101101010", 
    16 => "10111101100010101111111110010000", 
    17 => "10111110010110100000111011010111", 
    18 => "00111101101111111011100011010101", 
    19 => "10111101110101001100100011011000", 
    20 => "00111101111011001101100010100111", 
    21 => "10111100110000001010001001010011", 
    22 => "00111110010001101101000111001001", 
    23 => "00111110001000000001110110000111" );


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

