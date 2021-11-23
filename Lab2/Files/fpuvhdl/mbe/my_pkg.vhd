package my_pkg is

	constant n_levels : integer := 7;
  type rows_type is array (7 downto 0) of integer;
  constant row, col_start, col_end, num_start, num_end : rows_type;
 row(0) := 17;
 row(1) := 13;
 row(2) := 9;
 row(3) := 6;
 row(4) := 4;
 row(5) := 3;
 row(6) := 2;
 row(7) := 2;

 col_start(0) := 24;
 col_start(1) := 16;
 col_start(2) := 10;
 col_start(3) := 6;
 col_start(4) := 4;
 col_start(5) := 2;

 col_end(0) := 42;
 col_end(1) := 50;
 col_end(2) := 56;
 col_end(3) := 60;
 col_end(4) := 62;
 col_end(5) := 64;

 num_start(0) := 0;
 num_start(1) := 8;
 num_start(2) := 16;
 num_start(3) := 22;
 num_start(4) := 26;
 num_start(5) := 28;

 num_end(0) := 8;
 num_end(1) := 8;
 num_end(2) := 6;
 num_end(3) := 4;
 num_end(4) := 2;
 num_end(5) := 2;

end my_pkg;
