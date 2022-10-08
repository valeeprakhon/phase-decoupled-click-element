----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/09/2022 12:51:06 AM
-- Design Name: 
-- Module Name: delay_element_tb - Behavioral
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

entity delay_element_tb is
--  Port ( );
end delay_element_tb;

architecture Behavioral of delay_element_tb is
    signal d     : std_logic;
    signal z     : std_logic;
    
begin
    TB : entity work.delay_element port map(
        d => d,
        z => z
    );
    
    tb1 : process
    constant period: time:=20 ns;
    begin
        wait for period;
        d <= '1';
        wait;
    end process;

end Behavioral;
