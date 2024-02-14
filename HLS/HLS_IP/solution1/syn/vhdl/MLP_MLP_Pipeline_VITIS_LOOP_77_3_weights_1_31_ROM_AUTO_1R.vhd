-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_31_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_31_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100000010010101000110000110", 
    1 => "00111011100100100001001001100000", 
    2 => "00111101100111000101101001111111", 
    3 => "00111101111101000010100001101000", 
    4 => "10111100111010001100111011011011", 
    5 => "00111101011110110100110000001101", 
    6 => "10111110000011001011110110000011", 
    7 => "10111101000011001101010111110000", 
    8 => "00111101100111100011100011110001", 
    9 => "00111101110000111111011000000100", 
    10 => "10111101000111010100010011100011", 
    11 => "10111100100001111101011010010000", 
    12 => "00111101000100100000000001000011", 
    13 => "00111110000101101000001101110111", 
    14 => "00111100000100111101000100001100", 
    15 => "10111101000001000111110010100001", 
    16 => "10111110001010011000100101100000", 
    17 => "00111110100001001110011111000010", 
    18 => "10111011010100010101001001010111", 
    19 => "00111101100111011000000110001011", 
    20 => "00111110011101111011010010000111", 
    21 => "00111110101100001101010101000011", 
    22 => "10111011011001001001110001010001", 
    23 => "00111110101011000011111011111100" );


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

