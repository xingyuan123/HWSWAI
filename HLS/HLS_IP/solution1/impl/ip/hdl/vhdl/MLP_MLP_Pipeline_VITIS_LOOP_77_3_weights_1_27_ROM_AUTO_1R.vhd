-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_27_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_27_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110100011001010010000101011", 
    1 => "10111101101010010000100111010110", 
    2 => "10111101101000101111010010111010", 
    3 => "10111110000001100000101011000111", 
    4 => "10111110011001101011100110010110", 
    5 => "10111101111101100000001111000011", 
    6 => "00111110001101110100101111100000", 
    7 => "10111011110001011111000110000000", 
    8 => "00111101001000111010111111100011", 
    9 => "10111110010000001100001011111000", 
    10 => "10111011101101111001001100100010", 
    11 => "10111110000011101100110010001000", 
    12 => "00111110001010101010110000100000", 
    13 => "00111101010011011100110110000001", 
    14 => "10111110001100111111010000010010", 
    15 => "00111101011110100110100001111010", 
    16 => "00111110001001011010101100100111", 
    17 => "00111110011010110010111110100001", 
    18 => "10111100110100110100100010011110", 
    19 => "00111101001001111101010011000110", 
    20 => "10111101000110110010010010001011", 
    21 => "10111101010010100011000000000110", 
    22 => "00111101111111010100111001010100", 
    23 => "00111101001110111111010111000100" );


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

