-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_23_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_23_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101000001001101000001110001", 
    1 => "00111101111111100111101000010100", 
    2 => "00111101010101001100001101110001", 
    3 => "10111101110010111001000101110111", 
    4 => "10111001111010010010100111101110", 
    5 => "00111101111110000100101110011111", 
    6 => "00111101100011011011101111111100", 
    7 => "00111101000100100001110101000100", 
    8 => "10111101100111101111111100010011", 
    9 => "00111101110001111011111111010110", 
    10 => "10111101110101101001100000011100", 
    11 => "00111110000100010111110110011100", 
    12 => "10111101000110111110100000000111", 
    13 => "00111010001101111100101010100101", 
    14 => "10111101110000000010001000001001", 
    15 => "00111101100111010001100100011110", 
    16 => "00111110000010011010000011010101", 
    17 => "00111110100000111110101001100100", 
    18 => "10111110000010010111000111101001", 
    19 => "10111100100001010110001011111010", 
    20 => "10111100010110111000010110110101", 
    21 => "00111110100001100110100100011101", 
    22 => "00111110001100100001111111111111", 
    23 => "10111100101100010110000100101011" );


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

