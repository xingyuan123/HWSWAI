-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_12_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_12_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100110100001010000010000000", 
    1 => "10111101100111011101000110110001", 
    2 => "00111110100111011000110101101000", 
    3 => "00111101111010100011010011000100", 
    4 => "00111101011000100101110001000110", 
    5 => "10111101101011100010110000011100", 
    6 => "10111101100100110001101010110001", 
    7 => "00111100010011101001011101000000", 
    8 => "00111101111110111110000111101010", 
    9 => "10111100100010000010000010011100", 
    10 => "00111100111010001101110000100011", 
    11 => "10111101100111111101111101000101", 
    12 => "00111101110111100011000110010010", 
    13 => "00111100111101101100111110111010", 
    14 => "00111110100011101110100000010011", 
    15 => "10111011010001110001101011100101", 
    16 => "10111100100111001100100000100011", 
    17 => "10111110100101100110101100110010", 
    18 => "00111101101000010110111101000010", 
    19 => "00111101101110010100111011111110", 
    20 => "10111101101111100110101100101010", 
    21 => "00111100100111011000010000100110", 
    22 => "00111110010111100110001111010111", 
    23 => "00111101010001100001101111001000" );


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

