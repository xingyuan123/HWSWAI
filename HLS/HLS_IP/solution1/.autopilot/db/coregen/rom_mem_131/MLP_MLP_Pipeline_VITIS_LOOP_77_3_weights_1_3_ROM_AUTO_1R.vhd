-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_3_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_3_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101100010011001000010010001", 
    1 => "00111110000000010100100010101000", 
    2 => "00111101110101010000010000101001", 
    3 => "00111100101111110011000001000000", 
    4 => "10111101101011101001111110011000", 
    5 => "00111101101011100100010010000100", 
    6 => "10111110001011010001000001010110", 
    7 => "00111101110001011000111100100010", 
    8 => "10111101111101111001101110100010", 
    9 => "00111110100100100111000101101001", 
    10 => "10111101000101100010111111010100", 
    11 => "00111011010001001101111100000000", 
    12 => "00111101000111000001110110011110", 
    13 => "00111101100101110001001110000000", 
    14 => "10111110000110000100101010100011", 
    15 => "10111010100100010101001001010100", 
    16 => "10111110010101011000001010111011", 
    17 => "00111110000000000100100011101100", 
    18 => "10111101010101001101110011011100", 
    19 => "00111101100110100011101101111001", 
    20 => "00111110011000011111000111110100", 
    21 => "00111110010111111001101000011010", 
    22 => "00111101110000101010110001011000", 
    23 => "00111101110110000111001111011110" );


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

