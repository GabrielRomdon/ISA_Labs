package CONSTANTS is
   constant NBIT_PER_BLOCK : integer :=4;
   constant NBLOCKS : integer := 16;
   constant NBIT : integer := NBLOCKS*NBIT_PER_BLOCK;
   constant IVDELAY : time := 0 ns; --0.1 ns;
   constant NDDELAY : time := 0 ns; --0.2 ns;
   constant NDDELAYRISE : time := 0 ns; --0.6 ns;
   constant NDDELAYFALL : time := 0 ns; --0.4 ns;
   constant NRDELAY : time := 0 ns; --0.2 ns;
   constant DRCAS : time := 0 ns; --1 ns;
   constant DRCAC : time := 0 ns; --2 ns;
   constant TP_MUX : time := 0 ns; --0.5 ns; 	
end CONSTANTS;
