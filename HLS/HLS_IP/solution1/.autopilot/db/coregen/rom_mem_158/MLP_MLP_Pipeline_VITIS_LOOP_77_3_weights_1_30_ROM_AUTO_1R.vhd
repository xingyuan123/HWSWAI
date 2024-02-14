-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_30_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_30_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101011100110011010101101001", 
    1 => "00111011011001010101111011000000", 
    2 => "10111110000101111010000010010100", 
    3 => "00111101101000110010010111110010", 
    4 => "10111110011111001010111011110000", 
    5 => "00111101101000101011100010010110", 
    6 => "00111110010001110110111011110110", 
    7 => "00111100100000111010011000101000", 
    8 => "10111101000011100111101100100000", 
    9 => "00111101101001111101001001010101", 
    10 => "00111100010111111000101011010010", 
    11 => "10111101100001101111100111111001", 
    12 => "10111100101100001011100010011000", 
    13 => "00111100101111100110110111101010", 
    14 => "10111110000001110101101000010100", 
    15 => "10111101101011001000100011101000", 
    16 => "10111101011110110001111111011110", 
    17 => "10111100100011111000001011001000", 
    18 => "00111110010100010111110101000101", 
    19 => "00111100100111010100010100011001", 
    20 => "00111110001111101110110111110000", 
    21 => "00111101111010100011011001010111", 
    22 => "00111101000111100110000011111011", 
    23 => "00111101000100011000101010110010" );


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

