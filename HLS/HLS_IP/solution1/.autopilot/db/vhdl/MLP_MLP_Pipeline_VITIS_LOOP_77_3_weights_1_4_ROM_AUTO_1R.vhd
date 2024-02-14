-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_4_ROM_AUTO_1R is 
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


architecture rtl of MLP_MLP_Pipeline_VITIS_LOOP_77_3_weights_1_4_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110100111011100100000001100", 
    1 => "00111101110110101000010000110100", 
    2 => "10111101101000000101101001101001", 
    3 => "10111110000001100001101110001111", 
    4 => "10111110011100011000001111101101", 
    5 => "00111101100000110010101011010111", 
    6 => "00111110011001000110111101100101", 
    7 => "10111101100110001010100110000100", 
    8 => "10111101110101010000110000011011", 
    9 => "10111101110010101110001100001001", 
    10 => "10111101101111011100010101000010", 
    11 => "10111101001111110011101100000110", 
    12 => "00111101101011010110011100100000", 
    13 => "00111101101011000110111110011111", 
    14 => "00111110010011001110010001101000", 
    15 => "00111101010110110100001100010101", 
    16 => "10111101110110110101011110011100", 
    17 => "10111101101101010001111101110110", 
    18 => "00111110001010101110001101000110", 
    19 => "00111101000000100100110011101101", 
    20 => "00111101001000010001111110000011", 
    21 => "00111100101100111101100110100001", 
    22 => "00111110101011101000010010110011", 
    23 => "10111100110100001110110111001011" );


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

