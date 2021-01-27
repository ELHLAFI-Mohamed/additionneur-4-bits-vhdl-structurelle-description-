----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:44:17 01/27/2021 
-- Design Name: 
-- Module Name:    add_complet - Behavioral 
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
use IEEE.NUMERIC_STD.All;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity add_complet is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           s : out  STD_LOGIC;
           r : out  STD_LOGIC);
end add_complet;

architecture Behavioral of add_complet is
signal test1:STD_LOGIC_VECTOR(2 downto 0);
signal test2:STD_LOGIC_VECTOR(2 downto 0);
begin
test1<=a&b&c;
with test1 select 
s<='1' when "001" | "010" | "100" |  "111" , '0' when others;

test2<=a&b&c;
with test2 select 
r<='1' when "011" | "101" |  "110" |  "111" ,'0' when others;


end Behavioral;

