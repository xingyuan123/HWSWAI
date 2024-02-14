-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_9_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_9_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110110100011101010111110110", 
    1 => "10111101001111000100010000111010", 
    2 => "00111110011101001001001100010110", 
    3 => "00111100011100101000101011100000", 
    4 => "00111110100001001110110100001111", 
    5 => "10111101011110100111000111001110", 
    6 => "10111101110110000110100110000011", 
    7 => "10111101101010001110101000101100", 
    8 => "10111110000000110010001000000011", 
    9 => "10111100101000000011101101000100", 
    10 => "00111100100100111001101010101001", 
    11 => "10111011011100110101011101000000", 
    12 => "10111101111010000000100001110011", 
    13 => "10111110101001011010100101010110", 
    14 => "00111111000101101000000001100110", 
    15 => "00111110110110101010000001101011", 
    16 => "00111110010100010000001101101011", 
    17 => "10111110111111101011100110110010", 
    18 => "10111101101010000000110000100001", 
    19 => "10111101100110111000001011110111", 
    20 => "10111101101101011111001011010110", 
    21 => "10111110011110010000000011001111", 
    22 => "10111100111111101101011000000101", 
    23 => "10111011110001100010011011100111" );


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

