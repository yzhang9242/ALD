LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dna_lm2_cell IS
	PORT (
			x2, x0, b : IN	STD_LOGIC;
			y3, y2, y1, y0, z :	OUT		STD_LOGIC);
	END dna_lm2_cell;
	
ARCHITECTURE dataflow OF dna_lm2_cell IS
BEGIN
	y3 <= '0';
	y2 <= '0';
	y1 <= (NOT x2 AND x0 AND b);
	y0 <= b;
	z <= '0';
END dataflow;  