-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_13_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_13_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110101101110111110010011000", 
    1 => "00111100100100101001011010111000", 
    2 => "00111110010000010011100101110101", 
    3 => "00111101110100110011101100011100", 
    4 => "00111110000101101000100001101011", 
    5 => "00111101110110011110010011010011", 
    6 => "10111101110011010010010101110100", 
    7 => "10111101100100000110011001100000", 
    8 => "10111110000000001001110001000000", 
    9 => "10111110100000010101010000110100", 
    10 => "10111101101000011001010000000100", 
    11 => "10111101000110110110100000000000", 
    12 => "10111101000010100110010001111001", 
    13 => "10111110010110110011100000011110", 
    14 => "00111110100100011110110100000110", 
    15 => "00111100110000010100010110100001", 
    16 => "10111100101110001101100001101000", 
    17 => "10111110100110010010010111110101", 
    18 => "00111100111110111111001110101111", 
    19 => "00111101101110001010110011111011", 
    20 => "10111101100001110100010111101011", 
    21 => "10111110100101011100100100011100", 
    22 => "00111110010011000110100000110111", 
    23 => "10111101111000001000010111000000" );


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

