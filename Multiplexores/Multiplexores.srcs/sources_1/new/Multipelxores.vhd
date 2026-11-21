
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexor4a1 is
    Port ( S0,S1,S2,S3 : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC);
end Multiplexor4a1;

architecture Behavioral of Multiplexor4a1 is


begin
with S select

  y <= s0 when "00",
   s1 when "01",
   s2 when  "10",
   s3 when  others; 
   

end Behavioral;
