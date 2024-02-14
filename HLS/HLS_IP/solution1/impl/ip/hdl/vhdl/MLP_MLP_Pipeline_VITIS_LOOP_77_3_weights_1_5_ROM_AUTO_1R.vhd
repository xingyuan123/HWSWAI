-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_5_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_5_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100100010101111000111001011", 
    1 => "10111101111101100011010111001000", 
    2 => "00111101110010010011110001011110", 
    3 => "00111101111000010001111011010000", 
    4 => "00111100111110111010100110010110", 
    5 => "10111101110010100100100010100111", 
    6 => "00111011100101101101011111011110", 
    7 => "10111101111101100001001010100110", 
    8 => "10111110000010011110001100110110", 
    9 => "00111110010101010000111010101111", 
    10 => "10111101110010000000110100001010", 
    11 => "10111100100100101101100001111000", 
    12 => "10111110000001001111001000001001", 
    13 => "10111100110110010001001111000010", 
    14 => "00111101110101100010100010100001", 
    15 => "00111001110010110101110101111001", 
    16 => "00111110000100010111111000011101", 
    17 => "00111110000111111101111001100101", 
    18 => "10111101001111110110011000010000", 
    19 => "00111101010010001010010100001011", 
    20 => "00111011111111001100010001110110", 
    21 => "00111101111100110011101110010110", 
    22 => "00111101000111110001010100100001", 
    23 => "00111101100010010111100010011101" );


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

