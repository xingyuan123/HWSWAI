-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_34_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_34_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110110011000001101001100010", 
    1 => "10111101110011100111000001101110", 
    2 => "00111110110101110011111010111101", 
    3 => "00111101100000010000111101101000", 
    4 => "10111110100100001100100000110011", 
    5 => "00111110000000010101001011000001", 
    6 => "10111101001100001110110100011000", 
    7 => "00111101111011001000110010100000", 
    8 => "00111011010110000001000010100100", 
    9 => "10111101000011010110100011111010", 
    10 => "10111101001001011001010100101001", 
    11 => "00111100010000111011110100000000", 
    12 => "10111101000011001101100000001111", 
    13 => "00111100110111011001111110000010", 
    14 => "00111101111111101111011001011010", 
    15 => "10111110000111110011000101110101", 
    16 => "10111111000011111000000010010100", 
    17 => "00111110011011000101001001100011", 
    18 => "00111101111100011001101000111000", 
    19 => "10111101100010101011010111111001", 
    20 => "00111110111000110111110001101110", 
    21 => "00111110110010010101100010100000", 
    22 => "00111110101001001001111011101010", 
    23 => "00111110111111010011010111001101" );


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

