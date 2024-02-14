-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_28_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_28_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110000111100011000001110010", 
    1 => "10111100110110001010001010100100", 
    2 => "00111101011100010000011000110110", 
    3 => "00111101000110111001100001110000", 
    4 => "00111110010000011010010000011110", 
    5 => "10111101110000010100010101111010", 
    6 => "10111101100101000010110000110001", 
    7 => "10111101011001001010001010001010", 
    8 => "00111101101110110111000110011000", 
    9 => "00111110100100100111100001101010", 
    10 => "00111110000010110111011110000011", 
    11 => "10111101000000110000100101110110", 
    12 => "00111101011001100001101010010000", 
    13 => "10111101110001101011010011101110", 
    14 => "00111101000010111010011110011011", 
    15 => "00111101110001101011000010000110", 
    16 => "00111110000110101100000000010110", 
    17 => "00111110000000101101010011010001", 
    18 => "10111110001010110011110110000001", 
    19 => "10111110000010101100000100000001", 
    20 => "10111101001100001010111000011100", 
    21 => "00111100100100101101000101110111", 
    22 => "10111101100101111011100111011001", 
    23 => "00111101111100001001100101101111" );


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

