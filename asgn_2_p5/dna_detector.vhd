LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dna_detector IS
	PORT (
			a : IN	STD_LOGIC_VECTOR(19 DOWNTO 0);
			b : IN	STD_LOGIC_VECTOR(19 DOWNTO 0);
			z : OUT 	STD_LOGIC_VECTOR(19 DOWNTO 0));
END dna_detector;

ARCHITECTURE behavior OF dna_detector IS
	SIGNAL y0, y1, y2, y3 : STD_LOGIC_VECTOR(19 DOWNTO 1);
	
	COMPONENT dna_lm1_cell
		PORT (	b : IN	STD_LOGIC;
				y3, y2, y1, y0, z :	OUT		STD_LOGIC);
	END COMPONENT;
	
	COMPONENT dna_lm2_cell
		PORT (	x2, x0, b : IN	STD_LOGIC;
				y3, y2, y1, y0, z :	OUT		STD_LOGIC);
	END COMPONENT;
	
	COMPONENT dna_cell
		PORT (
			x3, x2, x1, x0, a, b : IN	STD_LOGIC;
			y3, y2, y1, y0, z :	OUT		STD_LOGIC);
	END COMPONENT;
	
	COMPONENT dna_rm_cell
		PORT (	x3, x2, x1, x0, a, b : IN	STD_LOGIC;
				z :	OUT		STD_LOGIC);
	END COMPONENT;
	
BEGIN
		stage0 : dna_lm1_cell PORT MAP (b(0), y3(1), y2(1), y1(1), y0(1), z(0));
		stage1 : dna_lm2_cell PORT MAP (y2(1), y0(1), b(1), y3(2), y2(2), y1(2), y0(2), z(1));
		stage2 : dna_cell PORT MAP (y3(2), y2(2), y1(2), y0(2), a(2), b(2), y3(3), y2(3), y1(3), y0(3), z(2));
		stage3 : dna_cell PORT MAP (y3(3), y2(3), y1(3), y0(3), a(3), b(3), y3(4), y2(4), y1(4), y0(4), z(3));
		stage4 : dna_cell PORT MAP (y3(4), y2(4), y1(4), y0(4), a(4), b(4), y3(5), y2(5), y1(5), y0(5), z(4));
		stage5 : dna_cell PORT MAP (y3(5), y2(5), y1(5), y0(5), a(5), b(5), y3(6), y2(6), y1(6), y0(6), z(5));
		stage6 : dna_cell PORT MAP (y3(6), y2(6), y1(6), y0(6), a(6), b(6), y3(7), y2(7), y1(7), y0(7), z(6));
		stage7 : dna_cell PORT MAP (y3(7), y2(7), y1(7), y0(7), a(7), b(7), y3(8), y2(8), y1(8), y0(8), z(7));
		stage8 : dna_cell PORT MAP (y3(8), y2(8), y1(8), y0(8), a(8), b(8), y3(9), y2(9), y1(9), y0(9), z(8));
		stage9 : dna_cell PORT MAP (y3(9), y2(9), y1(9), y0(9), a(9), b(9), y3(10), y2(10), y1(10), y0(10), z(9));
		stage10 : dna_cell PORT MAP (y3(10), y2(10), y1(10), y0(10), a(10), b(10), y3(11), y2(11), y1(11), y0(11), z(10));
		stage11 : dna_cell PORT MAP (y3(11), y2(11), y1(11), y0(11), a(11), b(11), y3(12), y2(12), y1(12), y0(12), z(11));
		stage12 : dna_cell PORT MAP (y3(12), y2(12), y1(12), y0(12), a(12), b(12), y3(13), y2(13), y1(13), y0(13), z(12));
		stage13 : dna_cell PORT MAP (y3(13), y2(13), y1(13), y0(13), a(13), b(13), y3(14), y2(14), y1(14), y0(14), z(13));
		stage14 : dna_cell PORT MAP (y3(14), y2(14), y1(14), y0(14), a(14), b(14), y3(15), y2(15), y1(15), y0(15), z(14));
		stage15 : dna_cell PORT MAP (y3(15), y2(15), y1(15), y0(15), a(15), b(15), y3(16), y2(16), y1(16), y0(16), z(15));
		stage16 : dna_cell PORT MAP (y3(16), y2(16), y1(16), y0(16), a(16), b(16), y3(17), y2(17), y1(17), y0(17), z(16));
		stage17 : dna_cell PORT MAP (y3(17), y2(17), y1(17), y0(17), a(17), b(17), y3(18), y2(18), y1(18), y0(18), z(17));
		stage18 : dna_cell PORT MAP (y3(18), y2(18), y1(18), y0(18), a(18), b(18), y3(19), y2(19), y1(19), y0(19), z(18));
		stage19 : dna_rm_cell PORT MAP (y3(19), y2(19), y1(19), y0(19), a(19), b(19), z(19));
END behavior;