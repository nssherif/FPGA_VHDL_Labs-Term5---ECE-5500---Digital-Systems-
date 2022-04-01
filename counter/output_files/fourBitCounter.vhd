library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity fourBitCounter is
	port (CLOCK_50 : in std_logic;
			KEY : in std_logic_vector (3 downto 0);
			LEDR: out std_logic_vector (3 downto 0));
end fourBitCounter;

architecture Structure of fourBitCounter is
	signal tempCount: std_logic_vector(3 downto 0) := "0000";
begin
	process(CLOCK_50, KEY(0))
	begin
		if (CLOCK_50'event and CLOCK_50='1') then
			if (KEY(0) = '0') then
				tempCount <= "0000";
			else
				tempCount <= tempCount + '1';
			end if;
		end if;	
	end process;
	LEDR <= tempCount;

end Structure;