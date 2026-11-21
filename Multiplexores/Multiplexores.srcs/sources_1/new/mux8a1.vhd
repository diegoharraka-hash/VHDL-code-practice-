----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.10.2026 13:45:12
-- Design Name: 
-- Module Name: mux8a1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux8a1 is
    Port ( E0,E1,E2,E3,E4,E5,E6,E7 : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC);
end mux8a1;

architecture Behavioral of mux8a1 is

begin
with S select 
y <= e0 when "000",
     e1 when "001",
     e2 when "010",
     e3 when "011",
     e4 when "100",
     e5 when "101",
     e6 when "110",
     e7 when others;

end Behavioral;
