----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:22:50 11/10/2022 
-- Design Name: 
-- Module Name:    demiAddComplet - Behavioral 
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

entity demiAddComplet is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Ri_1 : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Ri : out  STD_LOGIC);
end demiAddComplet;

architecture Behavioral of demiAddComplet is

begin
S<= (A and ( not( B or Ri_1) or (B and Ri_1))) or (not(A) and ( (Ri_1 and not(B)) or ((B and not(Ri_1)))));
Ri<= (B and ((A and not(Ri_1)) or (Ri_1 and not(A)))) or (A and Ri_1);
end Behavioral;

