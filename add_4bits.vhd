----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:39:34 01/27/2021 
-- Design Name: 
-- Module Name:    add_4bits - Behavioral 
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

entity add_4bits is
    Port ( a0 : in  STD_LOGIC;
           a1 : in  STD_LOGIC;
           a2 : in  STD_LOGIC;
           a3 : in  STD_LOGIC;
           b0 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           b2 : in  STD_LOGIC;
           b3 : in  STD_LOGIC;
           c0 : in  STD_LOGIC;
           s1 : out  STD_LOGIC;
           s2 : out  STD_LOGIC;
           s3 : out  STD_LOGIC;
           s0 : out  STD_LOGIC;
           c4 : out  STD_LOGIC);
end add_4bits;

architecture Behavioral of add_4bits is
signal c1:std_logic;
signal c2:std_logic;
signal c3:std_logic;

component add_complet
port(
a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           s : out  STD_LOGIC;
           r : out  STD_LOGIC);
end component ;




begin
somme1:add_complet
port map(
a=>a0,b=>b0,c=>c0,r=>c1,s=>s0);

somme2:add_complet
port map(
a=>a1,b=>b1,c=>c1,r=>c2,s=>s1);

somme3:add_complet
port map(
a=>a2,b=>b2,c=>c2,r=>c3,s=>s2);

somme4:add_complet
port map(
a=>a3,b=>b3,c=>c3,r=>c4,s=>s3);


end Behavioral;

