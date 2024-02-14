-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_44_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_44_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110100001011101110100011100", 
    1 => "00111100110010011000101111000000", 
    2 => "00111110101010000100000010011111", 
    3 => "10111101011101001101110111010010", 
    4 => "00111101101001111100100110001111", 
    5 => "00111101110100001010010001110010", 
    6 => "10111110100011001001000111001010", 
    7 => "10111101110100101111101010101111", 
    8 => "10111110000011111100100101001001", 
    9 => "00111110001010001101001111100101", 
    10 => "10111101101100111010011010100001", 
    11 => "00111101000111100101011111100100", 
    12 => "10111100100011111011100011011011", 
    13 => "00111101000100111101100011011000", 
    14 => "00111110001101110000000100010011", 
    15 => "00111101011101101100000010011000", 
    16 => "10111110011000111010010000101101", 
    17 => "00111110011111000101011000000001", 
    18 => "10111100001001111100001011001110", 
    19 => "00111101100001111001010000110000", 
    20 => "00111110100100011010110000010111", 
    21 => "00111110011111111110110001111001", 
    22 => "00111110000101001001010101101001", 
    23 => "00111110011010001111110000001111" );


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

