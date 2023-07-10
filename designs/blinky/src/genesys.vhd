-- ----------------------------------------------------------------------------
-- genesys.vhd
--
-- 7/7/2023 D. W. Hawkins (dwh@caltech.edu)
--
-- Digilent Genesys Virtex-5 'blinky' design.
--
-- Design features;
--  * 100MHz reference clock
--  * Incrementing count on the green LEDs
--
-- ----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

-- ----------------------------------------------------------------------------

entity genesys is
	port (
		-- 100MHz clock
		clk_100mhz : in    std_logic;

		-- Green LEDs
		led        : out   std_logic_vector(7 downto 0)
	);
end entity;

-- ----------------------------------------------------------------------------

architecture top of genesys is

	-- ------------------------------------------------------------------------
	-- Constants
	-- ------------------------------------------------------------------------
	--
	-- 100MHz clock
	constant CLK_FREQUENCY : real := 100.0e6;

	-- Nominal LED blink period
	constant BLINK_PERIOD : real :=   0.5;
	
	-- Counter width for 8-bits of LEDs
	constant WIDTH : integer :=
		integer(ceil(log2(CLK_FREQUENCY*BLINK_PERIOD)));

	-- ------------------------------------------------------------------------
	-- Signals
	-- ------------------------------------------------------------------------
	--
	-- Counter
	signal count : unsigned(WIDTH-1 downto 0);

begin

	-- ------------------------------------------------------------------------
	-- Counter
	-- ------------------------------------------------------------------------
	--
	process(clk_100mhz)
	begin
		if rising_edge(clk_100mhz) then
			count <= count + 1;
		end if;
	end process;

	-- ------------------------------------------------------------------------
	-- Green LED outputs
	-- ------------------------------------------------------------------------
	--
	led <= std_logic_vector(count(WIDTH-1 downto WIDTH-8));

end architecture;
