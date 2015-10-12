LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dna_cell IS
	PORT (
			x3, x2, x1, x0, a, b : IN	STD_LOGIC;
			y3, y2, y1, y0, z :	OUT		STD_LOGIC);
	END dna_cell;
	
ARCHITECTURE dataflow OF dna_cell IS
BEGIN
	y3 <= (NOT x3 AND x2 AND NOT x1 AND NOT x0 AND b) OR (x3 AND NOT x1 AND a AND b) OR (x3 AND NOT x1 AND x0 AND b) OR (NOT x2 AND x1 AND NOT x0 AND b);
	y2 <= (x1 AND NOT x0 AND NOT a AND NOT b) OR (x3 AND NOT x0 AND NOT a AND NOT b) OR (NOT x2 AND x1 AND NOT x0) OR (NOT x3 AND x2 AND NOT x1 AND NOT x0 AND b) OR (x3 AND NOT x1 AND x0 AND b) OR (x3 AND NOT x1 AND a AND b) OR (NOT x3 AND x2 AND x1 AND x0 AND b) OR (X1 AND NOT x0 AND a AND b);
	y1 <= (x3 AND NOT a) OR (NOT x3 AND x2 AND NOT x1 AND b) OR (x1 AND NOT x0 AND NOT a AND NOT b) OR (NOT x2 AND x0 AND b) OR (NOT x2 AND x1 AND NOT a AND NOT b) OR (NOT x2 AND x1 AND NOT x0 AND NOT b) OR (x3 AND x0 AND b);
	y0 <= (x3 AND NOT x0 AND NOT a) OR (NOT x1 AND b) OR (x0 AND b) OR (x2 AND x1 AND NOT x0 AND NOT a);
	z <= (x3 AND x1 AND b) OR (NOT x3 AND x2 AND NOT x1 AND x0 AND b);
END dataflow;  