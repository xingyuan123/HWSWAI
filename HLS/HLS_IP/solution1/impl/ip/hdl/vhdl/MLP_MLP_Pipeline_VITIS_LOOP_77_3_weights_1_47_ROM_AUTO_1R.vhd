-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_47_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_47_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101111110110011100011011001", 
    1 => "00111101011111010001101111001000", 
    2 => "00111101101000010000111111001001", 
    3 => "10111101000110010010011010101010", 
    4 => "00111110111000100000100001101111", 
    5 => "10111101000001011001111110010010", 
    6 => "10111110100100101100101110000101", 
    7 => "00111101101011111011001011010110", 
    8 => "10111101111001101110011100100011", 
    9 => "00111110110000010000000011100100", 
    10 => "00111110000000111100000111010100", 
    11 => "10111101011110110110011111110110", 
    12 => "00111101110010111100110111010001", 
    13 => "10111101111110011100101100000011", 
    14 => "10111100100100010101001010101100", 
    15 => "00111110010011101100011011010000", 
    16 => "00111110101101111000001011111100", 
    17 => "00111110000000011100001010110000", 
    18 => "10111110100010110111001000010000", 
    19 => "10111101111101011100111111011010", 
    20 => "10111110011000101011001000011110", 
    21 => "10111101111101011010000000010010", 
    22 => "10111110000001000001100010111000", 
    23 => "00111100101011100011011001000110" );


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

