-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_hidden_bias_1_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_hidden_bias_1_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110111100111100011100011011", 
    1 => "10111101111000000110001010110000", 
    2 => "10111101100101111101010001101110", 
    3 => "10111101111110010000101001011010", 
    4 => "00111100001011101111110110101011", 
    5 => "10111101100010100100101100111100", 
    6 => "00111110011011101111010111100101", 
    7 => "10111011101011000010011111000000", 
    8 => "10111101011111111101111100101010", 
    9 => "10111110010001100100011001001000", 
    10 => "10111101101001010010111011100011", 
    11 => "10111101010101110100010010111100", 
    12 => "00111101100111100110110011010111", 
    13 => "00111110001000110100100111011100", 
    14 => "00111110100011000110101111010011", 
    15 => "10111100111010011111011111000010", 
    16 => "00111111000011110100010100010000", 
    17 => "00111110011010011110100111011110", 
    18 => "00111101000010101010001101111111", 
    19 => "10111110000010010011000100000101", 
    20 => "10111100101010111011100101110001", 
    21 => "10111110101000010000110011010110", 
    22 => "00111110000001110100111011011111", 
    23 => "10111110011011000101110011101111" );


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

