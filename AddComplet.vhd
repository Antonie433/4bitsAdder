----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:02:12 11/10/2022 
-- Design Name: 
-- Module Name:    AddComplet - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AddComplet is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (3 downto 0);
           Rin : in  STD_LOGIC;
           Rout : in  STD_LOGIC);
end AddComplet;

architecture Behavioral of AddComplet is


		Component demiAddComp is
			Port ( A : in  STD_LOGIC;
				    B : in  STD_LOGIC;
					 Ri_1 : in  STD_LOGIC;
					 S : out  STD_LOGIC;
					 Ri : out  STD_LOGIC);
		end component;
		signal R:std_logic_vector( 4 downto 0);

begin

	u1: demiAddComp port map(A=>A(0), B=>B(0), Ri_1=>R(0),S=>S(0),Ri=>R(1));
	u2: demiAddComp port map(A=>A(1), B=>B(1), Ri_1=>R(1),S=>S(1),Ri=>R(2));
	u3: demiAddComp port map(A=>A(2), B=>B(2), Ri_1=>R(2),S=>S(2),Ri=>R(3));
	u4: demiAddComp port map(A=>A(3), B=>B(3), Ri_1=>R(3),S=>S(3),Ri=>R(4));
	R(0)<=Rin;
	Rout<= R(4);
end Behavioral;

