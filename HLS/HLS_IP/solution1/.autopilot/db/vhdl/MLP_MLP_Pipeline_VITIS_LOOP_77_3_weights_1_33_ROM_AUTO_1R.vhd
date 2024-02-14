-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_33_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_33_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110110011010100101111011010", 
    1 => "00111101101010010010000000010010", 
    2 => "00111110110001101100101101011100", 
    3 => "10111101000000010111110110110100", 
    4 => "10111110101011111111100101110011", 
    5 => "00111101101011001111100101011101", 
    6 => "00111101101010111100011001100011", 
    7 => "00111100111100111100110111010000", 
    8 => "10111100101101011101010000001010", 
    9 => "10111100101110100100011011000100", 
    10 => "10111101101000000110100010100101", 
    11 => "10111100101100000111001110101100", 
    12 => "10111101011000110110001011110111", 
    13 => "00111110001000000000011110111101", 
    14 => "00111101001110111110110001110101", 
    15 => "10111101011011011110110000110000", 
    16 => "10111110111110111010100000110110", 
    17 => "00111101000111110011101000001101", 
    18 => "00111110010110111011001111110101", 
    19 => "10111101100101001111011001010011", 
    20 => "00111111000111101000110001111110", 
    21 => "00111110110011111100011100100000", 
    22 => "00111111000010001010001011111000", 
    23 => "00111110110100101111011101101111" );


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

