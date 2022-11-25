library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity demiAddComplet_tb is
end demiAddComplet_tb;

architecture test of demiAddComplet_tb is 
	component demiAddComplet
		port(A : in STD_LOGIC;
		     B : in STD_LOGIC;
		     Ri_1 : in STD_LOGIC;
		     S : out STD_LOGIC;
		     Ri : out STD_LOGIC);
	end component;

	signal s_A, s_B,s_Ri_1,s_S,s_Ri : STD_LOGIC;
begin 
	orgate : demiAddComplet port map(A=>s_A, B=>s_B, Ri_1=>s_Ri_1, S=>s_S, Ri=>s_Ri);
	process begin 

		s_Ri_1<='0';

		s_A<='0'; s_B<='0';
		wait for 1 ms;
		
		s_A<='0'; s_B<='1';
		wait for 1 ms;

		s_A<='1'; s_B<='0';
		wait for 1 ms;

		s_A<='1'; s_B<='1';
		wait for 1 ms;

		assert false report "Reached at the end.....";
		wait;
	end process;
end test;
