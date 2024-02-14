-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_16_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_16_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101111110100110111001101100", 
    1 => "00111011100110110101011011000000", 
    2 => "10111101001010100001001000110001", 
    3 => "10111101110010101111100100101000", 
    4 => "00111101100100100111110000011101", 
    5 => "10111101100001110011100010100100", 
    6 => "00111110001101011010100111010111", 
    7 => "00111101110100111110100100011000", 
    8 => "00111110000011101011100110010111", 
    9 => "10111110101000001111000100100111", 
    10 => "10111101110100011001100100001111", 
    11 => "00111011010011101010100111000000", 
    12 => "10111100100101011001111000010010", 
    13 => "10111110001100000111001110101000", 
    14 => "00111110111111111011101000010000", 
    15 => "00111110001010001011001111111100", 
    16 => "00111110001100100000101000001010", 
    17 => "10111111000000100101001000001000", 
    18 => "00111101101010111011000001001110", 
    19 => "10111101100101101100010011000000", 
    20 => "00111101010110000110001110010010", 
    21 => "10111110011111001110101000110110", 
    22 => "00111101110010100101011011001110", 
    23 => "10111110101100100100001000011000" );


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

