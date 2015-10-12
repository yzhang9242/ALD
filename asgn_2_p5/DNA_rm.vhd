LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dna_rm_cell IS
	PORT (
			x3, x2, x1, x0, a, b : IN	STD_LOGIC;
			z :	OUT		STD_LOGIC);
	END dna_rm_cell;
	
ARCHITECTURE dataflow OF dna_rm_cell IS
BEGIN
	z <= (x3 AND x1 AND b) OR (NOT x3 AND x2 AND NOT x1 AND x0 AND b);
END dataflow;  