-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_43_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_43_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101100111000101111100000100", 
    1 => "00111101110001111101100010010110", 
    2 => "10111110000011011110100001010100", 
    3 => "00111110000100011100011111011100", 
    4 => "00111110101110111010001001010101", 
    5 => "00111101011101000110000101001010", 
    6 => "10111110010100001111100110100011", 
    7 => "00111010010001001011100100000000", 
    8 => "10111101101001110000101010001010", 
    9 => "00111101001101111100010011010110", 
    10 => "00111100111001001101001101100110", 
    11 => "00111101111111001111001000001100", 
    12 => "00111100001011001011100101101101", 
    13 => "10111110011100100111111111010100", 
    14 => "00111101111000110000100110101100", 
    15 => "00111110010111111111001011101111", 
    16 => "00111110111110010110101000100011", 
    17 => "10111110001111100011100010110000", 
    18 => "10111101110101101111110100100100", 
    19 => "10111101100110000100010001101111", 
    20 => "10111110110011100111011111110001", 
    21 => "10111110110100110001111111011011", 
    22 => "10111110100010100000011111100000", 
    23 => "10111110100000111110000011100000" );


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

