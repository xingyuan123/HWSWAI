-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_45_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_45_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101110101100010010111111000", 
    1 => "10111101111000111110101100100111", 
    2 => "00111101101001001011010100111111", 
    3 => "10111101010000111101110010000110", 
    4 => "10111101100110000011001000111001", 
    5 => "10111110000011001001010101000101", 
    6 => "10111101110011010100000100001011", 
    7 => "10111101000000101010010101100000", 
    8 => "00111110000011011010100110100111", 
    9 => "00111101101001101110101000111100", 
    10 => "10111101101001011101010100111000", 
    11 => "10111101111110101110100110110000", 
    12 => "10111101101011100001001100100010", 
    13 => "00111110000110100110101101100000", 
    14 => "00111101111111000010000110110000", 
    15 => "00111101010010011010010100010000", 
    16 => "00111100111110110000010111010100", 
    17 => "00111101101110101011100001000001", 
    18 => "00111110000010011001000011100101", 
    19 => "10111101010000111001010001100010", 
    20 => "10111101010010100010101100100111", 
    21 => "00111101111011010000011111111100", 
    22 => "00111110001001001100111100101101", 
    23 => "00111110000100101110111010100100" );


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

