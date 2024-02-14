-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_19_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_19_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110010110001000000111101101", 
    1 => "00111010101010011000001110000000", 
    2 => "00111110011111111111111110000101", 
    3 => "00111101110100101011010101000110", 
    4 => "10111101101001100101011101110000", 
    5 => "00111101011101110010100011100001", 
    6 => "00111110001000100111000001101101", 
    7 => "10111101111011110110101101101100", 
    8 => "00111110000010010011001110011111", 
    9 => "10111110100101001110000110011001", 
    10 => "00111101111010000101001011110010", 
    11 => "00111010011111000110000100000000", 
    12 => "00111101110001110000011011000011", 
    13 => "10111110000110101010010000000101", 
    14 => "00111110010100000011010001110010", 
    15 => "00111110000001011011001110000011", 
    16 => "10111110001111010001011100100000", 
    17 => "10111110011000111110000101110110", 
    18 => "00111101100000011110111100011011", 
    19 => "00111101000001000001100010111010", 
    20 => "00111110000110110001001101100011", 
    21 => "10111101000011010000010011001011", 
    22 => "00111110000101111010010000100101", 
    23 => "10111011000101110100000011100110" );


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

