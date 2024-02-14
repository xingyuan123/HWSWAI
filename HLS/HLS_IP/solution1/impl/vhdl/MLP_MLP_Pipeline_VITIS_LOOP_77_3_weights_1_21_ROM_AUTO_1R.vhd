-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_21_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_21_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110100110011101100010001110", 
    1 => "00111101011110001010110001100100", 
    2 => "00111110000100100101000011010111", 
    3 => "00111010100111100011100000000000", 
    4 => "10111110000001101110110111111110", 
    5 => "00111101001111101100111110101011", 
    6 => "00111101011111000110000010100000", 
    7 => "10111101110000001111000011011001", 
    8 => "10111101110000011101110011011001", 
    9 => "10111100001100101101010101010110", 
    10 => "00111110000001110111111000011110", 
    11 => "10111101000000110011110011010010", 
    12 => "10111101101101010010000000110110", 
    13 => "10111100001010010101011010011100", 
    14 => "00111110011111011101011100000100", 
    15 => "00111101110000001011000011000111", 
    16 => "10111110001100010100111001001110", 
    17 => "10111110101101011111111001000111", 
    18 => "10111101001111110100010000101101", 
    19 => "00111101110100011100110010110000", 
    20 => "00111110000111100101000110010000", 
    21 => "10111101011001000110001100101011", 
    22 => "00111110000010001111010110010111", 
    23 => "00111010001011000111100000110000" );


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

