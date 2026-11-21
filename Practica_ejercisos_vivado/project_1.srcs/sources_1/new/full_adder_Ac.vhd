
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity full_adder_Ac is
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           B : in STD_LOGIC_VECTOR (2 downto 0);
           cin : in STD_LOGIC;
           cout : out STD_LOGIC;
           S : out STD_LOGIC_VECTOR (2 downto 0));
end full_adder_Ac;

architecture Behavioral of full_adder_Ac is
component full_adder is 
port (A , B , cin : in std_logic;
      S , cout : out std_logic
      );
      end component ;
      
     signal T : std_logic_vector (3 downto 0);
  
begin
T(0) <= cin ;
cout <= T (3);
F0 : full_adder port map (A => A (0) , B => B (0) , cin => T (0) , S => S (0) , cout  => T (1));
F1 : full_adder port map (A => A (1) , B => B (1) , cin => T (1) , S => S (1) , cout  => T (2));
F2 : full_adder port map (A => A (2) , B => B (2) , cin => T (2) , S => S (2) , cout  => T (3));

end Behavioral;
