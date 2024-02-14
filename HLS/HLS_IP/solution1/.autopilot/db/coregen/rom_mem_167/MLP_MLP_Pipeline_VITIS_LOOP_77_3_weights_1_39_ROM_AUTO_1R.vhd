-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_39_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_39_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110110011110100100111100011", 
    1 => "10111101011101000100100010010100", 
    2 => "00111110101101001110000011000001", 
    3 => "00111101010111011000010001001100", 
    4 => "10111110110100100100000011000101", 
    5 => "10111100110011110010000110011000", 
    6 => "10111101110001101110100100011101", 
    7 => "10111110000001010111100000011111", 
    8 => "00111101110110000111000101111110", 
    9 => "10111100111110101101010111001110", 
    10 => "10111101011101011000001101010001", 
    11 => "10111101110010101111001101010110", 
    12 => "00111101010000111111111111010100", 
    13 => "10111101100100100101110100000000", 
    14 => "10111101111110111001100011111100", 
    15 => "10111100001100010110000010011001", 
    16 => "10111111000011101011001110111010", 
    17 => "00111100101001101110111011000101", 
    18 => "00111110100100110100111111101011", 
    19 => "00111011001101011001100111000001", 
    20 => "00111111000101011001000101111000", 
    21 => "00111110101000111011101001011001", 
    22 => "00111110111101111000010001010110", 
    23 => "00111110101101101001011001100111" );


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

