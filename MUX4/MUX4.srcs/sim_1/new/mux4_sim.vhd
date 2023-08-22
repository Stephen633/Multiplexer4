----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/06/2023 08:23:16 PM
-- Design Name: 
-- Module Name: mux4_sim - Behavioral
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

entity mux4_sim is

end mux4_sim;
    
architecture Behavioral of mux4_sim is
    component  mux4
        Port ( 
           A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           output : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
     signal      A : STD_LOGIC_VECTOR (3 downto 0) := "0001";
     signal      B : STD_LOGIC_VECTOR (3 downto 0):= "0010";
     signal      C : STD_LOGIC_VECTOR (3 downto 0):= "0100";
     signal      D : STD_LOGIC_VECTOR (3 downto 0):= "1000";
     signal      sel : STD_LOGIC_VECTOR (1 downto 0);
     signal      output : STD_LOGIC_VECTOR (3 downto 0);
     
begin
   uut : mux4
   port map(
   A => A,
   B => B,
   C => C,
   D => D,
   sel => sel,
   output => output
   );
    process
        begin
                wait for 100ns;
                sel <= "00";
                wait for 100ns;
                sel <= "01";
                wait for 100ns;
                sel <= "10";
                wait for 100ns;
                sel <= "11";
                wait;
    end process;
end Behavioral;
