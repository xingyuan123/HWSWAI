-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_0_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_0_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111000010111111111000010110", 
    1 => "10111100011011001111111001110000", 
    2 => "00111100100011110100100100011100", 
    3 => "00111101001010101000110010110100", 
    4 => "10111101100010001010010111110110", 
    5 => "00111011101111110100011010011001", 
    6 => "00111110001111101110001001110011", 
    7 => "10111101001010011101010110000110", 
    8 => "00111101101011000101011001000110", 
    9 => "00111110100000001110000101010000", 
    10 => "00111101100101101010000010110000", 
    11 => "10111101111111001111010110000010", 
    12 => "10111101001000100111101100010011", 
    13 => "00111110101001011101110000100111", 
    14 => "00111100101000001011110101100001", 
    15 => "10111110000100011000011011000100", 
    16 => "00111110101101001110101010000010", 
    17 => "00111110110100001110010000111101", 
    18 => "00111100101010100010011010111000", 
    19 => "00111100010100001101010011011011", 
    20 => "10111101000011100010110011010100", 
    21 => "10111011100101111110011101111001", 
    22 => "00111100010110100101000101001011", 
    23 => "10111100000011000101100001010011" );


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

