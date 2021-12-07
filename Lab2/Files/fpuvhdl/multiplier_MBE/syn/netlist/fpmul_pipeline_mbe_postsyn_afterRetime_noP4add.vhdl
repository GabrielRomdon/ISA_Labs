
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_FPmul is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type VHDLOUT_TYPE is array (0 downto 0) of std_logic;

end CONV_PACK_FPmul;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_447 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_447;

architecture SYN_BEHAVIORAL of FA_447 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n1);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_349 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_349;

architecture SYN_BEHAVIORAL of FA_349 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n1);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_225 is

   port( B, Ci : in std_logic;  Co : out std_logic;  A_BAR : in std_logic;  
         S_BAR : out std_logic);

end FA_225;

architecture SYN_BEHAVIORAL of FA_225 is

begin
   S_BAR <= A_BAR;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_224 is

   port( B, Ci : in std_logic;  Co : out std_logic;  A_BAR : in std_logic;  
         S_BAR : out std_logic);

end FA_224;

architecture SYN_BEHAVIORAL of FA_224 is

begin
   S_BAR <= A_BAR;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_221 is

   port( B, Ci : in std_logic;  Co : out std_logic;  A_BAR : in std_logic;  
         S_BAR : out std_logic);

end FA_221;

architecture SYN_BEHAVIORAL of FA_221 is

begin
   S_BAR <= A_BAR;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_456 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_456;

architecture SYN_BEHAVIORAL of FA_456 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_445 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_445;

architecture SYN_BEHAVIORAL of FA_445 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_141 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_141;

architecture SYN_BEHAVIORAL of FA_141 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_334 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_334;

architecture SYN_BEHAVIORAL of FA_334 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_292 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_292;

architecture SYN_BEHAVIORAL of FA_292 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_287 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_287;

architecture SYN_BEHAVIORAL of FA_287 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_216 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_216;

architecture SYN_BEHAVIORAL of FA_216 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_116 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_116;

architecture SYN_BEHAVIORAL of FA_116 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_214 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_214;

architecture SYN_BEHAVIORAL of FA_214 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n1);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_41 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_41;

architecture SYN_BEHAVIORAL of FA_41 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => Ci, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_408 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_408;

architecture SYN_BEHAVIORAL of FA_408 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => A, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_352 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_352;

architecture SYN_BEHAVIORAL of FA_352 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_331 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_331;

architecture SYN_BEHAVIORAL of FA_331 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_285 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_285;

architecture SYN_BEHAVIORAL of FA_285 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_198 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_198;

architecture SYN_BEHAVIORAL of FA_198 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_159 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_159;

architecture SYN_BEHAVIORAL of FA_159 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_104 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_104;

architecture SYN_BEHAVIORAL of FA_104 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_436 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_436;

architecture SYN_BEHAVIORAL of FA_436 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_435 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_435;

architecture SYN_BEHAVIORAL of FA_435 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_380 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_380;

architecture SYN_BEHAVIORAL of FA_380 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_377 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_377;

architecture SYN_BEHAVIORAL of FA_377 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_375 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_375;

architecture SYN_BEHAVIORAL of FA_375 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_356 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_356;

architecture SYN_BEHAVIORAL of FA_356 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_351 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_351;

architecture SYN_BEHAVIORAL of FA_351 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_336 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_336;

architecture SYN_BEHAVIORAL of FA_336 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_333 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_333;

architecture SYN_BEHAVIORAL of FA_333 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_213 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_213;

architecture SYN_BEHAVIORAL of FA_213 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_147 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_147;

architecture SYN_BEHAVIORAL of FA_147 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_413 is

   port( B, Ci : in std_logic;  S, Co : out std_logic;  A_BAR : in std_logic);

end FA_413;

architecture SYN_BEHAVIORAL of FA_413 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : XOR2_X1 port map( A => A_BAR, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => A_BAR, B2 => n1, ZN => Co)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_466 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_466;

architecture SYN_BEHAVIORAL of FA_466 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => B, ZN => S);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U2 : NAND2_X1 port map( A1 => n3, A2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_414 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_414;

architecture SYN_BEHAVIORAL of FA_414 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => B, ZN => S);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U2 : NAND2_X1 port map( A1 => n3, A2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_412 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_412;

architecture SYN_BEHAVIORAL of FA_412 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => B, ZN => S);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U2 : NAND2_X1 port map( A1 => n3, A2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_361 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_361;

architecture SYN_BEHAVIORAL of FA_361 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n3, A2 => n4, B1 => n2, B2 => n1, ZN => Co);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_360 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_360;

architecture SYN_BEHAVIORAL of FA_360 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n3, A2 => n4, B1 => n2, B2 => n1, ZN => Co);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_359 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_359;

architecture SYN_BEHAVIORAL of FA_359 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n3, A2 => n4, B1 => n2, B2 => n1, ZN => Co);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_357 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_357;

architecture SYN_BEHAVIORAL of FA_357 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_179 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_179;

architecture SYN_BEHAVIORAL of FA_179 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_162 is

   port( A, B : in std_logic;  S, Co : out std_logic;  Ci : in std_logic);

end FA_162;

architecture SYN_BEHAVIORAL of FA_162 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n4, n6 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n6, B1 => n2, B2 => n1, ZN => Co);
   U4 : INV_X1 port map( A => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_406 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_406;

architecture SYN_BEHAVIORAL of FA_406 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_405 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_405;

architecture SYN_BEHAVIORAL of FA_405 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_404 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_404;

architecture SYN_BEHAVIORAL of FA_404 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_403 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_403;

architecture SYN_BEHAVIORAL of FA_403 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_402 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_402;

architecture SYN_BEHAVIORAL of FA_402 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_387 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_387;

architecture SYN_BEHAVIORAL of FA_387 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_386 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_386;

architecture SYN_BEHAVIORAL of FA_386 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_385 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_385;

architecture SYN_BEHAVIORAL of FA_385 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_384 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_384;

architecture SYN_BEHAVIORAL of FA_384 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_379 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_379;

architecture SYN_BEHAVIORAL of FA_379 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_373 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_373;

architecture SYN_BEHAVIORAL of FA_373 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_290 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_290;

architecture SYN_BEHAVIORAL of FA_290 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_289 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_289;

architecture SYN_BEHAVIORAL of FA_289 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_288 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_288;

architecture SYN_BEHAVIORAL of FA_288 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_286 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_286;

architecture SYN_BEHAVIORAL of FA_286 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_252 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_252;

architecture SYN_BEHAVIORAL of FA_252 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_251 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_251;

architecture SYN_BEHAVIORAL of FA_251 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_250 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_250;

architecture SYN_BEHAVIORAL of FA_250 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_249 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_249;

architecture SYN_BEHAVIORAL of FA_249 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_247 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_247;

architecture SYN_BEHAVIORAL of FA_247 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_163 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_163;

architecture SYN_BEHAVIORAL of FA_163 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_161 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_161;

architecture SYN_BEHAVIORAL of FA_161 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_382 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_382;

architecture SYN_BEHAVIORAL of FA_382 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_248 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_248;

architecture SYN_BEHAVIORAL of FA_248 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_160 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_160;

architecture SYN_BEHAVIORAL of FA_160 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_130 is

   port( A, Ci : in std_logic;  S, Co : out std_logic;  B_BAR : in std_logic);

end FA_130;

architecture SYN_BEHAVIORAL of FA_130 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n7 : std_logic;

begin
   
   U2 : INV_X1 port map( A => A, ZN => n2);
   U1 : XNOR2_X1 port map( A => n2, B => n7, ZN => S);
   U3 : INV_X1 port map( A => B_BAR, ZN => n7);
   U4 : NOR2_X1 port map( A1 => n2, A2 => B_BAR, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_138 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_138;

architecture SYN_BEHAVIORAL of FA_138 is

begin
   S <= A;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_137 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_137;

architecture SYN_BEHAVIORAL of FA_137 is

begin
   S <= A;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_136 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_136;

architecture SYN_BEHAVIORAL of FA_136 is

begin
   S <= A;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_132 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_132;

architecture SYN_BEHAVIORAL of FA_132 is

begin
   S <= A;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_129 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_129;

architecture SYN_BEHAVIORAL of FA_129 is

begin
   S <= A;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_127 is

   port( A, Ci : in std_logic;  Co : out std_logic;  B_BAR : in std_logic;  
         S_BAR : out std_logic);

end FA_127;

architecture SYN_BEHAVIORAL of FA_127 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n6 : std_logic;

begin
   
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => n6, Z => S_BAR);
   U1 : INV_X1 port map( A => B_BAR, ZN => n6);
   U4 : NOR2_X1 port map( A1 => n2, A2 => B_BAR, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_135 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_135;

architecture SYN_BEHAVIORAL of FA_135 is

begin
   S <= A;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_134 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_134;

architecture SYN_BEHAVIORAL of FA_134 is

begin
   S <= A;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_133 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_133;

architecture SYN_BEHAVIORAL of FA_133 is

begin
   S <= A;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_126 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_126;

architecture SYN_BEHAVIORAL of FA_126 is

begin
   S <= A;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_257 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_257;

architecture SYN_BEHAVIORAL of FA_257 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_256 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_256;

architecture SYN_BEHAVIORAL of FA_256 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_173 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_173;

architecture SYN_BEHAVIORAL of FA_173 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_172 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_172;

architecture SYN_BEHAVIORAL of FA_172 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_71 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_71;

architecture SYN_BEHAVIORAL of FA_71 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_70 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_70;

architecture SYN_BEHAVIORAL of FA_70 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_170 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_170;

architecture SYN_BEHAVIORAL of FA_170 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal S_port, n4, n6 : std_logic;

begin
   S <= S_port;
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => S_port);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => S_port, B2 => n6, ZN => n4);
   n6 <= '0';

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_169 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_169;

architecture SYN_BEHAVIORAL of FA_169 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal S_port, n4, n6 : std_logic;

begin
   S <= S_port;
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => S_port);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => S_port, B2 => n6, ZN => n4);
   n6 <= '0';

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_69 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_69;

architecture SYN_BEHAVIORAL of FA_69 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal S_port, n4, n6 : std_logic;

begin
   S <= S_port;
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => S_port);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => S_port, B2 => n6, ZN => n4);
   n6 <= '0';

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_68 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_68;

architecture SYN_BEHAVIORAL of FA_68 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal S_port, n4, n6 : std_logic;

begin
   S <= S_port;
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => S_port);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => S_port, B2 => n6, ZN => n4);
   n6 <= '0';

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_67 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_67;

architecture SYN_BEHAVIORAL of FA_67 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal S_port, n4, n6 : std_logic;

begin
   S <= S_port;
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => S_port);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => S_port, B2 => n6, ZN => n4);
   n6 <= '0';

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_66 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_66;

architecture SYN_BEHAVIORAL of FA_66 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal S_port, n4, n6 : std_logic;

begin
   S <= S_port;
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => S_port);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => S_port, B2 => n6, ZN => n4);
   n6 <= '0';

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_65 is

   port( A, Ci : in std_logic;  S : out std_logic;  B_BAR : in std_logic;  
         Co_BAR : out std_logic);

end FA_65;

architecture SYN_BEHAVIORAL of FA_65 is

begin
   S <= B_BAR;
   Co_BAR <= B_BAR;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_43 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_43;

architecture SYN_rtl of HA_43 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_41 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_41;

architecture SYN_rtl of HA_41 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_40 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_40;

architecture SYN_rtl of HA_40 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_39 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_39;

architecture SYN_rtl of HA_39 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_38 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_38;

architecture SYN_rtl of HA_38 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_37 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_37;

architecture SYN_rtl of HA_37 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_35 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_35;

architecture SYN_rtl of HA_35 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_34 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_34;

architecture SYN_rtl of HA_34 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_33 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_33;

architecture SYN_rtl of HA_33 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_32 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_32;

architecture SYN_rtl of HA_32 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_31 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_31;

architecture SYN_rtl of HA_31 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_28 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_28;

architecture SYN_rtl of HA_28 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_26 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_26;

architecture SYN_rtl of HA_26 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_25 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_25;

architecture SYN_rtl of HA_25 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_24 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_24;

architecture SYN_rtl of HA_24 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_23 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_23;

architecture SYN_rtl of HA_23 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_22 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_22;

architecture SYN_rtl of HA_22 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_20 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_20;

architecture SYN_rtl of HA_20 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_19 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_19;

architecture SYN_rtl of HA_19 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_17 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_17;

architecture SYN_rtl of HA_17 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_16 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_16;

architecture SYN_rtl of HA_16 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_14 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_14;

architecture SYN_rtl of HA_14 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_13 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_13;

architecture SYN_rtl of HA_13 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_11 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_11;

architecture SYN_rtl of HA_11 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_10 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_10;

architecture SYN_rtl of HA_10 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_8 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_8;

architecture SYN_rtl of HA_8 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_7 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_7;

architecture SYN_rtl of HA_7 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_5 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_5;

architecture SYN_rtl of HA_5 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_4 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_4;

architecture SYN_rtl of HA_4 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_2 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_2;

architecture SYN_rtl of HA_2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_1 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_1;

architecture SYN_rtl of HA_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_30 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_30;

architecture SYN_rtl of HA_30 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   C <= B;
   
   U1 : INV_X1 port map( A => B, ZN => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_291 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_291;

architecture SYN_BEHAVIORAL of FA_291 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FPround_SIG_width28_DW01_inc_1 is

   port( A : in std_logic_vector (24 downto 0);  SUM : out std_logic_vector (24
         downto 0);  clk : in std_logic);

end FPround_SIG_width28_DW01_inc_1;

architecture SYN_USE_DEFA_ARCH_NAME of FPround_SIG_width28_DW01_inc_1 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n6, n7, n11, n14, n16, n17, n18, n19, n23, n26, n28, n29, n31, 
      n35, n38, n40, n41, n50, n51, n52, n56, n57, n61, n62, n63, n68, n71, n72
      , n73, n74, n80, n83, n84, n86, n94, n95, n96, n97, n101, n105, n113, 
      n114, n123, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, 
      n202, n203, n204, n205, n206, n209, n210, n211, n212, n213, n214, n215, 
      n216, n217, n219, n220, n221, n_1063, n_1064, n_1065, n_1066 : std_logic;

begin
   
   U154 : AND2_X1 port map( A1 => n28, A2 => n6, ZN => n181);
   U155 : XNOR2_X1 port map( A => n182, B => A(3), ZN => SUM(3));
   U156 : NAND2_X1 port map( A1 => n209, A2 => A(2), ZN => n182);
   U157 : XOR2_X1 port map( A => n183, B => A(5), Z => SUM(5));
   U158 : NOR2_X1 port map( A1 => n114, A2 => n113, ZN => n183);
   U159 : XOR2_X1 port map( A => n184, B => A(6), Z => SUM(6));
   U160 : NOR2_X1 port map( A1 => n114, A2 => n105, ZN => n184);
   U161 : XOR2_X1 port map( A => n185, B => A(7), Z => SUM(7));
   U162 : NOR2_X1 port map( A1 => n114, A2 => n101, ZN => n185);
   U163 : XNOR2_X1 port map( A => n186, B => n206, ZN => SUM(9));
   U164 : NAND2_X1 port map( A1 => n94, A2 => n205, ZN => n186);
   U165 : XNOR2_X1 port map( A => n187, B => A(11), ZN => SUM(11));
   U166 : NAND2_X1 port map( A1 => n94, A2 => n80, ZN => n187);
   U167 : XNOR2_X1 port map( A => n188, B => A(13), ZN => SUM(13));
   U168 : NAND2_X1 port map( A1 => n68, A2 => n94, ZN => n188);
   U169 : XNOR2_X1 port map( A => n189, B => A(14), ZN => SUM(14));
   U170 : NAND2_X1 port map( A1 => n61, A2 => n94, ZN => n189);
   U171 : XNOR2_X1 port map( A => n190, B => A(15), ZN => SUM(15));
   U172 : NAND2_X1 port map( A1 => n56, A2 => n94, ZN => n190);
   U181 : INV_X1 port map( A => n95, ZN => n94);
   U182 : INV_X1 port map( A => n210, ZN => n114);
   U183 : INV_X1 port map( A => n73, ZN => n74);
   U185 : NOR2_X1 port map( A1 => n19, A2 => n7, ZN => n6);
   U186 : NOR2_X1 port map( A1 => n41, A2 => n38, ZN => n35);
   U187 : NOR2_X1 port map( A1 => n202, A2 => n83, ZN => n80);
   U188 : NOR2_X1 port map( A1 => n29, A2 => n26, ZN => n23);
   U189 : INV_X1 port map( A => n28, ZN => n29);
   U191 : NOR2_X1 port map( A1 => n74, A2 => n62, ZN => n61);
   U192 : NOR2_X1 port map( A1 => n74, A2 => n71, ZN => n68);
   U193 : NOR2_X1 port map( A1 => n17, A2 => n14, ZN => n11);
   U194 : NAND2_X1 port map( A1 => n28, A2 => n18, ZN => n17);
   U195 : INV_X1 port map( A => n19, ZN => n18);
   U197 : NAND2_X1 port map( A1 => n73, A2 => n51, ZN => n50);
   U198 : NOR2_X1 port map( A1 => n62, A2 => n52, ZN => n51);
   U199 : NAND2_X1 port map( A1 => A(14), A2 => A(15), ZN => n52);
   U200 : NOR2_X1 port map( A1 => n41, A2 => n31, ZN => n28);
   U201 : NAND2_X1 port map( A1 => A(18), A2 => A(19), ZN => n31);
   U206 : XOR2_X1 port map( A => n1, B => A(16), Z => SUM(16));
   U207 : NAND2_X1 port map( A1 => A(16), A2 => A(17), ZN => n41);
   U208 : NAND2_X1 port map( A1 => A(8), A2 => A(9), ZN => n86);
   U209 : XOR2_X1 port map( A => n84, B => n83, Z => SUM(10));
   U210 : NAND2_X1 port map( A1 => n94, A2 => n221, ZN => n84);
   U212 : XOR2_X1 port map( A => n72, B => n71, Z => SUM(12));
   U213 : NAND2_X1 port map( A1 => n94, A2 => n73, ZN => n72);
   U216 : INV_X1 port map( A => n41, ZN => n40);
   U221 : INV_X1 port map( A => n17, ZN => n16);
   U222 : INV_X1 port map( A => A(18), ZN => n38);
   U223 : INV_X1 port map( A => A(20), ZN => n26);
   U224 : INV_X1 port map( A => A(10), ZN => n83);
   U225 : INV_X1 port map( A => A(22), ZN => n14);
   U226 : INV_X1 port map( A => A(12), ZN => n71);
   U227 : INV_X1 port map( A => A(4), ZN => n113);
   U228 : XOR2_X1 port map( A => n114, B => n113, Z => SUM(4));
   U229 : NAND2_X1 port map( A1 => A(4), A2 => A(5), ZN => n105);
   U230 : NAND2_X1 port map( A1 => A(12), A2 => A(13), ZN => n62);
   U231 : XOR2_X1 port map( A => n94, B => n205, Z => SUM(8));
   U232 : NOR2_X1 port map( A1 => n74, A2 => n57, ZN => n56);
   U233 : NAND2_X1 port map( A1 => n63, A2 => A(14), ZN => n57);
   U234 : INV_X1 port map( A => n62, ZN => n63);
   U235 : NAND2_X1 port map( A1 => A(1), A2 => A(0), ZN => n123);
   U236 : NAND2_X1 port map( A1 => A(20), A2 => A(21), ZN => n19);
   U237 : NAND2_X1 port map( A1 => n220, A2 => A(6), ZN => n101);
   U239 : NAND2_X1 port map( A1 => A(22), A2 => A(23), ZN => n7);
   U240 : NAND2_X1 port map( A1 => n96, A2 => n210, ZN => n95);
   U241 : NOR2_X1 port map( A1 => n105, A2 => n97, ZN => n96);
   U242 : NAND2_X1 port map( A1 => A(6), A2 => A(7), ZN => n97);
   U243 : XOR2_X1 port map( A => n209, B => A(2), Z => SUM(2));
   U245 : XOR2_X1 port map( A => n204, B => n203, Z => SUM(1));
   MY_CLK_r_REG52_S3 : DFF_X1 port map( D => A(9), CK => clk, Q => n206, QN => 
                           n_1063);
   MY_CLK_r_REG55_S3 : DFF_X1 port map( D => A(8), CK => clk, Q => n205, QN => 
                           n_1064);
   MY_CLK_r_REG63_S3 : DFF_X1 port map( D => A(1), CK => clk, Q => n204, QN => 
                           n_1065);
   MY_CLK_r_REG64_S3 : DFF_X1 port map( D => n123, CK => clk, Q => n_1066, QN 
                           => n209);
   U173 : NOR2_X1 port map( A1 => n50, A2 => n95, ZN => n1);
   U174 : AND2_X1 port map( A1 => A(11), A2 => n211, ZN => n73);
   U175 : AND3_X1 port map( A1 => n209, A2 => A(3), A3 => A(2), ZN => n210);
   U176 : AND2_X1 port map( A1 => A(10), A2 => n221, ZN => n211);
   U177 : XOR2_X1 port map( A => n212, B => A(21), Z => SUM(21));
   U178 : AND2_X1 port map( A1 => n1, A2 => n23, ZN => n212);
   U179 : XOR2_X1 port map( A => n213, B => A(19), Z => SUM(19));
   U180 : AND2_X1 port map( A1 => n1, A2 => n35, ZN => n213);
   U184 : XOR2_X1 port map( A => n214, B => A(17), Z => SUM(17));
   U190 : AND2_X1 port map( A1 => n1, A2 => A(16), ZN => n214);
   U196 : XOR2_X1 port map( A => n215, B => A(23), Z => SUM(23));
   U202 : AND2_X1 port map( A1 => n11, A2 => n1, ZN => n215);
   U203 : XNOR2_X1 port map( A => n216, B => n14, ZN => SUM(22));
   U204 : AND2_X1 port map( A1 => n1, A2 => n16, ZN => n216);
   U205 : XNOR2_X1 port map( A => n217, B => n38, ZN => SUM(18));
   U214 : AND2_X1 port map( A1 => n1, A2 => n40, ZN => n217);
   U217 : XNOR2_X1 port map( A => n219, B => n26, ZN => SUM(20));
   U218 : AND2_X1 port map( A1 => n1, A2 => n28, ZN => n219);
   U219 : AND2_X1 port map( A1 => A(4), A2 => A(5), ZN => n220);
   U220 : AND2_X1 port map( A1 => n1, A2 => n181, ZN => SUM(24));
   MY_CLK_r_REG66_S3 : DFF_X1 port map( D => A(0), CK => clk, Q => n203, QN => 
                           SUM(0));
   MY_CLK_r_REG53_S3 : DFF_X1 port map( D => n86, CK => clk, Q => n202, QN => 
                           n221);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity MBE_DW01_add_1 is

   port( A, B : in std_logic_vector (63 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (63 downto 0);  CO : out std_logic;  clk : in 
         std_logic);

end MBE_DW01_add_1;

architecture SYN_USE_DEFA_ARCH_NAME of MBE_DW01_add_1 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n7, n9, n10, n11, n13, n15, n18, n19, n20, n21, n22, n23, n24, 
      n29, n30, n71, n72, n73, n74, n75, n78, n80, n92, n93, n94, n95, n96, n97
      , n112, n113, n114, n117, n118, n119, n120, n121, n122, n123, n124, n125,
      n126, n127, n128, n131, n132, n133, n134, n135, n136, n138, n141, n150, 
      n168, n169, n170, n191, n192, n193, n194, n195, n200, n201, n202, n203, 
      n205, n206, n211, n212, n213, n216, n218, n221, n222, n225, n229, n230, 
      n231, n234, n235, n236, n237, n238, n239, n240, n246, n247, n248, n249, 
      n254, n256, n257, n258, n259, n260, n261, n264, n265, n266, n267, n268, 
      n269, n272, n273, n274, n277, n278, n279, n281, n282, n283, n284, n286, 
      n288, n289, n290, n291, n299, n300, n301, n302, n316, n318, n319, n330, 
      n331, n332, n333, n334, n336, n337, n350, n351, n352, n363, n364, n365, 
      n366, n367, n369, n370, n372, n373, n378, n385, n390, n391, n392, n393, 
      n398, n399, n400, n401, n406, n407, n408, n411, n413, net27373, net29930,
      net30115, net30125, net30389, net30159, n427, n181, n180, n179, n178, 
      n177, n16, n280, n255, n253, n252, n251, n219, n217, n210, n196, net27402
      , n228, n227, n226, n220, n204, n199, n190, n187, n185, n209, n425, n424,
      n172, n171, n167, n166, n165, n163, n162, n161, n160, n159, n14, n98, n91
      , n88, n87, n86, n85, n84, n83, n82, n81, n76, n6, n417, n416, n2, 
      net30335, net29922, net27451, n8, n3, n188, n186, n184, n183, n111, n109,
      n105, n104, n103, n102, n1, net32937, n151, net30095, n423, n422, n158, 
      n157, n154, n153, n152, n149, n148, n147, n145, n144, n143, n142, n12, 
      n662, n670, n671, n672, n673, n675, n676, n679, n684, n686, n688, n689, 
      n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, 
      n702, n703, n769, n770, n771, n772, n773, n774, n775, n776, n777, n778, 
      n779, n780, n781, n782, n783, n785, n786, n787, n788, n789, n790, n791, 
      n792, n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, 
      n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, 
      n816, n817, n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, 
      n828, n829, n830, n831, n832, n833, n873, n874, n875, n876, n877, n878, 
      n879, n880, n881, n882, n883, n884, n885, n886, n887, n888, n889, n890, 
      n891, n892, n893, n894, n895, n896, n897, n898, n899, n900, n901, n902, 
      n903, n906, n907, n908, n909, n910, n911, n912, n913, n914, n915, n_1128,
      n_1129, n_1130, n_1131, n_1132, n_1133, n_1134, n_1135, n_1136, n_1137, 
      n_1138, n_1139, n_1140, n_1141, n_1142, n_1143, n_1144, n_1145, n_1146, 
      n_1147, n_1148, n_1149, n_1150, n_1151, n_1152, n_1153, n_1154, n_1155, 
      n_1156, n_1157, n_1158, n_1159, n_1160, n_1161, n_1162, n_1163, n_1164, 
      n_1165, n_1166, n_1167, n_1168, n_1169, n_1170, n_1171, n_1172, n_1173, 
      n_1174 : std_logic;

begin
   
   U516 : NOR2_X1 port map( A1 => n205, A2 => n796, ZN => n662);
   U520 : OR2_X1 port map( A1 => A(17), A2 => B(17), ZN => n691);
   U521 : NAND2_X1 port map( A1 => A(41), A2 => B(41), ZN => n131);
   U522 : NOR2_X1 port map( A1 => B(42), A2 => A(42), ZN => n121);
   U528 : XNOR2_X1 port map( A => n274, B => n670, ZN => SUM(24));
   U529 : AND2_X1 port map( A1 => n907, A2 => n780, ZN => n670);
   U530 : XNOR2_X1 port map( A => n258, B => n671, ZN => SUM(26));
   U531 : AND2_X1 port map( A1 => n886, A2 => n783, ZN => n671);
   U532 : XNOR2_X1 port map( A => n265, B => n672, ZN => SUM(25));
   U533 : AND2_X1 port map( A1 => n890, A2 => n782, ZN => n672);
   U534 : OAI21_X1 port map( B1 => n330, B2 => n318, A => n319, ZN => n673);
   U536 : XNOR2_X1 port map( A => n873, B => n675, ZN => SUM(27));
   U537 : AND2_X1 port map( A1 => n887, A2 => n777, ZN => n675);
   U538 : XNOR2_X1 port map( A => n909, B => n676, ZN => SUM(35));
   U539 : AND2_X1 port map( A1 => n427, A2 => n181, ZN => n676);
   U541 : OR2_X1 port map( A1 => A(21), A2 => B(21), ZN => n694);
   U544 : XNOR2_X1 port map( A => n143, B => n12, ZN => SUM(40));
   U545 : NAND2_X1 port map( A1 => n422, A2 => n142, ZN => n12);
   U546 : INV_X1 port map( A => net30095, ZN => n422);
   U547 : OAI21_X1 port map( B1 => n910, B2 => n144, A => n145, ZN => n143);
   U548 : AOI21_X1 port map( B1 => n154, B2 => n423, A => n147, ZN => n145);
   U549 : INV_X1 port map( A => n149, ZN => n147);
   U550 : INV_X1 port map( A => n148, ZN => n423);
   U551 : NAND2_X1 port map( A1 => n423, A2 => n149, ZN => n13);
   U552 : NAND2_X1 port map( A1 => n153, A2 => n423, ZN => n144);
   U553 : INV_X1 port map( A => n914, ZN => n154);
   U555 : AOI21_X1 port map( B1 => n126, B2 => n154, A => n127, ZN => n125);
   U556 : AOI21_X1 port map( B1 => n154, B2 => n135, A => n136, ZN => n134);
   U557 : INV_X1 port map( A => n151, ZN => n153);
   U558 : NAND2_X1 port map( A1 => n126, A2 => n153, ZN => n124);
   U559 : NAND2_X1 port map( A1 => n153, A2 => n135, ZN => n133);
   U561 : NAND2_X1 port map( A1 => n819, A2 => n829, ZN => n142);
   U563 : NOR2_X1 port map( A1 => n819, A2 => n829, ZN => net30095);
   U564 : NAND2_X1 port map( A1 => n828, A2 => n818, ZN => n149);
   U565 : NOR2_X1 port map( A1 => n828, A2 => n818, ZN => n148);
   U566 : NOR2_X1 port map( A1 => n148, A2 => n141, ZN => n135);
   U568 : OAI21_X1 port map( B1 => n914, B2 => n117, A => n118, ZN => net30335)
                           ;
   U569 : OAI21_X1 port map( B1 => n117, B2 => n152, A => n118, ZN => n2);
   U570 : OAI21_X1 port map( B1 => n159, B2 => n167, A => n160, ZN => n158);
   U571 : NOR2_X1 port map( A1 => n166, A2 => net30125, ZN => n157);
   U572 : NAND2_X1 port map( A1 => net32937, A2 => n171, ZN => n151);
   U573 : NOR2_X1 port map( A1 => n117, A2 => n151, ZN => net27373);
   U574 : NOR2_X1 port map( A1 => n151, A2 => n117, ZN => n3);
   U575 : NOR2_X1 port map( A1 => n166, A2 => net30125, ZN => net32937);
   U577 : XNOR2_X1 port map( A => n103, B => n8, ZN => SUM(44));
   U578 : NAND2_X1 port map( A1 => n808, A2 => n807, ZN => n8);
   U579 : OAI21_X1 port map( B1 => n909, B2 => n104, A => n105, ZN => n103);
   U580 : AOI21_X1 port map( B1 => net30335, B2 => net27451, A => n109, ZN => 
                           n105);
   U581 : INV_X1 port map( A => n111, ZN => n109);
   U582 : AOI21_X1 port map( B1 => n808, B2 => n109, A => n893, ZN => n98);
   U583 : NAND2_X1 port map( A1 => n3, A2 => net27451, ZN => n104);
   U585 : NAND2_X1 port map( A1 => net27451, A2 => n808, ZN => n97);
   U586 : NAND2_X1 port map( A1 => B(44), A2 => A(44), ZN => n102);
   U588 : AOI21_X1 port map( B1 => net30335, B2 => n95, A => n96, ZN => n94);
   U589 : INV_X1 port map( A => net30335, ZN => n114);
   U591 : NAND2_X1 port map( A1 => net27451, A2 => n111, ZN => n9);
   U592 : NAND2_X1 port map( A1 => n820, A2 => n830, ZN => n111);
   U593 : INV_X1 port map( A => n3, ZN => n113);
   U594 : NAND2_X1 port map( A1 => n3, A2 => n86, ZN => n84);
   U596 : OAI21_X1 port map( B1 => n185, B2 => n220, A => n186, ZN => n184);
   U597 : AOI21_X1 port map( B1 => n187, B2 => n204, A => n188, ZN => n186);
   U598 : OAI21_X1 port map( B1 => n801, B2 => n806, A => n800, ZN => n188);
   U600 : NOR2_X1 port map( A1 => n185, A2 => n219, ZN => n183);
   U602 : XNOR2_X1 port map( A => n83, B => n6, ZN => SUM(46));
   U603 : NAND2_X1 port map( A1 => n416, A2 => n82, ZN => n6);
   U604 : INV_X1 port map( A => n81, ZN => n416);
   U605 : OAI21_X1 port map( B1 => n910, B2 => n84, A => n85, ZN => n83);
   U606 : AOI21_X1 port map( B1 => n2, B2 => n86, A => n87, ZN => n85);
   U607 : OAI21_X1 port map( B1 => n98, B2 => n88, A => n91, ZN => n87);
   U608 : NAND2_X1 port map( A1 => n822, A2 => n832, ZN => n82);
   U609 : OAI21_X1 port map( B1 => n81, B2 => n91, A => n82, ZN => n80);
   U610 : NOR2_X1 port map( A1 => n822, A2 => n832, ZN => n81);
   U611 : OR2_X1 port map( A1 => n88, A2 => n81, ZN => net29930);
   U612 : AOI21_X1 port map( B1 => n2, B2 => n75, A => n76, ZN => n74);
   U613 : NOR2_X1 port map( A1 => n97, A2 => n88, ZN => n86);
   U614 : OAI21_X1 port map( B1 => n98, B2 => net29930, A => n78, ZN => n76);
   U615 : INV_X1 port map( A => n98, ZN => n96);
   U616 : NOR2_X1 port map( A1 => n821, A2 => n831, ZN => n88);
   U617 : INV_X1 port map( A => n88, ZN => n417);
   U618 : NAND2_X1 port map( A1 => n821, A2 => n831, ZN => n91);
   U619 : NAND2_X1 port map( A1 => n417, A2 => n91, ZN => n7);
   U620 : XNOR2_X1 port map( A => n161, B => n14, ZN => SUM(38));
   U621 : NAND2_X1 port map( A1 => n424, A2 => n160, ZN => n14);
   U622 : INV_X1 port map( A => n159, ZN => n424);
   U624 : OAI21_X1 port map( B1 => n910, B2 => n162, A => n163, ZN => n161);
   U625 : AOI21_X1 port map( B1 => n172, B2 => n425, A => n165, ZN => n163);
   U626 : INV_X1 port map( A => n167, ZN => n165);
   U627 : INV_X1 port map( A => n166, ZN => n425);
   U628 : NAND2_X1 port map( A1 => n425, A2 => n167, ZN => n15);
   U629 : NAND2_X1 port map( A1 => n171, A2 => n425, ZN => n162);
   U630 : NAND2_X1 port map( A1 => n827, A2 => n817, ZN => n160);
   U631 : NOR2_X1 port map( A1 => n827, A2 => n817, ZN => n159);
   U632 : OAI21_X1 port map( B1 => n177, B2 => n181, A => n178, ZN => n172);
   U633 : INV_X1 port map( A => n172, ZN => n170);
   U634 : NAND2_X1 port map( A1 => n826, A2 => n816, ZN => n167);
   U635 : NOR2_X1 port map( A1 => n816, A2 => n826, ZN => n166);
   U637 : INV_X1 port map( A => n171, ZN => n169);
   U638 : NOR2_X1 port map( A1 => A(32), A2 => B(32), ZN => n209);
   U639 : OAI21_X1 port map( B1 => n805, B2 => n795, A => n803, ZN => n204);
   U640 : NOR2_X1 port map( A1 => B(32), A2 => A(32), ZN => net30115);
   U641 : NAND2_X1 port map( A1 => A(32), A2 => B(32), ZN => n210);
   U642 : NAND2_X1 port map( A1 => n187, A2 => n203, ZN => n185);
   U643 : AOI21_X1 port map( B1 => n225, B2 => n240, A => n226, ZN => n220);
   U644 : OAI21_X1 port map( B1 => n802, B2 => n785, A => n798, ZN => n226);
   U645 : NOR2_X1 port map( A1 => B(30), A2 => A(30), ZN => n227);
   U646 : NOR2_X1 port map( A1 => n796, A2 => n799, ZN => n187);
   U648 : NAND2_X1 port map( A1 => A(33), A2 => B(33), ZN => n199);
   U650 : NAND2_X1 port map( A1 => A(34), A2 => B(34), ZN => n190);
   U651 : NAND2_X1 port map( A1 => n877, A2 => n800, ZN => n18);
   U652 : NOR2_X1 port map( A1 => A(34), A2 => B(34), ZN => net27402);
   U654 : NAND2_X1 port map( A1 => n225, A2 => n239, ZN => n219);
   U658 : NAND2_X1 port map( A1 => A(30), A2 => B(30), ZN => n228);
   U662 : NAND2_X1 port map( A1 => n902, A2 => n795, ZN => n21);
   U664 : NAND2_X1 port map( A1 => net30159, A2 => n178, ZN => n16);
   U665 : OAI21_X1 port map( B1 => n909, B2 => n180, A => n181, ZN => n179);
   U666 : INV_X1 port map( A => n180, ZN => n427);
   U668 : NOR2_X1 port map( A1 => B(33), A2 => A(33), ZN => n196);
   U669 : NAND2_X1 port map( A1 => B(31), A2 => A(31), ZN => n217);
   U670 : AND2_X1 port map( A1 => B(31), A2 => A(31), ZN => net30389);
   U671 : NOR2_X1 port map( A1 => B(31), A2 => A(31), ZN => n216);
   U673 : AOI21_X1 port map( B1 => n254, B2 => n267, A => n255, ZN => n253);
   U674 : OAI21_X1 port map( B1 => n781, B2 => n782, A => n783, ZN => n255);
   U675 : NAND2_X1 port map( A1 => n254, A2 => n266, ZN => n252);
   U676 : AOI21_X1 port map( B1 => n772, B2 => n776, A => n769, ZN => n280);
   U677 : INV_X1 port map( A => n219, ZN => n221);
   U680 : AOI21_X1 port map( B1 => n693, B2 => n882, A => n899, ZN => n679);
   U683 : AOI21_X1 port map( B1 => n693, B2 => n882, A => n899, ZN => n300);
   U684 : XNOR2_X1 port map( A => n179, B => n16, ZN => SUM(36));
   U685 : OR2_X1 port map( A1 => n815, A2 => n825, ZN => net30159);
   U686 : NAND2_X1 port map( A1 => n815, A2 => n825, ZN => n178);
   U688 : NOR2_X1 port map( A1 => n824, A2 => n814, ZN => n180);
   U689 : NAND2_X1 port map( A1 => n814, A2 => n824, ZN => n181);
   U690 : OAI21_X1 port map( B1 => n873, B2 => n219, A => n220, ZN => n218);
   U691 : INV_X1 port map( A => n240, ZN => n238);
   U692 : NAND2_X1 port map( A1 => n803, A2 => n901, ZN => n20);
   U695 : NOR2_X1 port map( A1 => n792, A2 => n774, ZN => n684);
   U696 : NOR2_X1 port map( A1 => n792, A2 => n774, ZN => n239);
   U699 : AOI21_X1 port map( B1 => n772, B2 => n776, A => n769, ZN => n686);
   U703 : NOR2_X1 port map( A1 => n817, A2 => n827, ZN => net30125);
   U706 : NOR2_X1 port map( A1 => A(28), A2 => B(28), ZN => n688);
   U707 : OR2_X1 port map( A1 => A(12), A2 => B(12), ZN => n689);
   U708 : OR2_X1 port map( A1 => B(15), A2 => A(15), ZN => n698);
   U709 : INV_X1 port map( A => n97, ZN => n95);
   U710 : OAI21_X1 port map( B1 => n809, B2 => n810, A => n791, ZN => n120);
   U711 : NOR2_X1 port map( A1 => net29930, A2 => n97, ZN => n75);
   U712 : INV_X1 port map( A => n136, ZN => n138);
   U713 : INV_X1 port map( A => n80, ZN => n78);
   U714 : NAND2_X1 port map( A1 => n690, A2 => n71, ZN => n5);
   U715 : NAND2_X1 port map( A1 => n891, A2 => n810, ZN => n11);
   U716 : NAND2_X1 port map( A1 => n892, A2 => n791, ZN => n10);
   U719 : NOR2_X1 port map( A1 => n819, A2 => n829, ZN => n141);
   U720 : INV_X1 port map( A => n673, ZN => n316);
   U721 : INV_X1 port map( A => n686, ZN => n279);
   U722 : OR2_X1 port map( A1 => n823, A2 => A(47), ZN => n690);
   U723 : NAND2_X1 port map( A1 => B(42), A2 => A(42), ZN => n122);
   U724 : NAND2_X1 port map( A1 => n684, A2 => n875, ZN => n230);
   U725 : INV_X1 port map( A => n684, ZN => n237);
   U726 : NAND2_X1 port map( A1 => n221, A2 => n203, ZN => n201);
   U727 : NAND2_X1 port map( A1 => n221, A2 => n902, ZN => n212);
   U732 : AOI21_X1 port map( B1 => n692, B2 => n885, A => n894, ZN => n319);
   U733 : NAND2_X1 port map( A1 => n692, A2 => n691, ZN => n318);
   U735 : NOR2_X1 port map( A1 => n804, A2 => n793, ZN => n203);
   U739 : INV_X1 port map( A => n299, ZN => n301);
   U741 : NOR2_X1 port map( A1 => n268, A2 => n789, ZN => n259);
   U743 : OAI21_X1 port map( B1 => n269, B2 => n789, A => n782, ZN => n260);
   U744 : AOI21_X1 port map( B1 => n279, B2 => n908, A => n898, ZN => n274);
   U746 : AOI21_X1 port map( B1 => n279, B2 => n259, A => n260, ZN => n258);
   U750 : AOI21_X1 port map( B1 => n222, B2 => n902, A => n794, ZN => n213);
   U751 : INV_X1 port map( A => n220, ZN => n222);
   U752 : XNOR2_X1 port map( A => n247, B => n24, ZN => SUM(28));
   U753 : NAND2_X1 port map( A1 => n876, A2 => n773, ZN => n24);
   U754 : XNOR2_X1 port map( A => n200, B => n19, ZN => SUM(33));
   U755 : XNOR2_X1 port map( A => n211, B => n20, ZN => SUM(32));
   U756 : XNOR2_X1 port map( A => n236, B => n23, ZN => SUM(29));
   U757 : NAND2_X1 port map( A1 => n875, A2 => n785, ZN => n23);
   U758 : XNOR2_X1 port map( A => n229, B => n22, ZN => SUM(30));
   U759 : XNOR2_X1 port map( A => n218, B => n21, ZN => SUM(31));
   U761 : XNOR2_X1 port map( A => n279, B => n29, ZN => SUM(23));
   U762 : NAND2_X1 port map( A1 => n908, A2 => n786, ZN => n29);
   U766 : XNOR2_X1 port map( A => n289, B => n790, ZN => SUM(22));
   U767 : NAND2_X1 port map( A1 => n696, A2 => n288, ZN => n30);
   U768 : OAI21_X1 port map( B1 => n833, B2 => n778, A => n770, ZN => n289);
   U770 : NAND2_X1 port map( A1 => n883, A2 => n693, ZN => n299);
   U772 : INV_X1 port map( A => n288, ZN => n286);
   U792 : NOR2_X1 port map( A1 => A(25), A2 => B(25), ZN => n261);
   U793 : AOI21_X1 port map( B1 => n698, B2 => n913, A => n889, ZN => n337);
   U796 : NOR2_X1 port map( A1 => n369, A2 => n366, ZN => n364);
   U797 : OAI21_X1 port map( B1 => n366, B2 => n370, A => n367, ZN => n365);
   U799 : AOI21_X1 port map( B1 => n697, B2 => n897, A => n896, ZN => n352);
   U800 : NAND2_X1 port map( A1 => n689, A2 => n697, ZN => n351);
   U802 : NOR2_X1 port map( A1 => A(10), A2 => B(10), ZN => n369);
   U804 : NOR2_X1 port map( A1 => B(24), A2 => A(24), ZN => n272);
   U807 : OR2_X1 port map( A1 => A(20), A2 => B(20), ZN => n693);
   U808 : NAND2_X1 port map( A1 => A(10), A2 => B(10), ZN => n370);
   U810 : NAND2_X1 port map( A1 => A(23), A2 => B(23), ZN => n278);
   U811 : NAND2_X1 port map( A1 => B(29), A2 => A(29), ZN => n235);
   U813 : OR2_X1 port map( A1 => A(3), A2 => B(3), ZN => n695);
   U814 : NOR2_X1 port map( A1 => B(23), A2 => A(23), ZN => n277);
   U816 : NAND2_X1 port map( A1 => A(26), A2 => B(26), ZN => n257);
   U819 : NAND2_X1 port map( A1 => B(22), A2 => A(22), ZN => n288);
   U820 : NAND2_X1 port map( A1 => A(25), A2 => B(25), ZN => n264);
   U821 : OR2_X1 port map( A1 => A(22), A2 => B(22), ZN => n696);
   U822 : NAND2_X1 port map( A1 => n895, A2 => n698, ZN => n336);
   U839 : NOR2_X1 port map( A1 => A(11), A2 => B(11), ZN => n366);
   U840 : AOI21_X1 port map( B1 => n406, B2 => n695, A => n881, ZN => n401);
   U842 : AOI21_X1 port map( B1 => n390, B2 => n702, A => n880, ZN => n385);
   U844 : OR2_X1 port map( A1 => A(13), A2 => B(13), ZN => n697);
   U846 : OAI21_X1 port map( B1 => n391, B2 => n393, A => n392, ZN => n390);
   U847 : AOI21_X1 port map( B1 => n398, B2 => n701, A => n884, ZN => n393);
   U849 : OAI21_X1 port map( B1 => n399, B2 => n771, A => n400, ZN => n398);
   U850 : NOR2_X1 port map( A1 => A(16), A2 => B(16), ZN => n333);
   U851 : NAND2_X1 port map( A1 => A(11), A2 => B(11), ZN => n367);
   U852 : OR2_X1 port map( A1 => n411, A2 => n413, ZN => n699);
   U856 : OR2_X1 port map( A1 => A(8), A2 => B(8), ZN => n700);
   U857 : NAND2_X1 port map( A1 => A(16), A2 => B(16), ZN => n334);
   U858 : OR2_X1 port map( A1 => B(9), A2 => A(9), ZN => n703);
   U869 : OAI21_X1 port map( B1 => n407, B2 => n699, A => n408, ZN => n406);
   U870 : NOR2_X1 port map( A1 => A(6), A2 => n813, ZN => n391);
   U871 : NAND2_X1 port map( A1 => A(4), A2 => n811, ZN => n400);
   U872 : NOR2_X1 port map( A1 => A(4), A2 => n811, ZN => n399);
   U875 : OR2_X1 port map( A1 => A(5), A2 => n812, ZN => n701);
   U876 : INV_X1 port map( A => A(1), ZN => n411);
   U877 : OR2_X1 port map( A1 => A(7), A2 => B(7), ZN => n702);
   U881 : AOI21_X1 port map( B1 => n279, B2 => n266, A => n267, ZN => n265);
   U883 : INV_X1 port map( A => n266, ZN => n268);
   U885 : NAND2_X1 port map( A1 => A(6), A2 => n813, ZN => n392);
   U886 : NAND2_X1 port map( A1 => n888, A2 => n798, ZN => n22);
   U888 : NOR2_X1 port map( A1 => n781, A2 => n789, ZN => n254);
   U889 : NOR2_X1 port map( A1 => A(26), A2 => B(26), ZN => n256);
   U892 : NAND2_X1 port map( A1 => n823, A2 => A(47), ZN => n71);
   U893 : NAND2_X1 port map( A1 => A(24), A2 => B(24), ZN => n273);
   U894 : XNOR2_X1 port map( A => n191, B => n18, ZN => SUM(34));
   U895 : AOI21_X1 port map( B1 => n194, B2 => n222, A => n195, ZN => n193);
   U896 : NAND2_X1 port map( A1 => n662, A2 => n221, ZN => n192);
   U898 : AOI21_X1 port map( B1 => n696, B2 => n900, A => n286, ZN => n284);
   U900 : XNOR2_X1 port map( A => n92, B => n7, ZN => SUM(45));
   U901 : NOR2_X1 port map( A1 => n205, A2 => n796, ZN => n194);
   U902 : XNOR2_X1 port map( A => n112, B => n9, ZN => SUM(43));
   U903 : XNOR2_X1 port map( A => n132, B => n11, ZN => SUM(41));
   U904 : XNOR2_X1 port map( A => n150, B => n13, ZN => SUM(39));
   U905 : XNOR2_X1 port map( A => n168, B => n15, ZN => SUM(37));
   U907 : OAI21_X1 port map( B1 => n138, B2 => n779, A => n810, ZN => n127);
   U908 : NOR2_X1 port map( A1 => n906, A2 => n779, ZN => n126);
   U909 : NOR2_X1 port map( A1 => n779, A2 => n809, ZN => n119);
   U910 : NOR2_X1 port map( A1 => A(41), A2 => B(41), ZN => n128);
   U912 : NAND2_X1 port map( A1 => n878, A2 => n801, ZN => n19);
   U913 : INV_X1 port map( A => n203, ZN => n205);
   U915 : OAI21_X1 port map( B1 => n787, B2 => n786, A => n780, ZN => n267);
   U916 : INV_X1 port map( A => n267, ZN => n269);
   U917 : NAND2_X1 port map( A1 => n700, A2 => n703, ZN => n373);
   U919 : NAND2_X1 port map( A1 => n694, A2 => n696, ZN => n283);
   U920 : NAND2_X1 port map( A1 => n301, A2 => n694, ZN => n290);
   U921 : AOI21_X1 port map( B1 => n302, B2 => n694, A => n900, ZN => n291);
   U925 : NOR2_X1 port map( A1 => n333, A2 => n336, ZN => n331);
   U927 : OAI21_X1 port map( B1 => n337, B2 => n333, A => n334, ZN => n332);
   U928 : AOI21_X1 port map( B1 => n331, B2 => n350, A => n332, ZN => n330);
   U930 : OAI21_X1 port map( B1 => n363, B2 => n351, A => n352, ZN => n350);
   U931 : AOI21_X1 port map( B1 => n364, B2 => n372, A => n365, ZN => n363);
   U932 : XNOR2_X1 port map( A => n123, B => n10, ZN => SUM(42));
   U936 : NAND2_X1 port map( A1 => B(27), A2 => A(27), ZN => n249);
   U938 : NOR2_X1 port map( A1 => n299, A2 => n283, ZN => n281);
   U940 : NOR2_X1 port map( A1 => n797, A2 => n775, ZN => n225);
   U941 : NOR2_X1 port map( A1 => B(29), A2 => A(29), ZN => n234);
   U942 : NOR2_X1 port map( A1 => B(27), A2 => A(27), ZN => n248);
   U943 : NAND2_X1 port map( A1 => A(28), A2 => B(28), ZN => n246);
   U944 : AOI21_X1 port map( B1 => n240, B2 => n875, A => n874, ZN => n231);
   U946 : OAI21_X1 port map( B1 => n300, B2 => n283, A => n284, ZN => n282);
   U947 : INV_X1 port map( A => n679, ZN => n302);
   U949 : AOI21_X1 port map( B1 => n222, B2 => n203, A => n204, ZN => n202);
   U950 : INV_X1 port map( A => n204, ZN => n206);
   U951 : NAND2_X1 port map( A1 => n135, A2 => n119, ZN => n117);
   U954 : OAI21_X1 port map( B1 => n206, B2 => n796, A => n801, ZN => n195);
   U958 : OAI21_X1 port map( B1 => n873, B2 => n774, A => n777, ZN => n247);
   U959 : OAI21_X1 port map( B1 => n873, B2 => n237, A => n238, ZN => n236);
   U960 : OAI21_X1 port map( B1 => n873, B2 => n230, A => n231, ZN => n229);
   U961 : OAI21_X1 port map( B1 => n873, B2 => n212, A => n213, ZN => n211);
   U962 : OAI21_X1 port map( B1 => n873, B2 => n201, A => n202, ZN => n200);
   U963 : OAI21_X1 port map( B1 => n192, B2 => n873, A => n193, ZN => n191);
   U965 : NAND2_X1 port map( A1 => A(9), A2 => B(9), ZN => n378);
   U966 : NAND2_X1 port map( A1 => A(0), A2 => B(0), ZN => n413);
   U967 : NAND2_X1 port map( A1 => net27373, A2 => n75, ZN => n73);
   U968 : NAND2_X1 port map( A1 => n3, A2 => n95, ZN => n93);
   U969 : NAND2_X1 port map( A1 => A(2), A2 => B(2), ZN => n408);
   U970 : NOR2_X1 port map( A1 => A(2), A2 => B(2), ZN => n407);
   U973 : OAI21_X1 port map( B1 => n910, B2 => n93, A => n94, ZN => n92);
   U974 : OAI21_X1 port map( B1 => n909, B2 => n113, A => n114, ZN => n112);
   U975 : OAI21_X1 port map( B1 => n910, B2 => n124, A => n125, ZN => n123);
   U976 : OAI21_X1 port map( B1 => n909, B2 => n133, A => n134, ZN => n132);
   U977 : OAI21_X1 port map( B1 => n910, B2 => n151, A => n914, ZN => n150);
   U978 : OAI21_X1 port map( B1 => n910, B2 => n169, A => n170, ZN => n168);
   U979 : OAI21_X1 port map( B1 => n1, B2 => n73, A => n74, ZN => n72);
   MY_CLK_r_REG296_S2 : DFF_X1 port map( D => n316, CK => clk, Q => n833, QN =>
                           n_1128);
   MY_CLK_r_REG204_S2 : DFF_X1 port map( D => A(46), CK => clk, Q => n832, QN 
                           => n_1129);
   MY_CLK_r_REG196_S2 : DFF_X1 port map( D => A(45), CK => clk, Q => n831, QN 
                           => n_1130);
   MY_CLK_r_REG190_S2 : DFF_X1 port map( D => A(43), CK => clk, Q => n830, QN 
                           => n_1131);
   MY_CLK_r_REG169_S2 : DFF_X1 port map( D => A(40), CK => clk, Q => n829, QN 
                           => n_1132);
   MY_CLK_r_REG170_S2 : DFF_X1 port map( D => A(39), CK => clk, Q => n828, QN 
                           => n_1133);
   MY_CLK_r_REG157_S2 : DFF_X1 port map( D => A(38), CK => clk, Q => n827, QN 
                           => n_1134);
   MY_CLK_r_REG158_S2 : DFF_X1 port map( D => A(37), CK => clk, Q => n826, QN 
                           => n_1135);
   MY_CLK_r_REG147_S2 : DFF_X1 port map( D => A(35), CK => clk, Q => n824, QN 
                           => n_1136);
   MY_CLK_r_REG203_S2 : DFF_X1 port map( D => B(47), CK => clk, Q => n823, QN 
                           => n_1137);
   MY_CLK_r_REG195_S2 : DFF_X1 port map( D => B(46), CK => clk, Q => n822, QN 
                           => n_1138);
   MY_CLK_r_REG197_S2 : DFF_X1 port map( D => B(45), CK => clk, Q => n821, QN 
                           => n_1139);
   MY_CLK_r_REG177_S2 : DFF_X1 port map( D => B(43), CK => clk, Q => n820, QN 
                           => n_1140);
   MY_CLK_r_REG171_S2 : DFF_X1 port map( D => B(40), CK => clk, Q => n819, QN 
                           => n_1141);
   MY_CLK_r_REG156_S2 : DFF_X1 port map( D => B(39), CK => clk, Q => n818, QN 
                           => n_1142);
   MY_CLK_r_REG159_S2 : DFF_X1 port map( D => B(38), CK => clk, Q => n817, QN 
                           => n_1143);
   MY_CLK_r_REG144_S2 : DFF_X1 port map( D => B(37), CK => clk, Q => n816, QN 
                           => n_1144);
   MY_CLK_r_REG138_S2 : DFF_X1 port map( D => B(35), CK => clk, Q => n814, QN 
                           => n_1145);
   MY_CLK_r_REG430_S1 : DFF_X1 port map( D => B(6), CK => clk, Q => n813, QN =>
                           n_1146);
   MY_CLK_r_REG454_S1 : DFF_X1 port map( D => B(5), CK => clk, Q => n812, QN =>
                           n_1147);
   MY_CLK_r_REG459_S1 : DFF_X1 port map( D => B(4), CK => clk, Q => n811, QN =>
                           n_1148);
   MY_CLK_r_REG168_S2 : DFF_X1 port map( D => n131, CK => clk, Q => n810, QN =>
                           n_1149);
   MY_CLK_r_REG189_S2 : DFF_X1 port map( D => net29922, CK => clk, Q => n808, 
                           QN => n_1150);
   MY_CLK_r_REG131_S2 : DFF_X1 port map( D => net27402, CK => clk, Q => n806, 
                           QN => n_1151);
   MY_CLK_r_REG120_S2 : DFF_X1 port map( D => n209, CK => clk, Q => n805, QN =>
                           n_1152);
   MY_CLK_r_REG121_S2 : DFF_X1 port map( D => n210, CK => clk, Q => n803, QN =>
                           n_1153);
   MY_CLK_r_REG109_S2 : DFF_X1 port map( D => n227, CK => clk, Q => n802, QN =>
                           n_1154);
   MY_CLK_r_REG129_S2 : DFF_X1 port map( D => n199, CK => clk, Q => n801, QN =>
                           n_1155);
   MY_CLK_r_REG133_S2 : DFF_X1 port map( D => n190, CK => clk, Q => n800, QN =>
                           n_1156);
   MY_CLK_r_REG107_S2 : DFF_X1 port map( D => n228, CK => clk, Q => n798, QN =>
                           n_1157);
   MY_CLK_r_REG116_S2 : DFF_X1 port map( D => n217, CK => clk, Q => n795, QN =>
                           n_1158);
   MY_CLK_r_REG118_S2 : DFF_X1 port map( D => net30389, CK => clk, Q => n794, 
                           QN => n_1159);
   MY_CLK_r_REG178_S2 : DFF_X1 port map( D => n122, CK => clk, Q => n791, QN =>
                           n_1160);
   MY_CLK_r_REG247_S2 : DFF_X1 port map( D => n30, CK => clk, Q => n790, QN => 
                           n_1161);
   MY_CLK_r_REG95_S2 : DFF_X1 port map( D => n688, CK => clk, Q => n788, QN => 
                           n_1162);
   MY_CLK_r_REG114_S2 : DFF_X1 port map( D => n277, CK => clk, Q => n_1163, QN 
                           => n908);
   MY_CLK_r_REG100_S2 : DFF_X1 port map( D => n257, CK => clk, Q => n783, QN =>
                           n_1164);
   MY_CLK_r_REG101_S2 : DFF_X1 port map( D => n264, CK => clk, Q => n782, QN =>
                           n_1165);
   MY_CLK_r_REG104_S2 : DFF_X1 port map( D => n273, CK => clk, Q => n780, QN =>
                           n_1166);
   MY_CLK_r_REG264_S2 : DFF_X1 port map( D => n290, CK => clk, Q => n778, QN =>
                           n_1167);
   MY_CLK_r_REG97_S2 : DFF_X1 port map( D => n249, CK => clk, Q => n777, QN => 
                           n_1168);
   MY_CLK_r_REG246_S2 : DFF_X1 port map( D => n281, CK => clk, Q => n776, QN =>
                           n_1169);
   MY_CLK_r_REG94_S2 : DFF_X1 port map( D => n246, CK => clk, Q => n773, QN => 
                           n_1170);
   MY_CLK_r_REG297_S2 : DFF_X1 port map( D => n673, CK => clk, Q => n772, QN =>
                           n_1171);
   MY_CLK_r_REG263_S2 : DFF_X1 port map( D => n291, CK => clk, Q => n770, QN =>
                           n_1172);
   MY_CLK_r_REG245_S2 : DFF_X1 port map( D => n282, CK => clk, Q => n769, QN =>
                           n_1173);
   U567 : AOI21_X1 port map( B1 => n903, B2 => n157, A => n158, ZN => n152);
   U590 : OR2_X1 port map( A1 => n820, A2 => n830, ZN => net27451);
   U945 : OAI21_X1 port map( B1 => n788, B2 => n777, A => n773, ZN => n240);
   MY_CLK_r_REG458_S1 : DFF_X1 port map( D => n401, CK => clk, Q => n771, QN =>
                           n_1174);
   U514 : INV_X1 port map( A => n251, ZN => n873);
   U515 : OAI21_X1 port map( B1 => n280, B2 => n252, A => n253, ZN => n251);
   U518 : NOR2_X1 port map( A1 => n180, A2 => n177, ZN => n171);
   U519 : AND2_X1 port map( A1 => n907, A2 => n908, ZN => n266);
   U524 : OR2_X1 port map( A1 => A(18), A2 => B(18), ZN => n692);
   U525 : AND2_X1 port map( A1 => A(8), A2 => B(8), ZN => n879);
   U526 : AND2_X1 port map( A1 => A(7), A2 => B(7), ZN => n880);
   U527 : AND2_X1 port map( A1 => A(3), A2 => B(3), ZN => n881);
   U535 : AND2_X1 port map( A1 => A(19), A2 => B(19), ZN => n882);
   U540 : OR2_X1 port map( A1 => B(19), A2 => A(19), ZN => n883);
   U542 : AND2_X1 port map( A1 => A(5), A2 => n812, ZN => n884);
   U543 : AND2_X1 port map( A1 => A(17), A2 => B(17), ZN => n885);
   U554 : AND2_X1 port map( A1 => B(15), A2 => A(15), ZN => n889);
   U560 : AND2_X1 port map( A1 => A(18), A2 => B(18), ZN => n894);
   U562 : OR2_X1 port map( A1 => B(14), A2 => A(14), ZN => n895);
   U576 : AND2_X1 port map( A1 => A(13), A2 => B(13), ZN => n896);
   U584 : AND2_X1 port map( A1 => A(12), A2 => B(12), ZN => n897);
   U587 : AND2_X1 port map( A1 => A(20), A2 => B(20), ZN => n899);
   U595 : AND2_X1 port map( A1 => A(21), A2 => B(21), ZN => n900);
   U599 : OAI21_X1 port map( B1 => n177, B2 => n181, A => n178, ZN => n903);
   U623 : OR2_X1 port map( A1 => n148, A2 => n141, ZN => n906);
   U636 : AOI21_X1 port map( B1 => n251, B2 => n183, A => n184, ZN => n909);
   U647 : AOI21_X1 port map( B1 => n251, B2 => n183, A => n184, ZN => n910);
   U649 : AOI21_X1 port map( B1 => n251, B2 => n183, A => n184, ZN => n1);
   U653 : OR2_X1 port map( A1 => A(44), A2 => B(44), ZN => net29922);
   U655 : AND2_X1 port map( A1 => n911, A2 => n912, ZN => n177);
   U656 : AND2_X1 port map( A1 => A(14), A2 => B(14), ZN => n913);
   U657 : AOI21_X1 port map( B1 => n136, B2 => n119, A => n120, ZN => n118);
   U659 : AOI21_X1 port map( B1 => n172, B2 => n157, A => n158, ZN => n914);
   U660 : OAI211_X1 port map( C1 => n373, C2 => n385, A => n378, B => n915, ZN 
                           => n372);
   U661 : NAND2_X1 port map( A1 => n879, A2 => n703, ZN => n915);
   U663 : XNOR2_X1 port map( A => n72, B => n5, ZN => SUM(47));
   U667 : OAI21_X1 port map( B1 => net30095, B2 => n149, A => n142, ZN => n136)
                           ;
   MY_CLK_r_REG188_S2 : DFF_X1 port map( D => n102, CK => clk, Q => n807, QN =>
                           n893);
   MY_CLK_r_REG179_S2 : DFF_X1 port map( D => n121, CK => clk, Q => n809, QN =>
                           n892);
   MY_CLK_r_REG167_S2 : DFF_X1 port map( D => n128, CK => clk, Q => n779, QN =>
                           n891);
   MY_CLK_r_REG146_S2 : DFF_X1 port map( D => B(36), CK => clk, Q => n815, QN 
                           => n911);
   MY_CLK_r_REG145_S2 : DFF_X1 port map( D => A(36), CK => clk, Q => n825, QN 
                           => n912);
   MY_CLK_r_REG132_S2 : DFF_X1 port map( D => net27402, CK => clk, Q => n799, 
                           QN => n877);
   MY_CLK_r_REG128_S2 : DFF_X1 port map( D => n196, CK => clk, Q => n796, QN =>
                           n878);
   MY_CLK_r_REG119_S2 : DFF_X1 port map( D => net30115, CK => clk, Q => n804, 
                           QN => n901);
   MY_CLK_r_REG117_S2 : DFF_X1 port map( D => n216, CK => clk, Q => n793, QN =>
                           n902);
   MY_CLK_r_REG113_S2 : DFF_X1 port map( D => n278, CK => clk, Q => n786, QN =>
                           n898);
   MY_CLK_r_REG108_S2 : DFF_X1 port map( D => n227, CK => clk, Q => n797, QN =>
                           n888);
   MY_CLK_r_REG105_S2 : DFF_X1 port map( D => n272, CK => clk, Q => n787, QN =>
                           n907);
   MY_CLK_r_REG102_S2 : DFF_X1 port map( D => n261, CK => clk, Q => n789, QN =>
                           n890);
   MY_CLK_r_REG99_S2 : DFF_X1 port map( D => n256, CK => clk, Q => n781, QN => 
                           n886);
   MY_CLK_r_REG98_S2 : DFF_X1 port map( D => n248, CK => clk, Q => n774, QN => 
                           n887);
   MY_CLK_r_REG96_S2 : DFF_X1 port map( D => n688, CK => clk, Q => n792, QN => 
                           n876);
   MY_CLK_r_REG93_S2 : DFF_X1 port map( D => n235, CK => clk, Q => n785, QN => 
                           n874);
   MY_CLK_r_REG92_S2 : DFF_X1 port map( D => n234, CK => clk, Q => n775, QN => 
                           n875);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_6 is

   port( A, Ci : in std_logic;  S, Co : out std_logic;  B_BAR : in std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

begin
   S <= B_BAR;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal S_port, n6, n_1182 : std_logic;

begin
   S <= S_port;
   
   U4 : XOR2_X1 port map( A => B, B => A, Z => S_port);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => S_port, B2 => n6, ZN => 
                           n_1182);
   n6 <= '0';

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal S_port, n6, n_1185 : std_logic;

begin
   S <= S_port;
   
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => S_port, B2 => n6, ZN => 
                           n_1185);
   U2 : XOR2_X1 port map( A => A, B => B, Z => S_port);
   n6 <= '0';

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n7, n8, n_1187, n_1188 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n7, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   MY_CLK_r_REG202_S2 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1187);
   MY_CLK_r_REG19_S2 : DFF_X1 port map( D => n4, CK => clk, Q => n7, QN => 
                           n_1188);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U2 : NOR2_X1 port map( A1 => n4, A2 => n2, ZN => Co);
   U3 : INV_X1 port map( A => A, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => Ci, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => A, B2 => B, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3, n4, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => A, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n7, A => n1, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => B, ZN => S);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => Co);
   U3 : INV_X1 port map( A => A, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => Co);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U2 : NOR2_X1 port map( A1 => n3, A2 => n4, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n3, B => A, ZN => S);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U1 : NOR2_X1 port map( A1 => n4, A2 => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n5 : std_logic;

begin
   
   U4 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U7 : INV_X1 port map( A => B, ZN => n1);
   U1 : XOR2_X1 port map( A => B, B => A, Z => S);
   U2 : INV_X1 port map( A => A, ZN => n5);
   U3 : AOI21_X1 port map( B1 => n5, B2 => n1, A => n4, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U4 : XNOR2_X1 port map( A => B, B => n5, ZN => S);
   U5 : INV_X1 port map( A => A, ZN => n5);
   U6 : INV_X1 port map( A => B, ZN => n4);
   U1 : NOR2_X1 port map( A1 => n5, A2 => n4, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n5, n6 : std_logic;

begin
   
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U8 : INV_X1 port map( A => B, ZN => n2);
   U1 : XOR2_X1 port map( A => B, B => A, Z => S);
   U2 : AOI21_X1 port map( B1 => n6, B2 => n2, A => n5, ZN => Co);
   U3 : INV_X1 port map( A => A, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_28 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_28;

architecture SYN_BEHAVIORAL of FA_28 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : AND2_X1 port map( A1 => A, A2 => B, ZN => Co);
   U3 : INV_X1 port map( A => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_29 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_29;

architecture SYN_BEHAVIORAL of FA_29 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U1 : NOR2_X1 port map( A1 => n3, A2 => n4, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net22776, net22777, net22778, n1 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n1, B => A, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n1);
   U3 : INV_X1 port map( A => A, ZN => net22776);
   U4 : OAI21_X1 port map( B1 => A, B2 => B, A => Ci, ZN => net22778);
   U5 : INV_X1 port map( A => B, ZN => net22777);
   U7 : OAI21_X1 port map( B1 => net22776, B2 => net22777, A => net22778, ZN =>
                           Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_31 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_31;

architecture SYN_BEHAVIORAL of FA_31 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n5, B => B, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => Ci, ZN => n5);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => A, B2 => B, A => Ci, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_32 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_32;

architecture SYN_BEHAVIORAL of FA_32 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net22784, net22785, net22786, n1 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => Ci, ZN => n1);
   U2 : XNOR2_X1 port map( A => n1, B => B, ZN => S);
   U4 : INV_X1 port map( A => Ci, ZN => net22785);
   U5 : NOR2_X1 port map( A1 => B, A2 => A, ZN => net22786);
   U6 : NAND2_X1 port map( A1 => B, A2 => A, ZN => net22784);
   U7 : AOI21_X1 port map( B1 => net22784, B2 => net22785, A => net22786, ZN =>
                           Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_33 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_33;

architecture SYN_BEHAVIORAL of FA_33 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => n2, B => B, ZN => S);
   U4 : XNOR2_X1 port map( A => A, B => Ci, ZN => n2);
   U5 : INV_X1 port map( A => Ci, ZN => n4);
   U6 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n3);
   U7 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U1 : AOI21_X1 port map( B1 => n5, B2 => n4, A => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_34 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_34;

architecture SYN_BEHAVIORAL of FA_34 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n7 : std_logic;

begin
   
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);
   U1 : XNOR2_X1 port map( A => B, B => Ci, ZN => n7);
   U2 : XNOR2_X1 port map( A => n7, B => A, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => n6, B => B, ZN => S);
   U4 : XNOR2_X1 port map( A => A, B => Ci, ZN => n6);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U6 : INV_X1 port map( A => Ci, ZN => n4);
   U7 : INV_X1 port map( A => A, ZN => n3);
   U8 : INV_X1 port map( A => B, ZN => n2);
   U1 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n2, B2 => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_36 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_36;

architecture SYN_BEHAVIORAL of FA_36 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => Ci, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => A, B2 => B, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_37 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_37;

architecture SYN_BEHAVIORAL of FA_37 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n6, B => B, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => Ci, ZN => n6);
   U4 : INV_X1 port map( A => A, ZN => n5);
   U5 : INV_X1 port map( A => B, ZN => n4);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n3);
   U7 : INV_X1 port map( A => Ci, ZN => n2);
   U8 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_38 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_38;

architecture SYN_BEHAVIORAL of FA_38 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => Ci, ZN => n4);
   U2 : AOI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   U3 : INV_X1 port map( A => Ci, ZN => n2);
   U4 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n3);
   U5 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n1);
   U6 : XNOR2_X1 port map( A => B, B => n4, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_39 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_39;

architecture SYN_BEHAVIORAL of FA_39 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n5, B => A, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => Ci, ZN => n5);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : INV_X1 port map( A => B, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_40 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_40;

architecture SYN_BEHAVIORAL of FA_40 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => Ci, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_42 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_42;

architecture SYN_BEHAVIORAL of FA_42 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_43 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_43;

architecture SYN_BEHAVIORAL of FA_43 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n5, B => B, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => Ci, ZN => n5);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_44 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_44;

architecture SYN_BEHAVIORAL of FA_44 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => Ci, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_45 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_45;

architecture SYN_BEHAVIORAL of FA_45 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n5, B => B, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => Ci, ZN => n5);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => A, B => n1, Z => S);
   U2 : XOR2_X1 port map( A => Ci, B => B, Z => n1);
   U3 : INV_X1 port map( A => A, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n3);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U6 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_48 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_48;

architecture SYN_BEHAVIORAL of FA_48 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n6, n_1199 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n1, ZN => S);
   U2 : XNOR2_X1 port map( A => n6, B => B, ZN => n1);
   U3 : INV_X1 port map( A => A, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n3);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => n6, ZN => n2);
   U6 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);
   MY_CLK_r_REG399_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n6, QN => 
                           n_1199);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_49 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_49;

architecture SYN_BEHAVIORAL of FA_49 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n7, n9, n_1200 : std_logic;

begin
   
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => B, B2 => A, A => n7, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);
   MY_CLK_r_REG410_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => 
                           n_1200);
   U1 : XNOR2_X1 port map( A => B, B => n7, ZN => n9);
   U2 : XNOR2_X1 port map( A => A, B => n9, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_50 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_50;

architecture SYN_BEHAVIORAL of FA_50 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n7, n_1201 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n5, B => B, ZN => S);
   U3 : XNOR2_X1 port map( A => n7, B => A, ZN => n5);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => B, B2 => A, A => n7, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);
   MY_CLK_r_REG427_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => 
                           n_1201);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_51 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_51;

architecture SYN_BEHAVIORAL of FA_51 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n5, n_1202 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => n5, B => B, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n1);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => n5, ZN => n2);
   MY_CLK_r_REG469_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n5, QN => 
                           n_1202);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_52 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_52;

architecture SYN_BEHAVIORAL of FA_52 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n6, n_1203 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n1, ZN => S);
   U2 : XNOR2_X1 port map( A => n6, B => B, ZN => n1);
   U3 : INV_X1 port map( A => A, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n3);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => n6, ZN => n2);
   U6 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);
   MY_CLK_r_REG434_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n6, QN => 
                           n_1203);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_53 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_53;

architecture SYN_BEHAVIORAL of FA_53 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n6, n_1204 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n6, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => n6, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   MY_CLK_r_REG467_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n6, QN => 
                           n_1204);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_54 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_54;

architecture SYN_BEHAVIORAL of FA_54 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n6, n_1205 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n6, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => n6, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   MY_CLK_r_REG463_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n6, QN => 
                           n_1205);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_55 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_55;

architecture SYN_BEHAVIORAL of FA_55 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n4, n6, n8 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U2 : XNOR2_X1 port map( A => n4, B => n6, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => n2);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n8, B1 => n2, B2 => n1, ZN => Co);
   MY_CLK_r_REG466_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n6, QN => n8)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_56 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_56;

architecture SYN_BEHAVIORAL of FA_56 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n7, n8, n11, n12 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n8, ZN => n4);
   U2 : XNOR2_X1 port map( A => n7, B => n4, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => n2);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n11, B1 => n2, B2 => n12, ZN => Co);
   MY_CLK_r_REG513_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => n11
                           );
   MY_CLK_r_REG407_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => n12)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_57 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_57;

architecture SYN_BEHAVIORAL of FA_57 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n7, n8, n10, n11 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n8, ZN => n4);
   U2 : XNOR2_X1 port map( A => n7, B => n4, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => n2);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n11, B1 => n2, B2 => n10, ZN => Co);
   MY_CLK_r_REG481_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => n11
                           );
   MY_CLK_r_REG425_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => n10)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_58 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_58;

architecture SYN_BEHAVIORAL of FA_58 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n8, n9, n10, n12, n13, n14 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n10, B => n9, ZN => n4);
   U2 : XNOR2_X1 port map( A => n8, B => n4, ZN => S);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n13, B1 => n14, B2 => n12, ZN => Co)
                           ;
   MY_CLK_r_REG515_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n13
                           );
   MY_CLK_r_REG432_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG426_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n14
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_59 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_59;

architecture SYN_BEHAVIORAL of FA_59 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n7, n8, n_1206, n_1207 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n7, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   MY_CLK_r_REG480_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1206);
   MY_CLK_r_REG431_S1 : DFF_X1 port map( D => n4, CK => clk, Q => n7, QN => 
                           n_1207);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_60 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_60;

architecture SYN_BEHAVIORAL of FA_60 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n7, n8, n_1208, n_1209 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n7, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   MY_CLK_r_REG516_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1208);
   MY_CLK_r_REG455_S1 : DFF_X1 port map( D => n4, CK => clk, Q => n7, QN => 
                           n_1209);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_72 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_72;

architecture SYN_BEHAVIORAL of FA_72 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X2
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X2 port map( A1 => n8, A2 => Ci, B1 => A, B2 => B, ZN => n4);
   U3 : INV_X1 port map( A => n9, ZN => n8);
   U4 : XNOR2_X1 port map( A => n9, B => Ci, ZN => S);
   U5 : XNOR2_X1 port map( A => B, B => A, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_73 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_73;

architecture SYN_BEHAVIORAL of FA_73 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AND2_X1 port map( A1 => A, A2 => B, ZN => n7);
   U3 : XNOR2_X1 port map( A => n5, B => n6, ZN => S);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : AOI21_X1 port map( B1 => n5, B2 => Ci, A => n7, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_74 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_74;

architecture SYN_BEHAVIORAL of FA_74 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U1 : NAND2_X1 port map( A1 => n5, A2 => Ci, ZN => n8);
   U2 : XNOR2_X1 port map( A => A, B => n6, ZN => n5);
   U4 : INV_X1 port map( A => B, ZN => n6);
   U5 : NAND2_X1 port map( A1 => n8, A2 => n7, ZN => Co);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_75 is

   port( A, B : in std_logic;  S, Co : out std_logic;  Ci_BAR : in std_logic);

end FA_75;

architecture SYN_BEHAVIORAL of FA_75 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n4, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => n7, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => Ci_BAR, B1 => n2, B2 => n1, ZN => Co
                           );
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U4 : INV_X1 port map( A => Ci_BAR, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_76 is

   port( A, B : in std_logic;  S, Co : out std_logic;  Ci_BAR : in std_logic);

end FA_76;

architecture SYN_BEHAVIORAL of FA_76 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n4, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => n7, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => Ci_BAR, A2 => n4, B1 => n2, B2 => n1, ZN => Co
                           );
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U4 : INV_X1 port map( A => Ci_BAR, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_77 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_77;

architecture SYN_BEHAVIORAL of FA_77 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => Ci, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_78 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_78;

architecture SYN_BEHAVIORAL of FA_78 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n1, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => Ci, ZN => n1);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n2, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_79 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_79;

architecture SYN_BEHAVIORAL of FA_79 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => Ci, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => A, B2 => B, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_80 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_80;

architecture SYN_BEHAVIORAL of FA_80 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n5, B => B, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => Ci, ZN => n5);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_81 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_81;

architecture SYN_BEHAVIORAL of FA_81 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => A, B => n1, Z => S);
   U2 : XOR2_X1 port map( A => B, B => Ci, Z => n1);
   U3 : INV_X1 port map( A => Ci, ZN => n3);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n4);
   U5 : NOR2_X1 port map( A1 => A, A2 => B, ZN => n2);
   U6 : AOI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_82 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_82;

architecture SYN_BEHAVIORAL of FA_82 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_83 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_83;

architecture SYN_BEHAVIORAL of FA_83 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U2 : XNOR2_X1 port map( A => n5, B => B, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => Ci, ZN => n5);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n4);
   U5 : INV_X1 port map( A => Ci, ZN => n3);
   U6 : INV_X1 port map( A => A, ZN => n2);
   U7 : INV_X1 port map( A => B, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_84 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_84;

architecture SYN_BEHAVIORAL of FA_84 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n6, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n6);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n4);
   U6 : INV_X1 port map( A => A, ZN => n3);
   U7 : INV_X1 port map( A => B, ZN => n2);
   U1 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_85 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_85;

architecture SYN_BEHAVIORAL of FA_85 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n6, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n6);
   U4 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n4);
   U6 : INV_X1 port map( A => A, ZN => n3);
   U7 : INV_X1 port map( A => B, ZN => n2);
   U8 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_86 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_86;

architecture SYN_BEHAVIORAL of FA_86 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => A, B => n6, ZN => S);
   U4 : XNOR2_X1 port map( A => B, B => Ci, ZN => n6);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U6 : INV_X1 port map( A => Ci, ZN => n4);
   U7 : INV_X1 port map( A => A, ZN => n3);
   U8 : INV_X1 port map( A => B, ZN => n2);
   U2 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_87 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_87;

architecture SYN_BEHAVIORAL of FA_87 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n7 : std_logic;

begin
   
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : INV_X1 port map( A => B, ZN => n1);
   U1 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U2 : XNOR2_X1 port map( A => n7, B => B, ZN => S);
   U7 : XNOR2_X1 port map( A => A, B => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_88 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_88;

architecture SYN_BEHAVIORAL of FA_88 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net22970, net22971, net22972, n1 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => Ci, ZN => n1);
   U2 : XNOR2_X1 port map( A => n1, B => B, ZN => S);
   U3 : NOR2_X1 port map( A1 => A, A2 => B, ZN => net22972);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => net22970);
   U5 : INV_X1 port map( A => Ci, ZN => net22971);
   U6 : AOI21_X1 port map( B1 => net22970, B2 => net22971, A => net22972, ZN =>
                           Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_89 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_89;

architecture SYN_BEHAVIORAL of FA_89 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8 : std_logic;

begin
   
   U2 : NAND2_X1 port map( A1 => n6, A2 => n7, ZN => n2);
   U3 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => n3);
   U4 : AND2_X2 port map( A1 => n2, A2 => n3, ZN => Co);
   U5 : XNOR2_X1 port map( A => n8, B => B, ZN => S);
   U6 : XNOR2_X1 port map( A => A, B => Ci, ZN => n8);
   U7 : INV_X1 port map( A => A, ZN => n7);
   U8 : INV_X1 port map( A => B, ZN => n6);
   U9 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n5);
   U10 : INV_X1 port map( A => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_90 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_90;

architecture SYN_BEHAVIORAL of FA_90 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net22979, net22980, net22981, net22982, n1 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => Ci, ZN => n1);
   U2 : XNOR2_X1 port map( A => n1, B => B, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => net22981);
   U4 : INV_X1 port map( A => Ci, ZN => net22980);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => net22979);
   U6 : INV_X1 port map( A => B, ZN => net22982);
   U8 : AOI22_X1 port map( A1 => net22979, A2 => net22980, B1 => net22981, B2 
                           => net22982, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_91 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_91;

architecture SYN_BEHAVIORAL of FA_91 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n6, B => A, ZN => S);
   U3 : XNOR2_X1 port map( A => Ci, B => B, ZN => n6);
   U4 : INV_X1 port map( A => A, ZN => n5);
   U5 : INV_X1 port map( A => B, ZN => n4);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n3);
   U7 : INV_X1 port map( A => Ci, ZN => n2);
   U8 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_92 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_92;

architecture SYN_BEHAVIORAL of FA_92 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X2
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6 : std_logic;

begin
   
   U1 : AOI22_X2 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);
   U3 : XNOR2_X1 port map( A => n6, B => B, ZN => S);
   U4 : XNOR2_X1 port map( A => A, B => Ci, ZN => n6);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U6 : INV_X1 port map( A => Ci, ZN => n4);
   U7 : INV_X1 port map( A => A, ZN => n3);
   U8 : INV_X1 port map( A => B, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_93 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_93;

architecture SYN_BEHAVIORAL of FA_93 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n6, B => B, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => Ci, ZN => n6);
   U5 : INV_X1 port map( A => B, ZN => n4);
   U6 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n3);
   U7 : INV_X1 port map( A => Ci, ZN => n2);
   U1 : INV_X1 port map( A => A, ZN => n5);
   U4 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_94 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_94;

architecture SYN_BEHAVIORAL of FA_94 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => n6, B => B, ZN => S);
   U4 : XNOR2_X1 port map( A => A, B => Ci, ZN => n6);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U6 : INV_X1 port map( A => Ci, ZN => n4);
   U7 : INV_X1 port map( A => A, ZN => n3);
   U8 : INV_X1 port map( A => B, ZN => n2);
   U1 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_95 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_95;

architecture SYN_BEHAVIORAL of FA_95 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n6, B => B, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => Ci, ZN => n6);
   U4 : INV_X1 port map( A => A, ZN => n5);
   U5 : INV_X1 port map( A => B, ZN => n4);
   U6 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n3);
   U7 : INV_X1 port map( A => Ci, ZN => n2);
   U8 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_96 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_96;

architecture SYN_BEHAVIORAL of FA_96 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n5, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n5);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : INV_X1 port map( A => B, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_97 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_97;

architecture SYN_BEHAVIORAL of FA_97 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U2 : XOR2_X1 port map( A => Ci, B => B, Z => n1);
   U3 : INV_X1 port map( A => A, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n3);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U6 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);
   U1 : XNOR2_X1 port map( A => n4, B => n1, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_98 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_98;

architecture SYN_BEHAVIORAL of FA_98 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => Ci, ZN => n5);
   U2 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U3 : XNOR2_X1 port map( A => A, B => n5, ZN => S);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n4);
   U5 : INV_X1 port map( A => Ci, ZN => n3);
   U6 : INV_X1 port map( A => A, ZN => n2);
   U7 : INV_X1 port map( A => B, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_99 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_99;

architecture SYN_BEHAVIORAL of FA_99 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => A, B2 => B, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_100 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_100;

architecture SYN_BEHAVIORAL of FA_100 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => B, ZN => n3);
   U4 : INV_X1 port map( A => A, ZN => n2);
   U5 : OAI21_X1 port map( B1 => A, B2 => B, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_101 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_101;

architecture SYN_BEHAVIORAL of FA_101 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n5, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => Ci, ZN => n5);
   U3 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : INV_X1 port map( A => B, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_102 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_102;

architecture SYN_BEHAVIORAL of FA_102 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => Ci, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_103 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_103;

architecture SYN_BEHAVIORAL of FA_103 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n5, B => B, ZN => S);
   U3 : XNOR2_X1 port map( A => Ci, B => A, ZN => n5);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_105 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_105;

architecture SYN_BEHAVIORAL of FA_105 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : INV_X1 port map( A => A, ZN => n3);
   U2 : INV_X1 port map( A => B, ZN => n2);
   U3 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U4 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   U5 : XOR2_X1 port map( A => Ci, B => B, Z => n4);
   U6 : XOR2_X1 port map( A => A, B => n4, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_106 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_106;

architecture SYN_BEHAVIORAL of FA_106 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n1, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n1);
   U3 : INV_X1 port map( A => A, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n3);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U6 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_107 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_107;

architecture SYN_BEHAVIORAL of FA_107 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n5, n8, n9, n11, n_1210 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => A, B => n5, ZN => S);
   U3 : XNOR2_X1 port map( A => n8, B => n9, ZN => n5);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U6 : OAI21_X1 port map( B1 => n9, B2 => A, A => n8, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n4, B2 => n11, A => n2, ZN => Co);
   MY_CLK_r_REG400_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1210);
   MY_CLK_r_REG341_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n11)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_108 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_108;

architecture SYN_BEHAVIORAL of FA_108 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3, n4, n7, n8, n10, n_1211 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => n8, ZN => S);
   U2 : XNOR2_X1 port map( A => n7, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U5 : OAI21_X1 port map( B1 => n8, B2 => A, A => n7, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n10, A => n1, ZN => Co);
   MY_CLK_r_REG411_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => 
                           n_1211);
   MY_CLK_r_REG349_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => n10)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_109 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_109;

architecture SYN_BEHAVIORAL of FA_109 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n4, n7, n8, n10, n_1212 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => A, B => n1, Z => S);
   U2 : XOR2_X1 port map( A => n7, B => n8, Z => n1);
   U3 : INV_X1 port map( A => A, ZN => n4);
   U5 : OAI21_X1 port map( B1 => n8, B2 => A, A => n7, ZN => n2);
   U6 : OAI21_X1 port map( B1 => n4, B2 => n10, A => n2, ZN => Co);
   MY_CLK_r_REG428_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => 
                           n_1212);
   MY_CLK_r_REG366_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => n10)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_110 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_110;

architecture SYN_BEHAVIORAL of FA_110 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n6, n7, n_1213, n_1214 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => n6, B => n7, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => n7, ZN => n1);
   U5 : OAI21_X1 port map( B1 => n7, B2 => A, A => n6, ZN => n2);
   MY_CLK_r_REG372_S1 : DFF_X1 port map( D => B, CK => clk, Q => n7, QN => 
                           n_1213);
   MY_CLK_r_REG470_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n6, QN => 
                           n_1214);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_111 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_111;

architecture SYN_BEHAVIORAL of FA_111 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n_1215 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n10, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n8, B => n9, ZN => n4);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n12, B2 => n13, A => n1, ZN => Co);
   MY_CLK_r_REG435_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1215);
   MY_CLK_r_REG389_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n13)
                           ;
   MY_CLK_r_REG373_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n12
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_112 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_112;

architecture SYN_BEHAVIORAL of FA_112 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n7, n8, n9, n_1216, n_1217, n_1218 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n9, B => n1, ZN => S);
   U2 : XNOR2_X1 port map( A => n7, B => n8, ZN => n1);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n2, ZN => Co);
   U4 : NAND2_X1 port map( A1 => n9, A2 => n8, ZN => n2);
   U5 : OAI21_X1 port map( B1 => n8, B2 => n9, A => n7, ZN => n3);
   MY_CLK_r_REG390_S1 : DFF_X1 port map( D => A, CK => clk, Q => n9, QN => 
                           n_1216);
   MY_CLK_r_REG392_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => 
                           n_1217);
   MY_CLK_r_REG468_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => 
                           n_1218);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_113 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_113;

architecture SYN_BEHAVIORAL of FA_113 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n5, n9, n11, n13, n14, n15, n_1219 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n5, B => n9, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U7 : OAI22_X1 port map( A1 => n5, A2 => n13, B1 => n11, B2 => n14, ZN => Co)
                           ;
   MY_CLK_r_REG397_S1 : DFF_X1 port map( D => B, CK => clk, Q => n_1219, QN => 
                           n14);
   U2 : XOR2_X1 port map( A => n14, B => n15, Z => n5);
   MY_CLK_r_REG462_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n9, QN => n13
                           );
   MY_CLK_r_REG393_S1 : DFF_X1 port map( D => n3, CK => clk, Q => n11, QN => 
                           n15);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_114 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_114;

architecture SYN_BEHAVIORAL of FA_114 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n8, n12, n13, n14, n_1220, n_1221 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n8, B => n4, ZN => S);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n12, B1 => n13, B2 => n14, ZN => Co)
                           ;
   MY_CLK_r_REG398_S1 : DFF_X1 port map( D => A, CK => clk, Q => n_1220, QN => 
                           n13);
   MY_CLK_r_REG409_S1 : DFF_X1 port map( D => B, CK => clk, Q => n_1221, QN => 
                           n14);
   U1 : XNOR2_X1 port map( A => n13, B => n14, ZN => n4);
   MY_CLK_r_REG465_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n12
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_115 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_115;

architecture SYN_BEHAVIORAL of FA_115 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n7, n8, n_1222, n_1223 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n7, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   MY_CLK_r_REG461_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1222);
   MY_CLK_r_REG408_S1 : DFF_X1 port map( D => n4, CK => clk, Q => n7, QN => 
                           n_1223);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_122 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_122;

architecture SYN_BEHAVIORAL of FA_122 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n_1227 : std_logic;

begin
   
   MY_CLK_r_REG485_S1 : DFF_X1 port map( D => A, CK => clk, Q => S, QN => 
                           n_1227);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_123 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_123;

architecture SYN_BEHAVIORAL of FA_123 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n_1231 : std_logic;

begin
   
   MY_CLK_r_REG90_S1 : DFF_X1 port map( D => A, CK => clk, Q => S, QN => n_1231
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_124 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_124;

architecture SYN_BEHAVIORAL of FA_124 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n_1235 : std_logic;

begin
   
   MY_CLK_r_REG89_S1 : DFF_X1 port map( D => A, CK => clk, Q => S, QN => n_1235
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_125 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_125;

architecture SYN_BEHAVIORAL of FA_125 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n_1239 : std_logic;

begin
   
   MY_CLK_r_REG17_S1 : DFF_X1 port map( D => A, CK => clk, Q => S, QN => n_1239
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_128 is

   port( A, Ci : in std_logic;  Co : out std_logic;  B_BAR : in std_logic;  
         S_BAR : out std_logic);

end FA_128;

architecture SYN_BEHAVIORAL of FA_128 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n6 : std_logic;

begin
   
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => n6, Z => S_BAR);
   U1 : INV_X1 port map( A => B_BAR, ZN => n6);
   U4 : NOR2_X1 port map( A1 => n2, A2 => B_BAR, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_131 is

   port( A, Ci : in std_logic;  S, Co : out std_logic;  B_BAR : in std_logic);

end FA_131;

architecture SYN_BEHAVIORAL of FA_131 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n7 : std_logic;

begin
   
   U2 : INV_X1 port map( A => A, ZN => n2);
   U1 : XNOR2_X1 port map( A => n2, B => n7, ZN => S);
   U3 : INV_X1 port map( A => B_BAR, ZN => n7);
   U4 : NOR2_X1 port map( A1 => n2, A2 => B_BAR, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_139 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_139;

architecture SYN_BEHAVIORAL of FA_139 is

begin
   S <= A;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_140 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_140;

architecture SYN_BEHAVIORAL of FA_140 is

begin
   S <= A;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_142 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_142;

architecture SYN_BEHAVIORAL of FA_142 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n6 : std_logic;

begin
   
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   U1 : XNOR2_X1 port map( A => B, B => n6, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_143 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_143;

architecture SYN_BEHAVIORAL of FA_143 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n7 : std_logic;

begin
   
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   U1 : XNOR2_X1 port map( A => n7, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_144 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_144;

architecture SYN_BEHAVIORAL of FA_144 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n6, n8, n_1248 : std_logic;

begin
   
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => n6, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   MY_CLK_r_REG420_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n6, QN => 
                           n_1248);
   U1 : XNOR2_X1 port map( A => A, B => n6, ZN => n8);
   U2 : XNOR2_X1 port map( A => B, B => n8, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_145 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_145;

architecture SYN_BEHAVIORAL of FA_145 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n6, n_1249 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n6, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => n6, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   MY_CLK_r_REG415_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n6, QN => 
                           n_1249);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_146 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_146;

architecture SYN_BEHAVIORAL of FA_146 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3, n4, n7, n8, n10, n_1250 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n7, B => n8, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U5 : OAI21_X1 port map( B1 => n8, B2 => A, A => n7, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n10, A => n1, ZN => Co);
   MY_CLK_r_REG417_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => 
                           n_1250);
   MY_CLK_r_REG416_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => n10)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_148 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_148;

architecture SYN_BEHAVIORAL of FA_148 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n6, n_1251 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n6, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => n6, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   MY_CLK_r_REG414_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n6, QN => 
                           n_1251);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_149 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_149;

architecture SYN_BEHAVIORAL of FA_149 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_150 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_150;

architecture SYN_BEHAVIORAL of FA_150 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_151 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_151;

architecture SYN_BEHAVIORAL of FA_151 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3, n4, n6, n9 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n6, ZN => n4);
   U2 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n3, A2 => n4, B1 => n9, B2 => n1, ZN => Co);
   MY_CLK_r_REG335_S1 : DFF_X1 port map( D => A, CK => clk, Q => n6, QN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_152 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_152;

architecture SYN_BEHAVIORAL of FA_152 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n4, n7, n8, n10, n_1252 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n7, B => n8, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => n8, A => n7, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n10, B2 => n2, A => n1, ZN => Co);
   MY_CLK_r_REG440_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => 
                           n_1252);
   MY_CLK_r_REG342_S1 : DFF_X1 port map( D => A, CK => clk, Q => n8, QN => n10)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_153 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_153;

architecture SYN_BEHAVIORAL of FA_153 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n8, n9, n10, n12, n13, n_1253 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n10, B => n9, Z => n4);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n13, B1 => n10, B2 => n12, ZN => Co)
                           ;
   MY_CLK_r_REG352_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n10, QN => 
                           n_1253);
   MY_CLK_r_REG475_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n13
                           );
   MY_CLK_r_REG441_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_154 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_154;

architecture SYN_BEHAVIORAL of FA_154 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n8, n9, n10, n12, n13, n14 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n10, B => n9, ZN => n4);
   U2 : XNOR2_X1 port map( A => n8, B => n4, ZN => S);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n14, B1 => n12, B2 => n13, ZN => Co)
                           ;
   MY_CLK_r_REG367_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n12
                           );
   MY_CLK_r_REG438_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n14
                           );
   MY_CLK_r_REG476_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n13)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_155 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_155;

architecture SYN_BEHAVIORAL of FA_155 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n8, n9, n10, n12, n13, n_1254 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n10, B => n9, Z => n4);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n13, B1 => n10, B2 => n12, ZN => Co)
                           ;
   MY_CLK_r_REG403_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n10, QN => 
                           n_1254);
   MY_CLK_r_REG439_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG473_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n13
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_156 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_156;

architecture SYN_BEHAVIORAL of FA_156 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n8, n9, n10, n12, n13, n_1255 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n10, B => n9, Z => n4);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n13, B1 => n10, B2 => n12, ZN => Co)
                           ;
   MY_CLK_r_REG375_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n10, QN => 
                           n_1255);
   MY_CLK_r_REG474_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG436_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n13
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_157 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_157;

architecture SYN_BEHAVIORAL of FA_157 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n8, n9, n10, n12, n13, n_1256 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n10, B => n9, Z => n4);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n13, B1 => n10, B2 => n12, ZN => Co)
                           ;
   MY_CLK_r_REG401_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n10, QN => 
                           n_1256);
   MY_CLK_r_REG437_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG471_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n13
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_158 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_158;

architecture SYN_BEHAVIORAL of FA_158 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n8, n9, n10, n12, n13, n_1257 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n10, B => n9, Z => n4);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n13, B1 => n10, B2 => n12, ZN => Co)
                           ;
   MY_CLK_r_REG394_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n10, QN => 
                           n_1257);
   MY_CLK_r_REG472_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG464_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n13
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_164 is

   port( A, B : in std_logic;  S, Co : out std_logic;  Ci : in std_logic);

end FA_164;

architecture SYN_BEHAVIORAL of FA_164 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n4, n6 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n6, B1 => n2, B2 => n1, ZN => Co);
   U4 : INV_X1 port map( A => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_168 is

   port( A, Ci : in std_logic;  S : out std_logic;  B_BAR : in std_logic;  
         Co_BAR : out std_logic);

end FA_168;

architecture SYN_BEHAVIORAL of FA_168 is

begin
   S <= B_BAR;
   Co_BAR <= B_BAR;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_171 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_171;

architecture SYN_BEHAVIORAL of FA_171 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal S_port, n4, n6 : std_logic;

begin
   S <= S_port;
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => S_port);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => S_port, B2 => n6, ZN => n4);
   n6 <= '0';

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_174 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_174;

architecture SYN_BEHAVIORAL of FA_174 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);
   U3 : INV_X1 port map( A => Ci, ZN => n7);
   U6 : XNOR2_X1 port map( A => n5, B => n7, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_175 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_175;

architecture SYN_BEHAVIORAL of FA_175 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : INV_X1 port map( A => Ci, ZN => n7);
   U3 : AND2_X1 port map( A1 => A, A2 => B, ZN => n6);
   U5 : AOI21_X1 port map( B1 => n5, B2 => Ci, A => n6, ZN => n4);
   U6 : XNOR2_X1 port map( A => n5, B => n7, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_176 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_176;

architecture SYN_BEHAVIORAL of FA_176 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U4 : CLKBUF_X1 port map( A => B, Z => n7);
   U5 : AOI22_X1 port map( A1 => n5, A2 => Ci, B1 => n7, B2 => A, ZN => n4);
   U6 : XNOR2_X1 port map( A => n8, B => B, ZN => n5);
   U7 : INV_X1 port map( A => A, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_177 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_177;

architecture SYN_BEHAVIORAL of FA_177 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_178 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_178;

architecture SYN_BEHAVIORAL of FA_178 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_180 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_180;

architecture SYN_BEHAVIORAL of FA_180 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_181 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_181;

architecture SYN_BEHAVIORAL of FA_181 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => A, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_182 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_182;

architecture SYN_BEHAVIORAL of FA_182 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_183 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_183;

architecture SYN_BEHAVIORAL of FA_183 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n1, B => A, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => Ci, ZN => n1);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U4 : INV_X1 port map( A => Ci, ZN => n4);
   U5 : INV_X1 port map( A => A, ZN => n3);
   U6 : INV_X1 port map( A => B, ZN => n2);
   U7 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_184 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_184;

architecture SYN_BEHAVIORAL of FA_184 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_185 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_185;

architecture SYN_BEHAVIORAL of FA_185 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => B, B => n5, ZN => S);
   U3 : XNOR2_X1 port map( A => Ci, B => A, ZN => n5);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_186 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_186;

architecture SYN_BEHAVIORAL of FA_186 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => A, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => Ci, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_187 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_187;

architecture SYN_BEHAVIORAL of FA_187 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n5);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : INV_X1 port map( A => B, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_188 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_188;

architecture SYN_BEHAVIORAL of FA_188 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => Ci, ZN => n2);
   U4 : XNOR2_X1 port map( A => n4, B => A, ZN => S);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n3);
   U6 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n1);
   U1 : AOI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_189 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_189;

architecture SYN_BEHAVIORAL of FA_189 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U2 : XNOR2_X1 port map( A => n5, B => A, ZN => S);
   U3 : XNOR2_X1 port map( A => Ci, B => B, ZN => n5);
   U4 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U5 : INV_X1 port map( A => Ci, ZN => n3);
   U6 : INV_X1 port map( A => A, ZN => n2);
   U7 : INV_X1 port map( A => B, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_190 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_190;

architecture SYN_BEHAVIORAL of FA_190 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net23333, net23334, net23335, net23336, n1 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => A, ZN => n1);
   U2 : XNOR2_X1 port map( A => n1, B => Ci, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => net23335);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => net23333);
   U5 : INV_X1 port map( A => B, ZN => net23336);
   U6 : INV_X1 port map( A => Ci, ZN => net23334);
   U7 : AOI22_X1 port map( A1 => net23333, A2 => net23334, B1 => net23335, B2 
                           => net23336, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_191 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_191;

architecture SYN_BEHAVIORAL of FA_191 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net23338, net23339, n1, n2, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n1, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n1);
   U5 : INV_X1 port map( A => B, ZN => net23339);
   U7 : INV_X1 port map( A => A, ZN => net23338);
   U8 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n2);
   U3 : INV_X1 port map( A => Ci, ZN => n4);
   U6 : AOI22_X1 port map( A1 => net23338, A2 => net23339, B1 => n2, B2 => n4, 
                           ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_192 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_192;

architecture SYN_BEHAVIORAL of FA_192 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net23343, net23344, net23345, net23346, n1, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => A, ZN => n1);
   U2 : XNOR2_X1 port map( A => B, B => n1, ZN => S);
   U5 : INV_X1 port map( A => B, ZN => net23344);
   U6 : NAND2_X1 port map( A1 => B, A2 => A, ZN => net23345);
   U7 : INV_X1 port map( A => A, ZN => net23343);
   U8 : INV_X1 port map( A => Ci, ZN => net23346);
   U3 : AND2_X2 port map( A1 => n4, A2 => n3, ZN => Co);
   U9 : NAND2_X1 port map( A1 => net23343, A2 => net23344, ZN => n3);
   U10 : NAND2_X1 port map( A1 => net23345, A2 => net23346, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_193 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_193;

architecture SYN_BEHAVIORAL of FA_193 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n5);
   U3 : INV_X1 port map( A => A, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n3);
   U5 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n2);
   U6 : INV_X1 port map( A => Ci, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_194 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_194;

architecture SYN_BEHAVIORAL of FA_194 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : NAND2_X1 port map( A1 => n7, A2 => n6, ZN => n1);
   U4 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => n2);
   U5 : XNOR2_X1 port map( A => n8, B => B, ZN => S);
   U6 : XNOR2_X1 port map( A => A, B => Ci, ZN => n8);
   U7 : INV_X1 port map( A => A, ZN => n7);
   U8 : INV_X1 port map( A => B, ZN => n6);
   U9 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U10 : INV_X1 port map( A => Ci, ZN => n4);
   U1 : AND2_X1 port map( A1 => n1, A2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_195 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_195;

architecture SYN_BEHAVIORAL of FA_195 is

   component AOI22_X2
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n6, B => B, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => Ci, ZN => n6);
   U4 : INV_X1 port map( A => A, ZN => n5);
   U5 : INV_X1 port map( A => B, ZN => n4);
   U6 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n3);
   U7 : INV_X1 port map( A => Ci, ZN => n2);
   U8 : AOI22_X2 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_196 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_196;

architecture SYN_BEHAVIORAL of FA_196 is

   component AOI22_X2
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => n6, B => B, ZN => S);
   U4 : XNOR2_X1 port map( A => A, B => Ci, ZN => n6);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U6 : INV_X1 port map( A => Ci, ZN => n4);
   U7 : INV_X1 port map( A => A, ZN => n3);
   U8 : INV_X1 port map( A => B, ZN => n2);
   U2 : AOI22_X2 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_197 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_197;

architecture SYN_BEHAVIORAL of FA_197 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n6, B => B, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => Ci, ZN => n6);
   U4 : INV_X1 port map( A => A, ZN => n5);
   U5 : INV_X1 port map( A => B, ZN => n4);
   U6 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n3);
   U7 : INV_X1 port map( A => Ci, ZN => n2);
   U8 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_199 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_199;

architecture SYN_BEHAVIORAL of FA_199 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n6 : std_logic;

begin
   
   U3 : NAND2_X1 port map( A1 => n3, A2 => n2, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n3);
   U1 : XNOR2_X1 port map( A => Ci, B => n6, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_200 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_200;

architecture SYN_BEHAVIORAL of FA_200 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_201 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_201;

architecture SYN_BEHAVIORAL of FA_201 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n1);
   U5 : OAI21_X1 port map( B1 => A, B2 => B, A => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_202 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_202;

architecture SYN_BEHAVIORAL of FA_202 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n1);
   U5 : OAI21_X1 port map( B1 => A, B2 => B, A => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_203 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_203;

architecture SYN_BEHAVIORAL of FA_203 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3, n4, n7, n8, n10, n_1261 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n7, B => n8, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U5 : OAI21_X1 port map( B1 => n8, B2 => A, A => n7, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n10, A => n1, ZN => Co);
   MY_CLK_r_REG277_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => n10)
                           ;
   MY_CLK_r_REG343_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => 
                           n_1261);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_204 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_204;

architecture SYN_BEHAVIORAL of FA_204 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n5, n8, n9, n11, n12 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n5, ZN => S);
   U2 : XNOR2_X1 port map( A => n9, B => n8, ZN => n5);
   U3 : NAND2_X1 port map( A1 => B, A2 => n9, ZN => n4);
   U6 : INV_X1 port map( A => B, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n12, B1 => n11, B2 => n1, ZN => Co);
   MY_CLK_r_REG276_S1 : DFF_X1 port map( D => A, CK => clk, Q => n9, QN => n11)
                           ;
   MY_CLK_r_REG353_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n12
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_205 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_205;

architecture SYN_BEHAVIORAL of FA_205 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n5, n8, n9, n11, n_1262 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n5, B => B, ZN => S);
   U3 : XNOR2_X1 port map( A => n9, B => n8, ZN => n5);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => B, B2 => n9, A => n8, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n11, B2 => n3, A => n2, ZN => Co);
   MY_CLK_r_REG286_S1 : DFF_X1 port map( D => A, CK => clk, Q => n9, QN => n11)
                           ;
   MY_CLK_r_REG368_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1262);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_206 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_206;

architecture SYN_BEHAVIORAL of FA_206 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n_1263 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n9, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n8, B => n10, ZN => n4);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n13, B2 => n12, A => n1, ZN => Co);
   MY_CLK_r_REG295_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n13
                           );
   MY_CLK_r_REG302_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG404_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1263);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_207 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_207;

architecture SYN_BEHAVIORAL of FA_207 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n_1264 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n10, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n8, B => n9, ZN => n4);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n13, B2 => n12, A => n1, ZN => Co);
   MY_CLK_r_REG303_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n13
                           );
   MY_CLK_r_REG313_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG376_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1264);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_208 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_208;

architecture SYN_BEHAVIORAL of FA_208 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n7, n8, n9, n_1265, n_1266, n_1267 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n9, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => n7, B => n8, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : NAND2_X1 port map( A1 => n9, A2 => n8, ZN => n1);
   U5 : OAI21_X1 port map( B1 => n8, B2 => n9, A => n7, ZN => n2);
   MY_CLK_r_REG314_S1 : DFF_X1 port map( D => A, CK => clk, Q => n9, QN => 
                           n_1265);
   MY_CLK_r_REG332_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => 
                           n_1266);
   MY_CLK_r_REG402_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => 
                           n_1267);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_209 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_209;

architecture SYN_BEHAVIORAL of FA_209 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n_1268 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n10, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n8, B => n9, ZN => n4);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n13, B2 => n12, A => n1, ZN => Co);
   MY_CLK_r_REG333_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n13
                           );
   MY_CLK_r_REG339_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG395_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1268);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_210 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_210;

architecture SYN_BEHAVIORAL of FA_210 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n8, n9, n_1269, n_1270 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n8, B => n9, ZN => S);
   U3 : XNOR2_X1 port map( A => Ci, B => A, ZN => n2);
   U4 : INV_X1 port map( A => A, ZN => n5);
   U5 : INV_X1 port map( A => B, ZN => n4);
   U6 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n3);
   U7 : OAI21_X1 port map( B1 => n5, B2 => n4, A => n3, ZN => Co);
   MY_CLK_r_REG348_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => 
                           n_1269);
   MY_CLK_r_REG340_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n8, QN => 
                           n_1270);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_211 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_211;

architecture SYN_BEHAVIORAL of FA_211 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n7, n8, n_1271, n_1272 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n7, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   MY_CLK_r_REG364_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => 
                           n_1271);
   MY_CLK_r_REG350_S1 : DFF_X1 port map( D => n4, CK => clk, Q => n7, QN => 
                           n_1272);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_212 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_212;

architecture SYN_BEHAVIORAL of FA_212 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n7, n8, n_1273, n_1274 : std_logic;

begin
   
   U1 : INV_X1 port map( A => A, ZN => n3);
   U2 : INV_X1 port map( A => B, ZN => n2);
   U3 : OAI21_X1 port map( B1 => A, B2 => B, A => Ci, ZN => n1);
   U4 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   U5 : XOR2_X1 port map( A => Ci, B => B, Z => n4);
   U6 : XOR2_X1 port map( A => n8, B => n7, Z => S);
   MY_CLK_r_REG365_S1 : DFF_X1 port map( D => A, CK => clk, Q => n8, QN => 
                           n_1273);
   MY_CLK_r_REG374_S1 : DFF_X1 port map( D => n4, CK => clk, Q => n7, QN => 
                           n_1274);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_215 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_215;

architecture SYN_BEHAVIORAL of FA_215 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U2 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_222 is

   port( A, B, Ci : in std_logic;  Co : out std_logic;  clk : in std_logic;  
         S_BAR : out std_logic);

end FA_222;

architecture SYN_BEHAVIORAL of FA_222 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n_1278 : std_logic;

begin
   
   U1 : INV_X1 port map( A => A, ZN => n2);
   MY_CLK_r_REG301_S1 : DFF_X1 port map( D => n2, CK => clk, Q => S_BAR, QN => 
                           n_1278);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_235 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_235;

architecture SYN_BEHAVIORAL of FA_235 is

begin
   S <= B;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_236 is

   port( B, Ci : in std_logic;  S, Co : out std_logic;  clk, A_BAR : in 
         std_logic);

end FA_236;

architecture SYN_BEHAVIORAL of FA_236 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n6, n8, n_1283 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n4, ZN => S);
   MY_CLK_r_REG422_S1 : DFF_X1 port map( D => B, CK => clk, Q => n6, QN => 
                           n_1283);
   U2 : INV_X1 port map( A => A_BAR, ZN => n8);
   U3 : NOR2_X1 port map( A1 => A_BAR, A2 => n4, ZN => Co);
   U4 : INV_X1 port map( A => n6, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_237 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_237;

architecture SYN_BEHAVIORAL of FA_237 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n5, n_1285 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n5, B => n3, ZN => S);
   MY_CLK_r_REG423_S1 : DFF_X1 port map( D => A, CK => clk, Q => n5, QN => 
                           n_1285);
   U2 : AND2_X1 port map( A1 => B, A2 => n5, ZN => Co);
   U3 : INV_X1 port map( A => B, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_238 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_238;

architecture SYN_BEHAVIORAL of FA_238 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n6, n_1287 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n6, B => n4, ZN => S);
   MY_CLK_r_REG419_S1 : DFF_X1 port map( D => B, CK => clk, Q => n6, QN => 
                           n_1287);
   U2 : AND2_X1 port map( A1 => A, A2 => n6, ZN => Co);
   U3 : INV_X1 port map( A => A, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_239 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_239;

architecture SYN_BEHAVIORAL of FA_239 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n6, n7, n_1288, n_1289 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n7, B => n6, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n1);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n2, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n3);
   MY_CLK_r_REG452_S1 : DFF_X1 port map( D => B, CK => clk, Q => n7, QN => 
                           n_1288);
   MY_CLK_r_REG421_S1 : DFF_X1 port map( D => n1, CK => clk, Q => n6, QN => 
                           n_1289);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_240 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_240;

architecture SYN_BEHAVIORAL of FA_240 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : AND2_X1 port map( A1 => A, A2 => B, ZN => Co);
   U3 : INV_X1 port map( A => A, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_241 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_241;

architecture SYN_BEHAVIORAL of FA_241 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n6, n7, n_1291, n_1292 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n7, B => n6, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => Ci, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U5 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n1);
   MY_CLK_r_REG450_S1 : DFF_X1 port map( D => B, CK => clk, Q => n7, QN => 
                           n_1291);
   MY_CLK_r_REG418_S1 : DFF_X1 port map( D => n3, CK => clk, Q => n6, QN => 
                           n_1292);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_242 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_242;

architecture SYN_BEHAVIORAL of FA_242 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n8, n10, n11, n_1294 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n11, ZN => S);
   MY_CLK_r_REG451_S1 : DFF_X1 port map( D => A, CK => clk, Q => n8, QN => n10)
                           ;
   MY_CLK_r_REG412_S1 : DFF_X1 port map( D => B, CK => clk, Q => n_1294, QN => 
                           n11);
   U2 : NOR2_X1 port map( A1 => n10, A2 => n11, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_243 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_243;

architecture SYN_BEHAVIORAL of FA_243 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n7, n8, n_1295, n_1296 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n7, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => Ci, ZN => n1);
   U3 : INV_X1 port map( A => A, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n3);
   U5 : OAI21_X1 port map( B1 => A, B2 => B, A => Ci, ZN => n2);
   U6 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);
   MY_CLK_r_REG413_S1 : DFF_X1 port map( D => A, CK => clk, Q => n8, QN => 
                           n_1295);
   MY_CLK_r_REG447_S1 : DFF_X1 port map( D => n1, CK => clk, Q => n7, QN => 
                           n_1296);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_244 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_244;

architecture SYN_BEHAVIORAL of FA_244 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n9, n10, n13, n14, n_1298, n_1299 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n10, B => n9, ZN => S);
   MY_CLK_r_REG449_S1 : DFF_X1 port map( D => A, CK => clk, Q => n_1298, QN => 
                           n13);
   MY_CLK_r_REG444_S1 : DFF_X1 port map( D => B, CK => clk, Q => n10, QN => n14
                           );
   MY_CLK_r_REG448_S1 : DFF_X1 port map( D => n5, CK => clk, Q => n9, QN => 
                           n_1299);
   U1 : NOR2_X1 port map( A1 => n13, A2 => n14, ZN => Co);
   U3 : INV_X1 port map( A => A, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_245 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_245;

architecture SYN_BEHAVIORAL of FA_245 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n4, n9, n10, n11, n12, n15, n_1300, n_1301, n_1302 : 
      std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n10, B => n9, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n9, A2 => n15, B1 => n12, B2 => n11, ZN => Co)
                           ;
   MY_CLK_r_REG442_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n12, QN => 
                           n_1300);
   MY_CLK_r_REG446_S1 : DFF_X1 port map( D => n1, CK => clk, Q => n11, QN => 
                           n_1301);
   MY_CLK_r_REG482_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n10, QN => 
                           n15);
   MY_CLK_r_REG443_S1 : DFF_X1 port map( D => n4, CK => clk, Q => n9, QN => 
                           n_1302);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_246 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_246;

architecture SYN_BEHAVIORAL of FA_246 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n8, n9, n10, n12, n13, n_1303 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n10, B => n9, Z => n4);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n12, B1 => n10, B2 => n13, ZN => Co)
                           ;
   MY_CLK_r_REG445_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n10, QN => 
                           n_1303);
   MY_CLK_r_REG484_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n13)
                           ;
   MY_CLK_r_REG487_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n12
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_254 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_254;

architecture SYN_BEHAVIORAL of FA_254 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n_1307 : std_logic;

begin
   
   MY_CLK_r_REG486_S1 : DFF_X1 port map( D => A, CK => clk, Q => S, QN => 
                           n_1307);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_255 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_255;

architecture SYN_BEHAVIORAL of FA_255 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal S_port, n4, n6 : std_logic;

begin
   S <= S_port;
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => S_port);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => S_port, B2 => n6, ZN => n4);
   n6 <= '0';

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_258 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_258;

architecture SYN_BEHAVIORAL of FA_258 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);
   U5 : XNOR2_X1 port map( A => A, B => n6, ZN => n5);
   U6 : INV_X1 port map( A => B, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_259 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_259;

architecture SYN_BEHAVIORAL of FA_259 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n4, n8, n9, n10, n12, n_1309, n_1310 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n10, B => n9, Z => n4);
   U5 : INV_X1 port map( A => n9, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n12, B1 => n10, B2 => n1, ZN => Co);
   MY_CLK_r_REG208_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n10, QN => 
                           n_1309);
   MY_CLK_r_REG259_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => 
                           n_1310);
   MY_CLK_r_REG274_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n12
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_260 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_260;

architecture SYN_BEHAVIORAL of FA_260 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n8, n9, n10, n12, n13, n_1311 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n10, B => n9, Z => n4);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n13, B1 => n10, B2 => n12, ZN => Co)
                           ;
   MY_CLK_r_REG210_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n10, QN => 
                           n_1311);
   MY_CLK_r_REG258_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG271_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n13
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_261 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_261;

architecture SYN_BEHAVIORAL of FA_261 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n8, n9, n10, n12, n13, n_1312 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n10, B => n9, Z => n4);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n13, B1 => n10, B2 => n12, ZN => Co)
                           ;
   MY_CLK_r_REG201_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n10, QN => 
                           n_1312);
   MY_CLK_r_REG272_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG256_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n13
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_262 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_262;

architecture SYN_BEHAVIORAL of FA_262 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n8, n10, n12, n13, n14, n_1313 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => n8, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n12, B1 => n10, B2 => n14, ZN => Co)
                           ;
   MY_CLK_r_REG491_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n10, QN => 
                           n13);
   MY_CLK_r_REG257_S1 : DFF_X1 port map( D => B, CK => clk, Q => n_1313, QN => 
                           n14);
   MY_CLK_r_REG206_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n12
                           );
   U3 : XOR2_X1 port map( A => n13, B => n14, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_263 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_263;

architecture SYN_BEHAVIORAL of FA_263 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n8, n10, n12, n13, n14, n_1314 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => n8, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n12, B1 => n10, B2 => n14, ZN => Co)
                           ;
   MY_CLK_r_REG194_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n10, QN => 
                           n13);
   MY_CLK_r_REG207_S1 : DFF_X1 port map( D => B, CK => clk, Q => n_1314, QN => 
                           n14);
   MY_CLK_r_REG254_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n12
                           );
   U3 : XOR2_X1 port map( A => n13, B => n14, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_264 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_264;

architecture SYN_BEHAVIORAL of FA_264 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n8, n10, n12, n13, n14, n_1315 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => n8, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n12, B1 => n10, B2 => n14, ZN => Co)
                           ;
   MY_CLK_r_REG199_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n10, QN => 
                           n13);
   MY_CLK_r_REG255_S1 : DFF_X1 port map( D => B, CK => clk, Q => n_1315, QN => 
                           n14);
   MY_CLK_r_REG269_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n12
                           );
   U3 : XOR2_X1 port map( A => n13, B => n14, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_265 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_265;

architecture SYN_BEHAVIORAL of FA_265 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n_1316 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n9, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n8, B => n10, ZN => n4);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n13, B2 => n12, A => n1, ZN => Co);
   MY_CLK_r_REG187_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n13
                           );
   MY_CLK_r_REG270_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG278_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1316);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_266 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_266;

architecture SYN_BEHAVIORAL of FA_266 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n_1317 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n10, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n8, B => n9, ZN => n4);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n13, B2 => n12, A => n1, ZN => Co);
   MY_CLK_r_REG176_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n13
                           );
   MY_CLK_r_REG279_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG289_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1317);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_267 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_267;

architecture SYN_BEHAVIORAL of FA_267 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n_1318 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n10, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n8, B => n9, ZN => n4);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n13, B2 => n12, A => n1, ZN => Co);
   MY_CLK_r_REG184_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n13
                           );
   MY_CLK_r_REG290_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG298_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1318);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_268 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_268;

architecture SYN_BEHAVIORAL of FA_268 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3, n4, n7, n8, n10, n_1319 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n7, B => n8, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U5 : OAI21_X1 port map( B1 => A, B2 => n8, A => n7, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n10, A => n1, ZN => Co);
   MY_CLK_r_REG299_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => n10)
                           ;
   MY_CLK_r_REG318_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => 
                           n_1319);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_269 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_269;

architecture SYN_BEHAVIORAL of FA_269 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n5, n8, n9, n11, n12 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n5, ZN => S);
   U2 : XNOR2_X1 port map( A => n9, B => n8, ZN => n5);
   U3 : NAND2_X1 port map( A1 => n9, A2 => A, ZN => n4);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n12, B1 => n2, B2 => n11, ZN => Co);
   MY_CLK_r_REG319_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n11)
                           ;
   MY_CLK_r_REG305_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n12
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_270 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_270;

architecture SYN_BEHAVIORAL of FA_270 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3, n4, n6, n8 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => n6, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U5 : OAI21_X1 port map( B1 => n6, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n8, A => n1, ZN => Co);
   MY_CLK_r_REG306_S1 : DFF_X1 port map( D => B, CK => clk, Q => n6, QN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_271 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_271;

architecture SYN_BEHAVIORAL of FA_271 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n5, n8, n9, n11, n12 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n5, ZN => S);
   U2 : XNOR2_X1 port map( A => n8, B => n9, ZN => n5);
   U3 : NAND2_X1 port map( A1 => B, A2 => n9, ZN => n4);
   U6 : INV_X1 port map( A => B, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n12, B1 => n11, B2 => n1, ZN => Co);
   MY_CLK_r_REG162_S1 : DFF_X1 port map( D => A, CK => clk, Q => n9, QN => n11)
                           ;
   MY_CLK_r_REG317_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n12
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_272 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_272;

architecture SYN_BEHAVIORAL of FA_272 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n5, n8, n9, n11, n12 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n5, ZN => S);
   U2 : XNOR2_X1 port map( A => n9, B => n8, ZN => n5);
   U3 : NAND2_X1 port map( A1 => B, A2 => n9, ZN => n4);
   U6 : INV_X1 port map( A => B, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n12, B1 => n11, B2 => n1, ZN => Co);
   MY_CLK_r_REG143_S1 : DFF_X1 port map( D => A, CK => clk, Q => n9, QN => n11)
                           ;
   MY_CLK_r_REG330_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n12
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_273 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_273;

architecture SYN_BEHAVIORAL of FA_273 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n5, n7, n9 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n5, B => B, ZN => S);
   U3 : XNOR2_X1 port map( A => Ci, B => n7, ZN => n5);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => B, B2 => n7, A => Ci, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n9, B2 => n3, A => n2, ZN => Co);
   MY_CLK_r_REG151_S1 : DFF_X1 port map( D => A, CK => clk, Q => n7, QN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_274 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_274;

architecture SYN_BEHAVIORAL of FA_274 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n6, n7, n8, n10, n11, n12 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n7, B => n8, ZN => n1);
   U2 : XNOR2_X1 port map( A => n6, B => n1, ZN => S);
   U7 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => n2);
   U9 : AOI22_X1 port map( A1 => n2, A2 => n10, B1 => n11, B2 => n12, ZN => Co)
                           ;
   MY_CLK_r_REG139_S1 : DFF_X1 port map( D => A, CK => clk, Q => n8, QN => n11)
                           ;
   MY_CLK_r_REG346_S1 : DFF_X1 port map( D => B, CK => clk, Q => n7, QN => n12)
                           ;
   MY_CLK_r_REG360_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n6, QN => n10
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_275 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_275;

architecture SYN_BEHAVIORAL of FA_275 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n9, n10, n11, n13, n14, n15 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n9, B => n5, ZN => S);
   U2 : XNOR2_X1 port map( A => n10, B => n11, ZN => n5);
   U3 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => n4);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n13, B1 => n15, B2 => n14, ZN => Co)
                           ;
   MY_CLK_r_REG141_S1 : DFF_X1 port map( D => A, CK => clk, Q => n11, QN => n15
                           );
   MY_CLK_r_REG361_S1 : DFF_X1 port map( D => B, CK => clk, Q => n10, QN => n14
                           );
   MY_CLK_r_REG370_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n9, QN => n13
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_276 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_276;

architecture SYN_BEHAVIORAL of FA_276 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n_1320 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n10, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n8, B => n9, ZN => n4);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n12, B2 => n13, A => n1, ZN => Co);
   MY_CLK_r_REG249_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n12
                           );
   MY_CLK_r_REG369_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n13)
                           ;
   MY_CLK_r_REG358_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1320);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_277 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_277;

architecture SYN_BEHAVIORAL of FA_277 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n14 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n10, B => n4, ZN => S);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n12, B2 => n14, A => n1, ZN => Co);
   MY_CLK_r_REG266_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n12
                           );
   MY_CLK_r_REG359_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n14)
                           ;
   MY_CLK_r_REG386_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n13
                           );
   U2 : XNOR2_X1 port map( A => n13, B => n14, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_278 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_278;

architecture SYN_BEHAVIORAL of FA_278 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n8, n12, n13, n14, n_1321, n_1322 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n8, B => n4, ZN => S);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n12, B1 => n13, B2 => n14, ZN => Co)
                           ;
   MY_CLK_r_REG281_S1 : DFF_X1 port map( D => A, CK => clk, Q => n_1321, QN => 
                           n13);
   MY_CLK_r_REG387_S1 : DFF_X1 port map( D => B, CK => clk, Q => n_1322, QN => 
                           n14);
   MY_CLK_r_REG356_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n12
                           );
   U1 : XNOR2_X1 port map( A => n13, B => n14, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_279 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_279;

architecture SYN_BEHAVIORAL of FA_279 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n14 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => n9, ZN => S);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n14, B2 => n12, A => n1, ZN => Co);
   MY_CLK_r_REG325_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n14
                           );
   MY_CLK_r_REG357_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG384_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n13
                           );
   U2 : XNOR2_X1 port map( A => n13, B => n14, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_280 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_280;

architecture SYN_BEHAVIORAL of FA_280 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n7, n8, n9, n_1323, n_1324, n_1325 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n9, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => n7, B => n8, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : OAI21_X1 port map( B1 => n8, B2 => n9, A => n7, ZN => n2);
   U5 : NAND2_X1 port map( A1 => n9, A2 => n8, ZN => n1);
   MY_CLK_r_REG284_S1 : DFF_X1 port map( D => A, CK => clk, Q => n9, QN => 
                           n_1323);
   MY_CLK_r_REG385_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => 
                           n_1324);
   MY_CLK_r_REG354_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => 
                           n_1325);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_281 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_281;

architecture SYN_BEHAVIORAL of FA_281 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n7, n8, n9, n_1326, n_1327, n_1328 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => n7, B => n9, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : NAND2_X1 port map( A1 => n9, A2 => n8, ZN => n1);
   U5 : OAI21_X1 port map( B1 => n8, B2 => n9, A => n7, ZN => n2);
   MY_CLK_r_REG323_S1 : DFF_X1 port map( D => A, CK => clk, Q => n9, QN => 
                           n_1326);
   MY_CLK_r_REG355_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => 
                           n_1327);
   MY_CLK_r_REG382_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => 
                           n_1328);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_282 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_282;

architecture SYN_BEHAVIORAL of FA_282 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n_1329 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n9, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n8, B => n10, ZN => n4);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n13, B2 => n12, A => n1, ZN => Co);
   MY_CLK_r_REG310_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n13
                           );
   MY_CLK_r_REG383_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG377_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1329);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_283 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_283;

architecture SYN_BEHAVIORAL of FA_283 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n_1330 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n10, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n8, B => n9, ZN => n4);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n12, B2 => n13, A => n1, ZN => Co);
   MY_CLK_r_REG321_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n12
                           );
   MY_CLK_r_REG378_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n13)
                           ;
   MY_CLK_r_REG380_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1330);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_284 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_284;

architecture SYN_BEHAVIORAL of FA_284 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n6, n7, n_1331, n_1332 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U2 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U3 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n1);
   U4 : XOR2_X1 port map( A => Ci, B => A, Z => n3);
   U5 : XOR2_X1 port map( A => n7, B => n6, Z => S);
   MY_CLK_r_REG381_S1 : DFF_X1 port map( D => B, CK => clk, Q => n7, QN => 
                           n_1331);
   MY_CLK_r_REG334_S1 : DFF_X1 port map( D => n3, CK => clk, Q => n6, QN => 
                           n_1332);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_293 is

   port( A, B, Ci : in std_logic;  S, Co_BAR : out std_logic);

end FA_293;

architecture SYN_BEHAVIORAL of FA_293 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal S_port, n6 : std_logic;

begin
   S <= S_port;
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => S_port);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => S_port, B2 => n6, ZN => 
                           Co_BAR);
   n6 <= '0';

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_294 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_294;

architecture SYN_BEHAVIORAL of FA_294 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => n6, B1 => n5, B2 => Ci, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n5);
   n6 <= '1';

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_295 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_295;

architecture SYN_BEHAVIORAL of FA_295 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_296 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_296;

architecture SYN_BEHAVIORAL of FA_296 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : INV_X1 port map( A => B, ZN => n5);
   U4 : AOI21_X1 port map( B1 => n5, B2 => Ci, A => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_297 is

   port( A, Ci : in std_logic;  S, Co : out std_logic;  B_BAR : in std_logic);

end FA_297;

architecture SYN_BEHAVIORAL of FA_297 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => n6, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => n6, A2 => A, B1 => n5, B2 => Ci, ZN => n4);
   U5 : INV_X1 port map( A => B_BAR, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_298 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_298;

architecture SYN_BEHAVIORAL of FA_298 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);
   U3 : INV_X1 port map( A => Ci, ZN => n6);
   U4 : INV_X1 port map( A => A, ZN => n7);
   U5 : XNOR2_X1 port map( A => B, B => n7, ZN => n5);
   U6 : XNOR2_X1 port map( A => n5, B => n6, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_299 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_299;

architecture SYN_BEHAVIORAL of FA_299 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);
   U3 : INV_X1 port map( A => B, ZN => n7);
   U4 : INV_X1 port map( A => Ci, ZN => n8);
   U6 : XNOR2_X1 port map( A => A, B => n7, ZN => n5);
   U7 : XNOR2_X1 port map( A => n5, B => n8, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_300 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_300;

architecture SYN_BEHAVIORAL of FA_300 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI21_X1 port map( B1 => n5, B2 => Ci, A => n6, ZN => n4);
   U4 : AND2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U5 : XNOR2_X1 port map( A => n7, B => B, ZN => n5);
   U6 : INV_X1 port map( A => A, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_301 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_301;

architecture SYN_BEHAVIORAL of FA_301 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n8, n9, n12, n_1336, n_1337, n_1338 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => n8, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   MY_CLK_r_REG493_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => 
                           n_1336);
   MY_CLK_r_REG18_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1337);
   U3 : XNOR2_X1 port map( A => n12, B => n9, ZN => n4);
   U6 : OAI22_X1 port map( A1 => n3, A2 => n4, B1 => n2, B2 => n1, ZN => Co);
   MY_CLK_r_REG490_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n_1338, QN =>
                           n12);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_302 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_302;

architecture SYN_BEHAVIORAL of FA_302 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n4, n9, n10, n11, n12, n14, n_1339, n_1340, n_1341 : 
      std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n10, B => n9, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n9, A2 => n14, B1 => n12, B2 => n11, ZN => Co)
                           ;
   MY_CLK_r_REG494_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n12, QN => 
                           n_1339);
   MY_CLK_r_REG496_S1 : DFF_X1 port map( D => n1, CK => clk, Q => n11, QN => 
                           n_1340);
   MY_CLK_r_REG209_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n10, QN => 
                           n14);
   MY_CLK_r_REG495_S1 : DFF_X1 port map( D => n4, CK => clk, Q => n9, QN => 
                           n_1341);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_303 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_303;

architecture SYN_BEHAVIORAL of FA_303 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n8, n10, n12, n13, n14, n_1342 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => n8, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n12, B1 => n10, B2 => n14, ZN => Co)
                           ;
   MY_CLK_r_REG497_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n10, QN => 
                           n13);
   MY_CLK_r_REG498_S1 : DFF_X1 port map( D => B, CK => clk, Q => n_1342, QN => 
                           n14);
   MY_CLK_r_REG211_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n12
                           );
   U3 : XOR2_X1 port map( A => n13, B => n14, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_304 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_304;

architecture SYN_BEHAVIORAL of FA_304 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n8, n10, n12, n13, n14, n_1343 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => n8, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n12, B1 => n10, B2 => n14, ZN => Co)
                           ;
   MY_CLK_r_REG499_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n10, QN => 
                           n13);
   MY_CLK_r_REG504_S1 : DFF_X1 port map( D => B, CK => clk, Q => n_1343, QN => 
                           n14);
   MY_CLK_r_REG205_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n12
                           );
   U3 : XOR2_X1 port map( A => n13, B => n14, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_305 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_305;

architecture SYN_BEHAVIORAL of FA_305 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n7, n8, n9, n_1344, n_1345, n_1346 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => n7, B => n9, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : OAI21_X1 port map( B1 => n8, B2 => n9, A => n7, ZN => n2);
   U5 : NAND2_X1 port map( A1 => n9, A2 => n8, ZN => n1);
   MY_CLK_r_REG505_S1 : DFF_X1 port map( D => A, CK => clk, Q => n9, QN => 
                           n_1344);
   MY_CLK_r_REG506_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => 
                           n_1345);
   MY_CLK_r_REG492_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => 
                           n_1346);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_306 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_306;

architecture SYN_BEHAVIORAL of FA_306 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n14 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n9, B => n4, ZN => S);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n14, B2 => n12, A => n1, ZN => Co);
   MY_CLK_r_REG507_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n14
                           );
   MY_CLK_r_REG502_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG198_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n13
                           );
   U2 : XNOR2_X1 port map( A => n13, B => n14, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_307 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_307;

architecture SYN_BEHAVIORAL of FA_307 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n6, n7, n_1347, n_1348 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n7, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => n6, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => n7, ZN => n1);
   U5 : OAI21_X1 port map( B1 => n7, B2 => A, A => n6, ZN => n2);
   MY_CLK_r_REG500_S1 : DFF_X1 port map( D => B, CK => clk, Q => n7, QN => 
                           n_1347);
   MY_CLK_r_REG200_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n6, QN => 
                           n_1348);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_308 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_308;

architecture SYN_BEHAVIORAL of FA_308 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n4, n7, n8, n10, n_1349 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => A, B => n1, Z => S);
   U2 : XOR2_X1 port map( A => n8, B => n7, Z => n1);
   U4 : NAND2_X1 port map( A1 => n8, A2 => A, ZN => n4);
   U5 : NOR2_X1 port map( A1 => n8, A2 => A, ZN => n2);
   MY_CLK_r_REG192_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => 
                           n_1349);
   MY_CLK_r_REG191_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => n10
                           );
   U6 : AOI21_X1 port map( B1 => n4, B2 => n10, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_309 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_309;

architecture SYN_BEHAVIORAL of FA_309 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n5, n9, n10, n11, n13, n14, n_1350 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n5, B => n9, ZN => S);
   U3 : XNOR2_X1 port map( A => n10, B => n11, ZN => n5);
   U6 : OAI21_X1 port map( B1 => n11, B2 => n10, A => n9, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n14, B2 => n13, A => n2, ZN => Co);
   MY_CLK_r_REG193_S1 : DFF_X1 port map( D => A, CK => clk, Q => n11, QN => n14
                           );
   MY_CLK_r_REG181_S1 : DFF_X1 port map( D => B, CK => clk, Q => n10, QN => n13
                           );
   MY_CLK_r_REG180_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n9, QN => 
                           n_1350);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_310 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_310;

architecture SYN_BEHAVIORAL of FA_310 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3, n4, n6, n8 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => n6, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U5 : OAI21_X1 port map( B1 => n6, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n8, A => n1, ZN => Co);
   MY_CLK_r_REG186_S1 : DFF_X1 port map( D => B, CK => clk, Q => n6, QN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_311 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_311;

architecture SYN_BEHAVIORAL of FA_311 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n8, n9, n_1351, n_1352 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => Ci, B => n5, ZN => S);
   U4 : NAND2_X1 port map( A1 => n4, A2 => n3, ZN => Co);
   U5 : NAND2_X1 port map( A1 => n9, A2 => n8, ZN => n3);
   U6 : OAI21_X1 port map( B1 => n8, B2 => n9, A => Ci, ZN => n4);
   U7 : XNOR2_X1 port map( A => n8, B => n9, ZN => n5);
   MY_CLK_r_REG185_S1 : DFF_X1 port map( D => A, CK => clk, Q => n9, QN => 
                           n_1351);
   MY_CLK_r_REG172_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => 
                           n_1352);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_312 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_312;

architecture SYN_BEHAVIORAL of FA_312 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n7, n8, n11, n12 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n7, ZN => n4);
   U3 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U5 : INV_X1 port map( A => Ci, ZN => n3);
   MY_CLK_r_REG173_S1 : DFF_X1 port map( D => A, CK => clk, Q => n8, QN => n11)
                           ;
   MY_CLK_r_REG511_S1 : DFF_X1 port map( D => B, CK => clk, Q => n7, QN => n12)
                           ;
   U2 : OAI22_X1 port map( A1 => n3, A2 => n4, B1 => n11, B2 => n12, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_313 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_313;

architecture SYN_BEHAVIORAL of FA_313 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n6, n8 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n1, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => n6, ZN => n1);
   U3 : AND2_X1 port map( A1 => A, A2 => n6, ZN => n2);
   U5 : OAI22_X1 port map( A1 => n2, A2 => n3, B1 => Ci, B2 => n2, ZN => n4);
   U6 : INV_X1 port map( A => n4, ZN => Co);
   MY_CLK_r_REG160_S1 : DFF_X1 port map( D => B, CK => clk, Q => n6, QN => n8);
   U4 : XNOR2_X1 port map( A => A, B => n8, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_314 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_314;

architecture SYN_BEHAVIORAL of FA_314 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net23811, net23814, n1, n4, n5, n7, n8 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n4, B => B, ZN => n1);
   U3 : XNOR2_X1 port map( A => n1, B => n5, ZN => S);
   U5 : INV_X1 port map( A => B, ZN => net23814);
   U6 : NAND2_X1 port map( A1 => n5, A2 => B, ZN => net23811);
   MY_CLK_r_REG161_S1 : DFF_X1 port map( D => A, CK => clk, Q => n5, QN => n8);
   MY_CLK_r_REG163_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n4, QN => n7)
                           ;
   U8 : AOI22_X1 port map( A1 => net23811, A2 => n7, B1 => n8, B2 => net23814, 
                           ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_315 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_315;

architecture SYN_BEHAVIORAL of FA_315 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n7, n10, n11, n13, n14 : std_logic;

begin
   
   U4 : XNOR2_X1 port map( A => B, B => n7, ZN => S);
   U5 : XNOR2_X1 port map( A => n10, B => n11, ZN => n7);
   U7 : INV_X1 port map( A => B, ZN => n5);
   U8 : NAND2_X1 port map( A1 => B, A2 => n11, ZN => n4);
   MY_CLK_r_REG165_S1 : DFF_X1 port map( D => A, CK => clk, Q => n11, QN => n13
                           );
   MY_CLK_r_REG148_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n10, QN => 
                           n14);
   U1 : AOI22_X1 port map( A1 => n13, A2 => n5, B1 => n4, B2 => n14, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_316 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_316;

architecture SYN_BEHAVIORAL of FA_316 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n5, n8, n12, n13, n14, n16, n17, n18 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n18, A2 => n16, ZN => n1);
   U2 : NAND2_X1 port map( A1 => n5, A2 => n17, ZN => n2);
   U5 : XNOR2_X1 port map( A => n8, B => n13, ZN => S);
   U6 : XNOR2_X1 port map( A => n14, B => n12, ZN => n8);
   U9 : NAND2_X1 port map( A1 => n13, A2 => n14, ZN => n5);
   MY_CLK_r_REG149_S1 : DFF_X1 port map( D => A, CK => clk, Q => n14, QN => n18
                           );
   MY_CLK_r_REG154_S1 : DFF_X1 port map( D => B, CK => clk, Q => n13, QN => n16
                           );
   MY_CLK_r_REG152_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n12, QN => 
                           n17);
   U3 : AND2_X1 port map( A1 => n1, A2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_317 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_317;

architecture SYN_BEHAVIORAL of FA_317 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n7, n10, n11, n13, n14, n15, n16 : std_logic;

begin
   
   U4 : XNOR2_X1 port map( A => B, B => n7, ZN => S);
   U5 : XNOR2_X1 port map( A => n10, B => n11, ZN => n7);
   U7 : INV_X1 port map( A => B, ZN => n5);
   U8 : NAND2_X1 port map( A1 => B, A2 => n11, ZN => n4);
   MY_CLK_r_REG153_S1 : DFF_X1 port map( D => A, CK => clk, Q => n11, QN => n13
                           );
   MY_CLK_r_REG140_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n10, QN => 
                           n16);
   U1 : AND2_X2 port map( A1 => n15, A2 => n14, ZN => Co);
   U2 : NAND2_X1 port map( A1 => n13, A2 => n5, ZN => n14);
   U3 : NAND2_X1 port map( A1 => n4, A2 => n16, ZN => n15);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_318 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_318;

architecture SYN_BEHAVIORAL of FA_318 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n7, n11, n12, n13, n15, n16, n17 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => n7, B => n12, ZN => S);
   U4 : XNOR2_X1 port map( A => n11, B => n13, ZN => n7);
   U7 : NAND2_X1 port map( A1 => n12, A2 => n13, ZN => n4);
   U9 : AOI22_X1 port map( A1 => n17, A2 => n16, B1 => n4, B2 => n15, ZN => Co)
                           ;
   MY_CLK_r_REG136_S1 : DFF_X1 port map( D => A, CK => clk, Q => n13, QN => n17
                           );
   MY_CLK_r_REG130_S1 : DFF_X1 port map( D => B, CK => clk, Q => n12, QN => n16
                           );
   MY_CLK_r_REG142_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n11, QN => 
                           n15);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_319 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_319;

architecture SYN_BEHAVIORAL of FA_319 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n9, n10, n11, n13, n14, n_1353 : std_logic;

begin
   
   U3 : OAI22_X1 port map( A1 => n11, A2 => n9, B1 => n10, B2 => n9, ZN => n2);
   U4 : NOR2_X1 port map( A1 => n11, A2 => n10, ZN => n1);
   U7 : XNOR2_X1 port map( A => n3, B => n9, ZN => S);
   MY_CLK_r_REG134_S1 : DFF_X1 port map( D => A, CK => clk, Q => n11, QN => n14
                           );
   MY_CLK_r_REG127_S1 : DFF_X1 port map( D => B, CK => clk, Q => n10, QN => n13
                           );
   MY_CLK_r_REG248_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n9, QN => 
                           n_1353);
   U1 : NOR2_X1 port map( A1 => n1, A2 => n2, ZN => Co);
   U2 : XNOR2_X1 port map( A => n13, B => n14, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_320 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_320;

architecture SYN_BEHAVIORAL of FA_320 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n5, n6, n9, n10, n12, n13 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => B, B => n6, ZN => S);
   U3 : XNOR2_X1 port map( A => n10, B => n9, ZN => n6);
   U4 : NAND2_X1 port map( A1 => B, A2 => n10, ZN => n5);
   U7 : INV_X1 port map( A => B, ZN => n2);
   U8 : AOI22_X1 port map( A1 => n5, A2 => n12, B1 => n13, B2 => n2, ZN => Co);
   MY_CLK_r_REG126_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n13
                           );
   MY_CLK_r_REG267_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n9, QN => n12
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_321 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_321;

architecture SYN_BEHAVIORAL of FA_321 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n7, n12, n13, n15, n16, n17, n_1354 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => n7, B => n12, ZN => S);
   U7 : NAND2_X1 port map( A1 => n12, A2 => n13, ZN => n4);
   U9 : AOI22_X1 port map( A1 => n16, A2 => n15, B1 => n4, B2 => n17, ZN => Co)
                           ;
   MY_CLK_r_REG123_S1 : DFF_X1 port map( D => A, CK => clk, Q => n13, QN => n16
                           );
   MY_CLK_r_REG125_S1 : DFF_X1 port map( D => B, CK => clk, Q => n12, QN => n15
                           );
   MY_CLK_r_REG282_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n_1354, QN =>
                           n17);
   U1 : XNOR2_X1 port map( A => n16, B => n17, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_322 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_322;

architecture SYN_BEHAVIORAL of FA_322 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n7, n8, n9, n_1355, n_1356, n_1357 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => n9, B => n1, Z => S);
   U2 : XOR2_X1 port map( A => n7, B => n8, Z => n1);
   U3 : NOR2_X1 port map( A1 => n3, A2 => n2, ZN => Co);
   U4 : NOR2_X1 port map( A1 => n8, A2 => n9, ZN => n2);
   U5 : AOI21_X1 port map( B1 => n8, B2 => n9, A => n7, ZN => n3);
   MY_CLK_r_REG124_S1 : DFF_X1 port map( D => A, CK => clk, Q => n9, QN => 
                           n_1355);
   MY_CLK_r_REG106_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => 
                           n_1356);
   MY_CLK_r_REG326_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n7, QN => 
                           n_1357);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_323 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_323;

architecture SYN_BEHAVIORAL of FA_323 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n8, n9, n10, n_1358, n_1359, n_1360 : std_logic;

begin
   
   U2 : NOR2_X1 port map( A1 => n3, A2 => n2, ZN => Co);
   U3 : AOI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n3);
   U4 : NOR2_X1 port map( A1 => n9, A2 => n10, ZN => n2);
   U5 : XNOR2_X1 port map( A => n9, B => n4, ZN => S);
   U6 : XNOR2_X1 port map( A => n8, B => n10, ZN => n4);
   MY_CLK_r_REG110_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => 
                           n_1358);
   MY_CLK_r_REG91_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => 
                           n_1359);
   MY_CLK_r_REG285_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => 
                           n_1360);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_324 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_324;

architecture SYN_BEHAVIORAL of FA_324 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n14 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => n10, ZN => S);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n12, B2 => n14, A => n1, ZN => Co);
   MY_CLK_r_REG103_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n12
                           );
   MY_CLK_r_REG111_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n14)
                           ;
   MY_CLK_r_REG324_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n13
                           );
   U2 : XNOR2_X1 port map( A => n13, B => n14, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_325 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_325;

architecture SYN_BEHAVIORAL of FA_325 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n14 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n9, B => n4, ZN => S);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n14, B2 => n12, A => n1, ZN => Co);
   MY_CLK_r_REG112_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n14
                           );
   MY_CLK_r_REG243_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n12)
                           ;
   MY_CLK_r_REG311_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n13
                           );
   U2 : XNOR2_X1 port map( A => n13, B => n14, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_326 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_326;

architecture SYN_BEHAVIORAL of FA_326 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n14 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n10, B => n4, ZN => S);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n12, B2 => n14, A => n1, ZN => Co);
   MY_CLK_r_REG244_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n12
                           );
   MY_CLK_r_REG260_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n14)
                           ;
   MY_CLK_r_REG322_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n13
                           );
   U2 : XNOR2_X1 port map( A => n13, B => n14, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_327 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_327;

architecture SYN_BEHAVIORAL of FA_327 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n9, n10, n11, n12, n14, n15, n_1361, n_1362 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n10, B => n9, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U5 : OAI21_X1 port map( B1 => n11, B2 => n12, A => n10, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n15, B2 => n14, A => n1, ZN => Co);
   MY_CLK_r_REG261_S1 : DFF_X1 port map( D => A, CK => clk, Q => n12, QN => n15
                           );
   MY_CLK_r_REG275_S1 : DFF_X1 port map( D => B, CK => clk, Q => n11, QN => n14
                           );
   MY_CLK_r_REG336_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n10, QN => 
                           n_1361);
   MY_CLK_r_REG262_S1 : DFF_X1 port map( D => n4, CK => clk, Q => n9, QN => 
                           n_1362);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_328 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_328;

architecture SYN_BEHAVIORAL of FA_328 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => Ci, B => n6, ZN => S);
   U4 : XNOR2_X1 port map( A => A, B => B, ZN => n6);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U6 : INV_X1 port map( A => Ci, ZN => n4);
   U7 : INV_X1 port map( A => A, ZN => n3);
   U8 : INV_X1 port map( A => B, ZN => n2);
   U1 : AOI22_X1 port map( A1 => n4, A2 => n5, B1 => n3, B2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_329 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_329;

architecture SYN_BEHAVIORAL of FA_329 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n11, n12, n13, n14, n_1363, n_1364, n_1365, 
      n_1366 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n6, B => B, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => Ci, ZN => n6);
   U4 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n4);
   U6 : INV_X1 port map( A => A, ZN => n3);
   U7 : INV_X1 port map( A => B, ZN => n2);
   MY_CLK_r_REG351_S1 : DFF_X1 port map( D => n4, CK => clk, Q => n14, QN => 
                           n_1363);
   MY_CLK_r_REG288_S1 : DFF_X1 port map( D => n3, CK => clk, Q => n13, QN => 
                           n_1364);
   MY_CLK_r_REG292_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n12, QN => 
                           n_1365);
   MY_CLK_r_REG287_S1 : DFF_X1 port map( D => n5, CK => clk, Q => n11, QN => 
                           n_1366);
   U1 : AOI22_X1 port map( A1 => n11, A2 => n14, B1 => n13, B2 => n12, ZN => Co
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_330 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_330;

architecture SYN_BEHAVIORAL of FA_330 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n8, n9, n10, n_1367, n_1368, n_1369 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n1, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n1);
   U3 : INV_X1 port map( A => A, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n3);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U6 : OAI21_X1 port map( B1 => n10, B2 => n9, A => n8, ZN => Co);
   MY_CLK_r_REG294_S1 : DFF_X1 port map( D => n4, CK => clk, Q => n10, QN => 
                           n_1367);
   MY_CLK_r_REG304_S1 : DFF_X1 port map( D => n3, CK => clk, Q => n9, QN => 
                           n_1368);
   MY_CLK_r_REG293_S1 : DFF_X1 port map( D => n2, CK => clk, Q => n8, QN => 
                           n_1369);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_332 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_332;

architecture SYN_BEHAVIORAL of FA_332 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n1);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_335 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_335;

architecture SYN_BEHAVIORAL of FA_335 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n6 : std_logic;

begin
   
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   U1 : XNOR2_X1 port map( A => Ci, B => B, ZN => n6);
   U2 : XNOR2_X1 port map( A => A, B => n6, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_21 is

   port( B : in std_logic;  C, S_BAR : out std_logic;  A_BAR : in std_logic);

end HA_21;

architecture SYN_rtl of HA_21 is

begin
   S_BAR <= A_BAR;

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_337 is

   port( B, Ci : in std_logic;  Co : out std_logic;  A_BAR : in std_logic;  
         S_BAR : out std_logic);

end FA_337;

architecture SYN_BEHAVIORAL of FA_337 is

begin
   S_BAR <= A_BAR;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_348 is

   port( Ci : in std_logic;  Co : out std_logic;  B_BAR, A_BAR : in std_logic; 
         S_BAR : out std_logic);

end FA_348;

architecture SYN_BEHAVIORAL of FA_348 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : XNOR2_X1 port map( A => A_BAR, B => B_BAR, ZN => S_BAR);
   U2 : NOR2_X1 port map( A1 => A_BAR, A2 => B_BAR, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_350 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_350;

architecture SYN_BEHAVIORAL of FA_350 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n8, n10, n11, n_1377 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n10, ZN => S);
   MY_CLK_r_REG456_S1 : DFF_X1 port map( D => A, CK => clk, Q => n8, QN => n11)
                           ;
   MY_CLK_r_REG478_S1 : DFF_X1 port map( D => B, CK => clk, Q => n_1377, QN => 
                           n10);
   U2 : NOR2_X1 port map( A1 => n11, A2 => n10, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_353 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_353;

architecture SYN_BEHAVIORAL of FA_353 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n6 : std_logic;

begin
   
   U3 : INV_X1 port map( A => A, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n3);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U6 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);
   U1 : XNOR2_X1 port map( A => n6, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_354 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_354;

architecture SYN_BEHAVIORAL of FA_354 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n3, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => Ci, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U5 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_355 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_355;

architecture SYN_BEHAVIORAL of FA_355 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n1, B => A, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n1);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n2, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_358 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_358;

architecture SYN_BEHAVIORAL of FA_358 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_362 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_362;

architecture SYN_BEHAVIORAL of FA_362 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n3, A2 => n4, B1 => n2, B2 => n1, ZN => Co);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_363 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_363;

architecture SYN_BEHAVIORAL of FA_363 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_364 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_364;

architecture SYN_BEHAVIORAL of FA_364 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_365 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_365;

architecture SYN_BEHAVIORAL of FA_365 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_366 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_366;

architecture SYN_BEHAVIORAL of FA_366 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);
   U2 : XNOR2_X1 port map( A => B, B => n1, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => Ci, ZN => n1);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U6 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_367 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_367;

architecture SYN_BEHAVIORAL of FA_367 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n4, n8, n9, n10, n12, n13, n14 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => n10, ZN => S);
   U5 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n8, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n12, B2 => n14, A => n1, ZN => Co);
   MY_CLK_r_REG307_S1 : DFF_X1 port map( D => A, CK => clk, Q => n10, QN => n12
                           );
   MY_CLK_r_REG315_S1 : DFF_X1 port map( D => B, CK => clk, Q => n9, QN => n14)
                           ;
   MY_CLK_r_REG379_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n8, QN => n13
                           );
   U2 : XNOR2_X1 port map( A => n13, B => n14, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_368 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_368;

architecture SYN_BEHAVIORAL of FA_368 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n6, n7, n_1378, n_1379 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => n7, B => n6, Z => S);
   U2 : XOR2_X1 port map( A => B, B => Ci, Z => n1);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n2, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => A, B2 => B, A => Ci, ZN => n3);
   MY_CLK_r_REG316_S1 : DFF_X1 port map( D => A, CK => clk, Q => n7, QN => 
                           n_1378);
   MY_CLK_r_REG329_S1 : DFF_X1 port map( D => n1, CK => clk, Q => n6, QN => 
                           n_1379);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_369 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_369;

architecture SYN_BEHAVIORAL of FA_369 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n6, n7, n_1380, n_1381 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n7, B => n6, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => Ci, ZN => n3);
   U3 : NOR2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : AOI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U5 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n1);
   MY_CLK_r_REG344_S1 : DFF_X1 port map( D => B, CK => clk, Q => n7, QN => 
                           n_1380);
   MY_CLK_r_REG331_S1 : DFF_X1 port map( D => n3, CK => clk, Q => n6, QN => 
                           n_1381);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_370 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_370;

architecture SYN_BEHAVIORAL of FA_370 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net24071, n1, n5, n6, n7, n9, n10, n11, n12, n_1382 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => A, B => n1, ZN => S);
   U3 : XNOR2_X1 port map( A => Ci, B => B, ZN => n1);
   U5 : INV_X1 port map( A => Ci, ZN => net24071);
   MY_CLK_r_REG405_S1 : DFF_X1 port map( D => net24071, CK => clk, Q => n7, QN 
                           => n_1382);
   MY_CLK_r_REG345_S1 : DFF_X1 port map( D => A, CK => clk, Q => n6, QN => n12)
                           ;
   MY_CLK_r_REG362_S1 : DFF_X1 port map( D => B, CK => clk, Q => n5, QN => n11)
                           ;
   U4 : AND2_X1 port map( A1 => n11, A2 => n12, ZN => n9);
   U6 : NAND2_X1 port map( A1 => n5, A2 => n6, ZN => n10);
   U1 : AOI21_X1 port map( B1 => n10, B2 => n7, A => n9, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_371 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_371;

architecture SYN_BEHAVIORAL of FA_371 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => A, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_372 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_372;

architecture SYN_BEHAVIORAL of FA_372 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => A, B => n5, ZN => S);
   U3 : XNOR2_X1 port map( A => B, B => Ci, ZN => n5);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_374 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_374;

architecture SYN_BEHAVIORAL of FA_374 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_376 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_376;

architecture SYN_BEHAVIORAL of FA_376 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_378 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_378;

architecture SYN_BEHAVIORAL of FA_378 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U5 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_27 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_27;

architecture SYN_rtl of HA_27 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => C);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_381 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_381;

architecture SYN_BEHAVIORAL of FA_381 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U3 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => A, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_383 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_383;

architecture SYN_BEHAVIORAL of FA_383 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_388 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_388;

architecture SYN_BEHAVIORAL of FA_388 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => A, B => n1, Z => S);
   U2 : XOR2_X1 port map( A => Ci, B => B, Z => n1);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n2, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_389 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_389;

architecture SYN_BEHAVIORAL of FA_389 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => Ci, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U5 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_390 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_390;

architecture SYN_BEHAVIORAL of FA_390 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n7, n8, n_1383, n_1384 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n7, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   MY_CLK_r_REG183_S1 : DFF_X1 port map( D => A, CK => clk, Q => n8, QN => 
                           n_1383);
   MY_CLK_r_REG253_S1 : DFF_X1 port map( D => n4, CK => clk, Q => n7, QN => 
                           n_1384);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_391 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_391;

architecture SYN_BEHAVIORAL of FA_391 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n10, n11, n13, n14, n15, n_1385 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n5, B => n11, ZN => S);
   U3 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => n4);
   MY_CLK_r_REG166_S1 : DFF_X1 port map( D => A, CK => clk, Q => n11, QN => n13
                           );
   MY_CLK_r_REG268_S1 : DFF_X1 port map( D => B, CK => clk, Q => n10, QN => n14
                           );
   MY_CLK_r_REG251_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n_1385, QN =>
                           n15);
   U2 : AOI22_X1 port map( A1 => n4, A2 => n15, B1 => n13, B2 => n14, ZN => Co)
                           ;
   U5 : XNOR2_X1 port map( A => n14, B => n15, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_392 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_392;

architecture SYN_BEHAVIORAL of FA_392 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n11, n12, n14, n15, n16, n_1386 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => n6, B => n12, ZN => S);
   U4 : NAND2_X1 port map( A1 => n11, A2 => n12, ZN => n5);
   U8 : AOI22_X1 port map( A1 => n5, A2 => n16, B1 => n14, B2 => n15, ZN => Co)
                           ;
   MY_CLK_r_REG510_S1 : DFF_X1 port map( D => A, CK => clk, Q => n12, QN => n14
                           );
   MY_CLK_r_REG252_S1 : DFF_X1 port map( D => B, CK => clk, Q => n11, QN => n15
                           );
   MY_CLK_r_REG174_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n_1386, QN =>
                           n16);
   U1 : XNOR2_X1 port map( A => n15, B => n16, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_393 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_393;

architecture SYN_BEHAVIORAL of FA_393 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n9, n10, n11, n13, n14, n15 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n11, B => n5, ZN => S);
   U2 : XNOR2_X1 port map( A => n10, B => n9, ZN => n5);
   U3 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => n4);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n14, B1 => n13, B2 => n15, ZN => Co)
                           ;
   MY_CLK_r_REG155_S1 : DFF_X1 port map( D => A, CK => clk, Q => n11, QN => n13
                           );
   MY_CLK_r_REG175_S1 : DFF_X1 port map( D => B, CK => clk, Q => n10, QN => n15
                           );
   MY_CLK_r_REG250_S1 : DFF_X1 port map( D => Ci, CK => clk, Q => n9, QN => n14
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_394 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_394;

architecture SYN_BEHAVIORAL of FA_394 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => A, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => Ci, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => A, B2 => B, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_395 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_395;

architecture SYN_BEHAVIORAL of FA_395 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => A, B => n5, ZN => S);
   U3 : XNOR2_X1 port map( A => B, B => Ci, ZN => n5);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_396 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_396;

architecture SYN_BEHAVIORAL of FA_396 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => n6, B => B, ZN => S);
   U4 : XNOR2_X1 port map( A => A, B => Ci, ZN => n6);
   U5 : INV_X1 port map( A => A, ZN => n5);
   U6 : INV_X1 port map( A => B, ZN => n4);
   U7 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n3);
   U8 : OAI21_X1 port map( B1 => n5, B2 => n4, A => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_397 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_397;

architecture SYN_BEHAVIORAL of FA_397 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n8 : std_logic;

begin
   
   U5 : INV_X1 port map( A => Ci, ZN => n4);
   U6 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n3);
   U7 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U1 : AOI21_X1 port map( B1 => n5, B2 => n4, A => n3, ZN => Co);
   U2 : XNOR2_X1 port map( A => n8, B => B, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_398 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_398;

architecture SYN_BEHAVIORAL of FA_398 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => B, B => Ci, ZN => n5);
   U3 : XNOR2_X1 port map( A => n5, B => A, ZN => S);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_399 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_399;

architecture SYN_BEHAVIORAL of FA_399 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   U2 : INV_X1 port map( A => Ci, ZN => n2);
   U3 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U4 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n3);
   U5 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n1);
   U6 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_400 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_400;

architecture SYN_BEHAVIORAL of FA_400 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_401 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_401;

architecture SYN_BEHAVIORAL of FA_401 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_407 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_407;

architecture SYN_BEHAVIORAL of FA_407 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n1, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n1);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n2, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_29 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_29;

architecture SYN_rtl of HA_29 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_409 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_409;

architecture SYN_BEHAVIORAL of FA_409 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : INV_X1 port map( A => Ci, ZN => n7);
   U3 : INV_X1 port map( A => A, ZN => n8);
   U4 : XNOR2_X1 port map( A => B, B => n8, ZN => n5);
   U5 : XNOR2_X1 port map( A => n5, B => n7, ZN => S);
   U6 : AOI21_X1 port map( B1 => n5, B2 => Ci, A => n6, ZN => n4);
   U7 : AND2_X1 port map( A1 => B, A2 => A, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_410 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_410;

architecture SYN_BEHAVIORAL of FA_410 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI21_X1 port map( B1 => Ci, B2 => n5, A => B, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_411 is

   port( B, Ci : in std_logic;  S, Co : out std_logic;  A_BAR : in std_logic);

end FA_411;

architecture SYN_BEHAVIORAL of FA_411 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3, n4, n6 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U2 : OAI22_X1 port map( A1 => n3, A2 => n4, B1 => A_BAR, B2 => n1, ZN => Co)
                           ;
   U3 : XNOR2_X1 port map( A => B, B => n6, ZN => n4);
   U6 : INV_X1 port map( A => A_BAR, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_415 is

   port( A, Ci : in std_logic;  S, Co : out std_logic;  B_BAR : in std_logic);

end FA_415;

architecture SYN_BEHAVIORAL of FA_415 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n6 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => n6, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => B_BAR, ZN => Co)
                           ;
   U5 : INV_X1 port map( A => B_BAR, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_416 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_416;

architecture SYN_BEHAVIORAL of FA_416 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n5, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => Ci, ZN => n5);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : INV_X1 port map( A => B, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_417 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_417;

architecture SYN_BEHAVIORAL of FA_417 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n9, n10, n_1388, n_1389 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n1);
   U5 : OAI21_X1 port map( B1 => A, B2 => B, A => Ci, ZN => n2);
   MY_CLK_r_REG508_S1 : DFF_X1 port map( D => A, CK => clk, Q => n_1388, QN => 
                           n9);
   MY_CLK_r_REG503_S1 : DFF_X1 port map( D => n3, CK => clk, Q => n_1389, QN =>
                           n10);
   U1 : XNOR2_X1 port map( A => n9, B => n10, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_418 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_418;

architecture SYN_BEHAVIORAL of FA_418 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n7, n8, n_1390, n_1391 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n7, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   MY_CLK_r_REG509_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => 
                           n_1390);
   MY_CLK_r_REG501_S1 : DFF_X1 port map( D => n4, CK => clk, Q => n7, QN => 
                           n_1391);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_419 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_419;

architecture SYN_BEHAVIORAL of FA_419 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);
   U2 : XNOR2_X1 port map( A => A, B => n5, ZN => S);
   U3 : XNOR2_X1 port map( A => B, B => Ci, ZN => n5);
   U4 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U5 : INV_X1 port map( A => Ci, ZN => n3);
   U6 : INV_X1 port map( A => A, ZN => n2);
   U7 : INV_X1 port map( A => B, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_420 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_420;

architecture SYN_BEHAVIORAL of FA_420 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n7, n8, n_1392, n_1393 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n8, B => n7, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   MY_CLK_r_REG514_S1 : DFF_X1 port map( D => B, CK => clk, Q => n8, QN => 
                           n_1392);
   MY_CLK_r_REG182_S1 : DFF_X1 port map( D => n4, CK => clk, Q => n7, QN => 
                           n_1393);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_421 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_421;

architecture SYN_BEHAVIORAL of FA_421 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => A, B => n5, ZN => S);
   U3 : XNOR2_X1 port map( A => Ci, B => B, ZN => n5);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_422 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_422;

architecture SYN_BEHAVIORAL of FA_422 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => Ci, B => n5, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : XOR2_X1 port map( A => n3, B => B, Z => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n4);
   U6 : INV_X1 port map( A => B, ZN => n2);
   U7 : OAI22_X1 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_423 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_423;

architecture SYN_BEHAVIORAL of FA_423 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n11, n12, n_1394, n_1395 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n1);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U4 : INV_X1 port map( A => Ci, ZN => n4);
   U5 : INV_X1 port map( A => A, ZN => n3);
   U6 : INV_X1 port map( A => B, ZN => n2);
   U7 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);
   MY_CLK_r_REG519_S1 : DFF_X1 port map( D => A, CK => clk, Q => n_1394, QN => 
                           n11);
   MY_CLK_r_REG512_S1 : DFF_X1 port map( D => n1, CK => clk, Q => n_1395, QN =>
                           n12);
   U1 : XNOR2_X1 port map( A => n11, B => n12, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_424 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_424;

architecture SYN_BEHAVIORAL of FA_424 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => Ci, B => n5, ZN => S);
   U4 : XNOR2_X1 port map( A => B, B => A, ZN => n5);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U6 : INV_X1 port map( A => Ci, ZN => n3);
   U7 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n2);
   U1 : AOI21_X1 port map( B1 => n3, B2 => n4, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_425 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_425;

architecture SYN_BEHAVIORAL of FA_425 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net16020, n1, n2, n3, n_1396 : std_logic;

begin
   
   U2 : NOR2_X1 port map( A1 => B, A2 => Ci, ZN => n1);
   U4 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U5 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U6 : OAI22_X1 port map( A1 => Ci, A2 => A, B1 => B, B2 => A, ZN => n2);
   MY_CLK_r_REG164_S1 : DFF_X1 port map( D => net16020, CK => clk, Q => Co, QN 
                           => n_1396);
   U1 : NOR2_X1 port map( A1 => n2, A2 => n1, ZN => net16020);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_426 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_426;

architecture SYN_BEHAVIORAL of FA_426 is

   component AOI22_X2
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n12, n13, n14, n15, n_1397, n_1398, n_1399, 
      n_1400 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => n7, B => B, ZN => S);
   U4 : XNOR2_X1 port map( A => Ci, B => A, ZN => n7);
   U5 : INV_X1 port map( A => A, ZN => n6);
   U6 : INV_X1 port map( A => B, ZN => n5);
   U7 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n4);
   U8 : INV_X1 port map( A => Ci, ZN => n3);
   MY_CLK_r_REG522_S1 : DFF_X1 port map( D => n6, CK => clk, Q => n15, QN => 
                           n_1397);
   MY_CLK_r_REG517_S1 : DFF_X1 port map( D => n5, CK => clk, Q => n14, QN => 
                           n_1398);
   MY_CLK_r_REG150_S1 : DFF_X1 port map( D => n3, CK => clk, Q => n13, QN => 
                           n_1399);
   MY_CLK_r_REG518_S1 : DFF_X1 port map( D => n4, CK => clk, Q => n12, QN => 
                           n_1400);
   U9 : AOI22_X2 port map( A1 => n15, A2 => n14, B1 => n12, B2 => n13, ZN => Co
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_427 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_427;

architecture SYN_BEHAVIORAL of FA_427 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5 : std_logic;

begin
   
   U4 : XNOR2_X1 port map( A => n5, B => B, ZN => S);
   U5 : XNOR2_X1 port map( A => Ci, B => A, ZN => n5);
   U6 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n3);
   U7 : AOI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n4);
   U1 : NOR2_X1 port map( A1 => n4, A2 => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_428 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_428;

architecture SYN_BEHAVIORAL of FA_428 is

   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n7, n11, n12, n13, n15, n16, n17, n18, n_1401 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => n7, B => Ci, ZN => S);
   U4 : XNOR2_X1 port map( A => A, B => B, ZN => n7);
   U7 : NAND2_X1 port map( A1 => n11, A2 => n13, ZN => n4);
   U8 : INV_X1 port map( A => Ci, ZN => n3);
   MY_CLK_r_REG521_S1 : DFF_X1 port map( D => A, CK => clk, Q => n13, QN => n16
                           );
   MY_CLK_r_REG137_S1 : DFF_X1 port map( D => n3, CK => clk, Q => n12, QN => 
                           n_1401);
   MY_CLK_r_REG520_S1 : DFF_X1 port map( D => B, CK => clk, Q => n11, QN => n15
                           );
   U1 : NAND2_X1 port map( A1 => n16, A2 => n15, ZN => n17);
   U2 : NAND2_X1 port map( A1 => n4, A2 => n12, ZN => n18);
   U5 : AND2_X2 port map( A1 => n18, A2 => n17, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_429 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_429;

architecture SYN_BEHAVIORAL of FA_429 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => n7, B => B, ZN => S);
   U4 : XNOR2_X1 port map( A => Ci, B => A, ZN => n7);
   U5 : INV_X1 port map( A => A, ZN => n6);
   U6 : INV_X1 port map( A => B, ZN => n5);
   U7 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U8 : INV_X1 port map( A => Ci, ZN => n3);
   U9 : AOI22_X1 port map( A1 => n6, A2 => n5, B1 => n4, B2 => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_430 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_430;

architecture SYN_BEHAVIORAL of FA_430 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6 : std_logic;

begin
   
   U2 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);
   U3 : XNOR2_X1 port map( A => n6, B => Ci, ZN => S);
   U4 : XNOR2_X1 port map( A => A, B => B, ZN => n6);
   U5 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n5);
   U6 : INV_X1 port map( A => Ci, ZN => n4);
   U7 : INV_X1 port map( A => A, ZN => n3);
   U8 : INV_X1 port map( A => B, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_431 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in std_logic);

end FA_431;

architecture SYN_BEHAVIORAL of FA_431 is

   component AOI22_X2
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n12, n13, n14, n15, n_1402, n_1403, n_1404, 
      n_1405 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => A, B => Ci, ZN => n7);
   U4 : XNOR2_X1 port map( A => n7, B => B, ZN => S);
   U5 : INV_X1 port map( A => A, ZN => n6);
   U6 : INV_X1 port map( A => B, ZN => n5);
   U7 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U8 : INV_X1 port map( A => Ci, ZN => n3);
   MY_CLK_r_REG135_S1 : DFF_X1 port map( D => n6, CK => clk, Q => n15, QN => 
                           n_1402);
   MY_CLK_r_REG122_S1 : DFF_X1 port map( D => n5, CK => clk, Q => n14, QN => 
                           n_1403);
   MY_CLK_r_REG265_S1 : DFF_X1 port map( D => n3, CK => clk, Q => n13, QN => 
                           n_1404);
   MY_CLK_r_REG115_S1 : DFF_X1 port map( D => n4, CK => clk, Q => n12, QN => 
                           n_1405);
   U1 : AOI22_X2 port map( A1 => n15, A2 => n14, B1 => n12, B2 => n13, ZN => Co
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_432 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_432;

architecture SYN_BEHAVIORAL of FA_432 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n5 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U2 : AOI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U3 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n1);
   U4 : XNOR2_X1 port map( A => A, B => n5, ZN => S);
   U5 : XNOR2_X1 port map( A => Ci, B => B, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_433 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_433;

architecture SYN_BEHAVIORAL of FA_433 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n5, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n5);
   U3 : INV_X1 port map( A => A, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n3);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n2);
   U6 : INV_X1 port map( A => Ci, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_434 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_434;

architecture SYN_BEHAVIORAL of FA_434 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n1, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n1);
   U3 : NOR2_X1 port map( A1 => n3, A2 => n2, ZN => Co);
   U4 : AOI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n3);
   U5 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_437 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_437;

architecture SYN_BEHAVIORAL of FA_437 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_438 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_438;

architecture SYN_BEHAVIORAL of FA_438 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_439 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_439;

architecture SYN_BEHAVIORAL of FA_439 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_440 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_440;

architecture SYN_BEHAVIORAL of FA_440 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : AOI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);
   U4 : INV_X1 port map( A => Ci, ZN => n2);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n3);
   U6 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_441 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_441;

architecture SYN_BEHAVIORAL of FA_441 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n1, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n1);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U4 : INV_X1 port map( A => Ci, ZN => n4);
   U5 : INV_X1 port map( A => A, ZN => n3);
   U6 : INV_X1 port map( A => B, ZN => n2);
   U7 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n3, B2 => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_442 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_442;

architecture SYN_BEHAVIORAL of FA_442 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n1, B => A, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n1);
   U3 : INV_X1 port map( A => A, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n3);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U6 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_443 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_443;

architecture SYN_BEHAVIORAL of FA_443 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n3, B => A, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n3);
   U3 : NOR2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : AOI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U5 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_444 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_444;

architecture SYN_BEHAVIORAL of FA_444 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net24398, net24399, net24400, net24401, n1 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => A, ZN => n1);
   U2 : XNOR2_X1 port map( A => n1, B => B, ZN => S);
   U3 : INV_X1 port map( A => Ci, ZN => net24401);
   U4 : INV_X1 port map( A => A, ZN => net24398);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => net24400);
   U6 : INV_X1 port map( A => B, ZN => net24399);
   U7 : AOI22_X1 port map( A1 => net24398, A2 => net24399, B1 => net24400, B2 
                           => net24401, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_36 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_36;

architecture SYN_rtl of HA_36 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_446 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_446;

architecture SYN_BEHAVIORAL of FA_446 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_448 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_448;

architecture SYN_BEHAVIORAL of FA_448 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n5);
   U3 : XNOR2_X1 port map( A => n5, B => B, ZN => S);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_449 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_449;

architecture SYN_BEHAVIORAL of FA_449 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => Ci, B => n5, ZN => S);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n5);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U7 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_450 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_450;

architecture SYN_BEHAVIORAL of FA_450 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n1);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_451 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_451;

architecture SYN_BEHAVIORAL of FA_451 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => B, ZN => n5);
   U2 : XNOR2_X1 port map( A => n5, B => A, ZN => S);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : INV_X1 port map( A => B, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_452 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_452;

architecture SYN_BEHAVIORAL of FA_452 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => n6, B => Ci, ZN => S);
   U4 : XNOR2_X1 port map( A => B, B => A, ZN => n6);
   U5 : INV_X1 port map( A => A, ZN => n5);
   U6 : INV_X1 port map( A => B, ZN => n4);
   U7 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n3);
   U8 : OAI21_X1 port map( B1 => n5, B2 => n4, A => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_453 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_453;

architecture SYN_BEHAVIORAL of FA_453 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U2 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U3 : INV_X1 port map( A => A, ZN => n2);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_454 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_454;

architecture SYN_BEHAVIORAL of FA_454 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => n5, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => Ci, ZN => n5);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : INV_X1 port map( A => B, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_455 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_455;

architecture SYN_BEHAVIORAL of FA_455 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n5, B => A, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => Ci, ZN => n5);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : INV_X1 port map( A => B, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_457 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_457;

architecture SYN_BEHAVIORAL of FA_457 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_458 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_458;

architecture SYN_BEHAVIORAL of FA_458 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n1, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n1);
   U3 : INV_X1 port map( A => A, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n3);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U6 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_459 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_459;

architecture SYN_BEHAVIORAL of FA_459 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => A, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_460 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_460;

architecture SYN_BEHAVIORAL of FA_460 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => B, B => Ci, ZN => n6);
   U4 : XNOR2_X1 port map( A => n6, B => A, ZN => S);
   U5 : INV_X1 port map( A => A, ZN => n5);
   U6 : INV_X1 port map( A => B, ZN => n4);
   U7 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n3);
   U8 : OAI21_X1 port map( B1 => n5, B2 => n4, A => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_461 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_461;

architecture SYN_BEHAVIORAL of FA_461 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);
   U2 : XNOR2_X1 port map( A => n1, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n1);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U6 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_462 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_462;

architecture SYN_BEHAVIORAL of FA_462 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n3, B => A, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => Ci, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n1);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_463 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_463;

architecture SYN_BEHAVIORAL of FA_463 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => n7, B => A, ZN => S);
   U4 : XNOR2_X1 port map( A => Ci, B => B, ZN => n7);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U6 : INV_X1 port map( A => Ci, ZN => n5);
   U7 : INV_X1 port map( A => A, ZN => n4);
   U8 : INV_X1 port map( A => B, ZN => n3);
   U9 : AOI22_X1 port map( A1 => n6, A2 => n5, B1 => n4, B2 => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_464 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_464;

architecture SYN_BEHAVIORAL of FA_464 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => n6, B => B, ZN => S);
   U4 : XNOR2_X1 port map( A => A, B => Ci, ZN => n6);
   U5 : INV_X1 port map( A => A, ZN => n5);
   U6 : INV_X1 port map( A => B, ZN => n4);
   U7 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n3);
   U8 : OAI21_X1 port map( B1 => n5, B2 => n4, A => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_42 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_42;

architecture SYN_rtl of HA_42 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   C <= B;
   
   U1 : INV_X1 port map( A => B, ZN => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_465 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_465;

architecture SYN_BEHAVIORAL of FA_465 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n6 : std_logic;

begin
   
   U3 : AOI21_X1 port map( B1 => n4, B2 => n3, A => n2, ZN => Co);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U6 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n2);
   U1 : XNOR2_X1 port map( A => Ci, B => n6, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_467 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_467;

architecture SYN_BEHAVIORAL of FA_467 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n3);
   U4 : INV_X1 port map( A => B, ZN => n2);
   U5 : OAI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n1);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n2, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_468 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_468;

architecture SYN_BEHAVIORAL of FA_468 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => S);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U1 : OAI21_X1 port map( B1 => B, B2 => n3, A => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_469 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_469;

architecture SYN_BEHAVIORAL of FA_469 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n5, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n5);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : INV_X1 port map( A => B, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_470 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_470;

architecture SYN_BEHAVIORAL of FA_470 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => B, ZN => S);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U2 : NAND2_X1 port map( A1 => n3, A2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_471 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_471;

architecture SYN_BEHAVIORAL of FA_471 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n2);
   U3 : XOR2_X1 port map( A => n2, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_472 is

   port( B, Ci : in std_logic;  S, Co : out std_logic;  A_BAR : in std_logic);

end FA_472;

architecture SYN_BEHAVIORAL of FA_472 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : XOR2_X1 port map( A => A_BAR, B => B, Z => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => B, ZN => n1);
   U6 : OAI22_X1 port map( A1 => n4, A2 => n3, B1 => A_BAR, B2 => n1, ZN => Co)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_473 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_473;

architecture SYN_BEHAVIORAL of FA_473 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net30856, net30855, net30853, n2, n3 : std_logic;

begin
   
   U2 : NAND2_X1 port map( A1 => A, A2 => B, ZN => net30856);
   U3 : NAND2_X1 port map( A1 => n2, A2 => net30856, ZN => Co);
   U4 : OR2_X1 port map( A1 => net30855, A2 => net30853, ZN => n2);
   U5 : INV_X1 port map( A => Ci, ZN => net30853);
   U6 : XNOR2_X1 port map( A => B, B => A, ZN => n3);
   U7 : XNOR2_X1 port map( A => n3, B => Ci, ZN => S);
   U8 : XNOR2_X1 port map( A => B, B => A, ZN => net30855);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_474 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_474;

architecture SYN_BEHAVIORAL of FA_474 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n5, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => Ci, ZN => n5);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n3);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : INV_X1 port map( A => B, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_475 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_475;

architecture SYN_BEHAVIORAL of FA_475 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n5, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n5);
   U3 : INV_X1 port map( A => A, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n3);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n2);
   U6 : INV_X1 port map( A => Ci, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_476 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_476;

architecture SYN_BEHAVIORAL of FA_476 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => Ci, B => A, ZN => n7);
   U4 : XNOR2_X1 port map( A => n7, B => B, ZN => S);
   U5 : INV_X1 port map( A => A, ZN => n6);
   U6 : INV_X1 port map( A => B, ZN => n5);
   U7 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U8 : INV_X1 port map( A => Ci, ZN => n3);
   U9 : AOI22_X1 port map( A1 => n6, A2 => n5, B1 => n4, B2 => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_477 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_477;

architecture SYN_BEHAVIORAL of FA_477 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n5, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => Ci, ZN => n5);
   U3 : INV_X1 port map( A => A, ZN => n4);
   U4 : INV_X1 port map( A => B, ZN => n3);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n2);
   U6 : INV_X1 port map( A => Ci, ZN => n1);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_478 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_478;

architecture SYN_BEHAVIORAL of FA_478 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => n7, B => B, ZN => S);
   U4 : XNOR2_X1 port map( A => A, B => Ci, ZN => n7);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U6 : INV_X1 port map( A => Ci, ZN => n5);
   U7 : INV_X1 port map( A => A, ZN => n4);
   U8 : INV_X1 port map( A => B, ZN => n3);
   U1 : AOI22_X1 port map( A1 => n6, A2 => n5, B1 => n4, B2 => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_479 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_479;

architecture SYN_BEHAVIORAL of FA_479 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U2 : XNOR2_X1 port map( A => A, B => n5, ZN => S);
   U3 : XNOR2_X1 port map( A => Ci, B => B, ZN => n5);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n3);
   U6 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n2);
   U7 : INV_X1 port map( A => Ci, ZN => n1);
   U1 : AOI22_X1 port map( A1 => n4, A2 => n3, B1 => n2, B2 => n1, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n3, B => A, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => B, ZN => n3);
   U3 : NOR2_X1 port map( A1 => n2, A2 => n1, ZN => Co);
   U4 : AOI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n2);
   U5 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity HA_0 is

   port( A, B : in std_logic;  S, C : out std_logic);

end HA_0;

architecture SYN_rtl of HA_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => C);
   U2 : XOR2_X1 port map( A => B, B => A, Z => S);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity ENC_3 is

   port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
         downto 0);  clk : in std_logic;  p_32_port, p_31_port, p_30_port, 
         p_29_port, p_28_port, p_27_port, p_26_port, p_25_port, p_24_port, 
         p_23_port, p_22_port, p_21_port, p_20_port, p_19_BAR, p_18_port, 
         p_17_port, p_15_port, p_14_port, p_13_port, p_12_port, p_11_port, 
         p_10_port, p_9_port, p_8_port, p_7_port, p_6_port, p_5_port, p_3_port,
         p_2_port, p_1_port, p_0_port, p_4_BAR, p_16_BAR : out std_logic);

end ENC_3;

architecture SYN_beh of ENC_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal n26, n29, n30, n31, n32, n33, n34, n36, n59, n61, n62, n63, n64, n66,
      n133, n134, n135, n142, n143, n144, n145, n151, n152, n153, n160, n162, 
      n163, n164, n169, n178, n179, n180, n187, n188, n189, n190, n191, n192, 
      n193, n223, n224, n225, n_1461, n_1462, n_1463 : std_logic;

begin
   
   U38 : MUX2_X1 port map( A => n160, B => n145, S => A(0), Z => n26);
   U40 : MUX2_X1 port map( A => n162, B => n190, S => A(0), Z => n30);
   U43 : MUX2_X1 port map( A => n225, B => n144, S => A(1), Z => n29);
   U45 : MUX2_X1 port map( A => n169, B => n191, S => A(1), Z => n32);
   U46 : MUX2_X1 port map( A => n224, B => n143, S => A(2), Z => n31);
   U48 : MUX2_X1 port map( A => n163, B => n192, S => A(2), Z => n34);
   U49 : MUX2_X1 port map( A => n223, B => n142, S => A(3), Z => n33);
   U51 : MUX2_X1 port map( A => n164, B => n193, S => A(3), Z => n36);
   U88 : MUX2_X1 port map( A => n135, B => n153, S => A(16), Z => n59);
   U90 : MUX2_X1 port map( A => n178, B => n187, S => A(16), Z => n62);
   U91 : MUX2_X1 port map( A => n134, B => n152, S => A(17), Z => n61);
   U93 : MUX2_X1 port map( A => n179, B => n188, S => A(17), Z => n64);
   U94 : MUX2_X1 port map( A => n133, B => n151, S => A(18), Z => n63);
   U96 : MUX2_X1 port map( A => n180, B => n189, S => A(18), Z => n66);
   MY_CLK_r_REG460_S1 : DFF_X1 port map( D => n36, CK => clk, Q => p_4_BAR, QN 
                           => n_1461);
   MY_CLK_r_REG320_S1 : DFF_X1 port map( D => n59, CK => clk, Q => p_16_BAR, QN
                           => n_1462);
   MY_CLK_r_REG300_S1 : DFF_X1 port map( D => n66, CK => clk, Q => p_19_BAR, QN
                           => n_1463);
   n133 <= '1';
   n134 <= '1';
   n135 <= '1';
   n142 <= '1';
   n143 <= '1';
   n144 <= '1';
   n145 <= '1';
   n151 <= '1';
   n152 <= '1';
   n153 <= '1';
   n160 <= '1';
   n162 <= '1';
   n163 <= '1';
   n164 <= '1';
   n169 <= '1';
   n178 <= '1';
   n179 <= '1';
   n180 <= '1';
   n187 <= '1';
   n188 <= '1';
   n189 <= '1';
   n190 <= '1';
   n191 <= '1';
   n192 <= '1';
   n193 <= '1';
   n223 <= '1';
   n224 <= '1';
   n225 <= '1';
   U3 : NAND2_X1 port map( A1 => n34, A2 => n33, ZN => p_3_port);
   U4 : NAND2_X1 port map( A1 => n32, A2 => n31, ZN => p_2_port);
   U5 : NAND2_X1 port map( A1 => n64, A2 => n63, ZN => p_18_port);
   U6 : NAND2_X1 port map( A1 => n62, A2 => n61, ZN => p_17_port);
   U7 : NAND2_X1 port map( A1 => n30, A2 => n29, ZN => p_1_port);
   U8 : INV_X1 port map( A => n26, ZN => p_0_port);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity ENC_4 is

   port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
         downto 0);  clk : in std_logic;  p_32_port, p_31_port, p_30_port, 
         p_29_port, p_28_port, p_27_port, p_26_port, p_25_port, p_24_port, 
         p_23_port, p_22_port, p_21_port, p_20_port, p_19_port, p_18_port, 
         p_17_BAR, p_16_port, p_15_port, p_14_port, p_13_port, p_12_port, 
         p_11_port, p_10_port, p_9_port, p_8_port, p_7_port, p_5_port, p_4_port
         , p_3_port, p_2_port, p_1_port, p_0_port, p_6_BAR : out std_logic);

end ENC_4;

architecture SYN_beh of ENC_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal n26, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n40, n62, n63,
      n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n76, n126, n127, 
      n128, n129, n130, n131, n132, n138, n139, n140, n141, n142, n143, n144, 
      n145, n146, n147, n155, n156, n157, n158, n160, n161, n162, n163, n164, 
      n167, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, 
      n188, n189, n190, n191, n204, n205, n206, n207, n208, n219, n220, n221, 
      n222, n223, n_1504, n_1505 : std_logic;

begin
   
   U7 : MUX2_X1 port map( A => n183, B => n208, S => A(21), Z => n72);
   U8 : MUX2_X1 port map( A => n182, B => n207, S => A(22), Z => n74);
   U9 : MUX2_X1 port map( A => n181, B => n206, S => A(23), Z => n76);
   U36 : MUX2_X1 port map( A => n158, B => n143, S => A(0), Z => n26);
   U38 : MUX2_X1 port map( A => n160, B => n205, S => A(0), Z => n30);
   U41 : MUX2_X1 port map( A => n223, B => n142, S => A(1), Z => n29);
   U43 : MUX2_X1 port map( A => n167, B => n187, S => A(1), Z => n32);
   U44 : MUX2_X1 port map( A => n222, B => n141, S => A(2), Z => n31);
   U46 : MUX2_X1 port map( A => n161, B => n188, S => A(2), Z => n34);
   U47 : MUX2_X1 port map( A => n221, B => n140, S => A(3), Z => n33);
   U49 : MUX2_X1 port map( A => n162, B => n189, S => A(3), Z => n36);
   U50 : MUX2_X1 port map( A => n220, B => n139, S => A(4), Z => n35);
   U52 : MUX2_X1 port map( A => n163, B => n190, S => A(4), Z => n38);
   U53 : MUX2_X1 port map( A => n219, B => n138, S => A(5), Z => n37);
   U55 : MUX2_X1 port map( A => n164, B => n191, S => A(5), Z => n40);
   U88 : MUX2_X1 port map( A => n132, B => n147, S => A(17), Z => n62);
   U91 : MUX2_X1 port map( A => n177, B => n184, S => A(17), Z => n64);
   U92 : MUX2_X1 port map( A => n131, B => n146, S => A(18), Z => n63);
   U94 : MUX2_X1 port map( A => n178, B => n185, S => A(18), Z => n66);
   U95 : MUX2_X1 port map( A => n130, B => n145, S => A(19), Z => n65);
   U97 : MUX2_X1 port map( A => n179, B => n186, S => A(19), Z => n68);
   U98 : MUX2_X1 port map( A => n129, B => n144, S => A(20), Z => n67);
   U100 : MUX2_X1 port map( A => n180, B => n204, S => A(20), Z => n70);
   U101 : MUX2_X1 port map( A => n128, B => n157, S => A(21), Z => n69);
   U103 : MUX2_X1 port map( A => n127, B => n156, S => A(22), Z => n71);
   U105 : MUX2_X1 port map( A => n126, B => n155, S => A(23), Z => n73);
   MY_CLK_r_REG433_S1 : DFF_X1 port map( D => n40, CK => clk, Q => p_6_BAR, QN 
                           => n_1504);
   MY_CLK_r_REG308_S1 : DFF_X1 port map( D => n62, CK => clk, Q => p_17_BAR, QN
                           => n_1505);
   n126 <= '1';
   n127 <= '1';
   n128 <= '1';
   n129 <= '1';
   n130 <= '1';
   n131 <= '1';
   n132 <= '1';
   n138 <= '1';
   n139 <= '1';
   n140 <= '1';
   n141 <= '1';
   n142 <= '1';
   n143 <= '1';
   n144 <= '1';
   n145 <= '1';
   n146 <= '1';
   n147 <= '1';
   n155 <= '1';
   n156 <= '1';
   n157 <= '1';
   n158 <= '1';
   n160 <= '1';
   n161 <= '1';
   n162 <= '1';
   n163 <= '1';
   n164 <= '1';
   n167 <= '1';
   n177 <= '1';
   n178 <= '1';
   n179 <= '1';
   n180 <= '1';
   n181 <= '1';
   n182 <= '1';
   n183 <= '1';
   n184 <= '1';
   n185 <= '1';
   n186 <= '1';
   n187 <= '1';
   n188 <= '1';
   n189 <= '1';
   n190 <= '1';
   n191 <= '1';
   n204 <= '1';
   n205 <= '1';
   n206 <= '1';
   n207 <= '1';
   n208 <= '1';
   n219 <= '1';
   n220 <= '1';
   n221 <= '1';
   n222 <= '1';
   n223 <= '1';
   U3 : NAND2_X1 port map( A1 => n36, A2 => n35, ZN => p_4_port);
   U4 : NAND2_X1 port map( A1 => n38, A2 => n37, ZN => p_5_port);
   U5 : NAND2_X1 port map( A1 => n32, A2 => n31, ZN => p_2_port);
   U6 : NAND2_X1 port map( A1 => n34, A2 => n33, ZN => p_3_port);
   U10 : NAND2_X1 port map( A1 => n66, A2 => n65, ZN => p_19_port);
   U11 : NAND2_X1 port map( A1 => n64, A2 => n63, ZN => p_18_port);
   U12 : NAND2_X1 port map( A1 => n30, A2 => n29, ZN => p_1_port);
   U13 : NAND2_X1 port map( A1 => n74, A2 => n73, ZN => p_23_port);
   U14 : NAND2_X1 port map( A1 => n72, A2 => n71, ZN => p_22_port);
   U15 : NAND2_X1 port map( A1 => n70, A2 => n69, ZN => p_21_port);
   U16 : NAND2_X1 port map( A1 => n68, A2 => n67, ZN => p_20_port);
   U17 : INV_X1 port map( A => n76, ZN => p_24_port);
   U18 : INV_X1 port map( A => n26, ZN => p_0_port);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity ENC_5 is

   port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
         downto 0);  p : out std_logic_vector (32 downto 0));

end ENC_5;

architecture SYN_beh of ENC_5 is

   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
      n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51
      , n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, 
      n66, n67, n68, n69, n70, n71, n73, n75, n77, n79, n81, n83, n84, n90, n96
      , n97 : std_logic;

begin
   
   U17 : MUX2_X1 port map( A => n96, B => n96, S => A(23), Z => n70);
   U37 : MUX2_X1 port map( A => n96, B => n96, S => A(0), Z => n24);
   U42 : MUX2_X1 port map( A => n96, B => n96, S => A(1), Z => n26);
   U45 : MUX2_X1 port map( A => n96, B => n96, S => A(2), Z => n28);
   U48 : MUX2_X1 port map( A => n96, B => n96, S => A(3), Z => n30);
   U51 : MUX2_X1 port map( A => n96, B => n96, S => A(4), Z => n32);
   U54 : MUX2_X1 port map( A => n96, B => n96, S => A(5), Z => n34);
   U57 : MUX2_X1 port map( A => n96, B => n96, S => A(6), Z => n36);
   U60 : MUX2_X1 port map( A => n96, B => n96, S => A(7), Z => n38);
   U63 : MUX2_X1 port map( A => n96, B => n96, S => A(8), Z => n40);
   U66 : MUX2_X1 port map( A => n96, B => n96, S => A(9), Z => n42);
   U69 : MUX2_X1 port map( A => n96, B => n96, S => A(10), Z => n44);
   U72 : MUX2_X1 port map( A => n96, B => n96, S => A(11), Z => n46);
   U75 : MUX2_X1 port map( A => n96, B => n96, S => A(12), Z => n48);
   U78 : MUX2_X1 port map( A => n96, B => n96, S => A(13), Z => n50);
   U81 : MUX2_X1 port map( A => n96, B => n96, S => A(14), Z => n52);
   U84 : MUX2_X1 port map( A => n96, B => n96, S => A(15), Z => n54);
   U87 : MUX2_X1 port map( A => n96, B => n96, S => A(16), Z => n56);
   U90 : MUX2_X1 port map( A => n96, B => n96, S => A(17), Z => n58);
   U93 : MUX2_X1 port map( A => n96, B => n96, S => A(18), Z => n60);
   U96 : MUX2_X1 port map( A => n96, B => n96, S => A(19), Z => n62);
   U100 : MUX2_X1 port map( A => n96, B => n96, S => A(20), Z => n63);
   U102 : MUX2_X1 port map( A => n96, B => n96, S => A(21), Z => n66);
   U105 : MUX2_X1 port map( A => n96, B => n96, S => A(22), Z => n68);
   U108 : MUX2_X1 port map( A => n96, B => n83, S => n97, Z => n69);
   U110 : MUX2_X1 port map( A => n96, B => n83, S => n97, Z => n71);
   U112 : MUX2_X1 port map( A => n96, B => n83, S => n97, Z => n73);
   U114 : MUX2_X1 port map( A => n96, B => n83, S => n97, Z => n75);
   U116 : MUX2_X1 port map( A => n96, B => n83, S => n97, Z => n77);
   U118 : MUX2_X1 port map( A => n96, B => n83, S => n97, Z => n79);
   U120 : MUX2_X1 port map( A => n96, B => n83, S => n97, Z => n81);
   U122 : MUX2_X1 port map( A => n96, B => n83, S => n97, Z => n84);
   U5 : NAND2_X1 port map( A1 => n27, A2 => n28, ZN => p(3));
   U6 : NAND2_X1 port map( A1 => n30, A2 => n29, ZN => p(4));
   U7 : NAND2_X1 port map( A1 => n36, A2 => n35, ZN => p(7));
   U8 : NAND2_X1 port map( A1 => n34, A2 => n33, ZN => p(6));
   U9 : NAND2_X1 port map( A1 => A(2), A2 => n90, ZN => n25);
   U10 : NAND2_X1 port map( A1 => A(4), A2 => n90, ZN => n29);
   U11 : NAND2_X1 port map( A1 => A(20), A2 => n90, ZN => n61);
   U12 : NAND2_X1 port map( A1 => A(18), A2 => n90, ZN => n57);
   U13 : NAND2_X1 port map( A1 => A(17), A2 => n90, ZN => n55);
   U14 : NAND2_X1 port map( A1 => A(13), A2 => n90, ZN => n47);
   U15 : NAND2_X1 port map( A1 => A(5), A2 => n90, ZN => n31);
   U16 : NAND2_X1 port map( A1 => A(21), A2 => n90, ZN => n64);
   U18 : NAND2_X1 port map( A1 => A(12), A2 => n90, ZN => n45);
   U19 : NAND2_X1 port map( A1 => A(6), A2 => n90, ZN => n33);
   U20 : NAND2_X1 port map( A1 => n32, A2 => n31, ZN => p(5));
   U21 : NAND2_X1 port map( A1 => A(1), A2 => n90, ZN => n23);
   U22 : NAND2_X1 port map( A1 => n61, A2 => n62, ZN => p(20));
   U23 : NAND2_X1 port map( A1 => A(19), A2 => n90, ZN => n59);
   U24 : NAND2_X1 port map( A1 => A(16), A2 => n90, ZN => n53);
   U25 : NAND2_X1 port map( A1 => n46, A2 => n45, ZN => p(12));
   U26 : NAND2_X1 port map( A1 => A(23), A2 => b(0), ZN => n67);
   U27 : NAND2_X1 port map( A1 => A(8), A2 => n90, ZN => n37);
   U28 : NAND2_X1 port map( A1 => n26, A2 => n25, ZN => p(2));
   U29 : NAND2_X1 port map( A1 => n24, A2 => n23, ZN => p(1));
   U30 : NAND2_X1 port map( A1 => n48, A2 => n47, ZN => p(13));
   U31 : NAND2_X1 port map( A1 => n68, A2 => n67, ZN => p(23));
   U32 : NAND2_X1 port map( A1 => n38, A2 => n37, ZN => p(8));
   U33 : AND2_X1 port map( A1 => A(0), A2 => n90, ZN => p(0));
   U34 : NAND2_X1 port map( A1 => A(7), A2 => n90, ZN => n35);
   U35 : NAND2_X1 port map( A1 => n64, A2 => n63, ZN => p(21));
   U36 : NAND2_X1 port map( A1 => n58, A2 => n57, ZN => p(18));
   U38 : NAND2_X1 port map( A1 => n54, A2 => n53, ZN => p(16));
   U39 : NAND2_X1 port map( A1 => n56, A2 => n55, ZN => p(17));
   U40 : NAND2_X1 port map( A1 => n60, A2 => n59, ZN => p(19));
   U43 : NAND2_X1 port map( A1 => A(3), A2 => n90, ZN => n27);
   U44 : INV_X1 port map( A => b(0), ZN => n83);
   U46 : NAND2_X1 port map( A1 => n40, A2 => n39, ZN => p(9));
   U47 : NAND2_X1 port map( A1 => n44, A2 => n43, ZN => p(11));
   U49 : NAND2_X1 port map( A1 => n42, A2 => n41, ZN => p(10));
   U50 : NAND2_X1 port map( A1 => n50, A2 => n49, ZN => p(14));
   U52 : NAND2_X1 port map( A1 => n52, A2 => n51, ZN => p(15));
   U53 : NAND2_X1 port map( A1 => n66, A2 => n65, ZN => p(22));
   U55 : INV_X1 port map( A => n71, ZN => p(25));
   U56 : INV_X1 port map( A => n73, ZN => p(26));
   U58 : INV_X1 port map( A => n75, ZN => p(27));
   U59 : INV_X1 port map( A => n77, ZN => p(28));
   U61 : INV_X1 port map( A => n79, ZN => p(29));
   U62 : INV_X1 port map( A => n81, ZN => p(30));
   U64 : INV_X1 port map( A => n84, ZN => p(31));
   U65 : NAND2_X1 port map( A1 => A(9), A2 => n90, ZN => n39);
   U67 : NAND2_X1 port map( A1 => A(10), A2 => n90, ZN => n41);
   U70 : NAND2_X1 port map( A1 => A(11), A2 => n90, ZN => n43);
   U71 : NAND2_X1 port map( A1 => A(14), A2 => n90, ZN => n49);
   U73 : NAND2_X1 port map( A1 => A(15), A2 => n90, ZN => n51);
   U76 : NAND2_X1 port map( A1 => A(22), A2 => n90, ZN => n65);
   U77 : NAND2_X1 port map( A1 => n70, A2 => n69, ZN => p(24));
   n96 <= '1';
   n97 <= '0';
   U3 : INV_X2 port map( A => n83, ZN => n90);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity ENC_6 is

   port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
         downto 0);  p : out std_logic_vector (32 downto 0));

end ENC_6;

architecture SYN_beh of ENC_6 is

   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X3
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n6, n8, n9, n12, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, 
      n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42
      , n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, 
      n86, n87, n88, n89, n91, n92, n94, n95, n96, n97, n98, n99, n100 : 
      std_logic;

begin
   
   U13 : BUF_X1 port map( A => n6, Z => n8);
   U15 : MUX2_X1 port map( A => n12, B => n89, S => n100, Z => n76);
   U16 : MUX2_X1 port map( A => n12, B => n89, S => n100, Z => n78);
   U17 : MUX2_X1 port map( A => n12, B => n89, S => n100, Z => n80);
   U18 : MUX2_X1 port map( A => n91, B => n89, S => n100, Z => n82);
   U19 : MUX2_X1 port map( A => n91, B => n89, S => n100, Z => n86);
   U20 : MUX2_X1 port map( A => n88, B => n89, S => n100, Z => n74);
   U26 : INV_X1 port map( A => n94, ZN => n21);
   U27 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n20);
   U30 : NAND3_X1 port map( A1 => b(2), A2 => n97, A3 => n98, ZN => n88);
   U31 : NAND2_X1 port map( A1 => b(2), A2 => n20, ZN => n22);
   U32 : MUX2_X1 port map( A => n95, B => n83, S => A(0), Z => n19);
   U33 : OAI211_X1 port map( C1 => n21, C2 => n20, A => n91, B => n19, ZN => 
                           p(0));
   U35 : MUX2_X1 port map( A => n91, B => n89, S => A(0), Z => n24);
   U36 : NAND2_X1 port map( A1 => n22, A2 => b(2), ZN => n85);
   U38 : MUX2_X1 port map( A => n92, B => n83, S => A(1), Z => n23);
   U39 : NAND3_X1 port map( A1 => n24, A2 => n6, A3 => n23, ZN => p(1));
   U40 : MUX2_X1 port map( A => n92, B => n83, S => A(2), Z => n26);
   U41 : MUX2_X1 port map( A => n91, B => n89, S => A(1), Z => n25);
   U42 : NAND3_X1 port map( A1 => n26, A2 => n8, A3 => n25, ZN => p(2));
   U43 : MUX2_X1 port map( A => n91, B => n89, S => A(2), Z => n28);
   U44 : MUX2_X1 port map( A => n9, B => n83, S => A(3), Z => n27);
   U45 : NAND3_X1 port map( A1 => n28, A2 => n8, A3 => n27, ZN => p(3));
   U46 : MUX2_X1 port map( A => n91, B => n89, S => A(3), Z => n30);
   U47 : MUX2_X1 port map( A => n92, B => n83, S => A(4), Z => n29);
   U48 : NAND3_X1 port map( A1 => n29, A2 => n8, A3 => n30, ZN => p(4));
   U49 : MUX2_X1 port map( A => n9, B => n83, S => A(5), Z => n32);
   U50 : MUX2_X1 port map( A => n91, B => n89, S => A(4), Z => n31);
   U51 : NAND3_X1 port map( A1 => n32, A2 => n8, A3 => n31, ZN => p(5));
   U52 : MUX2_X1 port map( A => n91, B => n89, S => A(5), Z => n34);
   U53 : MUX2_X1 port map( A => n92, B => n83, S => A(6), Z => n33);
   U54 : NAND3_X1 port map( A1 => n34, A2 => n6, A3 => n33, ZN => p(6));
   U55 : MUX2_X1 port map( A => n91, B => n89, S => A(6), Z => n36);
   U56 : MUX2_X1 port map( A => n92, B => n83, S => A(7), Z => n35);
   U57 : NAND3_X1 port map( A1 => n36, A2 => n8, A3 => n35, ZN => p(7));
   U58 : MUX2_X1 port map( A => n12, B => n89, S => A(7), Z => n38);
   U59 : MUX2_X1 port map( A => n92, B => n83, S => A(8), Z => n37);
   U60 : NAND3_X1 port map( A1 => n38, A2 => n8, A3 => n37, ZN => p(8));
   U61 : MUX2_X1 port map( A => n91, B => n89, S => A(8), Z => n40);
   U62 : MUX2_X1 port map( A => n92, B => n83, S => A(9), Z => n39);
   U63 : NAND3_X1 port map( A1 => n39, A2 => n8, A3 => n40, ZN => p(9));
   U64 : MUX2_X1 port map( A => n92, B => n83, S => A(10), Z => n42);
   U65 : MUX2_X1 port map( A => n91, B => n89, S => A(9), Z => n41);
   U66 : NAND3_X1 port map( A1 => n42, A2 => n8, A3 => n41, ZN => p(10));
   U67 : MUX2_X1 port map( A => n91, B => n89, S => A(10), Z => n44);
   U68 : MUX2_X1 port map( A => n9, B => n83, S => A(11), Z => n43);
   U69 : NAND3_X1 port map( A1 => n44, A2 => n8, A3 => n43, ZN => p(11));
   U70 : MUX2_X1 port map( A => n91, B => n89, S => A(11), Z => n46);
   U71 : MUX2_X1 port map( A => n9, B => n83, S => A(12), Z => n45);
   U72 : NAND3_X1 port map( A1 => n46, A2 => n8, A3 => n45, ZN => p(12));
   U73 : MUX2_X1 port map( A => n92, B => n83, S => A(13), Z => n48);
   U74 : MUX2_X1 port map( A => n91, B => n89, S => A(12), Z => n47);
   U75 : NAND3_X1 port map( A1 => n48, A2 => n47, A3 => n6, ZN => p(13));
   U76 : MUX2_X1 port map( A => n91, B => n89, S => A(13), Z => n50);
   U77 : MUX2_X1 port map( A => n9, B => n83, S => A(14), Z => n49);
   U78 : NAND3_X1 port map( A1 => n50, A2 => n8, A3 => n49, ZN => p(14));
   U79 : MUX2_X1 port map( A => n12, B => n89, S => A(14), Z => n52);
   U80 : MUX2_X1 port map( A => n92, B => n83, S => A(15), Z => n51);
   U81 : NAND3_X1 port map( A1 => n52, A2 => n8, A3 => n51, ZN => p(15));
   U82 : MUX2_X1 port map( A => n12, B => n89, S => A(15), Z => n54);
   U83 : MUX2_X1 port map( A => n92, B => n83, S => A(16), Z => n53);
   U84 : NAND3_X1 port map( A1 => n53, A2 => n8, A3 => n54, ZN => p(16));
   U85 : MUX2_X1 port map( A => n12, B => n89, S => A(16), Z => n56);
   U86 : MUX2_X1 port map( A => n9, B => n83, S => A(17), Z => n55);
   U87 : NAND3_X1 port map( A1 => n55, A2 => n8, A3 => n56, ZN => p(17));
   U88 : MUX2_X1 port map( A => n12, B => n89, S => A(17), Z => n58);
   U89 : MUX2_X1 port map( A => n9, B => n83, S => A(18), Z => n57);
   U90 : NAND3_X1 port map( A1 => n57, A2 => n8, A3 => n58, ZN => p(18));
   U91 : MUX2_X1 port map( A => n12, B => n89, S => A(18), Z => n60);
   U92 : MUX2_X1 port map( A => n9, B => n83, S => A(19), Z => n59);
   U93 : NAND3_X1 port map( A1 => n59, A2 => n6, A3 => n60, ZN => p(19));
   U94 : MUX2_X1 port map( A => n9, B => n83, S => A(20), Z => n62);
   U95 : MUX2_X1 port map( A => n12, B => n89, S => A(19), Z => n61);
   U96 : NAND3_X1 port map( A1 => n62, A2 => n8, A3 => n61, ZN => p(20));
   U97 : MUX2_X1 port map( A => n12, B => n89, S => A(20), Z => n64);
   U98 : MUX2_X1 port map( A => n9, B => n83, S => A(21), Z => n63);
   U99 : NAND3_X1 port map( A1 => n63, A2 => n8, A3 => n64, ZN => p(21));
   U100 : MUX2_X1 port map( A => n12, B => n89, S => A(21), Z => n66);
   U101 : MUX2_X1 port map( A => n9, B => n83, S => A(22), Z => n65);
   U102 : NAND3_X1 port map( A1 => n65, A2 => n6, A3 => n66, ZN => p(22));
   U103 : MUX2_X1 port map( A => n12, B => n89, S => A(22), Z => n68);
   U104 : MUX2_X1 port map( A => n9, B => n83, S => A(23), Z => n67);
   U105 : NAND3_X1 port map( A1 => n68, A2 => n6, A3 => n67, ZN => p(23));
   U106 : MUX2_X1 port map( A => n12, B => n89, S => A(23), Z => n70);
   U107 : MUX2_X1 port map( A => n9, B => n83, S => n100, Z => n69);
   U108 : NAND3_X1 port map( A1 => n70, A2 => n6, A3 => n69, ZN => p(24));
   U109 : MUX2_X1 port map( A => n88, B => n89, S => n100, Z => n72);
   U110 : MUX2_X1 port map( A => n87, B => n83, S => n100, Z => n71);
   U112 : MUX2_X1 port map( A => n87, B => n83, S => n100, Z => n73);
   U113 : NAND3_X1 port map( A1 => n74, A2 => n85, A3 => n73, ZN => p(26));
   U114 : MUX2_X1 port map( A => n9, B => n83, S => n100, Z => n75);
   U115 : NAND3_X1 port map( A1 => n76, A2 => n6, A3 => n75, ZN => p(27));
   U116 : MUX2_X1 port map( A => n9, B => n83, S => n100, Z => n77);
   U117 : NAND3_X1 port map( A1 => n78, A2 => n6, A3 => n77, ZN => p(28));
   U118 : MUX2_X1 port map( A => n9, B => n83, S => n100, Z => n79);
   U119 : NAND3_X1 port map( A1 => n80, A2 => n6, A3 => n79, ZN => p(29));
   U120 : MUX2_X1 port map( A => n9, B => n83, S => n100, Z => n81);
   U121 : NAND3_X1 port map( A1 => n82, A2 => n6, A3 => n81, ZN => p(30));
   U122 : MUX2_X1 port map( A => n9, B => n83, S => n100, Z => n84);
   U123 : NAND3_X1 port map( A1 => n86, A2 => n84, A3 => n8, ZN => p(31));
   U124 : OAI221_X1 port map( B1 => n99, B2 => n89, C1 => n100, C2 => n91, A =>
                           n9, ZN => p(32));
   U4 : BUF_X2 port map( A => n85, Z => n6);
   U3 : CLKBUF_X2 port map( A => n88, Z => n12);
   U6 : BUF_X1 port map( A => n12, Z => n91);
   U7 : CLKBUF_X3 port map( A => n87, Z => n9);
   U8 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n89);
   U9 : BUF_X1 port map( A => n9, Z => n92);
   U14 : BUF_X1 port map( A => b(2), Z => n94);
   U21 : NAND2_X1 port map( A1 => n98, A2 => n97, ZN => n96);
   U22 : XNOR2_X1 port map( A => b(1), B => b(0), ZN => n18);
   U24 : INV_X1 port map( A => b(0), ZN => n97);
   U25 : INV_X1 port map( A => b(1), ZN => n98);
   U29 : NAND2_X1 port map( A1 => n94, A2 => n20, ZN => n95);
   U34 : NAND2_X1 port map( A1 => b(2), A2 => n96, ZN => n87);
   U37 : NAND3_X1 port map( A1 => n71, A2 => n72, A3 => n85, ZN => p(25));
   n99 <= '1';
   n100 <= '0';
   U5 : OR2_X2 port map( A1 => n94, A2 => n18, ZN => n83);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity ENC_7 is

   port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
         downto 0);  p : out std_logic_vector (32 downto 0));

end ENC_7;

architecture SYN_beh of ENC_7 is

   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X2
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X3
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n8, n9, n10, n12, n13, n20, n21, n22, n23, n24, n25, n26, n27
      , n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, 
      n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56
      , n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, 
      n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85
      , n86, n87, n88, n89, n91, n92, n93, n95, n96, n97, n98, n99, n100, n101,
      n102, n103, n104 : std_logic;

begin
   
   U17 : MUX2_X1 port map( A => n92, B => n95, S => n98, Z => n85);
   U18 : MUX2_X1 port map( A => n13, B => n95, S => n98, Z => n91);
   U19 : MUX2_X1 port map( A => n92, B => n95, S => n98, Z => n83);
   U26 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n93);
   U29 : NAND3_X1 port map( A1 => b(2), A2 => n24, A3 => n23, ZN => n92);
   U30 : NAND2_X1 port map( A1 => b(2), A2 => n93, ZN => n25);
   U33 : MUX2_X1 port map( A => n25, B => n88, S => A(0), Z => n21);
   U34 : OAI211_X1 port map( C1 => n22, C2 => n95, A => n13, B => n21, ZN => 
                           p(0));
   U35 : MUX2_X1 port map( A => n13, B => n95, S => A(0), Z => n27);
   U38 : MUX2_X1 port map( A => n12, B => n88, S => A(1), Z => n26);
   U39 : NAND3_X1 port map( A1 => n27, A2 => n8, A3 => n26, ZN => p(1));
   U40 : MUX2_X1 port map( A => n13, B => n95, S => A(1), Z => n29);
   U41 : MUX2_X1 port map( A => n12, B => n88, S => A(2), Z => n28);
   U42 : NAND3_X1 port map( A1 => n29, A2 => n8, A3 => n28, ZN => p(2));
   U43 : MUX2_X1 port map( A => n13, B => n95, S => A(2), Z => n31);
   U44 : MUX2_X1 port map( A => n12, B => n88, S => A(3), Z => n30);
   U45 : NAND3_X1 port map( A1 => n31, A2 => n9, A3 => n30, ZN => p(3));
   U46 : MUX2_X1 port map( A => n13, B => n95, S => A(3), Z => n33);
   U48 : NAND3_X1 port map( A1 => n33, A2 => n9, A3 => n32, ZN => p(4));
   U49 : MUX2_X1 port map( A => n12, B => n88, S => A(5), Z => n35);
   U50 : MUX2_X1 port map( A => n13, B => n95, S => A(4), Z => n34);
   U51 : NAND3_X1 port map( A1 => n35, A2 => n10, A3 => n34, ZN => p(5));
   U52 : MUX2_X1 port map( A => n13, B => n95, S => A(5), Z => n37);
   U53 : MUX2_X1 port map( A => n12, B => n88, S => A(6), Z => n36);
   U54 : NAND3_X1 port map( A1 => n37, A2 => n10, A3 => n36, ZN => p(6));
   U55 : MUX2_X1 port map( A => n12, B => n88, S => A(7), Z => n39);
   U56 : MUX2_X1 port map( A => n13, B => n95, S => A(6), Z => n38);
   U57 : NAND3_X1 port map( A1 => n39, A2 => n10, A3 => n38, ZN => p(7));
   U58 : MUX2_X1 port map( A => n12, B => n88, S => A(8), Z => n41);
   U59 : MUX2_X1 port map( A => n13, B => n95, S => A(7), Z => n40);
   U60 : NAND3_X1 port map( A1 => n10, A2 => n41, A3 => n40, ZN => p(8));
   U61 : MUX2_X1 port map( A => n13, B => n95, S => A(8), Z => n43);
   U63 : NAND3_X1 port map( A1 => n43, A2 => n8, A3 => n42, ZN => p(9));
   U64 : MUX2_X1 port map( A => n13, B => n95, S => A(9), Z => n47);
   U65 : NAND3_X1 port map( A1 => n44, A2 => n95, A3 => n88, ZN => n45);
   U66 : MUX2_X1 port map( A => n45, B => n88, S => A(10), Z => n46);
   U67 : NAND3_X1 port map( A1 => n47, A2 => n8, A3 => n46, ZN => p(10));
   U68 : MUX2_X1 port map( A => n13, B => n95, S => A(10), Z => n49);
   U69 : MUX2_X1 port map( A => n12, B => n88, S => A(11), Z => n48);
   U70 : NAND3_X1 port map( A1 => n49, A2 => n8, A3 => n48, ZN => p(11));
   U71 : MUX2_X1 port map( A => n13, B => n95, S => A(11), Z => n51);
   U72 : MUX2_X1 port map( A => n12, B => n88, S => A(12), Z => n50);
   U73 : NAND3_X1 port map( A1 => n51, A2 => n10, A3 => n50, ZN => p(12));
   U74 : MUX2_X1 port map( A => n13, B => n95, S => A(12), Z => n53);
   U75 : MUX2_X1 port map( A => n12, B => n88, S => A(13), Z => n52);
   U76 : NAND3_X1 port map( A1 => n53, A2 => n9, A3 => n52, ZN => p(13));
   U77 : MUX2_X1 port map( A => n13, B => n95, S => A(13), Z => n55);
   U78 : MUX2_X1 port map( A => n12, B => n88, S => A(14), Z => n54);
   U79 : NAND3_X1 port map( A1 => n55, A2 => n9, A3 => n54, ZN => p(14));
   U80 : MUX2_X1 port map( A => n13, B => n95, S => A(14), Z => n57);
   U81 : MUX2_X1 port map( A => n12, B => n88, S => A(15), Z => n56);
   U82 : NAND3_X1 port map( A1 => n57, A2 => n8, A3 => n56, ZN => p(15));
   U83 : MUX2_X1 port map( A => n13, B => n95, S => A(15), Z => n59);
   U84 : MUX2_X1 port map( A => n12, B => n88, S => A(16), Z => n58);
   U85 : NAND3_X1 port map( A1 => n59, A2 => n9, A3 => n58, ZN => p(16));
   U86 : MUX2_X1 port map( A => n13, B => n95, S => A(16), Z => n61);
   U87 : MUX2_X1 port map( A => n12, B => n88, S => A(17), Z => n60);
   U88 : NAND3_X1 port map( A1 => n61, A2 => n10, A3 => n60, ZN => p(17));
   U89 : MUX2_X1 port map( A => n13, B => n95, S => A(17), Z => n63);
   U90 : MUX2_X1 port map( A => n12, B => n88, S => A(18), Z => n62);
   U91 : NAND3_X1 port map( A1 => n63, A2 => n8, A3 => n62, ZN => p(18));
   U92 : MUX2_X1 port map( A => n13, B => n95, S => A(18), Z => n65);
   U94 : NAND3_X1 port map( A1 => n65, A2 => n10, A3 => n64, ZN => p(19));
   U95 : MUX2_X1 port map( A => n13, B => n95, S => A(19), Z => n67);
   U96 : MUX2_X1 port map( A => n12, B => n88, S => A(20), Z => n66);
   U97 : NAND3_X1 port map( A1 => n67, A2 => n10, A3 => n66, ZN => p(20));
   U98 : MUX2_X1 port map( A => n92, B => n95, S => A(20), Z => n69);
   U100 : NAND3_X1 port map( A1 => n69, A2 => n8, A3 => n68, ZN => p(21));
   U101 : MUX2_X1 port map( A => n92, B => n95, S => A(21), Z => n71);
   U103 : NAND3_X1 port map( A1 => n71, A2 => n9, A3 => n70, ZN => p(22));
   U104 : MUX2_X1 port map( A => n13, B => n95, S => A(22), Z => n73);
   U105 : MUX2_X1 port map( A => n12, B => n88, S => A(23), Z => n72);
   U106 : NAND3_X1 port map( A1 => n73, A2 => n8, A3 => n72, ZN => p(23));
   U107 : MUX2_X1 port map( A => n92, B => n95, S => A(23), Z => n75);
   U108 : MUX2_X1 port map( A => n1, B => n88, S => n98, Z => n74);
   U109 : NAND3_X1 port map( A1 => n75, A2 => n8, A3 => n74, ZN => p(24));
   U110 : MUX2_X1 port map( A => n13, B => n95, S => n98, Z => n77);
   U111 : MUX2_X1 port map( A => n12, B => n88, S => n98, Z => n76);
   U112 : NAND3_X1 port map( A1 => n77, A2 => n10, A3 => n76, ZN => p(25));
   U113 : MUX2_X1 port map( A => n13, B => n95, S => n98, Z => n79);
   U114 : MUX2_X1 port map( A => n1, B => n88, S => n98, Z => n78);
   U115 : NAND3_X1 port map( A1 => n79, A2 => n8, A3 => n78, ZN => p(26));
   U116 : MUX2_X1 port map( A => n92, B => n95, S => n98, Z => n81);
   U117 : MUX2_X1 port map( A => n1, B => n88, S => n98, Z => n80);
   U118 : NAND3_X1 port map( A1 => n81, A2 => n8, A3 => n80, ZN => p(27));
   U119 : MUX2_X1 port map( A => n12, B => n88, S => n98, Z => n82);
   U120 : NAND3_X1 port map( A1 => n83, A2 => n10, A3 => n82, ZN => p(28));
   U121 : MUX2_X1 port map( A => n1, B => n88, S => n98, Z => n84);
   U122 : NAND3_X1 port map( A1 => n85, A2 => n8, A3 => n84, ZN => p(29));
   U123 : MUX2_X1 port map( A => n95, B => n13, S => n97, Z => n87);
   U124 : MUX2_X1 port map( A => n12, B => n88, S => n98, Z => n86);
   U125 : NAND3_X1 port map( A1 => n87, A2 => n10, A3 => n86, ZN => p(30));
   U126 : MUX2_X1 port map( A => n12, B => n88, S => n98, Z => n89);
   U127 : NAND3_X1 port map( A1 => n91, A2 => n10, A3 => n89, ZN => p(31));
   U128 : OAI221_X1 port map( B1 => n97, B2 => n95, C1 => n98, C2 => n13, A => 
                           n12, ZN => p(32));
   U31 : XOR2_X1 port map( A => b(1), B => b(0), Z => n20);
   U15 : BUF_X1 port map( A => n92, Z => n13);
   U3 : BUF_X1 port map( A => n10, Z => n9);
   U4 : BUF_X1 port map( A => n93, Z => n95);
   U6 : INV_X1 port map( A => b(2), ZN => n22);
   U7 : CLKBUF_X3 port map( A => n8, Z => n10);
   U9 : AND2_X1 port map( A1 => b(2), A2 => n44, ZN => n2);
   U13 : NAND2_X2 port map( A1 => n2, A2 => n25, ZN => n8);
   n97 <= '1';
   n98 <= '0';
   U5 : AND2_X2 port map( A1 => n44, A2 => b(2), ZN => n96);
   U8 : OR2_X2 port map( A1 => b(1), A2 => b(0), ZN => n44);
   U10 : INV_X2 port map( A => b(0), ZN => n24);
   U11 : INV_X1 port map( A => b(1), ZN => n23);
   U12 : CLKBUF_X1 port map( A => n96, Z => n99);
   U14 : INV_X2 port map( A => n96, ZN => n1);
   U21 : OAI21_X2 port map( B1 => n99, B2 => A(4), A => n100, ZN => n32);
   U22 : NAND2_X2 port map( A1 => n88, A2 => A(4), ZN => n100);
   U23 : OAI21_X2 port map( B1 => n99, B2 => A(19), A => n101, ZN => n64);
   U24 : NAND2_X2 port map( A1 => n88, A2 => A(19), ZN => n101);
   U25 : OAI21_X2 port map( B1 => n99, B2 => A(21), A => n102, ZN => n68);
   U27 : NAND2_X2 port map( A1 => n88, A2 => A(21), ZN => n102);
   U28 : OAI21_X2 port map( B1 => n99, B2 => A(22), A => n103, ZN => n70);
   U32 : NAND2_X2 port map( A1 => n88, A2 => A(22), ZN => n103);
   U36 : OAI21_X2 port map( B1 => n99, B2 => A(9), A => n104, ZN => n42);
   U37 : NAND2_X2 port map( A1 => n88, A2 => A(9), ZN => n104);
   U47 : NAND2_X2 port map( A1 => n20, A2 => n22, ZN => n88);
   U62 : INV_X2 port map( A => n96, ZN => n12);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity ENC_8 is

   port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
         downto 0);  p : out std_logic_vector (32 downto 0));

end ENC_8;

architecture SYN_beh of ENC_8 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net25142, net25149, net25153, net25158, net25161, net25185, net25190,
      net27058, net27066, net27068, net29467, net25187, net25186, net25155, 
      net25116, net25113, net25189, net25188, n1, n2, n5, n6, n7, n8, n9, n10, 
      n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25
      , n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, 
      n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54
      , n55, n56, n57, n58, n59, n60, n61, n62, n63, n65, n66, n68, n69, n70, 
      n71, n72, n73, n74 : std_logic;

begin
   
   U3 : MUX2_X1 port map( A => n66, B => n63, S => A(14), Z => n1);
   U4 : NAND3_X1 port map( A1 => net25155, A2 => net27066, A3 => n1, ZN => 
                           p(14));
   U7 : MUX2_X1 port map( A => n66, B => n63, S => A(19), Z => net25142);
   U9 : MUX2_X1 port map( A => n65, B => n72, S => A(14), Z => net25149);
   U11 : INV_X1 port map( A => b(2), ZN => net25188);
   U12 : OAI211_X1 port map( C1 => net25188, C2 => net25189, A => n65, B => 
                           net25190, ZN => p(0));
   U17 : NAND3_X1 port map( A1 => b(2), A2 => net25186, A3 => net25187, ZN => 
                           net25113);
   U18 : NAND2_X1 port map( A1 => b(2), A2 => net25189, ZN => net25185);
   U19 : NAND2_X1 port map( A1 => b(0), A2 => b(1), ZN => net25189);
   U21 : INV_X1 port map( A => b(1), ZN => net25187);
   U22 : INV_X1 port map( A => b(0), ZN => net25186);
   U25 : MUX2_X1 port map( A => n65, B => n72, S => A(13), Z => net25155);
   U30 : MUX2_X1 port map( A => n66, B => n63, S => A(13), Z => net25158);
   U38 : INV_X1 port map( A => net29467, ZN => net27068);
   U39 : MUX2_X1 port map( A => net25113, B => net25189, S => n69, Z => n60);
   U40 : MUX2_X1 port map( A => net25113, B => n72, S => n69, Z => n62);
   U43 : MUX2_X1 port map( A => net25185, B => n63, S => A(0), Z => net25190);
   U44 : MUX2_X1 port map( A => n65, B => n72, S => A(0), Z => n6);
   U45 : MUX2_X1 port map( A => n66, B => n63, S => A(1), Z => n5);
   U46 : NAND3_X1 port map( A1 => n6, A2 => net27066, A3 => n5, ZN => p(1));
   U47 : MUX2_X1 port map( A => n65, B => n72, S => A(1), Z => n8);
   U48 : MUX2_X1 port map( A => n66, B => n63, S => A(2), Z => n7);
   U49 : NAND3_X1 port map( A1 => n8, A2 => net27066, A3 => n7, ZN => p(2));
   U50 : MUX2_X1 port map( A => n65, B => n72, S => A(2), Z => n10);
   U51 : MUX2_X1 port map( A => n66, B => n63, S => A(3), Z => n9);
   U52 : NAND3_X1 port map( A1 => n10, A2 => net27066, A3 => n9, ZN => p(3));
   U53 : MUX2_X1 port map( A => n65, B => n72, S => A(3), Z => n12);
   U54 : MUX2_X1 port map( A => n66, B => n63, S => A(4), Z => n11);
   U55 : NAND3_X1 port map( A1 => n12, A2 => net27066, A3 => n11, ZN => p(4));
   U56 : MUX2_X1 port map( A => n65, B => n72, S => A(4), Z => n14);
   U57 : MUX2_X1 port map( A => n66, B => n63, S => A(5), Z => n13);
   U58 : NAND3_X1 port map( A1 => n14, A2 => net27066, A3 => n13, ZN => p(5));
   U59 : MUX2_X1 port map( A => n65, B => n72, S => A(5), Z => n16);
   U60 : MUX2_X1 port map( A => n66, B => n63, S => A(6), Z => n15);
   U61 : NAND3_X1 port map( A1 => n16, A2 => net27066, A3 => n15, ZN => p(6));
   U62 : MUX2_X1 port map( A => n65, B => n72, S => A(6), Z => n18);
   U63 : MUX2_X1 port map( A => n66, B => net27068, S => A(7), Z => n17);
   U64 : NAND3_X1 port map( A1 => n18, A2 => net27066, A3 => n17, ZN => p(7));
   U65 : MUX2_X1 port map( A => n65, B => n72, S => A(7), Z => n20);
   U66 : MUX2_X1 port map( A => n66, B => net27068, S => A(8), Z => n19);
   U67 : NAND3_X1 port map( A1 => n20, A2 => net27066, A3 => n19, ZN => p(8));
   U68 : MUX2_X1 port map( A => n65, B => n72, S => A(8), Z => n22);
   U69 : MUX2_X1 port map( A => n66, B => net27068, S => A(9), Z => n21);
   U70 : NAND3_X1 port map( A1 => n22, A2 => net27066, A3 => n21, ZN => p(9));
   U71 : MUX2_X1 port map( A => n66, B => net27068, S => A(10), Z => n24);
   U72 : MUX2_X1 port map( A => n65, B => n72, S => A(9), Z => n23);
   U73 : NAND3_X1 port map( A1 => net27066, A2 => n24, A3 => n23, ZN => p(10));
   U74 : MUX2_X1 port map( A => n65, B => n72, S => A(10), Z => n26);
   U75 : MUX2_X1 port map( A => n66, B => net27068, S => A(11), Z => n25);
   U76 : NAND3_X1 port map( A1 => n26, A2 => net27066, A3 => n25, ZN => p(11));
   U77 : MUX2_X1 port map( A => net25161, B => n63, S => A(12), Z => n28);
   U78 : MUX2_X1 port map( A => n65, B => n72, S => A(11), Z => n27);
   U79 : NAND3_X1 port map( A1 => net27066, A2 => n28, A3 => n27, ZN => p(12));
   U80 : MUX2_X1 port map( A => n65, B => n72, S => A(12), Z => n29);
   U81 : NAND3_X1 port map( A1 => n29, A2 => net27066, A3 => net25158, ZN => 
                           p(13));
   U82 : NOR3_X1 port map( A1 => net29467, A2 => A(15), A3 => net25153, ZN => 
                           n30);
   U83 : AOI22_X1 port map( A1 => n30, A2 => n72, B1 => A(15), B2 => net29467, 
                           ZN => n31);
   U84 : NAND3_X1 port map( A1 => net25149, A2 => net27066, A3 => n31, ZN => 
                           p(15));
   U85 : MUX2_X1 port map( A => n65, B => n72, S => A(15), Z => n33);
   U86 : MUX2_X1 port map( A => n66, B => n63, S => A(16), Z => n32);
   U87 : NAND3_X1 port map( A1 => n33, A2 => net27066, A3 => n32, ZN => p(16));
   U88 : MUX2_X1 port map( A => n65, B => n72, S => A(16), Z => n35);
   U89 : MUX2_X1 port map( A => n66, B => n63, S => A(17), Z => n34);
   U90 : NAND3_X1 port map( A1 => n35, A2 => net27066, A3 => n34, ZN => p(17));
   U91 : MUX2_X1 port map( A => n65, B => n72, S => A(17), Z => n37);
   U92 : MUX2_X1 port map( A => n66, B => net27068, S => A(18), Z => n36);
   U93 : NAND3_X1 port map( A1 => n37, A2 => net27066, A3 => n36, ZN => p(18));
   U94 : MUX2_X1 port map( A => n65, B => n72, S => A(18), Z => n38);
   U95 : NAND3_X1 port map( A1 => n38, A2 => net27066, A3 => net25142, ZN => 
                           p(19));
   U96 : MUX2_X1 port map( A => n65, B => n72, S => A(19), Z => n40);
   U97 : MUX2_X1 port map( A => n66, B => net27068, S => A(20), Z => n39);
   U98 : NAND3_X1 port map( A1 => n40, A2 => net27066, A3 => n39, ZN => p(20));
   U99 : MUX2_X1 port map( A => n65, B => n72, S => A(20), Z => n42);
   U100 : MUX2_X1 port map( A => n66, B => n63, S => A(21), Z => n41);
   U101 : NAND3_X1 port map( A1 => n42, A2 => net27066, A3 => n41, ZN => p(21))
                           ;
   U102 : MUX2_X1 port map( A => n65, B => n72, S => A(21), Z => n44);
   U103 : MUX2_X1 port map( A => n66, B => n63, S => A(22), Z => n43);
   U104 : NAND3_X1 port map( A1 => n44, A2 => net27066, A3 => n43, ZN => p(22))
                           ;
   U105 : MUX2_X1 port map( A => n65, B => n72, S => A(22), Z => n46);
   U106 : MUX2_X1 port map( A => n66, B => n63, S => A(23), Z => n45);
   U107 : NAND3_X1 port map( A1 => n46, A2 => net27066, A3 => n45, ZN => p(23))
                           ;
   U108 : MUX2_X1 port map( A => n65, B => n72, S => A(23), Z => n48);
   U109 : MUX2_X1 port map( A => n66, B => n63, S => n69, Z => n47);
   U110 : NAND3_X1 port map( A1 => n48, A2 => net27066, A3 => n47, ZN => p(24))
                           ;
   U111 : MUX2_X1 port map( A => n65, B => n72, S => n69, Z => n50);
   U112 : MUX2_X1 port map( A => n66, B => n63, S => n69, Z => n49);
   U113 : NAND3_X1 port map( A1 => n50, A2 => net27066, A3 => n49, ZN => p(25))
                           ;
   U114 : MUX2_X1 port map( A => n65, B => n72, S => n69, Z => n52);
   U115 : MUX2_X1 port map( A => n66, B => n63, S => n69, Z => n51);
   U116 : NAND3_X1 port map( A1 => n52, A2 => net27066, A3 => n51, ZN => p(26))
                           ;
   U117 : MUX2_X1 port map( A => n65, B => n72, S => n69, Z => n54);
   U118 : MUX2_X1 port map( A => n66, B => net27068, S => n69, Z => n53);
   U119 : NAND3_X1 port map( A1 => n54, A2 => net27066, A3 => n53, ZN => p(27))
                           ;
   U120 : MUX2_X1 port map( A => n65, B => n72, S => n69, Z => n56);
   U121 : MUX2_X1 port map( A => n66, B => n63, S => n69, Z => n55);
   U122 : NAND3_X1 port map( A1 => n56, A2 => net27066, A3 => n55, ZN => p(28))
                           ;
   U123 : MUX2_X1 port map( A => net25113, B => net25189, S => n69, Z => n58);
   U124 : MUX2_X1 port map( A => net27058, B => n63, S => n69, Z => n57);
   U125 : NAND3_X1 port map( A1 => n58, A2 => net25116, A3 => n57, ZN => p(29))
                           ;
   U126 : MUX2_X1 port map( A => net27058, B => net27068, S => n69, Z => n59);
   U127 : NAND3_X1 port map( A1 => n60, A2 => net25116, A3 => n59, ZN => p(30))
                           ;
   U128 : MUX2_X1 port map( A => net27058, B => net27068, S => n69, Z => n61);
   U130 : OAI221_X1 port map( B1 => n68, B2 => n72, C1 => n69, C2 => net25113, 
                           A => net27058, ZN => p(32));
   U10 : AND2_X1 port map( A1 => n2, A2 => net25188, ZN => net29467);
   U13 : INV_X2 port map( A => net29467, ZN => n63);
   U15 : BUF_X2 port map( A => net25116, Z => net27066);
   U20 : BUF_X1 port map( A => net25113, Z => n65);
   U26 : XOR2_X1 port map( A => b(0), B => b(1), Z => n2);
   U31 : NAND3_X1 port map( A1 => n61, A2 => n62, A3 => net25116, ZN => p(31));
   n68 <= '1';
   n69 <= '0';
   U5 : INV_X2 port map( A => n71, ZN => n72);
   U6 : NOR2_X1 port map( A1 => b(0), A2 => b(1), ZN => net25153);
   U8 : AND2_X1 port map( A1 => n72, A2 => n74, ZN => n70);
   U14 : INV_X1 port map( A => net25189, ZN => n71);
   U16 : OR2_X2 port map( A1 => n73, A2 => net27058, ZN => net25116);
   U23 : OR2_X2 port map( A1 => net25153, A2 => net25188, ZN => net27058);
   U24 : INV_X1 port map( A => net25185, ZN => n73);
   U27 : NAND2_X2 port map( A1 => n63, A2 => n70, ZN => net25161);
   U28 : INV_X1 port map( A => net25153, ZN => n74);
   U29 : CLKBUF_X1 port map( A => net27058, Z => n66);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity ENC_9 is

   port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
         downto 0);  p : out std_logic_vector (32 downto 0));

end ENC_9;

architecture SYN_beh of ENC_9 is

   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n6, n10, n12, n16, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, 
      n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43
      , n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, 
      n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72
      , n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, 
      n87, n88, n89, n90, n91, n92, n93, n94, n98, n99, n101, n102 : std_logic;

begin
   
   U22 : XNOR2_X1 port map( A => b(0), B => b(1), ZN => n21);
   U23 : INV_X1 port map( A => b(2), ZN => n24);
   U24 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n23);
   U25 : INV_X1 port map( A => b(0), ZN => n20);
   U26 : INV_X1 port map( A => b(1), ZN => n19);
   U27 : NAND3_X1 port map( A1 => b(2), A2 => n20, A3 => n19, ZN => n93);
   U29 : MUX2_X1 port map( A => n25, B => n88, S => A(0), Z => n22);
   U30 : OAI211_X1 port map( C1 => n24, C2 => n99, A => n16, B => n22, ZN => 
                           p(0));
   U31 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n94);
   U32 : MUX2_X1 port map( A => n16, B => n23, S => A(0), Z => n27);
   U33 : NAND3_X1 port map( A1 => b(0), A2 => n24, A3 => b(1), ZN => n56);
   U34 : NAND2_X1 port map( A1 => n6, A2 => b(2), ZN => n91);
   U35 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => b(2), ZN => n92);
   U36 : MUX2_X1 port map( A => n12, B => n88, S => A(1), Z => n26);
   U37 : NAND3_X1 port map( A1 => n27, A2 => n10, A3 => n26, ZN => p(1));
   U38 : MUX2_X1 port map( A => n16, B => n99, S => A(1), Z => n29);
   U39 : MUX2_X1 port map( A => n12, B => n88, S => A(2), Z => n28);
   U40 : NAND3_X1 port map( A1 => n29, A2 => n10, A3 => n28, ZN => p(2));
   U41 : MUX2_X1 port map( A => n16, B => n23, S => A(2), Z => n31);
   U42 : MUX2_X1 port map( A => n12, B => n88, S => A(3), Z => n30);
   U43 : NAND3_X1 port map( A1 => n31, A2 => n10, A3 => n30, ZN => p(3));
   U44 : MUX2_X1 port map( A => n16, B => n99, S => A(3), Z => n33);
   U45 : MUX2_X1 port map( A => n12, B => n88, S => A(4), Z => n32);
   U46 : NAND3_X1 port map( A1 => n33, A2 => n10, A3 => n32, ZN => p(4));
   U47 : MUX2_X1 port map( A => n16, B => n99, S => A(4), Z => n35);
   U48 : MUX2_X1 port map( A => n12, B => n88, S => A(5), Z => n34);
   U49 : NAND3_X1 port map( A1 => n35, A2 => n10, A3 => n34, ZN => p(5));
   U50 : MUX2_X1 port map( A => n16, B => n23, S => A(5), Z => n37);
   U51 : MUX2_X1 port map( A => n12, B => n88, S => A(6), Z => n36);
   U52 : NAND3_X1 port map( A1 => n37, A2 => n10, A3 => n36, ZN => p(6));
   U53 : MUX2_X1 port map( A => n16, B => n99, S => A(6), Z => n39);
   U54 : MUX2_X1 port map( A => n12, B => n88, S => A(7), Z => n38);
   U55 : NAND3_X1 port map( A1 => n39, A2 => n10, A3 => n38, ZN => p(7));
   U56 : MUX2_X1 port map( A => n16, B => n99, S => A(7), Z => n41);
   U57 : NAND2_X1 port map( A1 => n6, A2 => n88, ZN => n70);
   U58 : MUX2_X1 port map( A => n12, B => n88, S => A(8), Z => n40);
   U59 : NAND3_X1 port map( A1 => n41, A2 => n70, A3 => n40, ZN => p(8));
   U60 : MUX2_X1 port map( A => n16, B => n99, S => A(8), Z => n43);
   U61 : MUX2_X1 port map( A => n12, B => n88, S => A(9), Z => n42);
   U62 : NAND3_X1 port map( A1 => n43, A2 => n10, A3 => n42, ZN => p(9));
   U63 : MUX2_X1 port map( A => n12, B => n88, S => A(10), Z => n45);
   U64 : MUX2_X1 port map( A => n16, B => n23, S => A(9), Z => n44);
   U65 : NAND3_X1 port map( A1 => n45, A2 => n10, A3 => n44, ZN => p(10));
   U66 : MUX2_X1 port map( A => n12, B => n88, S => A(11), Z => n47);
   U67 : MUX2_X1 port map( A => n16, B => n99, S => A(10), Z => n46);
   U68 : NAND3_X1 port map( A1 => n47, A2 => n10, A3 => n46, ZN => p(11));
   U69 : MUX2_X1 port map( A => n16, B => n23, S => A(11), Z => n49);
   U70 : MUX2_X1 port map( A => n12, B => n88, S => A(12), Z => n48);
   U71 : NAND3_X1 port map( A1 => n49, A2 => n10, A3 => n48, ZN => p(12));
   U72 : MUX2_X1 port map( A => n16, B => n23, S => A(12), Z => n51);
   U73 : MUX2_X1 port map( A => n12, B => n88, S => A(13), Z => n50);
   U74 : NAND3_X1 port map( A1 => n51, A2 => n10, A3 => n50, ZN => p(13));
   U75 : MUX2_X1 port map( A => n16, B => n99, S => A(13), Z => n53);
   U76 : MUX2_X1 port map( A => n12, B => n88, S => A(14), Z => n52);
   U77 : NAND3_X1 port map( A1 => n53, A2 => n70, A3 => n52, ZN => p(14));
   U78 : MUX2_X1 port map( A => n12, B => n88, S => A(15), Z => n55);
   U79 : MUX2_X1 port map( A => n16, B => n23, S => A(14), Z => n54);
   U80 : NAND3_X1 port map( A1 => n10, A2 => n55, A3 => n54, ZN => p(15));
   U81 : MUX2_X1 port map( A => n16, B => n56, S => A(15), Z => n58);
   U82 : MUX2_X1 port map( A => n12, B => n88, S => A(16), Z => n57);
   U83 : NAND3_X1 port map( A1 => n58, A2 => n57, A3 => n70, ZN => p(16));
   U84 : MUX2_X1 port map( A => n16, B => n23, S => A(16), Z => n60);
   U85 : MUX2_X1 port map( A => n12, B => n88, S => A(17), Z => n59);
   U86 : NAND3_X1 port map( A1 => n60, A2 => n10, A3 => n59, ZN => p(17));
   U87 : MUX2_X1 port map( A => n16, B => n98, S => A(17), Z => n62);
   U88 : MUX2_X1 port map( A => n12, B => n88, S => A(18), Z => n61);
   U89 : NAND3_X1 port map( A1 => n62, A2 => n70, A3 => n61, ZN => p(18));
   U90 : MUX2_X1 port map( A => n16, B => n23, S => A(18), Z => n64);
   U91 : MUX2_X1 port map( A => n12, B => n88, S => A(19), Z => n63);
   U92 : NAND3_X1 port map( A1 => n64, A2 => n70, A3 => n63, ZN => p(19));
   U93 : MUX2_X1 port map( A => n12, B => n88, S => A(20), Z => n66);
   U94 : MUX2_X1 port map( A => n16, B => n99, S => A(19), Z => n65);
   U95 : NAND3_X1 port map( A1 => n66, A2 => n65, A3 => n10, ZN => p(20));
   U96 : MUX2_X1 port map( A => n16, B => n99, S => A(20), Z => n68);
   U97 : MUX2_X1 port map( A => n12, B => n88, S => A(21), Z => n67);
   U98 : NAND3_X1 port map( A1 => n68, A2 => n70, A3 => n67, ZN => p(21));
   U99 : MUX2_X1 port map( A => n16, B => n99, S => A(21), Z => n71);
   U100 : MUX2_X1 port map( A => n12, B => n88, S => A(22), Z => n69);
   U101 : NAND3_X1 port map( A1 => n71, A2 => n70, A3 => n69, ZN => p(22));
   U102 : MUX2_X1 port map( A => n12, B => n88, S => A(23), Z => n73);
   U103 : MUX2_X1 port map( A => n16, B => n99, S => A(22), Z => n72);
   U104 : NAND3_X1 port map( A1 => n73, A2 => n72, A3 => n10, ZN => p(23));
   U105 : MUX2_X1 port map( A => n16, B => n23, S => A(23), Z => n75);
   U106 : MUX2_X1 port map( A => n12, B => n88, S => n102, Z => n74);
   U107 : NAND3_X1 port map( A1 => n75, A2 => n10, A3 => n74, ZN => p(24));
   U108 : MUX2_X1 port map( A => n16, B => n99, S => n102, Z => n77);
   U109 : MUX2_X1 port map( A => n12, B => n88, S => n102, Z => n76);
   U110 : NAND3_X1 port map( A1 => n77, A2 => n10, A3 => n76, ZN => p(25));
   U111 : MUX2_X1 port map( A => n16, B => n23, S => n102, Z => n79);
   U112 : MUX2_X1 port map( A => n12, B => n88, S => n102, Z => n78);
   U113 : NAND3_X1 port map( A1 => n79, A2 => n10, A3 => n78, ZN => p(26));
   U114 : MUX2_X1 port map( A => n16, B => n99, S => n102, Z => n81);
   U115 : MUX2_X1 port map( A => n12, B => n88, S => n102, Z => n80);
   U116 : NAND3_X1 port map( A1 => n81, A2 => n10, A3 => n80, ZN => p(27));
   U117 : MUX2_X1 port map( A => n16, B => n98, S => n102, Z => n83);
   U118 : MUX2_X1 port map( A => n12, B => n88, S => n102, Z => n82);
   U119 : NAND3_X1 port map( A1 => n83, A2 => n10, A3 => n82, ZN => p(28));
   U120 : MUX2_X1 port map( A => n16, B => n23, S => n102, Z => n85);
   U121 : MUX2_X1 port map( A => n12, B => n88, S => n102, Z => n84);
   U122 : NAND3_X1 port map( A1 => n85, A2 => n10, A3 => n84, ZN => p(29));
   U123 : MUX2_X1 port map( A => n16, B => n23, S => n102, Z => n87);
   U124 : MUX2_X1 port map( A => n12, B => n88, S => n102, Z => n86);
   U125 : NAND3_X1 port map( A1 => n87, A2 => n10, A3 => n86, ZN => p(30));
   U126 : MUX2_X1 port map( A => n92, B => n88, S => n102, Z => n90);
   U127 : MUX2_X1 port map( A => n93, B => n99, S => n102, Z => n89);
   U128 : NAND3_X1 port map( A1 => n91, A2 => n90, A3 => n89, ZN => p(31));
   U129 : OAI221_X1 port map( B1 => n101, B2 => n98, C1 => n102, C2 => n93, A 
                           => n92, ZN => p(32));
   U4 : BUF_X1 port map( A => n92, Z => n12);
   U5 : BUF_X2 port map( A => n91, Z => n10);
   U7 : BUF_X2 port map( A => n93, Z => n16);
   U8 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n99);
   U10 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n98);
   U13 : AND3_X1 port map( A1 => n25, A2 => b(1), A3 => n56, ZN => n6);
   U14 : NAND2_X1 port map( A1 => n94, A2 => b(2), ZN => n25);
   n101 <= '1';
   n102 <= '0';
   U3 : OR2_X2 port map( A1 => n21, A2 => b(2), ZN => n88);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity ENC_10 is

   port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
         downto 0);  p : out std_logic_vector (32 downto 0));

end ENC_10;

architecture SYN_beh of ENC_10 is

   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45
      , n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, 
      n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74
      , n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, 
      n89, n90, n91, n92, n93, n94, n95, n96, n97, n101 : std_logic;

begin
   
   U7 : NAND2_X1 port map( A1 => n27, A2 => n26, ZN => n2);
   U8 : NAND2_X1 port map( A1 => n27, A2 => n26, ZN => n3);
   U12 : NAND2_X1 port map( A1 => n21, A2 => n23, ZN => n4);
   U16 : OR2_X1 port map( A1 => b(0), A2 => b(1), ZN => n28);
   U17 : NAND2_X1 port map( A1 => b(1), A2 => n25, ZN => n5);
   U18 : NAND2_X1 port map( A1 => n24, A2 => b(0), ZN => n6);
   U19 : NAND2_X1 port map( A1 => n5, A2 => n6, ZN => n21);
   U25 : NAND2_X1 port map( A1 => n97, A2 => n96, ZN => p(32));
   U26 : INV_X1 port map( A => b(2), ZN => n23);
   U27 : INV_X1 port map( A => b(0), ZN => n25);
   U28 : INV_X1 port map( A => b(1), ZN => n24);
   U30 : NAND2_X1 port map( A1 => b(2), A2 => n78, ZN => n26);
   U32 : MUX2_X1 port map( A => n26, B => n91, S => A(0), Z => n22);
   U33 : OAI211_X1 port map( C1 => n23, C2 => n78, A => n95, B => n22, ZN => 
                           p(0));
   U34 : MUX2_X1 port map( A => n95, B => n78, S => A(0), Z => n30);
   U35 : NAND2_X1 port map( A1 => n28, A2 => b(2), ZN => n65);
   U36 : INV_X1 port map( A => n65, ZN => n27);
   U39 : MUX2_X1 port map( A => n97, B => n91, S => A(1), Z => n29);
   U40 : NAND3_X1 port map( A1 => n30, A2 => n93, A3 => n29, ZN => p(1));
   U41 : MUX2_X1 port map( A => n95, B => n78, S => A(1), Z => n32);
   U42 : MUX2_X1 port map( A => n65, B => n91, S => A(2), Z => n31);
   U43 : NAND3_X1 port map( A1 => n32, A2 => n93, A3 => n31, ZN => p(2));
   U44 : MUX2_X1 port map( A => n95, B => n78, S => A(2), Z => n34);
   U45 : MUX2_X1 port map( A => n65, B => n91, S => A(3), Z => n33);
   U46 : NAND3_X1 port map( A1 => n34, A2 => n93, A3 => n33, ZN => p(3));
   U47 : MUX2_X1 port map( A => n95, B => n78, S => A(3), Z => n36);
   U48 : MUX2_X1 port map( A => n97, B => n91, S => A(4), Z => n35);
   U49 : NAND3_X1 port map( A1 => n36, A2 => n93, A3 => n35, ZN => p(4));
   U50 : MUX2_X1 port map( A => n95, B => n78, S => A(4), Z => n38);
   U51 : MUX2_X1 port map( A => n97, B => n91, S => A(5), Z => n37);
   U52 : NAND3_X1 port map( A1 => n38, A2 => n93, A3 => n37, ZN => p(5));
   U53 : MUX2_X1 port map( A => n95, B => n78, S => A(5), Z => n40);
   U54 : MUX2_X1 port map( A => n97, B => n4, S => A(6), Z => n39);
   U55 : NAND3_X1 port map( A1 => n40, A2 => n2, A3 => n39, ZN => p(6));
   U56 : MUX2_X1 port map( A => n95, B => n78, S => A(6), Z => n42);
   U57 : MUX2_X1 port map( A => n97, B => n91, S => A(7), Z => n41);
   U58 : NAND3_X1 port map( A1 => n42, A2 => n93, A3 => n41, ZN => p(7));
   U59 : MUX2_X1 port map( A => n95, B => n78, S => A(7), Z => n44);
   U60 : MUX2_X1 port map( A => n65, B => n4, S => A(8), Z => n43);
   U61 : NAND3_X1 port map( A1 => n44, A2 => n93, A3 => n43, ZN => p(8));
   U62 : MUX2_X1 port map( A => n95, B => n78, S => A(8), Z => n46);
   U63 : MUX2_X1 port map( A => n65, B => n91, S => A(9), Z => n45);
   U64 : NAND3_X1 port map( A1 => n46, A2 => n93, A3 => n45, ZN => p(9));
   U65 : MUX2_X1 port map( A => n95, B => n78, S => A(9), Z => n48);
   U66 : MUX2_X1 port map( A => n65, B => n91, S => A(10), Z => n47);
   U67 : NAND3_X1 port map( A1 => n48, A2 => n2, A3 => n47, ZN => p(10));
   U68 : MUX2_X1 port map( A => n95, B => n78, S => A(10), Z => n50);
   U69 : MUX2_X1 port map( A => n65, B => n91, S => A(11), Z => n49);
   U70 : NAND3_X1 port map( A1 => n50, A2 => n93, A3 => n49, ZN => p(11));
   U71 : MUX2_X1 port map( A => n95, B => n78, S => A(11), Z => n52);
   U72 : MUX2_X1 port map( A => n65, B => n91, S => A(12), Z => n51);
   U73 : NAND3_X1 port map( A1 => n52, A2 => n93, A3 => n51, ZN => p(12));
   U74 : MUX2_X1 port map( A => n95, B => n78, S => A(12), Z => n54);
   U75 : MUX2_X1 port map( A => n97, B => n91, S => A(13), Z => n53);
   U76 : NAND3_X1 port map( A1 => n54, A2 => n3, A3 => n53, ZN => p(13));
   U77 : MUX2_X1 port map( A => n95, B => n78, S => A(13), Z => n56);
   U78 : MUX2_X1 port map( A => n65, B => n91, S => A(14), Z => n55);
   U79 : NAND3_X1 port map( A1 => n56, A2 => n93, A3 => n55, ZN => p(14));
   U80 : MUX2_X1 port map( A => n95, B => n78, S => A(14), Z => n58);
   U81 : MUX2_X1 port map( A => n65, B => n91, S => A(15), Z => n57);
   U82 : NAND3_X1 port map( A1 => n58, A2 => n93, A3 => n57, ZN => p(15));
   U83 : MUX2_X1 port map( A => n95, B => n78, S => A(15), Z => n60);
   U84 : MUX2_X1 port map( A => n97, B => n4, S => A(16), Z => n59);
   U85 : NAND3_X1 port map( A1 => n59, A2 => n2, A3 => n60, ZN => p(16));
   U86 : MUX2_X1 port map( A => n95, B => n78, S => A(16), Z => n62);
   U87 : MUX2_X1 port map( A => n97, B => n4, S => A(17), Z => n61);
   U88 : NAND3_X1 port map( A1 => n62, A2 => n3, A3 => n61, ZN => p(17));
   U89 : MUX2_X1 port map( A => n95, B => n78, S => A(17), Z => n64);
   U90 : MUX2_X1 port map( A => n97, B => n91, S => A(18), Z => n63);
   U91 : NAND3_X1 port map( A1 => n64, A2 => n93, A3 => n63, ZN => p(18));
   U93 : MUX2_X1 port map( A => n95, B => n78, S => A(18), Z => n67);
   U94 : MUX2_X1 port map( A => n65, B => n4, S => A(19), Z => n66);
   U95 : NAND3_X1 port map( A1 => n67, A2 => n2, A3 => n66, ZN => p(19));
   U96 : MUX2_X1 port map( A => n95, B => n78, S => A(19), Z => n69);
   U97 : MUX2_X1 port map( A => n97, B => n91, S => A(20), Z => n68);
   U98 : NAND3_X1 port map( A1 => n69, A2 => n3, A3 => n68, ZN => p(20));
   U99 : MUX2_X1 port map( A => n95, B => n78, S => A(20), Z => n71);
   U100 : MUX2_X1 port map( A => n97, B => n91, S => A(21), Z => n70);
   U101 : NAND3_X1 port map( A1 => n71, A2 => n93, A3 => n70, ZN => p(21));
   U102 : MUX2_X1 port map( A => n95, B => n78, S => A(21), Z => n73);
   U103 : MUX2_X1 port map( A => n97, B => n91, S => A(22), Z => n72);
   U104 : NAND3_X1 port map( A1 => n73, A2 => n93, A3 => n72, ZN => p(22));
   U105 : MUX2_X1 port map( A => n95, B => n78, S => A(22), Z => n75);
   U106 : MUX2_X1 port map( A => n97, B => n4, S => A(23), Z => n74);
   U107 : NAND3_X1 port map( A1 => n75, A2 => n3, A3 => n74, ZN => p(23));
   U108 : MUX2_X1 port map( A => n95, B => n78, S => A(23), Z => n77);
   U109 : MUX2_X1 port map( A => n65, B => n91, S => n101, Z => n76);
   U110 : NAND3_X1 port map( A1 => n77, A2 => n93, A3 => n76, ZN => p(24));
   U111 : MUX2_X1 port map( A => n95, B => n78, S => n101, Z => n80);
   U112 : MUX2_X1 port map( A => n97, B => n91, S => n101, Z => n79);
   U113 : NAND3_X1 port map( A1 => n80, A2 => n3, A3 => n79, ZN => p(25));
   U114 : MUX2_X1 port map( A => n95, B => n78, S => n101, Z => n82);
   U115 : MUX2_X1 port map( A => n97, B => n4, S => n101, Z => n81);
   U116 : NAND3_X1 port map( A1 => n82, A2 => n3, A3 => n81, ZN => p(26));
   U117 : MUX2_X1 port map( A => n95, B => n78, S => n101, Z => n84);
   U118 : MUX2_X1 port map( A => n65, B => n91, S => n101, Z => n83);
   U119 : NAND3_X1 port map( A1 => n84, A2 => n93, A3 => n83, ZN => p(27));
   U120 : MUX2_X1 port map( A => n95, B => n78, S => n101, Z => n86);
   U121 : MUX2_X1 port map( A => n97, B => n91, S => n101, Z => n85);
   U122 : NAND3_X1 port map( A1 => n86, A2 => n93, A3 => n85, ZN => p(28));
   U123 : MUX2_X1 port map( A => n95, B => n78, S => n101, Z => n88);
   U124 : MUX2_X1 port map( A => n65, B => n91, S => n101, Z => n87);
   U125 : NAND3_X1 port map( A1 => n88, A2 => n2, A3 => n87, ZN => p(29));
   U126 : MUX2_X1 port map( A => n95, B => n78, S => n101, Z => n90);
   U127 : MUX2_X1 port map( A => n97, B => n91, S => n101, Z => n89);
   U128 : NAND3_X1 port map( A1 => n90, A2 => n93, A3 => n89, ZN => p(30));
   U129 : MUX2_X1 port map( A => n95, B => n78, S => n101, Z => n94);
   U130 : MUX2_X1 port map( A => n97, B => n91, S => n101, Z => n92);
   U131 : NAND3_X1 port map( A1 => n94, A2 => n93, A3 => n92, ZN => p(31));
   U132 : MUX2_X1 port map( A => n95, B => n78, S => n101, Z => n96);
   U31 : NAND2_X1 port map( A1 => n21, A2 => n23, ZN => n91);
   U37 : NAND2_X1 port map( A1 => n27, A2 => n26, ZN => n93);
   n101 <= '0';
   U3 : NAND2_X2 port map( A1 => n28, A2 => b(2), ZN => n97);
   U4 : NAND3_X2 port map( A1 => n25, A2 => b(2), A3 => n24, ZN => n95);
   U5 : NAND2_X2 port map( A1 => b(1), A2 => b(0), ZN => n78);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity ENC_11 is

   port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
         downto 0);  p : out std_logic_vector (32 downto 0));

end ENC_11;

architecture SYN_beh of ENC_11 is

   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n5, n6, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
      n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39
      , n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, 
      n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68
      , n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, 
      n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n95, n96 : std_logic;

begin
   
   U4 : NAND2_X1 port map( A1 => n3, A2 => n39, ZN => n90);
   U6 : NAND2_X1 port map( A1 => n3, A2 => n39, ZN => n1);
   U7 : NAND2_X1 port map( A1 => n3, A2 => n39, ZN => n2);
   U8 : NAND2_X1 port map( A1 => n3, A2 => n39, ZN => n81);
   U19 : INV_X1 port map( A => n16, ZN => n40);
   U20 : NAND2_X1 port map( A1 => n40, A2 => n74, ZN => n5);
   U21 : NAND2_X1 port map( A1 => n40, A2 => n74, ZN => n6);
   U24 : INV_X1 port map( A => b(0), ZN => n15);
   U26 : NAND2_X1 port map( A1 => b(2), A2 => n18, ZN => n71);
   U27 : NAND2_X1 port map( A1 => n40, A2 => n74, ZN => n86);
   U28 : MUX2_X1 port map( A => n71, B => n5, S => A(0), Z => n17);
   U29 : OAI211_X1 port map( C1 => n74, C2 => n18, A => n1, B => n17, ZN => 
                           p(0));
   U30 : MUX2_X1 port map( A => n90, B => n18, S => A(0), Z => n20);
   U32 : OAI21_X1 port map( B1 => b(0), B2 => b(1), A => b(2), ZN => n92);
   U33 : MUX2_X1 port map( A => n95, B => n6, S => A(1), Z => n19);
   U34 : NAND3_X1 port map( A1 => n20, A2 => n88, A3 => n19, ZN => p(1));
   U35 : MUX2_X1 port map( A => n90, B => n18, S => A(1), Z => n22);
   U36 : MUX2_X1 port map( A => n95, B => n86, S => A(2), Z => n21);
   U37 : NAND3_X1 port map( A1 => n22, A2 => n88, A3 => n21, ZN => p(2));
   U38 : MUX2_X1 port map( A => n2, B => n18, S => A(2), Z => n24);
   U39 : MUX2_X1 port map( A => n95, B => n5, S => A(3), Z => n23);
   U40 : NAND3_X1 port map( A1 => n24, A2 => n88, A3 => n23, ZN => p(3));
   U41 : MUX2_X1 port map( A => n2, B => n18, S => A(3), Z => n26);
   U42 : MUX2_X1 port map( A => n95, B => n6, S => A(4), Z => n25);
   U43 : NAND3_X1 port map( A1 => n26, A2 => n88, A3 => n25, ZN => p(4));
   U44 : MUX2_X1 port map( A => n2, B => n18, S => A(4), Z => n28);
   U45 : MUX2_X1 port map( A => n95, B => n86, S => A(5), Z => n27);
   U46 : NAND3_X1 port map( A1 => n28, A2 => n88, A3 => n27, ZN => p(5));
   U47 : MUX2_X1 port map( A => n1, B => n18, S => A(5), Z => n30);
   U48 : MUX2_X1 port map( A => n95, B => n5, S => A(6), Z => n29);
   U49 : NAND3_X1 port map( A1 => n30, A2 => n88, A3 => n29, ZN => p(6));
   U50 : MUX2_X1 port map( A => n2, B => n18, S => A(6), Z => n32);
   U51 : MUX2_X1 port map( A => n95, B => n6, S => A(7), Z => n31);
   U52 : NAND3_X1 port map( A1 => n32, A2 => n88, A3 => n31, ZN => p(7));
   U53 : MUX2_X1 port map( A => n90, B => n18, S => A(7), Z => n34);
   U54 : MUX2_X1 port map( A => n95, B => n86, S => A(8), Z => n33);
   U55 : NAND3_X1 port map( A1 => n34, A2 => n88, A3 => n33, ZN => p(8));
   U56 : MUX2_X1 port map( A => n1, B => n18, S => A(8), Z => n36);
   U57 : MUX2_X1 port map( A => n95, B => n5, S => A(9), Z => n35);
   U58 : NAND3_X1 port map( A1 => n36, A2 => n88, A3 => n35, ZN => p(9));
   U59 : MUX2_X1 port map( A => n90, B => n18, S => A(9), Z => n38);
   U60 : MUX2_X1 port map( A => n95, B => n6, S => A(10), Z => n37);
   U61 : NAND3_X1 port map( A1 => n38, A2 => n88, A3 => n37, ZN => p(10));
   U62 : MUX2_X1 port map( A => n2, B => n18, S => A(10), Z => n42);
   U63 : MUX2_X1 port map( A => n95, B => n76, S => A(11), Z => n41);
   U64 : NAND3_X1 port map( A1 => n42, A2 => n88, A3 => n41, ZN => p(11));
   U65 : MUX2_X1 port map( A => n1, B => n18, S => A(11), Z => n44);
   U66 : MUX2_X1 port map( A => n95, B => n86, S => A(12), Z => n43);
   U67 : NAND3_X1 port map( A1 => n44, A2 => n88, A3 => n43, ZN => p(12));
   U68 : MUX2_X1 port map( A => n90, B => n18, S => A(12), Z => n46);
   U69 : MUX2_X1 port map( A => n95, B => n76, S => A(13), Z => n45);
   U70 : NAND3_X1 port map( A1 => n46, A2 => n88, A3 => n45, ZN => p(13));
   U71 : MUX2_X1 port map( A => n2, B => n18, S => A(13), Z => n48);
   U72 : MUX2_X1 port map( A => n95, B => n5, S => A(14), Z => n47);
   U73 : NAND3_X1 port map( A1 => n48, A2 => n88, A3 => n47, ZN => p(14));
   U74 : MUX2_X1 port map( A => n90, B => n18, S => A(14), Z => n50);
   U75 : MUX2_X1 port map( A => n95, B => n6, S => A(15), Z => n49);
   U76 : NAND3_X1 port map( A1 => n50, A2 => n88, A3 => n49, ZN => p(15));
   U77 : MUX2_X1 port map( A => n1, B => n18, S => A(15), Z => n52);
   U78 : MUX2_X1 port map( A => n95, B => n76, S => A(16), Z => n51);
   U79 : NAND3_X1 port map( A1 => n52, A2 => n88, A3 => n51, ZN => p(16));
   U80 : MUX2_X1 port map( A => n2, B => n18, S => A(16), Z => n54);
   U81 : MUX2_X1 port map( A => n95, B => n76, S => A(17), Z => n53);
   U82 : NAND3_X1 port map( A1 => n54, A2 => n88, A3 => n53, ZN => p(17));
   U83 : MUX2_X1 port map( A => n81, B => n18, S => A(17), Z => n56);
   U84 : MUX2_X1 port map( A => n95, B => n76, S => A(18), Z => n55);
   U85 : NAND3_X1 port map( A1 => n56, A2 => n55, A3 => n88, ZN => p(18));
   U86 : MUX2_X1 port map( A => n90, B => n18, S => A(18), Z => n58);
   U87 : MUX2_X1 port map( A => n95, B => n76, S => A(19), Z => n57);
   U88 : NAND3_X1 port map( A1 => n58, A2 => n88, A3 => n57, ZN => p(19));
   U89 : MUX2_X1 port map( A => n90, B => n18, S => A(19), Z => n60);
   U90 : MUX2_X1 port map( A => n95, B => n76, S => A(20), Z => n59);
   U91 : NAND3_X1 port map( A1 => n60, A2 => n88, A3 => n59, ZN => p(20));
   U92 : MUX2_X1 port map( A => n81, B => n18, S => A(20), Z => n62);
   U93 : MUX2_X1 port map( A => n95, B => n76, S => A(21), Z => n61);
   U94 : NAND3_X1 port map( A1 => n62, A2 => n88, A3 => n61, ZN => p(21));
   U95 : MUX2_X1 port map( A => n2, B => n18, S => A(21), Z => n64);
   U96 : MUX2_X1 port map( A => n95, B => n76, S => A(22), Z => n63);
   U97 : NAND3_X1 port map( A1 => n64, A2 => n88, A3 => n63, ZN => p(22));
   U98 : MUX2_X1 port map( A => n1, B => n18, S => A(22), Z => n66);
   U99 : MUX2_X1 port map( A => n95, B => n86, S => A(23), Z => n65);
   U100 : NAND3_X1 port map( A1 => n66, A2 => n88, A3 => n65, ZN => p(23));
   U101 : MUX2_X1 port map( A => n2, B => n18, S => A(23), Z => n68);
   U102 : MUX2_X1 port map( A => n95, B => n5, S => n96, Z => n67);
   U103 : NAND3_X1 port map( A1 => n68, A2 => n88, A3 => n67, ZN => p(24));
   U104 : MUX2_X1 port map( A => n1, B => n18, S => n96, Z => n70);
   U105 : MUX2_X1 port map( A => n95, B => n76, S => n96, Z => n69);
   U106 : NAND3_X1 port map( A1 => n70, A2 => n88, A3 => n69, ZN => p(25));
   U107 : INV_X1 port map( A => n71, ZN => n75);
   U108 : MUX2_X1 port map( A => n2, B => n18, S => n96, Z => n73);
   U109 : MUX2_X1 port map( A => n95, B => n6, S => n96, Z => n72);
   U110 : OAI211_X1 port map( C1 => n75, C2 => n74, A => n73, B => n72, ZN => 
                           p(26));
   U111 : MUX2_X1 port map( A => n95, B => n76, S => n96, Z => n78);
   U112 : MUX2_X1 port map( A => n2, B => n18, S => n96, Z => n77);
   U113 : NAND3_X1 port map( A1 => n88, A2 => n78, A3 => n77, ZN => p(27));
   U114 : MUX2_X1 port map( A => n1, B => n18, S => n96, Z => n80);
   U115 : MUX2_X1 port map( A => n95, B => n86, S => n96, Z => n79);
   U116 : NAND3_X1 port map( A1 => n80, A2 => n88, A3 => n79, ZN => p(28));
   U117 : MUX2_X1 port map( A => n90, B => n18, S => n96, Z => n83);
   U118 : MUX2_X1 port map( A => n95, B => n5, S => n96, Z => n82);
   U119 : NAND3_X1 port map( A1 => n83, A2 => n88, A3 => n82, ZN => p(29));
   U120 : MUX2_X1 port map( A => n90, B => n18, S => n96, Z => n85);
   U121 : MUX2_X1 port map( A => n95, B => n6, S => n96, Z => n84);
   U122 : NAND3_X1 port map( A1 => n85, A2 => n88, A3 => n84, ZN => p(30));
   U123 : MUX2_X1 port map( A => n90, B => n18, S => n96, Z => n89);
   U124 : MUX2_X1 port map( A => n95, B => n86, S => n96, Z => n87);
   U125 : NAND3_X1 port map( A1 => n89, A2 => n88, A3 => n87, ZN => p(31));
   U126 : MUX2_X1 port map( A => n1, B => n18, S => n96, Z => n91);
   U127 : NAND2_X1 port map( A1 => n95, A2 => n91, ZN => p(32));
   U25 : INV_X1 port map( A => b(1), ZN => n39);
   U10 : XNOR2_X1 port map( A => b(0), B => b(1), ZN => n16);
   U22 : INV_X1 port map( A => b(2), ZN => n74);
   U5 : AND2_X1 port map( A1 => b(2), A2 => n15, ZN => n3);
   U9 : OR2_X1 port map( A1 => n16, A2 => b(2), ZN => n76);
   U13 : BUF_X2 port map( A => n92, Z => n95);
   n96 <= '0';
   U3 : NAND2_X2 port map( A1 => b(1), A2 => b(0), ZN => n18);
   U11 : NAND2_X2 port map( A1 => b(2), A2 => n71, ZN => n88);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity ENC_12 is

   port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
         downto 0);  p : out std_logic_vector (32 downto 0));

end ENC_12;

architecture SYN_beh of ENC_12 is

   component NAND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n6, n8, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, 
      n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46
      , n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, 
      n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75
      , n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, 
      n90, n91, n92, n93, n94, n95, n96, n97, n102 : std_logic;

begin
   
   U11 : NAND3_X1 port map( A1 => b(2), A2 => n27, A3 => n26, ZN => n6);
   U24 : XNOR2_X1 port map( A => b(0), B => b(1), ZN => n21);
   U26 : INV_X1 port map( A => b(2), ZN => n24);
   U27 : NAND2_X1 port map( A1 => b(0), A2 => b(1), ZN => n23);
   U28 : INV_X1 port map( A => b(0), ZN => n27);
   U31 : NAND2_X1 port map( A1 => b(2), A2 => n23, ZN => n25);
   U32 : MUX2_X1 port map( A => n25, B => n90, S => A(0), Z => n22);
   U33 : OAI211_X1 port map( C1 => n24, C2 => n23, A => n95, B => n22, ZN => 
                           p(0));
   U35 : MUX2_X1 port map( A => n95, B => n94, S => A(0), Z => n29);
   U36 : NAND2_X1 port map( A1 => b(2), A2 => n25, ZN => n92);
   U37 : NAND2_X1 port map( A1 => n27, A2 => n26, ZN => n64);
   U38 : MUX2_X1 port map( A => n97, B => n90, S => A(1), Z => n28);
   U39 : NAND3_X1 port map( A1 => n29, A2 => n2, A3 => n28, ZN => p(1));
   U40 : MUX2_X1 port map( A => n95, B => n94, S => A(1), Z => n31);
   U41 : MUX2_X1 port map( A => n97, B => n8, S => A(2), Z => n30);
   U42 : NAND3_X1 port map( A1 => n31, A2 => n2, A3 => n30, ZN => p(2));
   U43 : MUX2_X1 port map( A => n95, B => n94, S => A(2), Z => n33);
   U44 : MUX2_X1 port map( A => n97, B => n90, S => A(3), Z => n32);
   U45 : NAND3_X1 port map( A1 => n33, A2 => n2, A3 => n32, ZN => p(3));
   U46 : MUX2_X1 port map( A => n6, B => n94, S => A(3), Z => n35);
   U47 : MUX2_X1 port map( A => n97, B => n8, S => A(4), Z => n34);
   U48 : NAND3_X1 port map( A1 => n35, A2 => n2, A3 => n34, ZN => p(4));
   U49 : MUX2_X1 port map( A => n95, B => n94, S => A(4), Z => n37);
   U50 : MUX2_X1 port map( A => n97, B => n8, S => A(5), Z => n36);
   U51 : NAND3_X1 port map( A1 => n37, A2 => n2, A3 => n36, ZN => p(5));
   U52 : MUX2_X1 port map( A => n95, B => n94, S => A(5), Z => n39);
   U53 : MUX2_X1 port map( A => n97, B => n8, S => A(6), Z => n38);
   U54 : NAND3_X1 port map( A1 => n39, A2 => n2, A3 => n38, ZN => p(6));
   U55 : MUX2_X1 port map( A => n95, B => n94, S => A(6), Z => n41);
   U56 : MUX2_X1 port map( A => n97, B => n90, S => A(7), Z => n40);
   U57 : NAND3_X1 port map( A1 => n41, A2 => n2, A3 => n40, ZN => p(7));
   U58 : MUX2_X1 port map( A => n95, B => n94, S => A(7), Z => n43);
   U59 : MUX2_X1 port map( A => n97, B => n8, S => A(8), Z => n42);
   U60 : NAND3_X1 port map( A1 => n43, A2 => n2, A3 => n42, ZN => p(8));
   U61 : MUX2_X1 port map( A => n95, B => n94, S => A(8), Z => n45);
   U62 : MUX2_X1 port map( A => n97, B => n90, S => A(9), Z => n44);
   U63 : NAND3_X1 port map( A1 => n45, A2 => n2, A3 => n44, ZN => p(9));
   U64 : MUX2_X1 port map( A => n6, B => n94, S => A(9), Z => n47);
   U65 : MUX2_X1 port map( A => n85, B => n8, S => A(10), Z => n46);
   U66 : NAND3_X1 port map( A1 => n47, A2 => n2, A3 => n46, ZN => p(10));
   U67 : MUX2_X1 port map( A => n95, B => n94, S => A(10), Z => n49);
   U68 : MUX2_X1 port map( A => n97, B => n90, S => A(11), Z => n48);
   U69 : NAND3_X1 port map( A1 => n49, A2 => n2, A3 => n48, ZN => p(11));
   U70 : MUX2_X1 port map( A => n95, B => n94, S => A(11), Z => n51);
   U71 : MUX2_X1 port map( A => n97, B => n90, S => A(12), Z => n50);
   U72 : NAND3_X1 port map( A1 => n51, A2 => n2, A3 => n50, ZN => p(12));
   U73 : MUX2_X1 port map( A => n95, B => n94, S => A(12), Z => n53);
   U74 : MUX2_X1 port map( A => n97, B => n8, S => A(13), Z => n52);
   U75 : NAND3_X1 port map( A1 => n53, A2 => n2, A3 => n52, ZN => p(13));
   U76 : MUX2_X1 port map( A => n95, B => n94, S => A(13), Z => n55);
   U77 : MUX2_X1 port map( A => n85, B => n8, S => A(14), Z => n54);
   U78 : NAND3_X1 port map( A1 => n55, A2 => n2, A3 => n54, ZN => p(14));
   U79 : MUX2_X1 port map( A => n95, B => n94, S => A(14), Z => n57);
   U80 : MUX2_X1 port map( A => n97, B => n90, S => A(15), Z => n56);
   U81 : NAND3_X1 port map( A1 => n57, A2 => n2, A3 => n56, ZN => p(15));
   U82 : MUX2_X1 port map( A => n95, B => n94, S => A(15), Z => n59);
   U83 : MUX2_X1 port map( A => n97, B => n8, S => A(16), Z => n58);
   U84 : NAND3_X1 port map( A1 => n59, A2 => n2, A3 => n58, ZN => p(16));
   U85 : MUX2_X1 port map( A => n95, B => n94, S => A(16), Z => n61);
   U86 : MUX2_X1 port map( A => n97, B => n8, S => A(17), Z => n60);
   U87 : NAND3_X1 port map( A1 => n61, A2 => n2, A3 => n60, ZN => p(17));
   U88 : MUX2_X1 port map( A => n6, B => n94, S => A(17), Z => n63);
   U89 : MUX2_X1 port map( A => n97, B => n90, S => A(18), Z => n62);
   U90 : NAND3_X1 port map( A1 => n62, A2 => n2, A3 => n63, ZN => p(18));
   U91 : NAND2_X1 port map( A1 => b(2), A2 => n64, ZN => n85);
   U92 : MUX2_X1 port map( A => n85, B => n8, S => A(19), Z => n66);
   U93 : MUX2_X1 port map( A => n95, B => n94, S => A(18), Z => n65);
   U94 : NAND3_X1 port map( A1 => n92, A2 => n66, A3 => n65, ZN => p(19));
   U95 : MUX2_X1 port map( A => n6, B => n94, S => A(19), Z => n68);
   U96 : MUX2_X1 port map( A => n97, B => n90, S => A(20), Z => n67);
   U97 : NAND3_X1 port map( A1 => n68, A2 => n2, A3 => n67, ZN => p(20));
   U98 : MUX2_X1 port map( A => n6, B => n94, S => A(20), Z => n70);
   U99 : MUX2_X1 port map( A => n97, B => n90, S => A(21), Z => n69);
   U100 : NAND3_X1 port map( A1 => n70, A2 => n2, A3 => n69, ZN => p(21));
   U101 : MUX2_X1 port map( A => n95, B => n94, S => A(21), Z => n72);
   U102 : MUX2_X1 port map( A => n85, B => n90, S => A(22), Z => n71);
   U103 : NAND3_X1 port map( A1 => n72, A2 => n92, A3 => n71, ZN => p(22));
   U104 : MUX2_X1 port map( A => n6, B => n94, S => A(22), Z => n74);
   U105 : MUX2_X1 port map( A => n97, B => n8, S => A(23), Z => n73);
   U106 : NAND3_X1 port map( A1 => n74, A2 => n2, A3 => n73, ZN => p(23));
   U107 : MUX2_X1 port map( A => n95, B => n94, S => A(23), Z => n76);
   U108 : MUX2_X1 port map( A => n85, B => n8, S => n102, Z => n75);
   U109 : NAND3_X1 port map( A1 => n76, A2 => n2, A3 => n75, ZN => p(24));
   U110 : MUX2_X1 port map( A => n6, B => n94, S => n102, Z => n78);
   U111 : MUX2_X1 port map( A => n97, B => n90, S => n102, Z => n77);
   U112 : NAND3_X1 port map( A1 => n78, A2 => n2, A3 => n77, ZN => p(25));
   U113 : MUX2_X1 port map( A => n6, B => n94, S => n102, Z => n80);
   U114 : MUX2_X1 port map( A => n97, B => n90, S => n102, Z => n79);
   U115 : NAND3_X1 port map( A1 => n80, A2 => n2, A3 => n79, ZN => p(26));
   U116 : MUX2_X1 port map( A => n6, B => n94, S => n102, Z => n82);
   U117 : MUX2_X1 port map( A => n97, B => n90, S => n102, Z => n81);
   U118 : NAND3_X1 port map( A1 => n82, A2 => n2, A3 => n81, ZN => p(27));
   U119 : MUX2_X1 port map( A => n95, B => n94, S => n102, Z => n84);
   U120 : MUX2_X1 port map( A => n97, B => n90, S => n102, Z => n83);
   U121 : NAND3_X1 port map( A1 => n84, A2 => n2, A3 => n83, ZN => p(28));
   U122 : MUX2_X1 port map( A => n95, B => n94, S => n102, Z => n87);
   U123 : MUX2_X1 port map( A => n97, B => n90, S => n102, Z => n86);
   U124 : NAND3_X1 port map( A1 => n87, A2 => n2, A3 => n86, ZN => p(29));
   U125 : MUX2_X1 port map( A => n95, B => n94, S => n102, Z => n89);
   U126 : MUX2_X1 port map( A => n97, B => n90, S => n102, Z => n88);
   U127 : NAND3_X1 port map( A1 => n89, A2 => n2, A3 => n88, ZN => p(30));
   U128 : MUX2_X1 port map( A => n6, B => n94, S => n102, Z => n93);
   U129 : MUX2_X1 port map( A => n97, B => n90, S => n102, Z => n91);
   U130 : NAND3_X1 port map( A1 => n93, A2 => n2, A3 => n91, ZN => p(31));
   U131 : MUX2_X1 port map( A => n6, B => n94, S => n102, Z => n96);
   U132 : NAND2_X1 port map( A1 => n97, A2 => n96, ZN => p(32));
   U29 : INV_X1 port map( A => b(1), ZN => n26);
   U25 : OR2_X2 port map( A1 => n21, A2 => b(2), ZN => n90);
   U17 : OR2_X1 port map( A1 => n21, A2 => b(2), ZN => n8);
   U8 : NAND2_X2 port map( A1 => b(2), A2 => n25, ZN => n2);
   U4 : NAND2_X2 port map( A1 => b(2), A2 => n64, ZN => n97);
   n102 <= '0';
   U3 : NAND2_X2 port map( A1 => b(0), A2 => b(1), ZN => n94);
   U5 : NAND3_X2 port map( A1 => b(2), A2 => n27, A3 => n26, ZN => n95);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity ENC_13 is

   port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
         downto 0);  p : out std_logic_vector (32 downto 0));

end ENC_13;

architecture SYN_beh of ENC_13 is

   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X4
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, 
      n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46
      , n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, 
      n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75
      , n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, 
      n90, n91, n92, n93, n94, n95, n98 : std_logic;

begin
   
   U8 : NAND2_X1 port map( A1 => n5, A2 => n82, ZN => n4);
   U21 : XNOR2_X1 port map( A => n59, B => b(1), ZN => n5);
   U22 : INV_X1 port map( A => b(2), ZN => n82);
   U23 : NAND2_X1 port map( A1 => b(0), A2 => b(1), ZN => n23);
   U24 : INV_X1 port map( A => b(0), ZN => n59);
   U25 : INV_X1 port map( A => b(1), ZN => n20);
   U27 : NAND2_X1 port map( A1 => b(2), A2 => n23, ZN => n24);
   U28 : XOR2_X1 port map( A => b(0), B => b(1), Z => n21);
   U30 : MUX2_X1 port map( A => n24, B => n86, S => A(0), Z => n22);
   U31 : OAI211_X1 port map( C1 => n82, C2 => n23, A => n93, B => n22, ZN => 
                           p(0));
   U33 : MUX2_X1 port map( A => n93, B => n92, S => A(0), Z => n26);
   U36 : MUX2_X1 port map( A => n95, B => n86, S => A(1), Z => n25);
   U37 : NAND3_X1 port map( A1 => n26, A2 => n89, A3 => n25, ZN => p(1));
   U38 : MUX2_X1 port map( A => n93, B => n92, S => A(1), Z => n28);
   U39 : MUX2_X1 port map( A => n95, B => n86, S => A(2), Z => n27);
   U40 : NAND3_X1 port map( A1 => n28, A2 => n89, A3 => n27, ZN => p(2));
   U41 : MUX2_X1 port map( A => n93, B => n92, S => A(2), Z => n30);
   U42 : MUX2_X1 port map( A => n95, B => n86, S => A(3), Z => n29);
   U43 : NAND3_X1 port map( A1 => n30, A2 => n89, A3 => n29, ZN => p(3));
   U44 : MUX2_X1 port map( A => n93, B => n92, S => A(3), Z => n32);
   U45 : MUX2_X1 port map( A => n95, B => n86, S => A(4), Z => n31);
   U46 : NAND3_X1 port map( A1 => n32, A2 => n89, A3 => n31, ZN => p(4));
   U47 : MUX2_X1 port map( A => n93, B => n92, S => A(4), Z => n34);
   U48 : MUX2_X1 port map( A => n95, B => n86, S => A(5), Z => n33);
   U49 : NAND3_X1 port map( A1 => n34, A2 => n89, A3 => n33, ZN => p(5));
   U50 : MUX2_X1 port map( A => n93, B => n92, S => A(5), Z => n36);
   U51 : MUX2_X1 port map( A => n95, B => n86, S => A(6), Z => n35);
   U52 : NAND3_X1 port map( A1 => n36, A2 => n89, A3 => n35, ZN => p(6));
   U53 : MUX2_X1 port map( A => n93, B => n92, S => A(6), Z => n38);
   U54 : MUX2_X1 port map( A => n95, B => n86, S => A(7), Z => n37);
   U55 : NAND3_X1 port map( A1 => n38, A2 => n89, A3 => n37, ZN => p(7));
   U56 : MUX2_X1 port map( A => n93, B => n92, S => A(7), Z => n40);
   U57 : MUX2_X1 port map( A => n95, B => n86, S => A(8), Z => n39);
   U58 : NAND3_X1 port map( A1 => n40, A2 => n89, A3 => n39, ZN => p(8));
   U59 : MUX2_X1 port map( A => n93, B => n92, S => A(8), Z => n42);
   U60 : MUX2_X1 port map( A => n95, B => n86, S => A(9), Z => n41);
   U61 : NAND3_X1 port map( A1 => n42, A2 => n89, A3 => n41, ZN => p(9));
   U62 : MUX2_X1 port map( A => n93, B => n92, S => A(9), Z => n44);
   U63 : MUX2_X1 port map( A => n95, B => n86, S => A(10), Z => n43);
   U64 : NAND3_X1 port map( A1 => n44, A2 => n89, A3 => n43, ZN => p(10));
   U65 : MUX2_X1 port map( A => n93, B => n92, S => A(10), Z => n46);
   U66 : MUX2_X1 port map( A => n95, B => n86, S => A(11), Z => n45);
   U67 : NAND3_X1 port map( A1 => n46, A2 => n89, A3 => n45, ZN => p(11));
   U68 : MUX2_X1 port map( A => n93, B => n92, S => A(11), Z => n48);
   U69 : MUX2_X1 port map( A => n95, B => n86, S => A(12), Z => n47);
   U70 : NAND3_X1 port map( A1 => n48, A2 => n89, A3 => n47, ZN => p(12));
   U71 : MUX2_X1 port map( A => n93, B => n92, S => A(12), Z => n50);
   U72 : MUX2_X1 port map( A => n95, B => n86, S => A(13), Z => n49);
   U73 : NAND3_X1 port map( A1 => n50, A2 => n89, A3 => n49, ZN => p(13));
   U74 : MUX2_X1 port map( A => n93, B => n92, S => A(13), Z => n52);
   U75 : MUX2_X1 port map( A => n95, B => n86, S => A(14), Z => n51);
   U76 : NAND3_X1 port map( A1 => n52, A2 => n89, A3 => n51, ZN => p(14));
   U77 : MUX2_X1 port map( A => n93, B => n92, S => A(14), Z => n54);
   U78 : MUX2_X1 port map( A => n95, B => n86, S => A(15), Z => n53);
   U79 : NAND3_X1 port map( A1 => n54, A2 => n89, A3 => n53, ZN => p(15));
   U80 : MUX2_X1 port map( A => n93, B => n92, S => A(15), Z => n56);
   U81 : MUX2_X1 port map( A => n95, B => n86, S => A(16), Z => n55);
   U82 : NAND3_X1 port map( A1 => n56, A2 => n89, A3 => n55, ZN => p(16));
   U83 : MUX2_X1 port map( A => n93, B => n92, S => A(16), Z => n58);
   U84 : MUX2_X1 port map( A => n95, B => n86, S => A(17), Z => n57);
   U85 : NAND3_X1 port map( A1 => n58, A2 => n89, A3 => n57, ZN => p(17));
   U86 : MUX2_X1 port map( A => n95, B => n4, S => A(18), Z => n61);
   U87 : MUX2_X1 port map( A => n93, B => n92, S => A(17), Z => n60);
   U88 : NAND3_X1 port map( A1 => n61, A2 => n60, A3 => n89, ZN => p(18));
   U89 : MUX2_X1 port map( A => n93, B => n92, S => A(18), Z => n63);
   U90 : MUX2_X1 port map( A => n95, B => n86, S => A(19), Z => n62);
   U91 : NAND3_X1 port map( A1 => n63, A2 => n89, A3 => n62, ZN => p(19));
   U92 : MUX2_X1 port map( A => n93, B => n92, S => A(19), Z => n65);
   U93 : MUX2_X1 port map( A => n95, B => n86, S => A(20), Z => n64);
   U94 : NAND3_X1 port map( A1 => n65, A2 => n89, A3 => n64, ZN => p(20));
   U95 : MUX2_X1 port map( A => n93, B => n92, S => A(20), Z => n67);
   U96 : MUX2_X1 port map( A => n95, B => n83, S => A(21), Z => n66);
   U97 : NAND3_X1 port map( A1 => n67, A2 => n89, A3 => n66, ZN => p(21));
   U98 : MUX2_X1 port map( A => n93, B => n92, S => A(21), Z => n69);
   U99 : MUX2_X1 port map( A => n95, B => n86, S => A(22), Z => n68);
   U100 : NAND3_X1 port map( A1 => n69, A2 => n89, A3 => n68, ZN => p(22));
   U101 : MUX2_X1 port map( A => n93, B => n92, S => A(22), Z => n71);
   U102 : MUX2_X1 port map( A => n95, B => n4, S => A(23), Z => n70);
   U103 : NAND3_X1 port map( A1 => n70, A2 => n89, A3 => n71, ZN => p(23));
   U104 : MUX2_X1 port map( A => n93, B => n92, S => A(23), Z => n73);
   U105 : MUX2_X1 port map( A => n95, B => n86, S => n98, Z => n72);
   U106 : NAND3_X1 port map( A1 => n73, A2 => n89, A3 => n72, ZN => p(24));
   U107 : MUX2_X1 port map( A => n93, B => n92, S => n98, Z => n75);
   U108 : MUX2_X1 port map( A => n95, B => n86, S => n98, Z => n74);
   U109 : NAND3_X1 port map( A1 => n75, A2 => n89, A3 => n74, ZN => p(25));
   U110 : MUX2_X1 port map( A => n93, B => n92, S => n98, Z => n77);
   U111 : MUX2_X1 port map( A => n95, B => n86, S => n98, Z => n76);
   U112 : NAND3_X1 port map( A1 => n77, A2 => n89, A3 => n76, ZN => p(26));
   U113 : MUX2_X1 port map( A => n93, B => n92, S => n98, Z => n79);
   U114 : MUX2_X1 port map( A => n95, B => n86, S => n98, Z => n78);
   U115 : NAND3_X1 port map( A1 => n79, A2 => n89, A3 => n78, ZN => p(27));
   U116 : MUX2_X1 port map( A => n93, B => n92, S => n98, Z => n81);
   U117 : MUX2_X1 port map( A => n95, B => n86, S => n98, Z => n80);
   U118 : NAND3_X1 port map( A1 => n81, A2 => n89, A3 => n80, ZN => p(28));
   U119 : NAND2_X1 port map( A1 => n5, A2 => n82, ZN => n83);
   U120 : MUX2_X1 port map( A => n95, B => n4, S => n98, Z => n85);
   U121 : MUX2_X1 port map( A => n93, B => n92, S => n98, Z => n84);
   U122 : NAND3_X1 port map( A1 => n85, A2 => n84, A3 => n89, ZN => p(29));
   U123 : MUX2_X1 port map( A => n93, B => n92, S => n98, Z => n88);
   U124 : MUX2_X1 port map( A => n95, B => n86, S => n98, Z => n87);
   U125 : NAND3_X1 port map( A1 => n88, A2 => n89, A3 => n87, ZN => p(30));
   U126 : MUX2_X1 port map( A => n95, B => n4, S => n98, Z => n91);
   U127 : MUX2_X1 port map( A => n93, B => n92, S => n98, Z => n90);
   U128 : NAND3_X1 port map( A1 => n91, A2 => n90, A3 => n89, ZN => p(31));
   U129 : MUX2_X1 port map( A => n93, B => n92, S => n98, Z => n94);
   U130 : NAND2_X1 port map( A1 => n95, A2 => n94, ZN => p(32));
   U35 : OAI21_X4 port map( B1 => b(1), B2 => b(0), A => b(2), ZN => n95);
   U26 : NAND3_X2 port map( A1 => b(2), A2 => n59, A3 => n20, ZN => n93);
   U34 : NAND2_X2 port map( A1 => b(2), A2 => n24, ZN => n89);
   n98 <= '0';
   U3 : NAND2_X2 port map( A1 => b(0), A2 => b(1), ZN => n92);
   U4 : NAND2_X2 port map( A1 => n21, A2 => n82, ZN => n86);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity ENC_14 is

   port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
         downto 0);  p : out std_logic_vector (32 downto 0));

end ENC_14;

architecture SYN_beh of ENC_14 is

   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
      n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46
      , n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, 
      n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75
      , n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, 
      n90, n91, n95, n96 : std_logic;

begin
   
   U21 : NAND3_X1 port map( A1 => b(1), A2 => b(0), A3 => b(2), ZN => n22);
   U23 : NAND2_X1 port map( A1 => n18, A2 => b(2), ZN => n23);
   U24 : INV_X1 port map( A => b(2), ZN => n20);
   U27 : MUX2_X1 port map( A => n20, B => n84, S => A(0), Z => n21);
   U28 : NAND3_X1 port map( A1 => n22, A2 => n89, A3 => n21, ZN => p(0));
   U30 : MUX2_X1 port map( A => n89, B => n88, S => A(0), Z => n25);
   U32 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => b(2), ZN => n91);
   U33 : MUX2_X1 port map( A => n95, B => n84, S => A(1), Z => n24);
   U34 : NAND3_X1 port map( A1 => n25, A2 => n86, A3 => n24, ZN => p(1));
   U35 : MUX2_X1 port map( A => n89, B => n88, S => A(1), Z => n27);
   U36 : MUX2_X1 port map( A => n95, B => n84, S => A(2), Z => n26);
   U37 : NAND3_X1 port map( A1 => n27, A2 => n86, A3 => n26, ZN => p(2));
   U38 : MUX2_X1 port map( A => n89, B => n88, S => A(2), Z => n29);
   U39 : MUX2_X1 port map( A => n95, B => n84, S => A(3), Z => n28);
   U40 : NAND3_X1 port map( A1 => n29, A2 => n86, A3 => n28, ZN => p(3));
   U41 : MUX2_X1 port map( A => n89, B => n88, S => A(3), Z => n31);
   U42 : MUX2_X1 port map( A => n95, B => n84, S => A(4), Z => n30);
   U43 : NAND3_X1 port map( A1 => n31, A2 => n86, A3 => n30, ZN => p(4));
   U44 : MUX2_X1 port map( A => n89, B => n88, S => A(4), Z => n33);
   U45 : MUX2_X1 port map( A => n95, B => n84, S => A(5), Z => n32);
   U46 : NAND3_X1 port map( A1 => n33, A2 => n86, A3 => n32, ZN => p(5));
   U47 : MUX2_X1 port map( A => n89, B => n88, S => A(5), Z => n35);
   U48 : MUX2_X1 port map( A => n95, B => n84, S => A(6), Z => n34);
   U49 : NAND3_X1 port map( A1 => n35, A2 => n86, A3 => n34, ZN => p(6));
   U50 : MUX2_X1 port map( A => n89, B => n88, S => A(6), Z => n37);
   U51 : MUX2_X1 port map( A => n95, B => n84, S => A(7), Z => n36);
   U52 : NAND3_X1 port map( A1 => n37, A2 => n86, A3 => n36, ZN => p(7));
   U53 : MUX2_X1 port map( A => n89, B => n88, S => A(7), Z => n39);
   U54 : MUX2_X1 port map( A => n95, B => n84, S => A(8), Z => n38);
   U55 : NAND3_X1 port map( A1 => n39, A2 => n86, A3 => n38, ZN => p(8));
   U56 : MUX2_X1 port map( A => n89, B => n88, S => A(8), Z => n41);
   U57 : MUX2_X1 port map( A => n95, B => n84, S => A(9), Z => n40);
   U58 : NAND3_X1 port map( A1 => n41, A2 => n86, A3 => n40, ZN => p(9));
   U59 : MUX2_X1 port map( A => n89, B => n88, S => A(9), Z => n43);
   U60 : MUX2_X1 port map( A => n95, B => n84, S => A(10), Z => n42);
   U61 : NAND3_X1 port map( A1 => n43, A2 => n86, A3 => n42, ZN => p(10));
   U62 : MUX2_X1 port map( A => n89, B => n88, S => A(10), Z => n45);
   U63 : MUX2_X1 port map( A => n95, B => n84, S => A(11), Z => n44);
   U64 : NAND3_X1 port map( A1 => n45, A2 => n86, A3 => n44, ZN => p(11));
   U65 : MUX2_X1 port map( A => n89, B => n88, S => A(11), Z => n47);
   U66 : MUX2_X1 port map( A => n95, B => n84, S => A(12), Z => n46);
   U67 : NAND3_X1 port map( A1 => n47, A2 => n86, A3 => n46, ZN => p(12));
   U68 : MUX2_X1 port map( A => n89, B => n88, S => A(12), Z => n49);
   U69 : MUX2_X1 port map( A => n95, B => n84, S => A(13), Z => n48);
   U70 : NAND3_X1 port map( A1 => n49, A2 => n86, A3 => n48, ZN => p(13));
   U71 : MUX2_X1 port map( A => n89, B => n88, S => A(13), Z => n51);
   U72 : MUX2_X1 port map( A => n95, B => n84, S => A(14), Z => n50);
   U73 : NAND3_X1 port map( A1 => n51, A2 => n86, A3 => n50, ZN => p(14));
   U74 : MUX2_X1 port map( A => n89, B => n88, S => A(14), Z => n53);
   U75 : MUX2_X1 port map( A => n95, B => n84, S => A(15), Z => n52);
   U76 : NAND3_X1 port map( A1 => n53, A2 => n86, A3 => n52, ZN => p(15));
   U77 : MUX2_X1 port map( A => n89, B => n88, S => A(15), Z => n55);
   U78 : MUX2_X1 port map( A => n95, B => n84, S => A(16), Z => n54);
   U79 : NAND3_X1 port map( A1 => n55, A2 => n86, A3 => n54, ZN => p(16));
   U80 : MUX2_X1 port map( A => n89, B => n88, S => A(16), Z => n57);
   U81 : MUX2_X1 port map( A => n95, B => n84, S => A(17), Z => n56);
   U82 : NAND3_X1 port map( A1 => n57, A2 => n86, A3 => n56, ZN => p(17));
   U83 : MUX2_X1 port map( A => n89, B => n88, S => A(17), Z => n59);
   U84 : MUX2_X1 port map( A => n95, B => n84, S => A(18), Z => n58);
   U85 : NAND3_X1 port map( A1 => n59, A2 => n86, A3 => n58, ZN => p(18));
   U86 : MUX2_X1 port map( A => n89, B => n88, S => A(18), Z => n61);
   U87 : MUX2_X1 port map( A => n95, B => n84, S => A(19), Z => n60);
   U88 : NAND3_X1 port map( A1 => n61, A2 => n86, A3 => n60, ZN => p(19));
   U89 : MUX2_X1 port map( A => n89, B => n88, S => A(19), Z => n63);
   U90 : MUX2_X1 port map( A => n95, B => n84, S => A(20), Z => n62);
   U91 : NAND3_X1 port map( A1 => n63, A2 => n86, A3 => n62, ZN => p(20));
   U92 : MUX2_X1 port map( A => n89, B => n88, S => A(20), Z => n65);
   U93 : MUX2_X1 port map( A => n95, B => n84, S => A(21), Z => n64);
   U94 : NAND3_X1 port map( A1 => n65, A2 => n86, A3 => n64, ZN => p(21));
   U95 : MUX2_X1 port map( A => n89, B => n88, S => A(21), Z => n67);
   U96 : MUX2_X1 port map( A => n95, B => n84, S => A(22), Z => n66);
   U97 : NAND3_X1 port map( A1 => n66, A2 => n86, A3 => n67, ZN => p(22));
   U98 : MUX2_X1 port map( A => n89, B => n88, S => A(22), Z => n69);
   U99 : MUX2_X1 port map( A => n95, B => n84, S => A(23), Z => n68);
   U100 : NAND3_X1 port map( A1 => n69, A2 => n86, A3 => n68, ZN => p(23));
   U101 : MUX2_X1 port map( A => n89, B => n88, S => A(23), Z => n71);
   U102 : MUX2_X1 port map( A => n95, B => n84, S => n96, Z => n70);
   U103 : NAND3_X1 port map( A1 => n71, A2 => n86, A3 => n70, ZN => p(24));
   U104 : MUX2_X1 port map( A => n89, B => n88, S => n96, Z => n73);
   U105 : MUX2_X1 port map( A => n95, B => n84, S => n96, Z => n72);
   U106 : NAND3_X1 port map( A1 => n73, A2 => n86, A3 => n72, ZN => p(25));
   U107 : MUX2_X1 port map( A => n89, B => n88, S => n96, Z => n75);
   U108 : MUX2_X1 port map( A => n95, B => n84, S => n96, Z => n74);
   U109 : NAND3_X1 port map( A1 => n75, A2 => n86, A3 => n74, ZN => p(26));
   U110 : MUX2_X1 port map( A => n89, B => n88, S => n96, Z => n77);
   U111 : MUX2_X1 port map( A => n95, B => n84, S => n96, Z => n76);
   U112 : NAND3_X1 port map( A1 => n77, A2 => n86, A3 => n76, ZN => p(27));
   U113 : MUX2_X1 port map( A => n89, B => n88, S => n96, Z => n79);
   U114 : MUX2_X1 port map( A => n95, B => n84, S => n96, Z => n78);
   U115 : NAND3_X1 port map( A1 => n79, A2 => n86, A3 => n78, ZN => p(28));
   U116 : MUX2_X1 port map( A => n89, B => n88, S => n96, Z => n81);
   U117 : MUX2_X1 port map( A => n95, B => n84, S => n96, Z => n80);
   U118 : NAND3_X1 port map( A1 => n81, A2 => n86, A3 => n80, ZN => p(29));
   U119 : MUX2_X1 port map( A => n89, B => n88, S => n96, Z => n83);
   U120 : MUX2_X1 port map( A => n95, B => n84, S => n96, Z => n82);
   U121 : NAND3_X1 port map( A1 => n83, A2 => n86, A3 => n82, ZN => p(30));
   U122 : MUX2_X1 port map( A => n89, B => n88, S => n96, Z => n87);
   U123 : MUX2_X1 port map( A => n95, B => n84, S => n96, Z => n85);
   U124 : NAND3_X1 port map( A1 => n87, A2 => n86, A3 => n85, ZN => p(31));
   U125 : MUX2_X1 port map( A => n89, B => n88, S => n96, Z => n90);
   U126 : NAND2_X1 port map( A1 => n95, A2 => n90, ZN => p(32));
   U31 : NAND3_X2 port map( A1 => b(1), A2 => n23, A3 => b(2), ZN => n86);
   U7 : BUF_X2 port map( A => n91, Z => n95);
   U8 : XOR2_X1 port map( A => b(0), B => b(1), Z => n19);
   U9 : INV_X1 port map( A => b(0), ZN => n18);
   n96 <= '0';
   U3 : NAND2_X2 port map( A1 => b(1), A2 => b(0), ZN => n88);
   U4 : NAND2_X2 port map( A1 => n19, A2 => n20, ZN => n84);
   U5 : OR2_X2 port map( A1 => n23, A2 => b(1), ZN => n89);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity ENC_15 is

   port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
         downto 0);  p : out std_logic_vector (32 downto 0));

end ENC_15;

architecture SYN_beh of ENC_15 is

   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n3, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, 
      n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41
      , n42, n43, n44, n45, n46, n47, n48, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, 
      n86, n87, n88, n89, n91, n92, n95 : std_logic;

begin
   
   U5 : OR2_X1 port map( A1 => b(0), A2 => b(1), ZN => n34);
   U8 : NAND2_X1 port map( A1 => b(2), A2 => n34, ZN => n1);
   U10 : NAND2_X1 port map( A1 => b(2), A2 => n34, ZN => n89);
   U16 : AOI21_X1 port map( B1 => n92, B2 => n95, A => n91, ZN => p(32));
   U17 : XNOR2_X1 port map( A => b(0), B => n19, ZN => n3);
   U19 : AND2_X1 port map( A1 => n16, A2 => n62, ZN => n92);
   U25 : INV_X1 port map( A => b(0), ZN => n18);
   U27 : NAND2_X1 port map( A1 => b(2), A2 => n16, ZN => n17);
   U29 : MUX2_X1 port map( A => n17, B => n85, S => A(0), Z => n15);
   U30 : OAI211_X1 port map( C1 => n91, C2 => n16, A => n84, B => n15, ZN => 
                           p(0));
   U32 : MUX2_X1 port map( A => n84, B => n16, S => A(0), Z => n21);
   U35 : MUX2_X1 port map( A => n1, B => n85, S => A(1), Z => n20);
   U36 : NAND3_X1 port map( A1 => n21, A2 => n87, A3 => n20, ZN => p(1));
   U37 : MUX2_X1 port map( A => n84, B => n16, S => A(1), Z => n23);
   U38 : MUX2_X1 port map( A => n1, B => n85, S => A(2), Z => n22);
   U39 : NAND3_X1 port map( A1 => n23, A2 => n87, A3 => n22, ZN => p(2));
   U40 : MUX2_X1 port map( A => n84, B => n16, S => A(2), Z => n25);
   U41 : MUX2_X1 port map( A => n62, B => n85, S => A(3), Z => n24);
   U42 : NAND3_X1 port map( A1 => n25, A2 => n87, A3 => n24, ZN => p(3));
   U43 : MUX2_X1 port map( A => n84, B => n16, S => A(3), Z => n27);
   U44 : MUX2_X1 port map( A => n1, B => n85, S => A(4), Z => n26);
   U45 : NAND3_X1 port map( A1 => n27, A2 => n87, A3 => n26, ZN => p(4));
   U46 : MUX2_X1 port map( A => n84, B => n16, S => A(4), Z => n29);
   U47 : MUX2_X1 port map( A => n62, B => n85, S => A(5), Z => n28);
   U48 : NAND3_X1 port map( A1 => n29, A2 => n87, A3 => n28, ZN => p(5));
   U49 : MUX2_X1 port map( A => n84, B => n16, S => A(5), Z => n31);
   U50 : MUX2_X1 port map( A => n1, B => n85, S => A(6), Z => n30);
   U51 : NAND3_X1 port map( A1 => n31, A2 => n87, A3 => n30, ZN => p(6));
   U52 : MUX2_X1 port map( A => n84, B => n16, S => A(6), Z => n33);
   U53 : MUX2_X1 port map( A => n1, B => n85, S => A(7), Z => n32);
   U54 : NAND3_X1 port map( A1 => n33, A2 => n87, A3 => n32, ZN => p(7));
   U55 : MUX2_X1 port map( A => n84, B => n16, S => A(7), Z => n36);
   U56 : MUX2_X1 port map( A => n1, B => n85, S => A(8), Z => n35);
   U57 : NAND3_X1 port map( A1 => n36, A2 => n87, A3 => n35, ZN => p(8));
   U58 : MUX2_X1 port map( A => n84, B => n16, S => A(8), Z => n38);
   U59 : MUX2_X1 port map( A => n62, B => n85, S => A(9), Z => n37);
   U60 : NAND3_X1 port map( A1 => n38, A2 => n87, A3 => n37, ZN => p(9));
   U61 : MUX2_X1 port map( A => n84, B => n16, S => A(9), Z => n40);
   U62 : MUX2_X1 port map( A => n62, B => n85, S => A(10), Z => n39);
   U63 : NAND3_X1 port map( A1 => n40, A2 => n87, A3 => n39, ZN => p(10));
   U64 : MUX2_X1 port map( A => n84, B => n16, S => A(10), Z => n42);
   U65 : MUX2_X1 port map( A => n62, B => n85, S => A(11), Z => n41);
   U66 : NAND3_X1 port map( A1 => n42, A2 => n87, A3 => n41, ZN => p(11));
   U67 : MUX2_X1 port map( A => n84, B => n16, S => A(11), Z => n44);
   U68 : MUX2_X1 port map( A => n62, B => n85, S => A(12), Z => n43);
   U69 : NAND3_X1 port map( A1 => n44, A2 => n87, A3 => n43, ZN => p(12));
   U70 : MUX2_X1 port map( A => n84, B => n16, S => A(12), Z => n46);
   U71 : MUX2_X1 port map( A => n62, B => n85, S => A(13), Z => n45);
   U72 : NAND3_X1 port map( A1 => n46, A2 => n87, A3 => n45, ZN => p(13));
   U73 : MUX2_X1 port map( A => n84, B => n16, S => A(13), Z => n48);
   U74 : MUX2_X1 port map( A => n62, B => n85, S => A(14), Z => n47);
   U75 : NAND3_X1 port map( A1 => n47, A2 => n87, A3 => n48, ZN => p(14));
   U76 : MUX2_X1 port map( A => n84, B => n16, S => A(14), Z => n51);
   U78 : MUX2_X1 port map( A => n1, B => n77, S => A(15), Z => n50);
   U79 : NAND3_X1 port map( A1 => n51, A2 => n87, A3 => n50, ZN => p(15));
   U80 : MUX2_X1 port map( A => n84, B => n16, S => A(15), Z => n53);
   U81 : MUX2_X1 port map( A => n1, B => n77, S => A(16), Z => n52);
   U82 : NAND3_X1 port map( A1 => n53, A2 => n87, A3 => n52, ZN => p(16));
   U83 : MUX2_X1 port map( A => n84, B => n16, S => A(16), Z => n55);
   U84 : MUX2_X1 port map( A => n1, B => n77, S => A(17), Z => n54);
   U85 : NAND3_X1 port map( A1 => n55, A2 => n87, A3 => n54, ZN => p(17));
   U86 : MUX2_X1 port map( A => n84, B => n16, S => A(17), Z => n57);
   U87 : MUX2_X1 port map( A => n62, B => n85, S => A(18), Z => n56);
   U88 : NAND3_X1 port map( A1 => n57, A2 => n87, A3 => n56, ZN => p(18));
   U89 : MUX2_X1 port map( A => n84, B => n16, S => A(18), Z => n59);
   U90 : MUX2_X1 port map( A => n62, B => n77, S => A(19), Z => n58);
   U91 : NAND3_X1 port map( A1 => n59, A2 => n87, A3 => n58, ZN => p(19));
   U92 : MUX2_X1 port map( A => n84, B => n16, S => A(19), Z => n61);
   U93 : MUX2_X1 port map( A => n62, B => n85, S => A(20), Z => n60);
   U94 : NAND3_X1 port map( A1 => n61, A2 => n87, A3 => n60, ZN => p(20));
   U95 : MUX2_X1 port map( A => n84, B => n16, S => A(20), Z => n64);
   U96 : MUX2_X1 port map( A => n62, B => n77, S => A(21), Z => n63);
   U97 : NAND3_X1 port map( A1 => n64, A2 => n87, A3 => n63, ZN => p(21));
   U98 : MUX2_X1 port map( A => n84, B => n16, S => A(21), Z => n66);
   U99 : MUX2_X1 port map( A => n1, B => n77, S => A(22), Z => n65);
   U100 : NAND3_X1 port map( A1 => n66, A2 => n87, A3 => n65, ZN => p(22));
   U101 : MUX2_X1 port map( A => n84, B => n16, S => A(22), Z => n68);
   U102 : MUX2_X1 port map( A => n89, B => n85, S => A(23), Z => n67);
   U103 : NAND3_X1 port map( A1 => n68, A2 => n87, A3 => n67, ZN => p(23));
   U104 : MUX2_X1 port map( A => n84, B => n16, S => A(23), Z => n70);
   U105 : MUX2_X1 port map( A => n89, B => n77, S => n95, Z => n69);
   U106 : NAND3_X1 port map( A1 => n70, A2 => n87, A3 => n69, ZN => p(24));
   U107 : MUX2_X1 port map( A => n84, B => n16, S => n95, Z => n72);
   U108 : MUX2_X1 port map( A => n89, B => n77, S => n95, Z => n71);
   U109 : NAND3_X1 port map( A1 => n72, A2 => n71, A3 => n87, ZN => p(25));
   U110 : MUX2_X1 port map( A => n84, B => n16, S => n95, Z => n74);
   U111 : MUX2_X1 port map( A => n89, B => n85, S => n95, Z => n73);
   U112 : NAND3_X1 port map( A1 => n74, A2 => n73, A3 => n87, ZN => p(26));
   U113 : MUX2_X1 port map( A => n84, B => n16, S => n95, Z => n76);
   U114 : MUX2_X1 port map( A => n62, B => n85, S => n95, Z => n75);
   U115 : NAND3_X1 port map( A1 => n76, A2 => n87, A3 => n75, ZN => p(27));
   U116 : MUX2_X1 port map( A => n84, B => n16, S => n95, Z => n79);
   U117 : MUX2_X1 port map( A => n89, B => n77, S => n95, Z => n78);
   U118 : NAND3_X1 port map( A1 => n79, A2 => n87, A3 => n78, ZN => p(28));
   U119 : MUX2_X1 port map( A => n62, B => n77, S => n95, Z => n81);
   U120 : MUX2_X1 port map( A => n84, B => n16, S => n95, Z => n80);
   U121 : NAND3_X1 port map( A1 => n81, A2 => n87, A3 => n80, ZN => p(29));
   U122 : MUX2_X1 port map( A => n84, B => n16, S => n95, Z => n83);
   U123 : MUX2_X1 port map( A => n1, B => n77, S => n95, Z => n82);
   U124 : NAND3_X1 port map( A1 => n83, A2 => n87, A3 => n82, ZN => p(30));
   U125 : MUX2_X1 port map( A => n84, B => n16, S => n95, Z => n88);
   U126 : MUX2_X1 port map( A => n62, B => n77, S => n95, Z => n86);
   U127 : NAND3_X1 port map( A1 => n88, A2 => n87, A3 => n86, ZN => p(31));
   U24 : INV_X1 port map( A => b(1), ZN => n19);
   U34 : NAND2_X1 port map( A1 => b(2), A2 => n34, ZN => n62);
   U28 : NAND2_X1 port map( A1 => n3, A2 => n91, ZN => n85);
   U4 : INV_X1 port map( A => b(2), ZN => n91);
   U6 : NAND2_X1 port map( A1 => n3, A2 => n91, ZN => n77);
   n95 <= '0';
   U3 : NAND3_X2 port map( A1 => n19, A2 => n18, A3 => b(2), ZN => n84);
   U9 : NAND2_X2 port map( A1 => b(2), A2 => n17, ZN => n87);
   U11 : NAND2_X2 port map( A1 => b(0), A2 => b(1), ZN => n16);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity ENC_16 is

   port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
         downto 0);  p : out std_logic_vector (32 downto 0));

end ENC_16;

architecture SYN_beh of ENC_16 is

   component NAND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net25742, net25743, net25747, net25758, net25762, net25763, net25766,
      net25769, net25772, net25784, net25837, net27258, net27256, net29658, 
      net27440, net25801, net25768, net25767, net25746, net25757, n6, n7, n8, 
      n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
      n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38
      , n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, 
      n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67
      , n68, n69, n70, n71, n72, n76, n77, n78, n79, n80, n81 : std_logic;

begin
   
   U11 : INV_X1 port map( A => b(0), ZN => net25757);
   U13 : XNOR2_X1 port map( A => b(0), B => n6, ZN => net29658);
   U14 : AND2_X1 port map( A1 => net25757, A2 => n6, ZN => net27440);
   U15 : NAND3_X1 port map( A1 => b(2), A2 => net25757, A3 => n6, ZN => 
                           net25772);
   U17 : INV_X1 port map( A => net25746, ZN => p(31));
   U19 : AND3_X1 port map( A1 => b(0), A2 => net25801, A3 => b(1), ZN => n13);
   U20 : INV_X1 port map( A => b(2), ZN => net25801);
   U22 : NAND2_X1 port map( A1 => net29658, A2 => net25801, ZN => net25747);
   U25 : INV_X1 port map( A => n10, ZN => n9);
   U26 : MUX2_X1 port map( A => net25768, B => n12, S => n81, Z => n7);
   U27 : AOI221_X1 port map( B1 => net27258, B2 => n80, C1 => n81, C2 => 
                           net25766, A => net25767, ZN => net25762);
   U29 : INV_X1 port map( A => net25769, ZN => net25768);
   U30 : MUX2_X1 port map( A => net25768, B => n12, S => n81, Z => net25767);
   U31 : MUX2_X1 port map( A => net25769, B => n11, S => n81, Z => net25743);
   U32 : AND2_X1 port map( A1 => b(0), A2 => b(1), ZN => n12);
   U34 : NAND2_X1 port map( A1 => n11, A2 => b(2), ZN => n10);
   U35 : MUX2_X1 port map( A => n10, B => net25784, S => A(0), Z => net25837);
   U37 : NAND2_X1 port map( A1 => b(0), A2 => b(1), ZN => n11);
   U46 : NAND2_X1 port map( A1 => net29658, A2 => net25801, ZN => net25784);
   U47 : INV_X1 port map( A => net25742, ZN => net27258);
   U48 : OAI211_X1 port map( C1 => net25801, C2 => n11, A => net25769, B => 
                           net25837, ZN => p(0));
   U49 : MUX2_X1 port map( A => net25769, B => net25758, S => A(0), Z => n16);
   U50 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => b(2), ZN => net25742);
   U51 : MUX2_X1 port map( A => net27256, B => n14, S => A(1), Z => n15);
   U52 : NAND3_X1 port map( A1 => n16, A2 => net25763, A3 => n15, ZN => p(1));
   U53 : MUX2_X1 port map( A => net25769, B => net25758, S => A(1), Z => n18);
   U54 : MUX2_X1 port map( A => net27256, B => net25784, S => A(2), Z => n17);
   U55 : NAND3_X1 port map( A1 => n18, A2 => net25763, A3 => n17, ZN => p(2));
   U56 : MUX2_X1 port map( A => net25769, B => net25758, S => A(2), Z => n20);
   U57 : MUX2_X1 port map( A => net27256, B => n14, S => A(3), Z => n19);
   U58 : NAND3_X1 port map( A1 => n20, A2 => net25763, A3 => n19, ZN => p(3));
   U59 : MUX2_X1 port map( A => net25769, B => net25758, S => A(3), Z => n22);
   U60 : MUX2_X1 port map( A => net27256, B => net25784, S => A(4), Z => n21);
   U61 : NAND3_X1 port map( A1 => n22, A2 => net25763, A3 => n21, ZN => p(4));
   U62 : MUX2_X1 port map( A => net25769, B => net25758, S => A(4), Z => n24);
   U63 : MUX2_X1 port map( A => net27256, B => net25784, S => A(5), Z => n23);
   U64 : NAND3_X1 port map( A1 => n24, A2 => net25763, A3 => n23, ZN => p(5));
   U65 : MUX2_X1 port map( A => net27256, B => net25784, S => A(6), Z => n26);
   U66 : MUX2_X1 port map( A => net25769, B => net25758, S => A(5), Z => n25);
   U67 : NAND3_X1 port map( A1 => net25763, A2 => n26, A3 => n25, ZN => p(6));
   U68 : MUX2_X1 port map( A => net25769, B => net25758, S => A(6), Z => n28);
   U69 : MUX2_X1 port map( A => net27256, B => net25747, S => A(7), Z => n27);
   U70 : NAND3_X1 port map( A1 => n28, A2 => net25763, A3 => n27, ZN => p(7));
   U71 : MUX2_X1 port map( A => net27256, B => net25784, S => A(8), Z => n30);
   U72 : MUX2_X1 port map( A => net25769, B => net25758, S => A(7), Z => n29);
   U73 : NAND3_X1 port map( A1 => n30, A2 => net25763, A3 => n29, ZN => p(8));
   U74 : MUX2_X1 port map( A => net27256, B => net25784, S => A(9), Z => n32);
   U75 : MUX2_X1 port map( A => net25769, B => net25758, S => A(8), Z => n31);
   U76 : NAND3_X1 port map( A1 => n32, A2 => net25763, A3 => n31, ZN => p(9));
   U77 : MUX2_X1 port map( A => net25769, B => net25758, S => A(9), Z => n34);
   U78 : MUX2_X1 port map( A => net27256, B => net25784, S => A(10), Z => n33);
   U79 : NAND3_X1 port map( A1 => n34, A2 => net25763, A3 => n33, ZN => p(10));
   U80 : MUX2_X1 port map( A => net27256, B => n14, S => A(11), Z => n36);
   U81 : MUX2_X1 port map( A => net25769, B => net25758, S => A(10), Z => n35);
   U82 : NAND3_X1 port map( A1 => n36, A2 => net25763, A3 => n35, ZN => p(11));
   U83 : MUX2_X1 port map( A => net27256, B => net25784, S => A(12), Z => n38);
   U84 : MUX2_X1 port map( A => net25769, B => net25758, S => A(11), Z => n37);
   U85 : NAND3_X1 port map( A1 => n38, A2 => net25763, A3 => n37, ZN => p(12));
   U86 : MUX2_X1 port map( A => net27256, B => n14, S => A(13), Z => n40);
   U87 : MUX2_X1 port map( A => net25769, B => net25758, S => A(12), Z => n39);
   U88 : NAND3_X1 port map( A1 => n40, A2 => net25763, A3 => n39, ZN => p(13));
   U89 : MUX2_X1 port map( A => net25769, B => net25758, S => A(13), Z => n42);
   U90 : MUX2_X1 port map( A => net27256, B => net25784, S => A(14), Z => n41);
   U91 : NAND3_X1 port map( A1 => n42, A2 => net25763, A3 => n41, ZN => p(14));
   U92 : MUX2_X1 port map( A => net25769, B => net25758, S => A(14), Z => n44);
   U93 : MUX2_X1 port map( A => net27256, B => net25747, S => A(15), Z => n43);
   U94 : NAND3_X1 port map( A1 => n44, A2 => net25763, A3 => n43, ZN => p(15));
   U95 : MUX2_X1 port map( A => net25772, B => net25758, S => A(15), Z => n46);
   U96 : MUX2_X1 port map( A => net27256, B => n14, S => A(16), Z => n45);
   U97 : NAND3_X1 port map( A1 => n46, A2 => net25763, A3 => n45, ZN => p(16));
   U98 : MUX2_X1 port map( A => net25769, B => n11, S => A(16), Z => n48);
   U99 : MUX2_X1 port map( A => net25742, B => net25747, S => A(17), Z => n47);
   U100 : NAND3_X1 port map( A1 => n47, A2 => net25763, A3 => n48, ZN => p(17))
                           ;
   U101 : MUX2_X1 port map( A => net25769, B => net25758, S => A(17), Z => n50)
                           ;
   U102 : MUX2_X1 port map( A => net27256, B => n14, S => A(18), Z => n49);
   U103 : NAND3_X1 port map( A1 => n50, A2 => net25763, A3 => n49, ZN => p(18))
                           ;
   U104 : MUX2_X1 port map( A => net27256, B => net25784, S => A(19), Z => n52)
                           ;
   U105 : MUX2_X1 port map( A => net25769, B => net25758, S => A(18), Z => n51)
                           ;
   U106 : NAND3_X1 port map( A1 => n52, A2 => net25763, A3 => n51, ZN => p(19))
                           ;
   U107 : MUX2_X1 port map( A => net27256, B => n14, S => A(20), Z => n54);
   U108 : MUX2_X1 port map( A => net25769, B => net25758, S => A(19), Z => n53)
                           ;
   U109 : NAND3_X1 port map( A1 => n54, A2 => net25763, A3 => n53, ZN => p(20))
                           ;
   U110 : MUX2_X1 port map( A => net27256, B => net25784, S => A(21), Z => n56)
                           ;
   U111 : MUX2_X1 port map( A => net25769, B => net25758, S => A(20), Z => n55)
                           ;
   U112 : NAND3_X1 port map( A1 => n56, A2 => net25763, A3 => n55, ZN => p(21))
                           ;
   U113 : MUX2_X1 port map( A => net25769, B => net25758, S => A(21), Z => n58)
                           ;
   U114 : MUX2_X1 port map( A => net27256, B => n14, S => A(22), Z => n57);
   U115 : NAND3_X1 port map( A1 => n58, A2 => net25763, A3 => n57, ZN => p(22))
                           ;
   U116 : MUX2_X1 port map( A => net25769, B => net25758, S => A(22), Z => n60)
                           ;
   U117 : MUX2_X1 port map( A => net27256, B => n14, S => A(23), Z => n59);
   U118 : NAND3_X1 port map( A1 => n60, A2 => net25763, A3 => n59, ZN => p(23))
                           ;
   U119 : MUX2_X1 port map( A => net25772, B => n11, S => A(23), Z => n62);
   U120 : MUX2_X1 port map( A => net27256, B => n14, S => n81, Z => n61);
   U121 : NAND3_X1 port map( A1 => n62, A2 => net25763, A3 => n61, ZN => p(24))
                           ;
   U122 : MUX2_X1 port map( A => net25772, B => n11, S => n81, Z => n64);
   U123 : MUX2_X1 port map( A => net25742, B => net25784, S => n81, Z => n63);
   U124 : NAND3_X1 port map( A1 => n64, A2 => net25763, A3 => n63, ZN => p(25))
                           ;
   U125 : MUX2_X1 port map( A => net25772, B => n11, S => n81, Z => n66);
   U126 : MUX2_X1 port map( A => net25742, B => n14, S => n81, Z => n65);
   U127 : NAND3_X1 port map( A1 => n66, A2 => net25763, A3 => n65, ZN => p(26))
                           ;
   U128 : MUX2_X1 port map( A => net25769, B => n11, S => n81, Z => n68);
   U129 : MUX2_X1 port map( A => net27256, B => n14, S => n81, Z => n67);
   U130 : NAND3_X1 port map( A1 => n68, A2 => net25763, A3 => n67, ZN => p(27))
                           ;
   U131 : MUX2_X1 port map( A => net25769, B => n11, S => n81, Z => n70);
   U132 : MUX2_X1 port map( A => net27256, B => n14, S => n81, Z => n69);
   U133 : NAND3_X1 port map( A1 => n70, A2 => net25763, A3 => n69, ZN => p(28))
                           ;
   U134 : MUX2_X1 port map( A => net25772, B => n11, S => n81, Z => n72);
   U135 : MUX2_X1 port map( A => net27256, B => net25747, S => n81, Z => n71);
   U136 : NAND3_X1 port map( A1 => n72, A2 => net25763, A3 => n71, ZN => p(29))
                           ;
   U137 : INV_X1 port map( A => n14, ZN => net25766);
   U138 : NAND2_X1 port map( A1 => net25762, A2 => net25763, ZN => p(30));
   U139 : NAND2_X1 port map( A1 => net27256, A2 => net25743, ZN => p(32));
   U21 : NAND3_X1 port map( A1 => b(1), A2 => net25801, A3 => b(0), ZN => 
                           net25758);
   U36 : NAND2_X2 port map( A1 => b(2), A2 => n10, ZN => net25763);
   U3 : OAI21_X1 port map( B1 => n8, B2 => n7, A => net25747, ZN => net25746);
   U4 : NAND2_X1 port map( A1 => net29658, A2 => net25801, ZN => n14);
   U5 : INV_X1 port map( A => net27440, ZN => n79);
   U6 : NOR2_X1 port map( A1 => net27440, A2 => n12, ZN => n77);
   U9 : INV_X1 port map( A => b(1), ZN => n6);
   U16 : INV_X1 port map( A => n76, ZN => n8);
   U18 : AOI21_X1 port map( B1 => n78, B2 => n79, A => n77, ZN => n76);
   U23 : NOR2_X1 port map( A1 => n9, A2 => n13, ZN => n78);
   n80 <= '1';
   n81 <= '0';
   U7 : INV_X2 port map( A => net27258, ZN => net27256);
   U8 : NAND3_X2 port map( A1 => n6, A2 => net25757, A3 => b(2), ZN => net25769
                           );

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity ENC_0 is

   port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
         downto 0);  p : out std_logic_vector (32 downto 0));

end ENC_0;

architecture SYN_beh of ENC_0 is

   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n17, n19, n23, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, 
      n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49
      , n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, 
      n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n75, n76, n78, n80, n82
      , n84, n86, n87, n88, n90, n93, n94, n99, n102, n103, n104, n105, n106, 
      n107, n108, n109, n110, n111, n113, n114, n115, n116, n117, n119, n120, 
      n121, n122, n123, n125, n126, n127, n129, n130, n131 : std_logic;

begin
   
   U9 : NAND3_X2 port map( A1 => n86, A2 => n23, A3 => b(1), ZN => n88);
   U11 : NAND2_X1 port map( A1 => b(1), A2 => n23, ZN => n2);
   U12 : NAND2_X1 port map( A1 => b(1), A2 => n23, ZN => n69);
   U25 : INV_X1 port map( A => b(2), ZN => n23);
   U27 : INV_X1 port map( A => b(1), ZN => n17);
   U30 : MUX2_X1 port map( A => n23, B => n69, S => A(0), Z => n19);
   U31 : OAI211_X1 port map( C1 => n23, C2 => n130, A => n93, B => n19, ZN => 
                           p(0));
   U35 : MUX2_X1 port map( A => n94, B => n69, S => A(1), Z => n25);
   U36 : NAND3_X1 port map( A1 => n26, A2 => n88, A3 => n25, ZN => p(1));
   U38 : MUX2_X1 port map( A => n94, B => n2, S => A(2), Z => n27);
   U39 : NAND3_X1 port map( A1 => n28, A2 => n88, A3 => n27, ZN => p(2));
   U41 : MUX2_X1 port map( A => n94, B => n2, S => A(3), Z => n29);
   U42 : NAND3_X1 port map( A1 => n30, A2 => n88, A3 => n29, ZN => p(3));
   U44 : MUX2_X1 port map( A => n94, B => n2, S => A(4), Z => n31);
   U45 : NAND3_X1 port map( A1 => n32, A2 => n88, A3 => n31, ZN => p(4));
   U47 : MUX2_X1 port map( A => n94, B => n69, S => A(5), Z => n33);
   U48 : NAND3_X1 port map( A1 => n34, A2 => n88, A3 => n33, ZN => p(5));
   U50 : MUX2_X1 port map( A => n94, B => n69, S => A(6), Z => n35);
   U51 : NAND3_X1 port map( A1 => n36, A2 => n88, A3 => n35, ZN => p(6));
   U53 : MUX2_X1 port map( A => n94, B => n69, S => A(7), Z => n37);
   U54 : NAND3_X1 port map( A1 => n38, A2 => n88, A3 => n37, ZN => p(7));
   U55 : MUX2_X1 port map( A => n94, B => n2, S => A(8), Z => n40);
   U57 : NAND3_X1 port map( A1 => n88, A2 => n40, A3 => n39, ZN => p(8));
   U58 : MUX2_X1 port map( A => n94, B => n69, S => A(9), Z => n42);
   U60 : NAND3_X1 port map( A1 => n88, A2 => n42, A3 => n41, ZN => p(9));
   U62 : MUX2_X1 port map( A => n94, B => n2, S => A(10), Z => n43);
   U63 : NAND3_X1 port map( A1 => n44, A2 => n88, A3 => n43, ZN => p(10));
   U65 : MUX2_X1 port map( A => n94, B => n69, S => A(11), Z => n45);
   U66 : NAND3_X1 port map( A1 => n46, A2 => n88, A3 => n45, ZN => p(11));
   U68 : MUX2_X1 port map( A => n94, B => n86, S => A(12), Z => n47);
   U69 : NAND3_X1 port map( A1 => n48, A2 => n88, A3 => n47, ZN => p(12));
   U71 : MUX2_X1 port map( A => n94, B => n69, S => A(13), Z => n49);
   U72 : NAND3_X1 port map( A1 => n50, A2 => n88, A3 => n49, ZN => p(13));
   U74 : MUX2_X1 port map( A => n94, B => n69, S => A(14), Z => n51);
   U75 : NAND3_X1 port map( A1 => n52, A2 => n88, A3 => n51, ZN => p(14));
   U77 : MUX2_X1 port map( A => n94, B => n2, S => A(15), Z => n53);
   U78 : NAND3_X1 port map( A1 => n54, A2 => n88, A3 => n53, ZN => p(15));
   U80 : MUX2_X1 port map( A => n94, B => n69, S => A(16), Z => n55);
   U81 : NAND3_X1 port map( A1 => n56, A2 => n88, A3 => n55, ZN => p(16));
   U83 : MUX2_X1 port map( A => n94, B => n86, S => A(17), Z => n57);
   U84 : NAND3_X1 port map( A1 => n58, A2 => n88, A3 => n57, ZN => p(17));
   U86 : NAND2_X1 port map( A1 => b(1), A2 => b(2), ZN => n87);
   U87 : MUX2_X1 port map( A => n87, B => n86, S => A(18), Z => n59);
   U88 : NAND3_X1 port map( A1 => n60, A2 => n88, A3 => n59, ZN => p(18));
   U90 : MUX2_X1 port map( A => n94, B => n86, S => A(19), Z => n61);
   U91 : NAND3_X1 port map( A1 => n62, A2 => n88, A3 => n61, ZN => p(19));
   U92 : MUX2_X1 port map( A => n94, B => n86, S => A(20), Z => n64);
   U94 : NAND3_X1 port map( A1 => n64, A2 => n63, A3 => n88, ZN => p(20));
   U96 : MUX2_X1 port map( A => n94, B => n2, S => A(21), Z => n65);
   U97 : NAND3_X1 port map( A1 => n66, A2 => n88, A3 => n65, ZN => p(21));
   U99 : MUX2_X1 port map( A => n94, B => n2, S => A(22), Z => n67);
   U100 : NAND3_X1 port map( A1 => n68, A2 => n88, A3 => n67, ZN => p(22));
   U102 : MUX2_X1 port map( A => n94, B => n2, S => A(23), Z => n70);
   U103 : NAND3_X1 port map( A1 => n71, A2 => n88, A3 => n70, ZN => p(23));
   U104 : MUX2_X1 port map( A => n87, B => n86, S => n131, Z => n73);
   U106 : NAND3_X1 port map( A1 => n73, A2 => n88, A3 => n72, ZN => p(24));
   U107 : MUX2_X1 port map( A => n87, B => n86, S => n131, Z => n75);
   U109 : NAND3_X1 port map( A1 => n75, A2 => n88, A3 => n93, ZN => p(25));
   U111 : MUX2_X1 port map( A => n87, B => n86, S => n131, Z => n76);
   U112 : NAND3_X1 port map( A1 => n93, A2 => n88, A3 => n76, ZN => p(26));
   U114 : MUX2_X1 port map( A => n87, B => n86, S => n131, Z => n78);
   U115 : NAND3_X1 port map( A1 => n93, A2 => n88, A3 => n78, ZN => p(27));
   U117 : MUX2_X1 port map( A => n87, B => n86, S => n131, Z => n80);
   U118 : NAND3_X1 port map( A1 => n93, A2 => n88, A3 => n80, ZN => p(28));
   U120 : MUX2_X1 port map( A => n94, B => n86, S => n131, Z => n82);
   U121 : NAND3_X1 port map( A1 => n93, A2 => n88, A3 => n82, ZN => p(29));
   U123 : MUX2_X1 port map( A => n94, B => n86, S => n131, Z => n84);
   U124 : NAND3_X1 port map( A1 => n93, A2 => n88, A3 => n84, ZN => p(30));
   U125 : MUX2_X1 port map( A => n87, B => n86, S => n131, Z => n90);
   U127 : NAND3_X1 port map( A1 => n90, A2 => n93, A3 => n88, ZN => p(31));
   U129 : NAND2_X1 port map( A1 => n94, A2 => n93, ZN => p(32));
   U23 : OR2_X1 port map( A1 => n17, A2 => b(2), ZN => n86);
   U6 : INV_X1 port map( A => n93, ZN => n99);
   U10 : NAND2_X1 port map( A1 => n17, A2 => b(2), ZN => n93);
   U13 : NAND2_X1 port map( A1 => n99, A2 => n102, ZN => n54);
   U14 : NAND2_X1 port map( A1 => n99, A2 => n117, ZN => n72);
   U15 : NAND2_X1 port map( A1 => n99, A2 => n119, ZN => n71);
   U16 : NAND2_X1 port map( A1 => n99, A2 => n116, ZN => n36);
   U17 : NAND2_X1 port map( A1 => n99, A2 => n105, ZN => n34);
   U20 : NAND2_X1 port map( A1 => n99, A2 => n109, ZN => n52);
   U21 : NAND2_X1 port map( A1 => n99, A2 => n111, ZN => n48);
   U22 : NAND2_X1 port map( A1 => n99, A2 => n103, ZN => n46);
   U24 : NAND2_X1 port map( A1 => n99, A2 => n115, ZN => n38);
   U26 : INV_X1 port map( A => A(22), ZN => n119);
   U28 : INV_X1 port map( A => A(13), ZN => n109);
   U29 : INV_X1 port map( A => A(20), ZN => n121);
   U32 : INV_X1 port map( A => A(17), ZN => n125);
   U33 : INV_X1 port map( A => A(3), ZN => n106);
   U34 : INV_X1 port map( A => A(4), ZN => n105);
   U37 : INV_X1 port map( A => A(19), ZN => n122);
   U40 : INV_X1 port map( A => A(16), ZN => n126);
   U46 : INV_X1 port map( A => A(1), ZN => n108);
   U49 : INV_X1 port map( A => A(18), ZN => n123);
   U52 : NAND2_X1 port map( A1 => n99, A2 => n108, ZN => n28);
   U59 : INV_X1 port map( A => A(15), ZN => n127);
   U61 : INV_X1 port map( A => A(21), ZN => n120);
   U64 : NAND2_X1 port map( A1 => n99, A2 => n106, ZN => n32);
   U67 : NAND2_X1 port map( A1 => n99, A2 => n127, ZN => n56);
   U70 : NAND2_X1 port map( A1 => n99, A2 => n110, ZN => n50);
   U73 : NAND2_X1 port map( A1 => n99, A2 => n120, ZN => n68);
   U76 : NAND2_X1 port map( A1 => n99, A2 => n121, ZN => n66);
   U79 : NAND2_X1 port map( A1 => n99, A2 => n126, ZN => n58);
   U82 : NAND2_X1 port map( A1 => n99, A2 => n125, ZN => n60);
   U93 : INV_X1 port map( A => A(23), ZN => n117);
   U95 : INV_X1 port map( A => A(14), ZN => n102);
   U98 : INV_X1 port map( A => A(10), ZN => n103);
   U101 : NAND2_X1 port map( A1 => n99, A2 => n104, ZN => n44);
   U105 : INV_X1 port map( A => A(9), ZN => n104);
   U108 : NAND2_X1 port map( A1 => n99, A2 => n107, ZN => n30);
   U110 : INV_X1 port map( A => A(2), ZN => n107);
   U113 : INV_X1 port map( A => A(12), ZN => n110);
   U116 : INV_X1 port map( A => A(11), ZN => n111);
   U119 : NAND2_X1 port map( A1 => n99, A2 => n113, ZN => n41);
   U122 : INV_X1 port map( A => A(8), ZN => n113);
   U128 : NAND2_X1 port map( A1 => n99, A2 => n114, ZN => n39);
   U130 : INV_X1 port map( A => A(7), ZN => n114);
   U131 : INV_X1 port map( A => A(6), ZN => n115);
   U132 : INV_X1 port map( A => A(5), ZN => n116);
   U133 : NAND2_X1 port map( A1 => n99, A2 => n122, ZN => n63);
   U134 : NAND2_X1 port map( A1 => n99, A2 => n123, ZN => n62);
   U135 : NAND2_X1 port map( A1 => n99, A2 => n129, ZN => n26);
   U136 : INV_X1 port map( A => A(0), ZN => n129);
   n130 <= '1';
   n131 <= '0';
   U3 : NAND2_X2 port map( A1 => b(1), A2 => b(2), ZN => n94);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity PackFP is

   port( SIGN : in std_logic;  EXP : in std_logic_vector (7 downto 0);  SIG : 
         in std_logic_vector (22 downto 0);  isNaN, isINF, isZ : in std_logic; 
         FP : out std_logic_vector (31 downto 0);  clk : in std_logic);

end PackFP;

architecture SYN_PackFP of PackFP is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal FP_30_port, FP_29_port, FP_28_port, FP_27_port, FP_26_port, 
      FP_25_port, FP_24_port, FP_23_port, FP_22_port, FP_21_port, FP_20_port, 
      FP_19_port, FP_18_port, FP_17_port, FP_16_port, FP_15_port, FP_14_port, 
      FP_13_port, FP_12_port, FP_11_port, FP_10_port, FP_9_port, FP_8_port, 
      FP_7_port, FP_6_port, FP_5_port, FP_4_port, FP_3_port, FP_2_port, 
      FP_1_port, FP_0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, 
      n13, n14, n15, n19, n20, n21, n_1614, n_1615, n_1616 : std_logic;

begin
   FP <= ( SIGN, FP_30_port, FP_29_port, FP_28_port, FP_27_port, FP_26_port, 
      FP_25_port, FP_24_port, FP_23_port, FP_22_port, FP_21_port, FP_20_port, 
      FP_19_port, FP_18_port, FP_17_port, FP_16_port, FP_15_port, FP_14_port, 
      FP_13_port, FP_12_port, FP_11_port, FP_10_port, FP_9_port, FP_8_port, 
      FP_7_port, FP_6_port, FP_5_port, FP_4_port, FP_3_port, FP_2_port, 
      FP_1_port, FP_0_port );
   
   U6 : INV_X1 port map( A => isINF, ZN => n3);
   U7 : INV_X1 port map( A => isNaN, ZN => n5);
   U8 : INV_X1 port map( A => n13, ZN => n2);
   U9 : AND2_X1 port map( A1 => SIG(0), A2 => n1, ZN => FP_0_port);
   U10 : AND2_X1 port map( A1 => SIG(1), A2 => n1, ZN => FP_1_port);
   U11 : AND2_X1 port map( A1 => SIG(2), A2 => n1, ZN => FP_2_port);
   U12 : AND2_X1 port map( A1 => SIG(3), A2 => n1, ZN => FP_3_port);
   U13 : AND2_X1 port map( A1 => SIG(4), A2 => n1, ZN => FP_4_port);
   U14 : AND2_X1 port map( A1 => SIG(5), A2 => n1, ZN => FP_5_port);
   U15 : AND2_X1 port map( A1 => SIG(6), A2 => n1, ZN => FP_6_port);
   U16 : AND2_X1 port map( A1 => SIG(7), A2 => n1, ZN => FP_7_port);
   U17 : AND2_X1 port map( A1 => SIG(8), A2 => n1, ZN => FP_8_port);
   U18 : AND2_X1 port map( A1 => SIG(9), A2 => n1, ZN => FP_9_port);
   U19 : AND2_X1 port map( A1 => SIG(10), A2 => n1, ZN => FP_10_port);
   U20 : AND2_X1 port map( A1 => SIG(11), A2 => n1, ZN => FP_11_port);
   U21 : AND2_X1 port map( A1 => SIG(12), A2 => n1, ZN => FP_12_port);
   U22 : AND2_X1 port map( A1 => SIG(13), A2 => n1, ZN => FP_13_port);
   U23 : AND2_X1 port map( A1 => SIG(14), A2 => n1, ZN => FP_14_port);
   U24 : AND2_X1 port map( A1 => SIG(15), A2 => n1, ZN => FP_15_port);
   U25 : AND2_X1 port map( A1 => SIG(16), A2 => n1, ZN => FP_16_port);
   U26 : AND2_X1 port map( A1 => SIG(17), A2 => n1, ZN => FP_17_port);
   U27 : AND2_X1 port map( A1 => SIG(18), A2 => n1, ZN => FP_18_port);
   U28 : AND2_X1 port map( A1 => SIG(19), A2 => n1, ZN => FP_19_port);
   U29 : AND2_X1 port map( A1 => SIG(20), A2 => n1, ZN => FP_20_port);
   U30 : AND2_X1 port map( A1 => SIG(21), A2 => n1, ZN => FP_21_port);
   U31 : NAND3_X1 port map( A1 => SIG(22), A2 => n3, A3 => n14, ZN => n4);
   U32 : NAND2_X1 port map( A1 => n19, A2 => n4, ZN => FP_22_port);
   U33 : AOI21_X1 port map( B1 => EXP(0), B2 => n14, A => n13, ZN => n6);
   U34 : INV_X1 port map( A => n6, ZN => FP_23_port);
   U35 : AOI21_X1 port map( B1 => EXP(1), B2 => n14, A => n13, ZN => n7);
   U36 : INV_X1 port map( A => n7, ZN => FP_24_port);
   U37 : AOI21_X1 port map( B1 => EXP(2), B2 => n14, A => n13, ZN => n8);
   U38 : INV_X1 port map( A => n8, ZN => FP_25_port);
   U39 : AOI21_X1 port map( B1 => EXP(3), B2 => n14, A => n13, ZN => n9);
   U40 : INV_X1 port map( A => n9, ZN => FP_26_port);
   U41 : AOI21_X1 port map( B1 => EXP(4), B2 => n14, A => n13, ZN => n10);
   U42 : INV_X1 port map( A => n10, ZN => FP_27_port);
   U43 : AOI21_X1 port map( B1 => EXP(5), B2 => n14, A => n13, ZN => n11);
   U44 : INV_X1 port map( A => n11, ZN => FP_28_port);
   U45 : AOI21_X1 port map( B1 => EXP(6), B2 => n14, A => n13, ZN => n12);
   U46 : INV_X1 port map( A => n12, ZN => FP_29_port);
   U47 : AOI21_X1 port map( B1 => EXP(7), B2 => n14, A => n13, ZN => n15);
   U48 : INV_X1 port map( A => n15, ZN => FP_30_port);
   MY_CLK_r_REG5_S2 : DFF_X1 port map( D => n5, CK => clk, Q => n21, QN => 
                           n_1614);
   MY_CLK_r_REG6_S3 : DFF_X1 port map( D => n21, CK => clk, Q => n20, QN => 
                           n_1615);
   MY_CLK_r_REG7_S4 : DFF_X1 port map( D => n20, CK => clk, Q => n19, QN => 
                           n_1616);
   U5 : INV_X1 port map( A => isZ, ZN => n14);
   U4 : NAND2_X1 port map( A1 => n3, A2 => n19, ZN => n13);
   U3 : AND2_X1 port map( A1 => n2, A2 => n14, ZN => n1);

end SYN_PackFP;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FPnormalize_SIG_width28_1 is

   port( SIG_in : in std_logic_vector (27 downto 0);  EXP_in : in 
         std_logic_vector (7 downto 0);  SIG_out : out std_logic_vector (27 
         downto 0);  EXP_out : out std_logic_vector (7 downto 0);  clk : in 
         std_logic);

end FPnormalize_SIG_width28_1;

architecture SYN_FPnormalize of FPnormalize_SIG_width28_1 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n6, n7, n8, n9, n10, n11, n13, n16, n20, n29, n30, n31, n32, n33,
      n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n_1624, n_1625, 
      n_1626, n_1627, n_1628, n_1629, n_1630 : std_logic;

begin
   
   U5 : XNOR2_X1 port map( A => n37, B => n16, ZN => EXP_out(6));
   U6 : XNOR2_X1 port map( A => n38, B => n1, ZN => EXP_out(7));
   U7 : OR2_X1 port map( A1 => n16, A2 => n41, ZN => n1);
   U9 : XOR2_X1 port map( A => n31, B => SIG_in(27), Z => EXP_out(0));
   U11 : NOR2_X1 port map( A1 => n44, A2 => n45, ZN => n6);
   U12 : XOR2_X1 port map( A => n32, B => n6, Z => EXP_out(1));
   U13 : NAND3_X1 port map( A1 => n32, A2 => SIG_in(27), A3 => n31, ZN => n7);
   U14 : INV_X1 port map( A => n7, ZN => n10);
   U15 : XOR2_X1 port map( A => n33, B => n39, Z => EXP_out(2));
   U16 : INV_X1 port map( A => EXP_in(2), ZN => n8);
   U17 : NOR2_X1 port map( A1 => n8, A2 => n7, ZN => n9);
   U18 : XOR2_X1 port map( A => n34, B => n30, Z => EXP_out(3));
   U19 : NAND3_X1 port map( A1 => EXP_in(3), A2 => EXP_in(2), A3 => n10, ZN => 
                           n11);
   U21 : XOR2_X1 port map( A => n35, B => n43, Z => EXP_out(4));
   U23 : NOR2_X1 port map( A1 => n42, A2 => n29, ZN => n13);
   U24 : XOR2_X1 port map( A => n36, B => n13, Z => EXP_out(5));
   U25 : NAND3_X1 port map( A1 => n36, A2 => n35, A3 => n43, ZN => n16);
   U33 : MUX2_X1 port map( A => SIG_in(3), B => SIG_in(4), S => SIG_in(27), Z 
                           => SIG_out(3));
   U34 : MUX2_X1 port map( A => SIG_in(4), B => SIG_in(5), S => SIG_in(27), Z 
                           => SIG_out(4));
   U35 : MUX2_X1 port map( A => SIG_in(5), B => SIG_in(6), S => SIG_in(27), Z 
                           => SIG_out(5));
   U36 : MUX2_X1 port map( A => SIG_in(6), B => SIG_in(7), S => SIG_in(27), Z 
                           => SIG_out(6));
   U37 : MUX2_X1 port map( A => SIG_in(7), B => SIG_in(8), S => SIG_in(27), Z 
                           => SIG_out(7));
   U38 : MUX2_X1 port map( A => SIG_in(8), B => SIG_in(9), S => SIG_in(27), Z 
                           => SIG_out(8));
   U39 : MUX2_X1 port map( A => SIG_in(9), B => SIG_in(10), S => SIG_in(27), Z 
                           => SIG_out(9));
   U40 : MUX2_X1 port map( A => SIG_in(10), B => SIG_in(11), S => SIG_in(27), Z
                           => SIG_out(10));
   U41 : MUX2_X1 port map( A => SIG_in(11), B => SIG_in(12), S => SIG_in(27), Z
                           => SIG_out(11));
   U42 : MUX2_X1 port map( A => SIG_in(12), B => SIG_in(13), S => SIG_in(27), Z
                           => SIG_out(12));
   U43 : MUX2_X1 port map( A => SIG_in(13), B => SIG_in(14), S => SIG_in(27), Z
                           => SIG_out(13));
   U44 : MUX2_X1 port map( A => SIG_in(14), B => SIG_in(15), S => SIG_in(27), Z
                           => SIG_out(14));
   U45 : MUX2_X1 port map( A => SIG_in(15), B => SIG_in(16), S => SIG_in(27), Z
                           => SIG_out(15));
   U46 : MUX2_X1 port map( A => SIG_in(16), B => SIG_in(17), S => SIG_in(27), Z
                           => SIG_out(16));
   U47 : MUX2_X1 port map( A => SIG_in(17), B => SIG_in(18), S => SIG_in(27), Z
                           => SIG_out(17));
   U48 : MUX2_X1 port map( A => SIG_in(18), B => SIG_in(19), S => SIG_in(27), Z
                           => SIG_out(18));
   U49 : MUX2_X1 port map( A => SIG_in(19), B => SIG_in(20), S => SIG_in(27), Z
                           => SIG_out(19));
   U50 : MUX2_X1 port map( A => SIG_in(20), B => SIG_in(21), S => SIG_in(27), Z
                           => SIG_out(20));
   U51 : MUX2_X1 port map( A => SIG_in(21), B => SIG_in(22), S => SIG_in(27), Z
                           => SIG_out(21));
   U52 : MUX2_X1 port map( A => SIG_in(22), B => SIG_in(23), S => SIG_in(27), Z
                           => SIG_out(22));
   U53 : MUX2_X1 port map( A => SIG_in(23), B => SIG_in(24), S => SIG_in(27), Z
                           => SIG_out(23));
   U54 : MUX2_X1 port map( A => SIG_in(24), B => SIG_in(25), S => SIG_in(27), Z
                           => SIG_out(24));
   U55 : MUX2_X1 port map( A => SIG_in(25), B => SIG_in(26), S => SIG_in(27), Z
                           => SIG_out(25));
   U56 : INV_X1 port map( A => SIG_in(26), ZN => n20);
   U57 : NAND2_X1 port map( A1 => n20, A2 => n44, ZN => SIG_out(26));
   MY_CLK_r_REG23_S4 : DFF_X1 port map( D => n10, CK => clk, Q => n39, QN => 
                           n_1624);
   MY_CLK_r_REG70_S4 : DFF_X1 port map( D => EXP_in(7), CK => clk, Q => n38, QN
                           => n_1625);
   MY_CLK_r_REG69_S4 : DFF_X1 port map( D => EXP_in(5), CK => clk, Q => n36, QN
                           => n_1626);
   MY_CLK_r_REG74_S4 : DFF_X1 port map( D => EXP_in(3), CK => clk, Q => n34, QN
                           => n_1627);
   MY_CLK_r_REG73_S4 : DFF_X1 port map( D => EXP_in(2), CK => clk, Q => n33, QN
                           => n_1628);
   MY_CLK_r_REG20_S3 : DFF_X1 port map( D => EXP_in(1), CK => clk, Q => n32, QN
                           => n_1629);
   MY_CLK_r_REG22_S4 : DFF_X1 port map( D => n9, CK => clk, Q => n30, QN => 
                           n_1630);
   U2 : INV_X1 port map( A => SIG_in(27), ZN => n44);
   MY_CLK_r_REG75_S3 : DFF_X1 port map( D => EXP_in(0), CK => clk, Q => n31, QN
                           => n45);
   MY_CLK_r_REG72_S4 : DFF_X1 port map( D => EXP_in(4), CK => clk, Q => n35, QN
                           => n42);
   MY_CLK_r_REG71_S4 : DFF_X1 port map( D => EXP_in(6), CK => clk, Q => n37, QN
                           => n41);
   MY_CLK_r_REG24_S4 : DFF_X1 port map( D => n11, CK => clk, Q => n29, QN => 
                           n43);

end SYN_FPnormalize;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FPround_SIG_width28 is

   port( SIG_in : in std_logic_vector (27 downto 0);  EXP_in : in 
         std_logic_vector (7 downto 0);  SIG_out : out std_logic_vector (27 
         downto 0);  EXP_out : out std_logic_vector (7 downto 0);  clk : in 
         std_logic);

end FPround_SIG_width28;

architecture SYN_FPround of FPround_SIG_width28 is

   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X2
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component FPround_SIG_width28_DW01_inc_1
      port( A : in std_logic_vector (24 downto 0);  SUM : out std_logic_vector 
            (24 downto 0);  clk : in std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, 
      N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, n1, n3_port, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45
      , n46, n47, n48, n49, n50, n51, n52, n57, n_1637, n_1638, n_1639, n_1640,
      n_1641, n_1642, n_1643, n_1644, n_1645, n_1646, n_1647, n_1648, n_1649, 
      n_1650, n_1651, n_1652, n_1653, n_1654, n_1655, n_1656, n_1657, n_1658, 
      n_1659, n_1660, n_1661 : std_logic;

begin
   EXP_out <= ( EXP_in(7), EXP_in(6), EXP_in(5), EXP_in(4), EXP_in(3), 
      EXP_in(2), EXP_in(1), EXP_in(0) );
   
   U5 : INV_X1 port map( A => SIG_in(2), ZN => n3_port);
   U8 : MUX2_X1 port map( A => n29, B => N2, S => n1, Z => SIG_out(3));
   U9 : MUX2_X1 port map( A => n30, B => N3, S => n1, Z => SIG_out(4));
   U10 : MUX2_X1 port map( A => n31, B => N4, S => n1, Z => SIG_out(5));
   U11 : MUX2_X1 port map( A => n32, B => N5, S => n1, Z => SIG_out(6));
   U12 : MUX2_X1 port map( A => n33, B => N6, S => n1, Z => SIG_out(7));
   U13 : MUX2_X1 port map( A => n34, B => N7, S => n1, Z => SIG_out(8));
   U14 : MUX2_X1 port map( A => n35, B => N8, S => n1, Z => SIG_out(9));
   U15 : MUX2_X1 port map( A => n36, B => N9, S => n1, Z => SIG_out(10));
   U16 : MUX2_X1 port map( A => n37, B => N10, S => n1, Z => SIG_out(11));
   U17 : MUX2_X1 port map( A => n38, B => N11, S => n1, Z => SIG_out(12));
   U18 : MUX2_X1 port map( A => n39, B => N12, S => n1, Z => SIG_out(13));
   U19 : MUX2_X1 port map( A => n40, B => N13, S => n1, Z => SIG_out(14));
   U20 : MUX2_X1 port map( A => n41, B => N14, S => n1, Z => SIG_out(15));
   U21 : MUX2_X1 port map( A => n42, B => N15, S => n1, Z => SIG_out(16));
   U22 : MUX2_X1 port map( A => n43, B => N16, S => n1, Z => SIG_out(17));
   U23 : MUX2_X1 port map( A => n44, B => N17, S => n1, Z => SIG_out(18));
   U24 : MUX2_X1 port map( A => n45, B => N18, S => n1, Z => SIG_out(19));
   U25 : MUX2_X1 port map( A => n46, B => N19, S => n1, Z => SIG_out(20));
   U26 : MUX2_X1 port map( A => n47, B => N20, S => n1, Z => SIG_out(21));
   U27 : MUX2_X1 port map( A => n48, B => N21, S => n1, Z => SIG_out(22));
   U28 : MUX2_X1 port map( A => n49, B => N22, S => n1, Z => SIG_out(23));
   U29 : MUX2_X1 port map( A => n50, B => N23, S => n1, Z => SIG_out(24));
   U30 : MUX2_X1 port map( A => n51, B => N24, S => n1, Z => SIG_out(25));
   U31 : MUX2_X1 port map( A => n52, B => N25, S => n1, Z => SIG_out(26));
   MY_CLK_r_REG25_S3 : DFF_X1 port map( D => SIG_in(26), CK => clk, Q => n52, 
                           QN => n_1637);
   MY_CLK_r_REG88_S3 : DFF_X1 port map( D => SIG_in(25), CK => clk, Q => n51, 
                           QN => n_1638);
   MY_CLK_r_REG76_S3 : DFF_X1 port map( D => SIG_in(24), CK => clk, Q => n50, 
                           QN => n_1639);
   MY_CLK_r_REG77_S3 : DFF_X1 port map( D => SIG_in(23), CK => clk, Q => n49, 
                           QN => n_1640);
   MY_CLK_r_REG78_S3 : DFF_X1 port map( D => SIG_in(22), CK => clk, Q => n48, 
                           QN => n_1641);
   MY_CLK_r_REG79_S3 : DFF_X1 port map( D => SIG_in(21), CK => clk, Q => n47, 
                           QN => n_1642);
   MY_CLK_r_REG80_S3 : DFF_X1 port map( D => SIG_in(20), CK => clk, Q => n46, 
                           QN => n_1643);
   MY_CLK_r_REG81_S3 : DFF_X1 port map( D => SIG_in(19), CK => clk, Q => n45, 
                           QN => n_1644);
   MY_CLK_r_REG82_S3 : DFF_X1 port map( D => SIG_in(18), CK => clk, Q => n44, 
                           QN => n_1645);
   MY_CLK_r_REG83_S3 : DFF_X1 port map( D => SIG_in(17), CK => clk, Q => n43, 
                           QN => n_1646);
   MY_CLK_r_REG84_S3 : DFF_X1 port map( D => SIG_in(16), CK => clk, Q => n42, 
                           QN => n_1647);
   MY_CLK_r_REG85_S3 : DFF_X1 port map( D => SIG_in(15), CK => clk, Q => n41, 
                           QN => n_1648);
   MY_CLK_r_REG86_S3 : DFF_X1 port map( D => SIG_in(14), CK => clk, Q => n40, 
                           QN => n_1649);
   MY_CLK_r_REG87_S3 : DFF_X1 port map( D => SIG_in(13), CK => clk, Q => n39, 
                           QN => n_1650);
   MY_CLK_r_REG51_S3 : DFF_X1 port map( D => SIG_in(12), CK => clk, Q => n38, 
                           QN => n_1651);
   MY_CLK_r_REG54_S3 : DFF_X1 port map( D => SIG_in(11), CK => clk, Q => n37, 
                           QN => n_1652);
   MY_CLK_r_REG56_S3 : DFF_X1 port map( D => SIG_in(10), CK => clk, Q => n36, 
                           QN => n_1653);
   MY_CLK_r_REG57_S3 : DFF_X1 port map( D => SIG_in(9), CK => clk, Q => n35, QN
                           => n_1654);
   MY_CLK_r_REG58_S3 : DFF_X1 port map( D => SIG_in(8), CK => clk, Q => n34, QN
                           => n_1655);
   MY_CLK_r_REG59_S3 : DFF_X1 port map( D => SIG_in(7), CK => clk, Q => n33, QN
                           => n_1656);
   MY_CLK_r_REG60_S3 : DFF_X1 port map( D => SIG_in(6), CK => clk, Q => n32, QN
                           => n_1657);
   MY_CLK_r_REG61_S3 : DFF_X1 port map( D => SIG_in(5), CK => clk, Q => n31, QN
                           => n_1658);
   MY_CLK_r_REG62_S3 : DFF_X1 port map( D => SIG_in(4), CK => clk, Q => n30, QN
                           => n_1659);
   n57 <= '0';
   add_45 : FPround_SIG_width28_DW01_inc_1 port map( A(24) => n57, A(23) => n52
                           , A(22) => n51, A(21) => n50, A(20) => n49, A(19) =>
                           n48, A(18) => n47, A(17) => n46, A(16) => n45, A(15)
                           => n44, A(14) => n43, A(13) => n42, A(12) => n41, 
                           A(11) => n40, A(10) => n39, A(9) => SIG_in(12), A(8)
                           => SIG_in(11), A(7) => n36, A(6) => n35, A(5) => n34
                           , A(4) => n33, A(3) => n32, A(2) => n31, A(1) => 
                           SIG_in(4), A(0) => SIG_in(3), SUM(24) => N26, 
                           SUM(23) => N25, SUM(22) => N24, SUM(21) => N23, 
                           SUM(20) => N22, SUM(19) => N21, SUM(18) => N20, 
                           SUM(17) => N19, SUM(16) => N18, SUM(15) => N17, 
                           SUM(14) => N16, SUM(13) => N15, SUM(12) => N14, 
                           SUM(11) => N13, SUM(10) => N12, SUM(9) => N11, 
                           SUM(8) => N10, SUM(7) => N9, SUM(6) => N8, SUM(5) =>
                           N7, SUM(4) => N6, SUM(3) => N5, SUM(2) => N4, SUM(1)
                           => N3, SUM(0) => N2, clk => clk);
   MY_CLK_r_REG65_S3 : DFF_X1 port map( D => SIG_in(3), CK => clk, Q => n29, QN
                           => n_1660);
   MY_CLK_r_REG67_S3 : DFF_X2 port map( D => n3_port, CK => clk, Q => n_1661, 
                           QN => n1);
   U3 : AND2_X2 port map( A1 => n1, A2 => N26, ZN => SIG_out(27));

end SYN_FPround;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FPnormalize_SIG_width28_0 is

   port( SIG_in : in std_logic_vector (27 downto 0);  EXP_in : in 
         std_logic_vector (7 downto 0);  SIG_out : out std_logic_vector (27 
         downto 0);  EXP_out : out std_logic_vector (7 downto 0);  clk : in 
         std_logic);

end FPnormalize_SIG_width28_0;

architecture SYN_FPnormalize of FPnormalize_SIG_width28_0 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n7, n9, n11, n12, n14, n15, n38, n39, n40, n41, n42, n43, n44, 
      n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n60
      , n61, n62, n63, n64, n66, n67, n68, n_1667, n_1668, n_1669, n_1670, 
      n_1671, n_1672, n_1673, n_1674, n_1675, n_1676, n_1677, n_1678, n_1679, 
      n_1680, n_1681, n_1682 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => n55, B => n14, ZN => EXP_out(6));
   U9 : NAND3_X1 port map( A1 => n41, A2 => n66, A3 => n39, ZN => n5);
   U11 : XOR2_X1 port map( A => n43, B => n62, Z => EXP_out(2));
   U13 : NOR2_X1 port map( A1 => n60, A2 => n38, ZN => n7);
   U14 : XOR2_X1 port map( A => n46, B => n7, Z => EXP_out(3));
   U15 : NAND3_X1 port map( A1 => n46, A2 => n43, A3 => n62, ZN => n9);
   U16 : INV_X1 port map( A => n9, ZN => n12);
   U17 : XOR2_X1 port map( A => n49, B => n12, Z => EXP_out(4));
   U19 : NOR2_X1 port map( A1 => n63, A2 => n9, ZN => n11);
   U20 : XOR2_X1 port map( A => n52, B => n11, Z => EXP_out(5));
   U21 : NAND3_X1 port map( A1 => n52, A2 => n49, A3 => n12, ZN => n14);
   U23 : NOR2_X1 port map( A1 => n14, A2 => n61, ZN => n15);
   U24 : XOR2_X1 port map( A => n57, B => n15, Z => EXP_out(7));
   U28 : MUX2_X1 port map( A => SIG_in(2), B => SIG_in(3), S => n67, Z => 
                           SIG_out(2));
   U29 : MUX2_X1 port map( A => SIG_in(3), B => SIG_in(4), S => SIG_in(27), Z 
                           => SIG_out(3));
   U30 : MUX2_X1 port map( A => SIG_in(4), B => SIG_in(5), S => SIG_in(27), Z 
                           => SIG_out(4));
   U31 : MUX2_X1 port map( A => SIG_in(5), B => SIG_in(6), S => n67, Z => 
                           SIG_out(5));
   U32 : MUX2_X1 port map( A => SIG_in(6), B => SIG_in(7), S => n67, Z => 
                           SIG_out(6));
   U33 : MUX2_X1 port map( A => SIG_in(7), B => SIG_in(8), S => n67, Z => 
                           SIG_out(7));
   U34 : MUX2_X1 port map( A => SIG_in(8), B => SIG_in(9), S => n67, Z => 
                           SIG_out(8));
   U35 : MUX2_X1 port map( A => SIG_in(9), B => SIG_in(10), S => n66, Z => 
                           SIG_out(9));
   U36 : MUX2_X1 port map( A => SIG_in(10), B => SIG_in(11), S => n66, Z => 
                           SIG_out(10));
   U37 : MUX2_X1 port map( A => SIG_in(11), B => SIG_in(12), S => SIG_in(27), Z
                           => SIG_out(11));
   U38 : MUX2_X1 port map( A => SIG_in(12), B => SIG_in(13), S => SIG_in(27), Z
                           => SIG_out(12));
   U39 : MUX2_X1 port map( A => SIG_in(13), B => SIG_in(14), S => n67, Z => 
                           SIG_out(13));
   U40 : MUX2_X1 port map( A => SIG_in(14), B => SIG_in(15), S => n66, Z => 
                           SIG_out(14));
   U41 : MUX2_X1 port map( A => SIG_in(15), B => SIG_in(16), S => n67, Z => 
                           SIG_out(15));
   U42 : MUX2_X1 port map( A => SIG_in(16), B => SIG_in(17), S => n66, Z => 
                           SIG_out(16));
   U43 : MUX2_X1 port map( A => SIG_in(17), B => SIG_in(18), S => n67, Z => 
                           SIG_out(17));
   U44 : MUX2_X1 port map( A => SIG_in(18), B => SIG_in(19), S => n66, Z => 
                           SIG_out(18));
   U45 : MUX2_X1 port map( A => SIG_in(19), B => SIG_in(20), S => n67, Z => 
                           SIG_out(19));
   U46 : MUX2_X1 port map( A => SIG_in(20), B => SIG_in(21), S => n66, Z => 
                           SIG_out(20));
   U47 : MUX2_X1 port map( A => SIG_in(21), B => SIG_in(22), S => n67, Z => 
                           SIG_out(21));
   U48 : MUX2_X1 port map( A => SIG_in(22), B => SIG_in(23), S => n66, Z => 
                           SIG_out(22));
   U49 : MUX2_X1 port map( A => SIG_in(23), B => SIG_in(24), S => n67, Z => 
                           SIG_out(23));
   U50 : MUX2_X1 port map( A => SIG_in(24), B => SIG_in(25), S => n67, Z => 
                           SIG_out(24));
   U51 : MUX2_X1 port map( A => SIG_in(25), B => SIG_in(26), S => n66, Z => 
                           SIG_out(25));
   MY_CLK_r_REG220_S2 : DFF_X1 port map( D => EXP_in(7), CK => clk, Q => n58, 
                           QN => n_1667);
   MY_CLK_r_REG221_S3 : DFF_X1 port map( D => n58, CK => clk, Q => n57, QN => 
                           n_1668);
   MY_CLK_r_REG223_S2 : DFF_X1 port map( D => EXP_in(6), CK => clk, Q => n56, 
                           QN => n_1669);
   MY_CLK_r_REG226_S1 : DFF_X1 port map( D => EXP_in(5), CK => clk, Q => n54, 
                           QN => n_1670);
   MY_CLK_r_REG227_S2 : DFF_X1 port map( D => n54, CK => clk, Q => n53, QN => 
                           n_1671);
   MY_CLK_r_REG228_S3 : DFF_X1 port map( D => n53, CK => clk, Q => n52, QN => 
                           n_1672);
   MY_CLK_r_REG229_S1 : DFF_X1 port map( D => EXP_in(4), CK => clk, Q => n51, 
                           QN => n_1673);
   MY_CLK_r_REG230_S2 : DFF_X1 port map( D => n51, CK => clk, Q => n50, QN => 
                           n_1674);
   MY_CLK_r_REG232_S1 : DFF_X1 port map( D => EXP_in(3), CK => clk, Q => n48, 
                           QN => n_1675);
   MY_CLK_r_REG233_S2 : DFF_X1 port map( D => n48, CK => clk, Q => n47, QN => 
                           n_1676);
   MY_CLK_r_REG234_S3 : DFF_X1 port map( D => n47, CK => clk, Q => n46, QN => 
                           n_1677);
   MY_CLK_r_REG235_S1 : DFF_X1 port map( D => EXP_in(2), CK => clk, Q => n45, 
                           QN => n_1678);
   MY_CLK_r_REG236_S2 : DFF_X1 port map( D => n45, CK => clk, Q => n44, QN => 
                           n_1679);
   MY_CLK_r_REG238_S1 : DFF_X1 port map( D => EXP_in(1), CK => clk, Q => n42, 
                           QN => n_1680);
   MY_CLK_r_REG239_S2 : DFF_X1 port map( D => n42, CK => clk, Q => n41, QN => 
                           n_1681);
   MY_CLK_r_REG240_S1 : DFF_X1 port map( D => EXP_in(0), CK => clk, Q => n40, 
                           QN => n_1682);
   U2 : BUF_X1 port map( A => SIG_in(27), Z => n66);
   U4 : BUF_X1 port map( A => SIG_in(27), Z => n67);
   U6 : OR2_X1 port map( A1 => n66, A2 => SIG_in(26), ZN => SIG_out(26));
   U7 : XNOR2_X1 port map( A => n64, B => n66, ZN => EXP_out(0));
   U8 : NAND2_X1 port map( A1 => n66, A2 => n39, ZN => n68);
   U10 : XNOR2_X1 port map( A => n68, B => n41, ZN => EXP_out(1));
   MY_CLK_r_REG241_S2 : DFF_X1 port map( D => n40, CK => clk, Q => n39, QN => 
                           n64);
   MY_CLK_r_REG237_S3 : DFF_X1 port map( D => n44, CK => clk, Q => n43, QN => 
                           n60);
   MY_CLK_r_REG231_S3 : DFF_X1 port map( D => n50, CK => clk, Q => n49, QN => 
                           n63);
   MY_CLK_r_REG224_S3 : DFF_X1 port map( D => n56, CK => clk, Q => n55, QN => 
                           n61);
   MY_CLK_r_REG68_S3 : DFF_X1 port map( D => n5, CK => clk, Q => n38, QN => n62
                           );

end SYN_FPnormalize;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity MBE is

   port( A, B : in std_logic_vector (31 downto 0);  C : out std_logic_vector 
         (63 downto 0);  clk : in std_logic);

end MBE;

architecture SYN_beh of MBE is

   component MBE_DW01_add_1
      port( A, B : in std_logic_vector (63 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (63 downto 0);  CO : out std_logic;  clk : 
            in std_logic);
   end component;
   
   component FA_6
      port( A, Ci : in std_logic;  S, Co : out std_logic;  B_BAR : in std_logic
            );
   end component;
   
   component FA_7
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_8
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_9
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_10
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_11
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_12
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_13
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_14
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_15
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_16
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_17
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_18
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_19
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_20
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_21
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_22
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_23
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_24
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_25
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_26
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_27
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_28
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_29
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_30
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_31
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_32
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_33
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_34
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_35
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_36
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_37
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_38
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_39
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_40
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_41
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_42
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_43
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_44
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_45
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_46
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_47
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_48
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_49
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_50
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_51
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_52
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_53
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_54
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_55
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_56
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_57
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_58
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_59
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_60
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component HA_1
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_2
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component FA_65
      port( A, Ci : in std_logic;  S : out std_logic;  B_BAR : in std_logic;  
            Co_BAR : out std_logic);
   end component;
   
   component FA_66
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_67
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_68
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_69
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_70
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_71
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_72
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_73
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_74
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_75
      port( A, B : in std_logic;  S, Co : out std_logic;  Ci_BAR : in std_logic
            );
   end component;
   
   component FA_76
      port( A, B : in std_logic;  S, Co : out std_logic;  Ci_BAR : in std_logic
            );
   end component;
   
   component FA_77
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_78
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_79
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_80
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_81
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_82
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_83
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_84
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_85
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_86
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_87
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_88
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_89
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_90
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_91
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_92
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_93
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_94
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_95
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_96
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_97
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_98
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_99
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_100
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_101
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_102
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_103
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_104
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_105
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_106
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_107
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_108
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_109
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_110
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_111
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_112
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_113
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_114
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_115
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_116
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component HA_4
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_5
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component FA_122
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_123
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_124
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_125
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_126
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_127
      port( A, Ci : in std_logic;  Co : out std_logic;  B_BAR : in std_logic;  
            S_BAR : out std_logic);
   end component;
   
   component FA_128
      port( A, Ci : in std_logic;  Co : out std_logic;  B_BAR : in std_logic;  
            S_BAR : out std_logic);
   end component;
   
   component FA_129
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_130
      port( A, Ci : in std_logic;  S, Co : out std_logic;  B_BAR : in std_logic
            );
   end component;
   
   component FA_131
      port( A, Ci : in std_logic;  S, Co : out std_logic;  B_BAR : in std_logic
            );
   end component;
   
   component FA_132
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_133
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_134
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_135
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_136
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_137
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_138
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_139
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_140
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_141
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_142
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_143
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_144
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_145
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_146
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_147
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_148
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_149
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_150
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_151
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_152
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_153
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_154
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_155
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_156
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_157
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_158
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_159
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_160
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_161
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_162
      port( A, B : in std_logic;  S, Co : out std_logic;  Ci : in std_logic);
   end component;
   
   component FA_163
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_164
      port( A, B : in std_logic;  S, Co : out std_logic;  Ci : in std_logic);
   end component;
   
   component HA_7
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_8
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component FA_168
      port( A, Ci : in std_logic;  S : out std_logic;  B_BAR : in std_logic;  
            Co_BAR : out std_logic);
   end component;
   
   component FA_169
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_170
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_171
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_172
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_173
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_174
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_175
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_176
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_177
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_178
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_179
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_180
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_181
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_182
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_183
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_184
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_185
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_186
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_187
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_188
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_189
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_190
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_191
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_192
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_193
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_194
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_195
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_196
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_197
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_198
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_199
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_200
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_201
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_202
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_203
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_204
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_205
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_206
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_207
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_208
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_209
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_210
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_211
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_212
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_213
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_214
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_215
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_216
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component HA_10
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_11
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component FA_221
      port( B, Ci : in std_logic;  Co : out std_logic;  A_BAR : in std_logic;  
            S_BAR : out std_logic);
   end component;
   
   component FA_222
      port( A, B, Ci : in std_logic;  Co : out std_logic;  clk : in std_logic; 
            S_BAR : out std_logic);
   end component;
   
   component FA_224
      port( B, Ci : in std_logic;  Co : out std_logic;  A_BAR : in std_logic;  
            S_BAR : out std_logic);
   end component;
   
   component FA_225
      port( B, Ci : in std_logic;  Co : out std_logic;  A_BAR : in std_logic;  
            S_BAR : out std_logic);
   end component;
   
   component FA_235
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_236
      port( B, Ci : in std_logic;  S, Co : out std_logic;  clk, A_BAR : in 
            std_logic);
   end component;
   
   component FA_237
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_238
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_239
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_240
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_241
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_242
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_243
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_244
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_245
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_246
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_247
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_248
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_249
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_250
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_251
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_252
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component HA_13
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_14
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component FA_254
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_255
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_256
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_257
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_258
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_259
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_260
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_261
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_262
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_263
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_264
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_265
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_266
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_267
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_268
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_269
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_270
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_271
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_272
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_273
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_274
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_275
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_276
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_277
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_278
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_279
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_280
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_281
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_282
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_283
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_284
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_285
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_286
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_287
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_288
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_289
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_290
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_291
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_292
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component HA_16
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_17
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component FA_293
      port( A, B, Ci : in std_logic;  S, Co_BAR : out std_logic);
   end component;
   
   component FA_294
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_295
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_296
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_297
      port( A, Ci : in std_logic;  S, Co : out std_logic;  B_BAR : in std_logic
            );
   end component;
   
   component FA_298
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_299
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_300
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_301
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_302
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_303
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_304
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_305
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_306
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_307
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_308
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_309
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_310
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_311
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_312
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_313
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_314
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_315
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_316
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_317
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_318
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_319
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_320
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_321
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_322
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_323
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_324
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_325
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_326
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_327
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_328
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_329
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_330
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_331
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_332
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_333
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_334
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_335
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_336
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component HA_19
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_20
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_21
      port( B : in std_logic;  C, S : out std_logic;  A : in std_logic);
   end component;
   
   component FA_337
      port( B, Ci : in std_logic;  Co : out std_logic;  A_BAR : in std_logic;  
            S_BAR : out std_logic);
   end component;
   
   component FA_348
      port( Ci : in std_logic;  Co : out std_logic;  B_BAR, A_BAR : in 
            std_logic;  S_BAR : out std_logic);
   end component;
   
   component FA_349
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_350
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_351
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_352
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_353
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_354
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_355
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_356
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component HA_22
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_23
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_24
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component FA_357
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_358
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_359
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_360
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_361
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_362
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_363
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_364
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_365
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_366
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_367
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_368
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_369
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_370
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_371
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_372
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_373
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_374
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_375
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_376
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_377
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_378
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_379
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_380
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component HA_25
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_26
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_27
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component FA_381
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_382
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_383
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_384
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_385
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_386
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_387
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_388
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_389
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_390
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_391
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_392
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_393
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_394
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_395
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_396
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_397
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_398
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_399
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_400
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_401
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_402
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_403
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_404
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_405
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_406
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_407
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_408
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component HA_28
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_29
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_30
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component FA_409
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_410
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_411
      port( B, Ci : in std_logic;  S, Co : out std_logic;  A_BAR : in std_logic
            );
   end component;
   
   component FA_412
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_413
      port( B, Ci : in std_logic;  S, Co : out std_logic;  A_BAR : in std_logic
            );
   end component;
   
   component FA_414
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_415
      port( A, Ci : in std_logic;  S, Co : out std_logic;  B_BAR : in std_logic
            );
   end component;
   
   component FA_416
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_417
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_418
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_419
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_420
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_421
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_422
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_423
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_424
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_425
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_426
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_427
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_428
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_429
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_430
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_431
      port( A, B, Ci : in std_logic;  S, Co : out std_logic;  clk : in 
            std_logic);
   end component;
   
   component FA_432
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_433
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_434
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_435
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_436
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_437
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_438
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_439
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_440
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component HA_31
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_32
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_33
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component FA_441
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_442
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_443
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_444
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component HA_34
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_35
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_36
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component FA_445
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_446
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_447
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_448
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_449
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_450
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_451
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_452
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component HA_37
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_38
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_39
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component FA_453
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_454
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_455
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_456
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_457
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_458
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_459
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_460
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_461
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_462
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_463
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_464
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component HA_40
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_41
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_42
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component FA_465
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_466
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_467
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_468
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_469
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_470
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_471
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_472
      port( B, Ci : in std_logic;  S, Co : out std_logic;  A_BAR : in std_logic
            );
   end component;
   
   component FA_473
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_474
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_475
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_476
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_477
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_478
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_479
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component HA_43
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component HA_0
      port( A, B : in std_logic;  S, C : out std_logic);
   end component;
   
   component ENC_3
      port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
            downto 0);  clk : in std_logic;  p_32_port, p_31_port, p_30_port, 
            p_29_port, p_28_port, p_27_port, p_26_port, p_25_port, p_24_port, 
            p_23_port, p_22_port, p_21_port, p_20_port, p_19_BAR, p_18_port, 
            p_17_port, p_15_port, p_14_port, p_13_port, p_12_port, p_11_port, 
            p_10_port, p_9_port, p_8_port, p_7_port, p_6_port, p_5_port, 
            p_3_port, p_2_port, p_1_port, p_0_port, p_4_BAR, p_16_BAR : out 
            std_logic);
   end component;
   
   component ENC_4
      port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
            downto 0);  clk : in std_logic;  p_32_port, p_31_port, p_30_port, 
            p_29_port, p_28_port, p_27_port, p_26_port, p_25_port, p_24_port, 
            p_23_port, p_22_port, p_21_port, p_20_port, p_19_port, p_18_port, 
            p_17_BAR, p_16_port, p_15_port, p_14_port, p_13_port, p_12_port, 
            p_11_port, p_10_port, p_9_port, p_8_port, p_7_port, p_5_port, 
            p_4_port, p_3_port, p_2_port, p_1_port, p_0_port, p_6_BAR : out 
            std_logic);
   end component;
   
   component ENC_5
      port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
            downto 0);  p : out std_logic_vector (32 downto 0));
   end component;
   
   component ENC_6
      port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
            downto 0);  p : out std_logic_vector (32 downto 0));
   end component;
   
   component ENC_7
      port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
            downto 0);  p : out std_logic_vector (32 downto 0));
   end component;
   
   component ENC_8
      port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
            downto 0);  p : out std_logic_vector (32 downto 0));
   end component;
   
   component ENC_9
      port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
            downto 0);  p : out std_logic_vector (32 downto 0));
   end component;
   
   component ENC_10
      port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
            downto 0);  p : out std_logic_vector (32 downto 0));
   end component;
   
   component ENC_11
      port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
            downto 0);  p : out std_logic_vector (32 downto 0));
   end component;
   
   component ENC_12
      port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
            downto 0);  p : out std_logic_vector (32 downto 0));
   end component;
   
   component ENC_13
      port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
            downto 0);  p : out std_logic_vector (32 downto 0));
   end component;
   
   component ENC_14
      port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
            downto 0);  p : out std_logic_vector (32 downto 0));
   end component;
   
   component ENC_15
      port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
            downto 0);  p : out std_logic_vector (32 downto 0));
   end component;
   
   component ENC_16
      port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
            downto 0);  p : out std_logic_vector (32 downto 0));
   end component;
   
   component ENC_0
      port( b : in std_logic_vector (2 downto 0);  A : in std_logic_vector (31 
            downto 0);  p : out std_logic_vector (32 downto 0));
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, n209, n210, n211, q_0_0_32_port, 
      q_0_0_31_port, q_0_0_30_port, q_0_0_29_port, q_0_0_28_port, q_0_0_27_port
      , q_0_0_26_port, q_0_0_25_port, q_0_0_24_port, q_0_0_23_port, 
      q_0_0_22_port, q_0_0_21_port, q_0_0_20_port, q_0_0_19_port, q_0_0_18_port
      , q_0_0_17_port, q_0_0_16_port, q_0_0_15_port, q_0_0_14_port, 
      q_0_0_13_port, q_0_0_12_port, q_0_0_11_port, q_0_0_10_port, q_0_0_9_port,
      q_0_0_8_port, q_0_0_7_port, q_0_0_6_port, q_0_0_5_port, q_0_0_4_port, 
      q_0_0_3_port, q_0_0_2_port, q_0_0_1_port, q_0_0_0_port, q_0_8_46_port, 
      q_0_8_45_port, q_0_8_44_port, q_0_8_43_port, q_0_8_42_port, q_0_8_41_port
      , q_0_8_40_port, q_0_8_39_port, q_0_8_38_port, q_0_8_37_port, 
      q_0_8_36_port, q_0_8_35_port, q_0_8_34_port, q_0_8_33_port, q_0_8_32_port
      , q_0_8_31_port, q_0_8_30_port, q_0_8_29_port, q_0_8_28_port, 
      q_0_8_27_port, q_0_8_26_port, q_0_8_25_port, q_0_8_24_port, q_0_8_23_port
      , q_0_8_22_port, q_0_8_21_port, q_0_8_20_port, q_0_8_19_port, 
      q_0_8_18_port, q_0_8_17_port, q_0_8_16_port, q_0_7_47_port, q_0_7_46_port
      , q_0_7_45_port, q_0_7_44_port, q_0_7_43_port, q_0_7_42_port, 
      q_0_7_41_port, q_0_7_40_port, q_0_7_39_port, q_0_7_38_port, q_0_7_37_port
      , q_0_7_36_port, q_0_7_35_port, q_0_7_34_port, q_0_7_33_port, 
      q_0_7_32_port, q_0_7_31_port, q_0_7_30_port, q_0_7_29_port, q_0_7_28_port
      , q_0_7_27_port, q_0_7_26_port, q_0_7_25_port, q_0_7_24_port, 
      q_0_7_23_port, q_0_7_22_port, q_0_7_21_port, q_0_7_20_port, q_0_7_19_port
      , q_0_7_18_port, q_0_7_17_port, q_0_7_16_port, q_0_7_15_port, 
      q_0_7_14_port, q_0_6_48_port, q_0_6_47_port, q_0_6_46_port, q_0_6_45_port
      , q_0_6_44_port, q_0_6_43_port, q_0_6_42_port, q_0_6_41_port, 
      q_0_6_40_port, q_0_6_39_port, q_0_6_38_port, q_0_6_37_port, q_0_6_36_port
      , q_0_6_35_port, q_0_6_34_port, q_0_6_33_port, q_0_6_32_port, 
      q_0_6_31_port, q_0_6_30_port, q_0_6_29_port, q_0_6_28_port, q_0_6_27_port
      , q_0_6_26_port, q_0_6_25_port, q_0_6_24_port, q_0_6_23_port, 
      q_0_6_22_port, q_0_6_21_port, q_0_6_20_port, q_0_6_19_port, q_0_6_18_port
      , q_0_6_17_port, q_0_6_16_port, q_0_6_15_port, q_0_6_14_port, 
      q_0_6_13_port, q_0_6_12_port, q_0_5_50_port, q_0_5_49_port, q_0_5_48_port
      , q_0_5_47_port, q_0_5_46_port, q_0_5_45_port, q_0_5_44_port, 
      q_0_5_43_port, q_0_5_42_port, q_0_5_41_port, q_0_5_40_port, q_0_5_39_port
      , q_0_5_38_port, q_0_5_37_port, q_0_5_36_port, q_0_5_35_port, 
      q_0_5_34_port, q_0_5_33_port, q_0_5_31_port, q_0_5_30_port, q_0_5_29_port
      , q_0_5_28_port, q_0_5_27_port, q_0_5_26_port, q_0_5_25_port, 
      q_0_5_24_port, q_0_5_23_port, q_0_5_22_port, q_0_5_21_port, q_0_5_20_port
      , q_0_5_19_port, q_0_5_18_port, q_0_5_17_port, q_0_5_16_port, 
      q_0_5_15_port, q_0_5_14_port, q_0_5_13_port, q_0_5_12_port, q_0_5_11_port
      , q_0_5_10_port, q_0_4_50_port, q_0_4_49_port, q_0_4_48_port, 
      q_0_4_47_port, q_0_4_46_port, q_0_4_45_port, q_0_4_44_port, q_0_4_43_port
      , q_0_4_42_port, q_0_4_41_port, q_0_4_40_port, q_0_4_39_port, 
      q_0_4_38_port, q_0_4_37_port, q_0_4_36_port, q_0_4_35_port, q_0_4_34_port
      , q_0_4_33_port, q_0_4_32_port, q_0_4_31_port, q_0_4_30_port, 
      q_0_4_29_port, q_0_4_28_port, q_0_4_27_port, q_0_4_26_port, q_0_4_25_port
      , q_0_4_24_port, q_0_4_23_port, q_0_4_22_port, q_0_4_21_port, 
      q_0_4_20_port, q_0_4_19_port, q_0_4_18_port, q_0_4_17_port, q_0_4_16_port
      , q_0_4_15_port, q_0_4_14_port, q_0_4_13_port, q_0_4_12_port, 
      q_0_4_11_port, q_0_4_10_port, q_0_4_9_port, q_0_4_8_port, q_0_3_52_port, 
      q_0_3_51_port, q_0_3_50_port, q_0_3_49_port, q_0_3_48_port, q_0_3_47_port
      , q_0_3_46_port, q_0_3_45_port, q_0_3_44_port, q_0_3_43_port, 
      q_0_3_42_port, q_0_3_41_port, q_0_3_40_port, q_0_3_39_port, q_0_3_38_port
      , q_0_3_37_port, q_0_3_36_port, q_0_3_35_port, q_0_3_34_port, 
      q_0_3_33_port, q_0_3_32_port, q_0_3_31_port, q_0_3_30_port, q_0_3_29_port
      , q_0_3_28_port, q_0_3_27_port, q_0_3_26_port, q_0_3_25_port, 
      q_0_3_24_port, q_0_3_23_port, q_0_3_22_port, q_0_3_21_port, q_0_3_20_port
      , q_0_3_19_port, q_0_3_18_port, q_0_3_17_port, q_0_3_16_port, 
      q_0_3_15_port, q_0_3_14_port, q_0_3_13_port, q_0_3_12_port, q_0_3_11_port
      , q_0_3_10_port, q_0_3_9_port, q_0_3_8_port, q_0_3_7_port, q_0_3_6_port, 
      q_0_2_54_port, q_0_2_53_port, q_0_2_52_port, q_0_2_51_port, q_0_2_50_port
      , q_0_2_49_port, q_0_2_48_port, q_0_2_47_port, q_0_2_46_port, 
      q_0_2_45_port, q_0_2_44_port, q_0_2_43_port, q_0_2_42_port, q_0_2_41_port
      , q_0_2_40_port, q_0_2_39_port, q_0_2_38_port, q_0_2_37_port, 
      q_0_2_36_port, q_0_2_35_port, q_0_2_34_port, q_0_2_33_port, q_0_2_32_port
      , q_0_2_31_port, q_0_2_30_port, q_0_2_29_port, q_0_2_28_port, 
      q_0_2_27_port, q_0_2_26_port, q_0_2_25_port, q_0_2_24_port, q_0_2_23_port
      , q_0_2_22_port, q_0_2_21_port, q_0_2_20_port, q_0_2_19_port, 
      q_0_2_18_port, q_0_2_17_port, q_0_2_16_port, q_0_2_15_port, q_0_2_14_port
      , q_0_2_13_port, q_0_2_12_port, q_0_2_11_port, q_0_2_10_port, 
      q_0_2_9_port, q_0_2_8_port, q_0_2_7_port, q_0_2_6_port, q_0_2_5_port, 
      q_0_2_4_port, q_0_1_55_port, q_0_1_54_port, q_0_1_53_port, q_0_1_52_port,
      q_0_1_51_port, q_0_1_50_port, q_0_1_49_port, q_0_1_48_port, q_0_1_47_port
      , q_0_1_46_port, q_0_1_45_port, q_0_1_44_port, q_0_1_43_port, 
      q_0_1_42_port, q_0_1_41_port, q_0_1_40_port, q_0_1_39_port, q_0_1_38_port
      , q_0_1_37_port, q_0_1_36_port, q_0_1_34_port, q_0_1_33_port, 
      q_0_1_32_port, q_0_1_31_port, q_0_1_30_port, q_0_1_29_port, q_0_1_28_port
      , q_0_1_27_port, q_0_1_26_port, q_0_1_25_port, q_0_1_24_port, 
      q_0_1_23_port, q_0_1_22_port, q_0_1_21_port, q_0_1_20_port, q_0_1_19_port
      , q_0_1_18_port, q_0_1_17_port, q_0_1_16_port, q_0_1_15_port, 
      q_0_1_14_port, q_0_1_13_port, q_0_1_12_port, q_0_1_11_port, q_0_1_10_port
      , q_0_1_9_port, q_0_1_8_port, q_0_1_7_port, q_0_1_6_port, q_0_1_5_port, 
      q_0_1_4_port, q_0_1_3_port, q_0_1_2_port, q_0_14_32_port, q_0_14_31_port,
      q_0_14_30_port, q_0_14_29_port, q_0_14_28_port, q_0_13_32_port, 
      q_0_13_31_port, q_0_13_30_port, q_0_13_29_port, q_0_13_28_port, 
      q_0_13_27_port, q_0_13_26_port, q_0_12_35_port, q_0_12_34_port, 
      q_0_12_33_port, q_0_12_32_port, q_0_12_31_port, q_0_12_30_port, 
      q_0_12_29_port, q_0_12_28_port, q_0_12_27_port, q_0_12_26_port, 
      q_0_12_25_port, q_0_12_24_port, q_0_11_36_port, q_0_11_35_port, 
      q_0_11_34_port, q_0_11_33_port, q_0_11_32_port, q_0_11_31_port, 
      q_0_11_30_port, q_0_11_29_port, q_0_11_28_port, q_0_11_27_port, 
      q_0_11_26_port, q_0_11_25_port, q_0_11_24_port, q_0_11_23_port, 
      q_0_11_22_port, q_0_10_38_port, q_0_10_37_port, q_0_10_36_port, 
      q_0_10_35_port, q_0_10_34_port, q_0_10_33_port, q_0_10_32_port, 
      q_0_10_31_port, q_0_10_30_port, q_0_10_29_port, q_0_10_28_port, 
      q_0_10_27_port, q_0_10_26_port, q_0_10_25_port, q_0_10_24_port, 
      q_0_10_23_port, q_0_10_22_port, q_0_10_21_port, q_0_10_20_port, 
      q_0_9_44_port, q_0_9_40_port, q_0_9_39_port, q_0_9_38_port, q_0_9_37_port
      , q_0_9_36_port, q_0_9_35_port, q_0_9_34_port, q_0_9_33_port, 
      q_0_9_32_port, q_0_9_31_port, q_0_9_30_port, q_0_9_29_port, q_0_9_28_port
      , q_0_9_27_port, q_0_9_26_port, q_0_9_25_port, q_0_9_24_port, 
      q_0_9_23_port, q_0_9_22_port, q_0_9_21_port, q_0_9_20_port, q_0_9_19_port
      , q_0_9_18_port, q_1_1_42_port, q_1_1_41_port, q_1_1_40_port, 
      q_1_1_39_port, q_1_1_38_port, q_1_1_37_port, q_1_1_36_port, q_1_1_35_port
      , q_1_1_34_port, q_1_1_33_port, q_1_1_32_port, q_1_1_31_port, 
      q_1_1_30_port, q_1_1_29_port, q_1_1_28_port, q_1_1_27_port, q_1_1_26_port
      , q_1_1_25_port, q_1_0_43_port, q_1_0_42_port, q_1_0_41_port, 
      q_1_0_40_port, q_1_0_39_port, q_1_0_38_port, q_1_0_37_port, q_1_0_36_port
      , q_1_0_35_port, q_1_0_34_port, q_1_0_32_port, q_1_0_31_port, 
      q_1_0_30_port, q_1_0_29_port, q_1_0_28_port, q_1_0_27_port, q_1_0_26_port
      , q_1_0_25_port, q_1_0_24_port, q_1_7_36_port, q_1_7_35_port, 
      q_1_7_34_port, q_1_7_33_port, q_1_7_32_port, q_1_7_31_port, q_1_6_37_port
      , q_1_6_36_port, q_1_6_35_port, q_1_6_34_port, q_1_6_33_port, 
      q_1_6_32_port, q_1_6_31_port, q_1_6_30_port, q_1_5_38_port, q_1_5_37_port
      , q_1_5_36_port, q_1_5_35_port, q_1_5_34_port, q_1_5_33_port, 
      q_1_5_32_port, q_1_5_31_port, q_1_5_30_port, q_1_5_29_port, q_1_4_39_port
      , q_1_4_38_port, q_1_4_37_port, q_1_4_36_port, q_1_4_35_port, 
      q_1_4_34_port, q_1_4_33_port, q_1_4_32_port, q_1_4_30_port, q_1_4_29_port
      , q_1_4_28_port, q_1_3_40_port, q_1_3_39_port, q_1_3_38_port, 
      q_1_3_37_port, q_1_3_36_port, q_1_3_35_port, q_1_3_34_port, q_1_3_33_port
      , q_1_3_31_port, q_1_3_30_port, q_1_3_29_port, q_1_3_28_port, 
      q_1_3_27_port, q_1_2_41_port, q_1_2_40_port, q_1_2_39_port, q_1_2_38_port
      , q_1_2_37_port, q_1_2_36_port, q_1_2_35_port, q_1_2_34_port, 
      q_1_2_33_port, q_1_2_32_port, q_1_2_31_port, q_1_2_30_port, q_1_2_29_port
      , q_1_2_28_port, q_1_2_27_port, q_1_2_26_port, q_2_2_49_port, 
      q_2_2_48_port, q_2_2_47_port, q_2_2_46_port, q_2_2_45_port, q_2_2_44_port
      , q_2_2_43_port, q_2_2_42_port, q_2_2_41_port, q_2_2_40_port, 
      q_2_2_39_port, q_2_2_38_port, q_2_2_37_port, q_2_2_35_port, q_2_2_34_port
      , q_2_2_33_port, q_2_2_32_port, q_2_2_31_port, q_2_2_30_port, 
      q_2_2_29_port, q_2_2_28_port, q_2_2_27_port, q_2_2_26_port, q_2_2_25_port
      , q_2_2_24_port, q_2_2_23_port, q_2_2_22_port, q_2_2_21_port, 
      q_2_2_20_port, q_2_2_19_port, q_2_2_18_port, q_2_1_50_port, q_2_1_49_port
      , q_2_1_48_port, q_2_1_47_port, q_2_1_46_port, q_2_1_45_port, 
      q_2_1_44_port, q_2_1_43_port, q_2_1_42_port, q_2_1_41_port, q_2_1_40_port
      , q_2_1_39_port, q_2_1_38_port, q_2_1_37_port, q_2_1_36_port, 
      q_2_1_35_port, q_2_1_34_port, q_2_1_33_port, q_2_1_32_port, q_2_1_31_port
      , q_2_1_30_port, q_2_1_29_port, q_2_1_28_port, q_2_1_27_port, 
      q_2_1_26_port, q_2_1_25_port, q_2_1_24_port, q_2_1_23_port, q_2_1_22_port
      , q_2_1_21_port, q_2_1_20_port, q_2_1_19_port, q_2_1_18_port, 
      q_2_1_17_port, q_2_0_51_port, q_2_0_50_port, q_2_0_49_port, q_2_0_48_port
      , q_2_0_47_port, q_2_0_46_port, q_2_0_45_port, q_2_0_44_port, 
      q_2_0_43_port, q_2_0_42_port, q_2_0_41_port, q_2_0_40_port, q_2_0_39_port
      , q_2_0_38_port, q_2_0_37_port, q_2_0_36_port, q_2_0_35_port, 
      q_2_0_34_port, q_2_0_33_port, q_2_0_32_port, q_2_0_31_port, q_2_0_30_port
      , q_2_0_29_port, q_2_0_28_port, q_2_0_27_port, q_2_0_26_port, 
      q_2_0_25_port, q_2_0_24_port, q_2_0_23_port, q_2_0_22_port, q_2_0_21_port
      , q_2_0_20_port, q_2_0_19_port, q_2_0_18_port, q_2_0_17_port, 
      q_2_0_16_port, q_2_7_33_port, q_2_7_32_port, q_2_7_31_port, q_2_7_30_port
      , q_2_7_29_port, q_2_7_28_port, q_2_7_27_port, q_2_7_26_port, 
      q_2_7_25_port, q_2_7_24_port, q_2_7_23_port, q_2_6_44_port, q_2_6_43_port
      , q_2_6_32_port, q_2_6_31_port, q_2_6_30_port, q_2_6_29_port, 
      q_2_6_28_port, q_2_6_27_port, q_2_6_26_port, q_2_6_25_port, q_2_6_24_port
      , q_2_6_23_port, q_2_6_22_port, q_2_5_46_port, q_2_5_45_port, 
      q_2_5_44_port, q_2_5_43_port, q_2_5_42_port, q_2_5_41_port, q_2_5_40_port
      , q_2_5_39_port, q_2_5_38_port, q_2_5_37_port, q_2_5_36_port, 
      q_2_5_35_port, q_2_5_34_port, q_2_5_33_port, q_2_5_32_port, q_2_5_31_port
      , q_2_5_30_port, q_2_5_29_port, q_2_5_28_port, q_2_5_27_port, 
      q_2_5_26_port, q_2_5_25_port, q_2_5_24_port, q_2_5_23_port, q_2_5_22_port
      , q_2_5_21_port, q_2_4_47_port, q_2_4_46_port, q_2_4_45_port, 
      q_2_4_44_port, q_2_4_43_port, q_2_4_42_port, q_2_4_41_port, q_2_4_40_port
      , q_2_4_39_port, q_2_4_38_port, q_2_4_37_port, q_2_4_36_port, 
      q_2_4_35_port, q_2_4_34_port, q_2_4_33_port, q_2_4_32_port, q_2_4_31_port
      , q_2_4_30_port, q_2_4_29_port, q_2_4_28_port, q_2_4_27_port, 
      q_2_4_26_port, q_2_4_25_port, q_2_4_24_port, q_2_4_23_port, q_2_4_22_port
      , q_2_4_21_port, q_2_4_20_port, q_2_3_48_port, q_2_3_47_port, 
      q_2_3_46_port, q_2_3_45_port, q_2_3_44_port, q_2_3_43_port, q_2_3_42_port
      , q_2_3_41_port, q_2_3_40_port, q_2_3_39_port, q_2_3_38_port, 
      q_2_3_37_port, q_2_3_36_port, q_2_3_35_port, q_2_3_34_port, q_2_3_33_port
      , q_2_3_32_port, q_2_3_31_port, q_2_3_30_port, q_2_3_29_port, 
      q_2_3_28_port, q_2_3_27_port, q_2_3_26_port, q_2_3_25_port, q_2_3_24_port
      , q_2_3_23_port, q_2_3_22_port, q_2_3_21_port, q_2_3_20_port, 
      q_2_3_19_port, q_3_3_52_port, q_3_3_51_port, q_3_3_50_port, q_3_3_49_port
      , q_3_3_48_port, q_3_3_47_port, q_3_3_46_port, q_3_3_45_port, 
      q_3_3_44_port, q_3_3_43_port, q_3_3_42_port, q_3_3_41_port, q_3_3_40_port
      , q_3_3_39_port, q_3_3_38_port, q_3_3_37_port, q_3_3_36_port, 
      q_3_3_35_port, q_3_3_34_port, q_3_3_33_port, q_3_3_32_port, q_3_3_31_port
      , q_3_3_30_port, q_3_3_29_port, q_3_3_28_port, q_3_3_27_port, 
      q_3_3_26_port, q_3_3_25_port, q_3_3_24_port, q_3_3_23_port, q_3_3_22_port
      , q_3_3_21_port, q_3_3_20_port, q_3_3_19_port, q_3_3_18_port, 
      q_3_3_17_port, q_3_3_16_port, q_3_3_15_port, q_3_3_14_port, q_3_3_13_port
      , q_3_2_52_port, q_3_2_51_port, q_3_2_50_port, q_3_2_49_port, 
      q_3_2_48_port, q_3_2_47_port, q_3_2_46_port, q_3_2_45_port, q_3_2_44_port
      , q_3_2_42_port, q_3_2_41_port, q_3_2_40_port, q_3_2_37_port, 
      q_3_2_36_port, q_3_2_35_port, q_3_2_34_port, q_3_2_33_port, q_3_2_32_port
      , q_3_2_31_port, q_3_2_30_port, q_3_2_29_port, q_3_2_28_port, 
      q_3_2_26_port, q_3_2_24_port, q_3_2_22_port, q_3_2_21_port, q_3_2_20_port
      , q_3_2_19_port, q_3_2_18_port, q_3_2_17_port, q_3_2_16_port, 
      q_3_2_15_port, q_3_2_14_port, q_3_2_13_port, q_3_2_12_port, q_3_1_56_port
      , q_3_1_55_port, q_3_1_54_port, q_3_1_53_port, q_3_1_52_port, 
      q_3_1_51_port, q_3_1_50_port, q_3_1_49_port, q_3_1_48_port, q_3_1_47_port
      , q_3_1_46_port, q_3_1_45_port, q_3_1_44_port, q_3_1_43_port, 
      q_3_1_42_port, q_3_1_41_port, q_3_1_40_port, q_3_1_39_port, q_3_1_38_port
      , q_3_1_37_port, q_3_1_36_port, q_3_1_35_port, q_3_1_34_port, 
      q_3_1_33_port, q_3_1_32_port, q_3_1_31_port, q_3_1_30_port, q_3_1_29_port
      , q_3_1_28_port, q_3_1_27_port, q_3_1_26_port, q_3_1_25_port, 
      q_3_1_24_port, q_3_1_23_port, q_3_1_22_port, q_3_1_21_port, q_3_1_20_port
      , q_3_1_19_port, q_3_1_18_port, q_3_1_17_port, q_3_1_16_port, 
      q_3_1_15_port, q_3_1_14_port, q_3_1_13_port, q_3_1_12_port, q_3_1_11_port
      , q_3_0_55_port, q_3_0_54_port, q_3_0_53_port, q_3_0_52_port, 
      q_3_0_51_port, q_3_0_50_port, q_3_0_49_port, q_3_0_48_port, q_3_0_47_port
      , q_3_0_46_port, q_3_0_45_port, q_3_0_43_port, q_3_0_42_port, 
      q_3_0_41_port, q_3_0_38_port, q_3_0_37_port, q_3_0_35_port, q_3_0_34_port
      , q_3_0_33_port, q_3_0_32_port, q_3_0_31_port, q_3_0_30_port, 
      q_3_0_29_port, q_3_0_28_port, q_3_0_27_port, q_3_0_26_port, q_3_0_25_port
      , q_3_0_24_port, q_3_0_23_port, q_3_0_22_port, q_3_0_21_port, 
      q_3_0_20_port, q_3_0_19_port, q_3_0_18_port, q_3_0_17_port, q_3_0_16_port
      , q_3_0_15_port, q_3_0_14_port, q_3_0_13_port, q_3_0_12_port, 
      q_3_0_11_port, q_3_0_10_port, q_3_5_33_port, q_3_5_32_port, q_3_5_30_port
      , q_3_5_29_port, q_3_5_28_port, q_3_5_27_port, q_3_5_26_port, 
      q_3_5_25_port, q_3_5_23_port, q_3_5_22_port, q_3_5_21_port, q_3_5_20_port
      , q_3_5_19_port, q_3_5_18_port, q_3_5_17_port, q_3_5_16_port, 
      q_3_5_15_port, q_3_4_47_port, q_3_4_46_port, q_3_4_44_port, q_3_4_43_port
      , q_3_4_33_port, q_3_4_32_port, q_3_4_31_port, q_3_4_30_port, 
      q_3_4_29_port, q_3_4_28_port, q_3_4_27_port, q_3_4_26_port, q_3_4_25_port
      , q_3_4_24_port, q_3_4_22_port, q_3_4_21_port, q_3_4_20_port, 
      q_3_4_19_port, q_3_4_18_port, q_3_4_17_port, q_3_4_16_port, q_3_4_15_port
      , q_3_4_14_port, q_4_2_52_port, q_4_2_51_port, q_4_2_50_port, 
      q_4_2_49_port, q_4_2_48_port, q_4_2_47_port, q_4_2_46_port, q_4_2_45_port
      , q_4_2_44_port, q_4_2_43_port, q_4_2_42_port, q_4_2_41_port, 
      q_4_2_40_port, q_4_2_39_port, q_4_2_38_port, q_4_2_37_port, q_4_2_36_port
      , q_4_2_35_port, q_4_2_34_port, q_4_2_33_port, q_4_2_30_port, 
      q_4_2_29_port, q_4_2_28_port, q_4_2_27_port, q_4_2_25_port, q_4_2_24_port
      , q_4_2_23_port, q_4_2_22_port, q_4_2_21_port, q_4_2_20_port, 
      q_4_2_19_port, q_4_2_18_port, q_4_2_17_port, q_4_2_16_port, q_4_2_15_port
      , q_4_2_14_port, q_4_2_13_port, q_4_2_12_port, q_4_2_11_port, 
      q_4_2_10_port, q_4_2_9_port, q_4_2_8_port, q_4_1_57_port, q_4_1_56_port, 
      q_4_1_55_port, q_4_1_54_port, q_4_1_53_port, q_4_1_52_port, q_4_1_51_port
      , q_4_1_50_port, q_4_1_49_port, q_4_1_48_port, q_4_1_47_port, 
      q_4_1_45_port, q_4_1_44_port, q_4_1_43_port, q_4_1_42_port, q_4_1_41_port
      , q_4_1_38_port, q_4_1_37_port, q_4_1_35_port, q_4_1_34_port, 
      q_4_1_33_port, q_4_1_32_port, q_4_1_31_port, q_4_1_30_port, q_4_1_29_port
      , q_4_1_28_port, q_4_1_27_port, q_4_1_26_port, q_4_1_25_port, 
      q_4_1_24_port, q_4_1_23_port, q_4_1_22_port, q_4_1_21_port, q_4_1_20_port
      , q_4_1_19_port, q_4_1_18_port, q_4_1_17_port, q_4_1_16_port, 
      q_4_1_15_port, q_4_1_14_port, q_4_1_13_port, q_4_1_12_port, q_4_1_11_port
      , q_4_1_10_port, q_4_1_9_port, q_4_1_8_port, q_4_1_7_port, q_4_0_56_port,
      q_4_0_55_port, q_4_0_54_port, q_4_0_53_port, q_4_0_52_port, q_4_0_51_port
      , q_4_0_50_port, q_4_0_49_port, q_4_0_48_port, q_4_0_46_port, 
      q_4_0_44_port, q_4_0_43_port, q_4_0_42_port, q_4_0_41_port, q_4_0_40_port
      , q_4_0_39_port, q_4_0_38_port, q_4_0_36_port, q_4_0_35_port, 
      q_4_0_34_port, q_4_0_33_port, q_4_0_32_port, q_4_0_31_port, q_4_0_30_port
      , q_4_0_28_port, q_4_0_26_port, q_4_0_25_port, q_4_0_24_port, 
      q_4_0_23_port, q_4_0_22_port, q_4_0_21_port, q_4_0_20_port, q_4_0_18_port
      , q_4_0_17_port, q_4_0_16_port, q_4_0_15_port, q_4_0_14_port, 
      q_4_0_13_port, q_4_0_12_port, q_4_0_11_port, q_4_0_10_port, q_4_0_9_port,
      q_4_0_8_port, q_4_0_7_port, q_4_0_6_port, q_5_2_48_port, q_5_2_47_port, 
      q_5_2_45_port, q_5_2_44_port, q_5_2_34_port, q_5_2_33_port, q_5_2_32_port
      , q_5_2_31_port, q_5_2_30_port, q_5_2_29_port, q_5_2_28_port, 
      q_5_2_27_port, q_5_2_26_port, q_5_2_25_port, q_5_2_24_port, q_5_2_23_port
      , q_5_2_22_port, q_5_2_21_port, q_5_2_20_port, q_5_2_19_port, 
      q_5_2_18_port, q_5_2_17_port, q_5_2_16_port, q_5_2_15_port, q_5_2_14_port
      , q_5_2_13_port, q_5_2_12_port, q_5_2_11_port, q_5_2_10_port, 
      q_5_2_9_port, q_5_1_58_port, q_5_1_57_port, q_5_1_56_port, q_5_1_55_port,
      q_5_1_54_port, q_5_1_53_port, q_5_1_52_port, q_5_1_51_port, q_5_1_50_port
      , q_5_1_49_port, q_5_1_48_port, q_5_1_47_port, q_5_1_46_port, 
      q_5_1_45_port, q_5_1_43_port, q_5_1_42_port, q_5_1_41_port, q_5_1_40_port
      , q_5_1_39_port, q_5_1_38_port, q_5_1_37_port, q_5_1_36_port, 
      q_5_1_35_port, q_5_1_34_port, q_5_1_33_port, q_5_1_32_port, q_5_1_31_port
      , q_5_1_30_port, q_5_1_29_port, q_5_1_28_port, q_5_1_27_port, 
      q_5_1_26_port, q_5_1_25_port, q_5_1_24_port, q_5_1_23_port, q_5_1_22_port
      , q_5_1_21_port, q_5_1_20_port, q_5_1_19_port, q_5_1_18_port, 
      q_5_1_17_port, q_5_1_16_port, q_5_1_15_port, q_5_1_14_port, q_5_1_13_port
      , q_5_1_12_port, q_5_1_11_port, q_5_1_10_port, q_5_1_9_port, q_5_1_8_port
      , q_5_1_7_port, q_5_1_6_port, q_5_1_5_port, q_5_0_57_port, q_5_0_56_port,
      q_5_0_55_port, q_5_0_54_port, q_5_0_53_port, q_5_0_52_port, q_5_0_51_port
      , q_5_0_50_port, q_5_0_49_port, q_5_0_48_port, q_5_0_46_port, 
      q_5_0_45_port, q_5_0_44_port, q_5_0_43_port, q_5_0_42_port, q_5_0_41_port
      , q_5_0_40_port, q_5_0_39_port, q_5_0_38_port, q_5_0_37_port, 
      q_5_0_36_port, q_5_0_35_port, q_5_0_34_port, q_5_0_33_port, q_5_0_32_port
      , q_5_0_31_port, q_5_0_30_port, q_5_0_29_port, q_5_0_28_port, 
      q_5_0_25_port, q_5_0_24_port, q_5_0_23_port, q_5_0_22_port, q_5_0_21_port
      , q_5_0_20_port, q_5_0_19_port, q_5_0_18_port, q_5_0_17_port, 
      q_5_0_16_port, q_5_0_15_port, q_5_0_14_port, q_5_0_13_port, q_5_0_12_port
      , q_5_0_11_port, q_5_0_10_port, q_5_0_9_port, q_5_0_7_port, q_5_0_6_port,
      q_5_0_5_port, q_5_0_4_port, q_6_1_63_port, q_6_1_62_port, q_6_1_61_port, 
      q_6_1_60_port, q_6_1_59_port, q_6_1_58_port, q_6_1_57_port, q_6_1_56_port
      , q_6_1_55_port, q_6_1_54_port, q_6_1_53_port, q_6_1_52_port, 
      q_6_1_51_port, q_6_1_50_port, q_6_1_49_port, q_6_1_48_port, q_6_1_47_port
      , q_6_1_46_port, q_6_1_45_port, q_6_1_44_port, q_6_1_43_port, 
      q_6_1_42_port, q_6_1_41_port, q_6_1_40_port, q_6_1_39_port, q_6_1_38_port
      , q_6_1_37_port, q_6_1_36_port, q_6_1_35_port, q_6_1_34_port, 
      q_6_1_33_port, q_6_1_32_port, q_6_1_31_port, q_6_1_30_port, q_6_1_29_port
      , q_6_1_28_port, q_6_1_27_port, q_6_1_26_port, q_6_1_25_port, 
      q_6_1_24_port, q_6_1_23_port, q_6_1_22_port, q_6_1_21_port, q_6_1_20_port
      , q_6_1_19_port, q_6_1_18_port, q_6_1_17_port, q_6_1_16_port, 
      q_6_1_15_port, q_6_1_14_port, q_6_1_13_port, q_6_1_12_port, q_6_1_11_port
      , q_6_1_10_port, q_6_1_9_port, q_6_1_8_port, q_6_1_7_port, q_6_1_6_port, 
      q_6_1_5_port, q_6_1_4_port, q_6_1_3_port, q_6_0_63_port, q_6_0_62_port, 
      q_6_0_61_port, q_6_0_60_port, q_6_0_59_port, q_6_0_58_port, q_6_0_57_port
      , q_6_0_56_port, q_6_0_55_port, q_6_0_54_port, q_6_0_53_port, 
      q_6_0_52_port, q_6_0_51_port, q_6_0_50_port, q_6_0_49_port, q_6_0_48_port
      , q_6_0_47_port, q_6_0_46_port, q_6_0_45_port, q_6_0_44_port, 
      q_6_0_43_port, q_6_0_42_port, q_6_0_41_port, q_6_0_40_port, q_6_0_39_port
      , q_6_0_38_port, q_6_0_37_port, q_6_0_36_port, q_6_0_35_port, 
      q_6_0_34_port, q_6_0_33_port, q_6_0_32_port, q_6_0_31_port, q_6_0_30_port
      , q_6_0_29_port, q_6_0_28_port, q_6_0_27_port, q_6_0_26_port, 
      q_6_0_25_port, q_6_0_24_port, q_6_0_23_port, q_6_0_22_port, q_6_0_21_port
      , q_6_0_20_port, q_6_0_19_port, q_6_0_18_port, q_6_0_17_port, 
      q_6_0_16_port, q_6_0_15_port, q_6_0_14_port, q_6_0_13_port, q_6_0_12_port
      , q_6_0_11_port, q_6_0_10_port, q_6_0_9_port, q_6_0_8_port, q_6_0_7_port,
      q_6_0_6_port, q_6_0_5_port, q_6_0_4_port, q_6_0_3_port, q_6_0_2_port, n1,
      n2, n8, n65, n86, n87, n89, n93, n94, n95, n96, n97, n147, n148, n149, 
      n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, 
      n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, 
      n174, n175, n176, n177, n178, n179, n180, n181, n182, n185, n208, 
      net98946, net98947, net98948, net98949, net98950, net98951, net98952, 
      net98953, net98954, net98955, net98956, net98957, net98958, net98959, 
      net98960, net98961, net98962, net98963, net98964, net98965, net98966, 
      net98967, net98968, net98969, net98970, net98971, net98972, net98973, 
      net98974, net98975, net98976, net98977, net98978, net98979, net98980, 
      net98981, net98982, net98983, net98984, net98985, net98986, net98987, 
      net98988, net98989, net98990, net98991, net98992, net98993, net98994, 
      net98995, net98996, net98997, net98998, net98999, net99000, net99001, 
      net99002, net99003, net99004, net99005, net99006, net99007, net99008, 
      net99009, net99010, net99011, net99012, net99013, net99014, net99015, 
      net99016, net99017, net99018, net99019, net99020, net99021, net99022, 
      net99023, net99024, net99025, net99026, net99027, net99028, net99029, 
      net99030, net99031, net99032, net99033, net99034, net99035, net99036, 
      net99037, net99038, net99039, net99040, net99041, net99042, net99043, 
      net99044, net99045, net99046, net99047, net99048, net99049, net99050, 
      net99051, net99052, net99053, net99054, net99055, net99056, net99057, 
      net99058, net99059, net99060, n_1737, n_1738, n_1739, n_1740, n_1741, 
      n_1742, n_1743, n_1744, n_1745, n_1746, n_1747, n_1748, n_1749, n_1750, 
      n_1751, n_1752, n_1753, n_1754, n_1755, n_1756, n_1757, n_1758, n_1759, 
      n_1760, n_1761, n_1762, n_1763, n_1764, n_1765, n_1766, n_1767, n_1768, 
      n_1769, n_1770, n_1771, n_1772, n_1773, n_1774, n_1775, n_1776, n_1777, 
      n_1778, n_1779, n_1780, n_1781, n_1782, n_1783, n_1784, n_1785, n_1786, 
      n_1787, n_1788, n_1789, n_1790, n_1791, n_1792, n_1793, n_1794, n_1795, 
      n_1796, n_1797, n_1798, n_1799, n_1800, n_1801, n_1802, n_1803, n_1804, 
      n_1805, n_1806, n_1807, n_1808, n_1809, n_1810, n_1811, n_1812, n_1813, 
      n_1814, n_1815, n_1816, n_1817, n_1818, n_1819, n_1820, n_1821, n_1822, 
      n_1823, n_1824, n_1825, n_1826, n_1827, n_1828, n_1829, n_1830, n_1831, 
      n_1832, n_1833, n_1834, n_1835, n_1836, n_1837, n_1838, n_1839, n_1840, 
      n_1841, n_1842, n_1843, n_1844, n_1845, n_1846, n_1847, n_1848, n_1849, 
      n_1850, n_1851, n_1852 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   n1 <= '0';
   n2 <= '0';
   U61 : INV_X1 port map( A => n185, ZN => n86);
   U82 : INV_X1 port map( A => n8, ZN => n89);
   U95 : INV_X1 port map( A => B(9), ZN => n93);
   U96 : INV_X1 port map( A => B(7), ZN => n94);
   U97 : INV_X1 port map( A => B(5), ZN => n95);
   U98 : INV_X1 port map( A => B(3), ZN => n96);
   U99 : INV_X1 port map( A => B(1), ZN => n97);
   U8 : BUF_X1 port map( A => A(23), Z => n65);
   U15 : CLKBUF_X1 port map( A => B(17), Z => n8);
   U26 : INV_X1 port map( A => B(21), ZN => n87);
   U27 : BUF_X1 port map( A => B(23), Z => n185);
   q_6_1_52_port <= '0';
   q_6_1_54_port <= '0';
   q_6_1_56_port <= '0';
   q_6_1_58_port <= '0';
   q_6_1_60_port <= '0';
   q_6_0_59_port <= '1';
   q_6_1_53_port <= '0';
   q_6_1_55_port <= '0';
   q_6_1_57_port <= '0';
   q_6_1_59_port <= '0';
   q_6_1_61_port <= '0';
   q_6_0_60_port <= '1';
   q_6_1_62_port <= '0';
   q_6_0_61_port <= '1';
   q_6_1_63_port <= '0';
   q_6_0_62_port <= '1';
   q_6_0_63_port <= '1';
   q_6_1_51_port <= '0';
   q_6_1_50_port <= '0';
   q_6_1_49_port <= '0';
   n211 <= '0';
   n210 <= '0';
   n209 <= '0';
   n208 <= '0';
   net98946 <= '0';
   net98947 <= '0';
   net98948 <= '0';
   net98949 <= '0';
   net98950 <= '0';
   net98951 <= '0';
   net98952 <= '0';
   net98953 <= '0';
   net98954 <= '0';
   net98955 <= '0';
   net98956 <= '0';
   net98957 <= '0';
   net98958 <= '0';
   net98959 <= '0';
   net98960 <= '0';
   net98961 <= '0';
   net98962 <= '0';
   net98963 <= '0';
   net98964 <= '0';
   net98965 <= '0';
   net98966 <= '0';
   net98967 <= '0';
   net98968 <= '0';
   net98969 <= '0';
   net98970 <= '0';
   net98971 <= '0';
   net98972 <= '0';
   net98973 <= '0';
   net98974 <= '0';
   net98975 <= '0';
   net98976 <= '0';
   net98977 <= '0';
   net98978 <= '0';
   net98979 <= '0';
   net98980 <= '0';
   net98981 <= '0';
   net98982 <= '0';
   net98983 <= '0';
   net98984 <= '0';
   net98985 <= '0';
   net98986 <= '0';
   net98987 <= '0';
   net98988 <= '0';
   net98989 <= '0';
   net98990 <= '0';
   net98991 <= '0';
   net98992 <= '0';
   net98993 <= '0';
   net98994 <= '0';
   net98995 <= '0';
   net98996 <= '0';
   net98997 <= '0';
   net98998 <= '0';
   net98999 <= '0';
   net99000 <= '0';
   net99001 <= '0';
   net99002 <= '0';
   net99003 <= '0';
   net99004 <= '0';
   net99005 <= '0';
   net99006 <= '0';
   net99007 <= '0';
   net99008 <= '0';
   net99009 <= '0';
   net99010 <= '0';
   net99011 <= '0';
   net99012 <= '0';
   net99013 <= '0';
   net99014 <= '0';
   net99015 <= '0';
   net99016 <= '0';
   net99017 <= '0';
   net99018 <= '0';
   net99019 <= '0';
   net99020 <= '0';
   net99021 <= '0';
   net99022 <= '0';
   net99023 <= '0';
   net99024 <= '0';
   net99025 <= '0';
   net99026 <= '0';
   net99027 <= '0';
   net99028 <= '0';
   net99029 <= '0';
   net99030 <= '0';
   net99031 <= '0';
   net99032 <= '0';
   net99033 <= '0';
   net99034 <= '0';
   net99035 <= '0';
   net99036 <= '0';
   net99037 <= '0';
   net99038 <= '0';
   net99039 <= '0';
   net99040 <= '0';
   net99041 <= '0';
   net99042 <= '0';
   net99043 <= '0';
   net99044 <= '0';
   net99045 <= '0';
   net99046 <= '0';
   net99047 <= '0';
   net99048 <= '0';
   net99049 <= '0';
   net99050 <= '0';
   net99051 <= '0';
   net99052 <= '0';
   net99053 <= '0';
   net99054 <= '0';
   net99055 <= '0';
   net99056 <= '0';
   net99057 <= '0';
   net99058 <= '0';
   net99059 <= '0';
   net99060 <= '0';
   encI_1 : ENC_0 port map( b(2) => B(1), b(1) => B(0), b(0) => X_Logic0_port, 
                           A(31) => n208, A(30) => n208, A(29) => n208, A(28) 
                           => n208, A(27) => n208, A(26) => n208, A(25) => n208
                           , A(24) => n208, A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), p(32) => 
                           q_0_0_32_port, p(31) => q_0_0_31_port, p(30) => 
                           q_0_0_30_port, p(29) => q_0_0_29_port, p(28) => 
                           q_0_0_28_port, p(27) => q_0_0_27_port, p(26) => 
                           q_0_0_26_port, p(25) => q_0_0_25_port, p(24) => 
                           q_0_0_24_port, p(23) => q_0_0_23_port, p(22) => 
                           q_0_0_22_port, p(21) => q_0_0_21_port, p(20) => 
                           q_0_0_20_port, p(19) => q_0_0_19_port, p(18) => 
                           q_0_0_18_port, p(17) => q_0_0_17_port, p(16) => 
                           q_0_0_16_port, p(15) => q_0_0_15_port, p(14) => 
                           q_0_0_14_port, p(13) => q_0_0_13_port, p(12) => 
                           q_0_0_12_port, p(11) => q_0_0_11_port, p(10) => 
                           q_0_0_10_port, p(9) => q_0_0_9_port, p(8) => 
                           q_0_0_8_port, p(7) => q_0_0_7_port, p(6) => 
                           q_0_0_6_port, p(5) => q_0_0_5_port, p(4) => 
                           q_0_0_4_port, p(3) => q_0_0_3_port, p(2) => 
                           q_0_0_2_port, p(1) => q_0_0_1_port, p(0) => 
                           q_0_0_0_port);
   encI_2 : ENC_16 port map( b(2) => B(3), b(1) => B(2), b(0) => B(1), A(31) =>
                           n208, A(30) => n208, A(29) => n208, A(28) => n208, 
                           A(27) => n208, A(26) => n208, A(25) => n208, A(24) 
                           => n208, A(23) => n65, A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), p(32) => q_0_1_34_port, p(31)
                           => q_0_1_33_port, p(30) => q_0_1_32_port, p(29) => 
                           q_0_1_31_port, p(28) => q_0_1_30_port, p(27) => 
                           q_0_1_29_port, p(26) => q_0_1_28_port, p(25) => 
                           q_0_1_27_port, p(24) => q_0_1_26_port, p(23) => 
                           q_0_1_25_port, p(22) => q_0_1_24_port, p(21) => 
                           q_0_1_23_port, p(20) => q_0_1_22_port, p(19) => 
                           q_0_1_21_port, p(18) => q_0_1_20_port, p(17) => 
                           q_0_1_19_port, p(16) => q_0_1_18_port, p(15) => 
                           q_0_1_17_port, p(14) => q_0_1_16_port, p(13) => 
                           q_0_1_15_port, p(12) => q_0_1_14_port, p(11) => 
                           q_0_1_13_port, p(10) => q_0_1_12_port, p(9) => 
                           q_0_1_11_port, p(8) => q_0_1_10_port, p(7) => 
                           q_0_1_9_port, p(6) => q_0_1_8_port, p(5) => 
                           q_0_1_7_port, p(4) => q_0_1_6_port, p(3) => 
                           q_0_1_5_port, p(2) => q_0_1_4_port, p(1) => 
                           q_0_1_3_port, p(0) => q_0_1_2_port);
   encI_3 : ENC_15 port map( b(2) => B(5), b(1) => B(4), b(0) => B(3), A(31) =>
                           n208, A(30) => n208, A(29) => n208, A(28) => n208, 
                           A(27) => n208, A(26) => n208, A(25) => n208, A(24) 
                           => n208, A(23) => n65, A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), p(32) => q_0_1_36_port, p(31)
                           => q_0_2_35_port, p(30) => q_0_2_34_port, p(29) => 
                           q_0_2_33_port, p(28) => q_0_2_32_port, p(27) => 
                           q_0_2_31_port, p(26) => q_0_2_30_port, p(25) => 
                           q_0_2_29_port, p(24) => q_0_2_28_port, p(23) => 
                           q_0_2_27_port, p(22) => q_0_2_26_port, p(21) => 
                           q_0_2_25_port, p(20) => q_0_2_24_port, p(19) => 
                           q_0_2_23_port, p(18) => q_0_2_22_port, p(17) => 
                           q_0_2_21_port, p(16) => q_0_2_20_port, p(15) => 
                           q_0_2_19_port, p(14) => q_0_2_18_port, p(13) => 
                           q_0_2_17_port, p(12) => q_0_2_16_port, p(11) => 
                           q_0_2_15_port, p(10) => q_0_2_14_port, p(9) => 
                           q_0_2_13_port, p(8) => q_0_2_12_port, p(7) => 
                           q_0_2_11_port, p(6) => q_0_2_10_port, p(5) => 
                           q_0_2_9_port, p(4) => q_0_2_8_port, p(3) => 
                           q_0_2_7_port, p(2) => q_0_2_6_port, p(1) => 
                           q_0_2_5_port, p(0) => q_0_2_4_port);
   encI_4 : ENC_14 port map( b(2) => B(7), b(1) => B(6), b(0) => B(5), A(31) =>
                           n208, A(30) => n208, A(29) => n208, A(28) => n208, 
                           A(27) => n208, A(26) => n208, A(25) => n208, A(24) 
                           => n208, A(23) => n65, A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), p(32) => q_0_1_38_port, p(31)
                           => q_0_1_37_port, p(30) => q_0_2_36_port, p(29) => 
                           q_0_3_35_port, p(28) => q_0_3_34_port, p(27) => 
                           q_0_3_33_port, p(26) => q_0_3_32_port, p(25) => 
                           q_0_3_31_port, p(24) => q_0_3_30_port, p(23) => 
                           q_0_3_29_port, p(22) => q_0_3_28_port, p(21) => 
                           q_0_3_27_port, p(20) => q_0_3_26_port, p(19) => 
                           q_0_3_25_port, p(18) => q_0_3_24_port, p(17) => 
                           q_0_3_23_port, p(16) => q_0_3_22_port, p(15) => 
                           q_0_3_21_port, p(14) => q_0_3_20_port, p(13) => 
                           q_0_3_19_port, p(12) => q_0_3_18_port, p(11) => 
                           q_0_3_17_port, p(10) => q_0_3_16_port, p(9) => 
                           q_0_3_15_port, p(8) => q_0_3_14_port, p(7) => 
                           q_0_3_13_port, p(6) => q_0_3_12_port, p(5) => 
                           q_0_3_11_port, p(4) => q_0_3_10_port, p(3) => 
                           q_0_3_9_port, p(2) => q_0_3_8_port, p(1) => 
                           q_0_3_7_port, p(0) => q_0_3_6_port);
   encI_5 : ENC_13 port map( b(2) => B(9), b(1) => B(8), b(0) => B(7), A(31) =>
                           n208, A(30) => n208, A(29) => n208, A(28) => n208, 
                           A(27) => n208, A(26) => n208, A(25) => n208, A(24) 
                           => n208, A(23) => n65, A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), p(32) => q_0_1_40_port, p(31)
                           => q_0_1_39_port, p(30) => q_0_2_38_port, p(29) => 
                           q_0_2_37_port, p(28) => q_0_3_36_port, p(27) => 
                           q_0_4_35_port, p(26) => q_0_4_34_port, p(25) => 
                           q_0_4_33_port, p(24) => q_0_4_32_port, p(23) => 
                           q_0_4_31_port, p(22) => q_0_4_30_port, p(21) => 
                           q_0_4_29_port, p(20) => q_0_4_28_port, p(19) => 
                           q_0_4_27_port, p(18) => q_0_4_26_port, p(17) => 
                           q_0_4_25_port, p(16) => q_0_4_24_port, p(15) => 
                           q_0_4_23_port, p(14) => q_0_4_22_port, p(13) => 
                           q_0_4_21_port, p(12) => q_0_4_20_port, p(11) => 
                           q_0_4_19_port, p(10) => q_0_4_18_port, p(9) => 
                           q_0_4_17_port, p(8) => q_0_4_16_port, p(7) => 
                           q_0_4_15_port, p(6) => q_0_4_14_port, p(5) => 
                           q_0_4_13_port, p(4) => q_0_4_12_port, p(3) => 
                           q_0_4_11_port, p(2) => q_0_4_10_port, p(1) => 
                           q_0_4_9_port, p(0) => q_0_4_8_port);
   encI_6 : ENC_12 port map( b(2) => B(11), b(1) => B(10), b(0) => B(9), A(31) 
                           => n208, A(30) => n208, A(29) => n208, A(28) => n208
                           , A(27) => n208, A(26) => n208, A(25) => n208, A(24)
                           => n208, A(23) => n65, A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), p(32) => q_0_1_42_port, p(31)
                           => q_0_1_41_port, p(30) => q_0_2_40_port, p(29) => 
                           q_0_2_39_port, p(28) => q_0_3_38_port, p(27) => 
                           q_0_3_37_port, p(26) => q_0_4_36_port, p(25) => 
                           q_0_5_35_port, p(24) => q_0_5_34_port, p(23) => 
                           q_0_5_33_port, p(22) => n167, p(21) => q_0_5_31_port
                           , p(20) => q_0_5_30_port, p(19) => q_0_5_29_port, 
                           p(18) => q_0_5_28_port, p(17) => q_0_5_27_port, 
                           p(16) => q_0_5_26_port, p(15) => q_0_5_25_port, 
                           p(14) => q_0_5_24_port, p(13) => q_0_5_23_port, 
                           p(12) => q_0_5_22_port, p(11) => q_0_5_21_port, 
                           p(10) => q_0_5_20_port, p(9) => q_0_5_19_port, p(8) 
                           => q_0_5_18_port, p(7) => q_0_5_17_port, p(6) => 
                           q_0_5_16_port, p(5) => q_0_5_15_port, p(4) => 
                           q_0_5_14_port, p(3) => q_0_5_13_port, p(2) => 
                           q_0_5_12_port, p(1) => q_0_5_11_port, p(0) => 
                           q_0_5_10_port);
   encI_7 : ENC_11 port map( b(2) => B(13), b(1) => B(12), b(0) => B(11), A(31)
                           => n208, A(30) => n208, A(29) => n208, A(28) => n208
                           , A(27) => n208, A(26) => n208, A(25) => n208, A(24)
                           => n208, A(23) => n65, A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), p(32) => q_0_1_44_port, p(31)
                           => q_0_1_43_port, p(30) => q_0_2_42_port, p(29) => 
                           q_0_2_41_port, p(28) => q_0_3_40_port, p(27) => 
                           q_0_3_39_port, p(26) => q_0_4_38_port, p(25) => 
                           q_0_4_37_port, p(24) => q_0_5_36_port, p(23) => 
                           q_0_6_35_port, p(22) => q_0_6_34_port, p(21) => 
                           q_0_6_33_port, p(20) => q_0_6_32_port, p(19) => 
                           q_0_6_31_port, p(18) => q_0_6_30_port, p(17) => 
                           q_0_6_29_port, p(16) => q_0_6_28_port, p(15) => 
                           q_0_6_27_port, p(14) => q_0_6_26_port, p(13) => 
                           q_0_6_25_port, p(12) => q_0_6_24_port, p(11) => 
                           q_0_6_23_port, p(10) => q_0_6_22_port, p(9) => 
                           q_0_6_21_port, p(8) => q_0_6_20_port, p(7) => 
                           q_0_6_19_port, p(6) => q_0_6_18_port, p(5) => 
                           q_0_6_17_port, p(4) => q_0_6_16_port, p(3) => 
                           q_0_6_15_port, p(2) => q_0_6_14_port, p(1) => 
                           q_0_6_13_port, p(0) => q_0_6_12_port);
   encI_8 : ENC_10 port map( b(2) => B(15), b(1) => B(14), b(0) => B(13), A(31)
                           => n208, A(30) => n208, A(29) => n208, A(28) => n208
                           , A(27) => n208, A(26) => n208, A(25) => n208, A(24)
                           => n208, A(23) => n65, A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), p(32) => q_0_1_46_port, p(31)
                           => q_0_1_45_port, p(30) => q_0_2_44_port, p(29) => 
                           q_0_2_43_port, p(28) => q_0_3_42_port, p(27) => 
                           q_0_3_41_port, p(26) => q_0_4_40_port, p(25) => 
                           q_0_4_39_port, p(24) => q_0_5_38_port, p(23) => 
                           q_0_5_37_port, p(22) => q_0_6_36_port, p(21) => 
                           q_0_7_35_port, p(20) => q_0_7_34_port, p(19) => 
                           q_0_7_33_port, p(18) => q_0_7_32_port, p(17) => 
                           q_0_7_31_port, p(16) => q_0_7_30_port, p(15) => 
                           q_0_7_29_port, p(14) => q_0_7_28_port, p(13) => 
                           q_0_7_27_port, p(12) => q_0_7_26_port, p(11) => 
                           q_0_7_25_port, p(10) => q_0_7_24_port, p(9) => 
                           q_0_7_23_port, p(8) => q_0_7_22_port, p(7) => 
                           q_0_7_21_port, p(6) => q_0_7_20_port, p(5) => 
                           q_0_7_19_port, p(4) => q_0_7_18_port, p(3) => 
                           q_0_7_17_port, p(2) => q_0_7_16_port, p(1) => 
                           q_0_7_15_port, p(0) => q_0_7_14_port);
   encI_9 : ENC_9 port map( b(2) => B(17), b(1) => B(16), b(0) => B(15), A(31) 
                           => n208, A(30) => n208, A(29) => n208, A(28) => n208
                           , A(27) => n208, A(26) => n208, A(25) => n208, A(24)
                           => n208, A(23) => n65, A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), p(32) => q_0_1_48_port, p(31)
                           => q_0_1_47_port, p(30) => q_0_2_46_port, p(29) => 
                           q_0_2_45_port, p(28) => q_0_3_44_port, p(27) => 
                           q_0_3_43_port, p(26) => q_0_4_42_port, p(25) => 
                           q_0_4_41_port, p(24) => q_0_5_40_port, p(23) => 
                           q_0_5_39_port, p(22) => q_0_6_38_port, p(21) => 
                           q_0_6_37_port, p(20) => q_0_7_36_port, p(19) => 
                           q_0_8_35_port, p(18) => q_0_8_34_port, p(17) => 
                           q_0_8_33_port, p(16) => q_0_8_32_port, p(15) => 
                           q_0_8_31_port, p(14) => q_0_8_30_port, p(13) => 
                           q_0_8_29_port, p(12) => q_0_8_28_port, p(11) => 
                           q_0_8_27_port, p(10) => q_0_8_26_port, p(9) => 
                           q_0_8_25_port, p(8) => q_0_8_24_port, p(7) => 
                           q_0_8_23_port, p(6) => q_0_8_22_port, p(5) => 
                           q_0_8_21_port, p(4) => q_0_8_20_port, p(3) => 
                           q_0_8_19_port, p(2) => q_0_8_18_port, p(1) => 
                           q_0_8_17_port, p(0) => q_0_8_16_port);
   encI_10 : ENC_8 port map( b(2) => B(19), b(1) => B(18), b(0) => B(17), A(31)
                           => n208, A(30) => n208, A(29) => n208, A(28) => n208
                           , A(27) => n208, A(26) => n208, A(25) => n208, A(24)
                           => n208, A(23) => n65, A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), p(32) => q_0_1_50_port, p(31)
                           => q_0_1_49_port, p(30) => q_0_2_48_port, p(29) => 
                           q_0_2_47_port, p(28) => q_0_3_46_port, p(27) => 
                           q_0_3_45_port, p(26) => q_0_4_44_port, p(25) => 
                           q_0_4_43_port, p(24) => q_0_5_42_port, p(23) => 
                           q_0_5_41_port, p(22) => q_0_6_40_port, p(21) => 
                           q_0_6_39_port, p(20) => q_0_7_38_port, p(19) => 
                           q_0_7_37_port, p(18) => q_0_8_36_port, p(17) => 
                           q_0_9_35_port, p(16) => q_0_9_34_port, p(15) => 
                           q_0_9_33_port, p(14) => q_0_9_32_port, p(13) => 
                           q_0_9_31_port, p(12) => q_0_9_30_port, p(11) => 
                           q_0_9_29_port, p(10) => q_0_9_28_port, p(9) => 
                           q_0_9_27_port, p(8) => q_0_9_26_port, p(7) => 
                           q_0_9_25_port, p(6) => q_0_9_24_port, p(5) => 
                           q_0_9_23_port, p(4) => q_0_9_22_port, p(3) => 
                           q_0_9_21_port, p(2) => q_0_9_20_port, p(1) => 
                           q_0_9_19_port, p(0) => q_0_9_18_port);
   encI_11 : ENC_7 port map( b(2) => B(21), b(1) => B(20), b(0) => B(19), A(31)
                           => n208, A(30) => n208, A(29) => n208, A(28) => n208
                           , A(27) => n208, A(26) => n208, A(25) => n208, A(24)
                           => n208, A(23) => n65, A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), p(32) => q_0_1_52_port, p(31)
                           => q_0_1_51_port, p(30) => q_0_2_50_port, p(29) => 
                           q_0_2_49_port, p(28) => q_0_3_48_port, p(27) => 
                           q_0_3_47_port, p(26) => q_0_4_46_port, p(25) => 
                           q_0_4_45_port, p(24) => q_0_5_44_port, p(23) => 
                           q_0_5_43_port, p(22) => q_0_6_42_port, p(21) => 
                           q_0_6_41_port, p(20) => q_0_7_40_port, p(19) => 
                           q_0_7_39_port, p(18) => q_0_8_38_port, p(17) => 
                           q_0_8_37_port, p(16) => q_0_9_36_port, p(15) => 
                           q_0_10_35_port, p(14) => q_0_10_34_port, p(13) => 
                           q_0_10_33_port, p(12) => q_0_10_32_port, p(11) => 
                           q_0_10_31_port, p(10) => q_0_10_30_port, p(9) => 
                           q_0_10_29_port, p(8) => q_0_10_28_port, p(7) => 
                           q_0_10_27_port, p(6) => q_0_10_26_port, p(5) => 
                           q_0_10_25_port, p(4) => q_0_10_24_port, p(3) => 
                           q_0_10_23_port, p(2) => q_0_10_22_port, p(1) => 
                           q_0_10_21_port, p(0) => q_0_10_20_port);
   encI_12 : ENC_6 port map( b(2) => B(23), b(1) => B(22), b(0) => B(21), A(31)
                           => n208, A(30) => n208, A(29) => n208, A(28) => n208
                           , A(27) => n208, A(26) => n208, A(25) => n208, A(24)
                           => n208, A(23) => A(23), A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), p(32) => q_0_1_54_port, p(31)
                           => q_0_1_53_port, p(30) => q_0_2_52_port, p(29) => 
                           q_0_2_51_port, p(28) => q_0_3_50_port, p(27) => 
                           q_0_3_49_port, p(26) => q_0_4_48_port, p(25) => 
                           q_0_4_47_port, p(24) => q_0_5_46_port, p(23) => 
                           q_0_5_45_port, p(22) => q_0_6_44_port, p(21) => 
                           q_0_6_43_port, p(20) => q_0_7_42_port, p(19) => 
                           q_0_7_41_port, p(18) => q_0_8_40_port, p(17) => 
                           q_0_8_39_port, p(16) => q_0_9_38_port, p(15) => 
                           q_0_9_37_port, p(14) => q_0_10_36_port, p(13) => 
                           q_0_11_35_port, p(12) => q_0_11_34_port, p(11) => 
                           q_0_11_33_port, p(10) => q_0_11_32_port, p(9) => 
                           q_0_11_31_port, p(8) => q_0_11_30_port, p(7) => 
                           q_0_11_29_port, p(6) => q_0_11_28_port, p(5) => 
                           q_0_11_27_port, p(4) => q_0_11_26_port, p(3) => 
                           q_0_11_25_port, p(2) => q_0_11_24_port, p(1) => 
                           q_0_11_23_port, p(0) => q_0_11_22_port);
   encI_13 : ENC_5 port map( b(2) => n208, b(1) => n211, b(0) => n185, A(31) =>
                           n208, A(30) => n208, A(29) => n208, A(28) => n208, 
                           A(27) => n208, A(26) => n208, A(25) => n208, A(24) 
                           => n208, A(23) => A(23), A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), p(32) => n_1737, p(31) => 
                           q_0_1_55_port, p(30) => q_0_2_54_port, p(29) => 
                           q_0_2_53_port, p(28) => q_0_3_52_port, p(27) => 
                           q_0_3_51_port, p(26) => q_0_4_50_port, p(25) => 
                           q_0_4_49_port, p(24) => q_0_5_48_port, p(23) => 
                           q_0_5_47_port, p(22) => q_0_6_46_port, p(21) => 
                           q_0_6_45_port, p(20) => q_0_7_44_port, p(19) => 
                           q_0_7_43_port, p(18) => q_0_8_42_port, p(17) => 
                           q_0_8_41_port, p(16) => q_0_9_40_port, p(15) => 
                           q_0_9_39_port, p(14) => q_0_10_38_port, p(13) => 
                           q_0_10_37_port, p(12) => q_0_11_36_port, p(11) => 
                           q_0_12_35_port, p(10) => q_0_12_34_port, p(9) => 
                           q_0_12_33_port, p(8) => q_0_12_32_port, p(7) => 
                           q_0_12_31_port, p(6) => q_0_12_30_port, p(5) => 
                           q_0_12_29_port, p(4) => q_0_12_28_port, p(3) => 
                           q_0_12_27_port, p(2) => q_0_12_26_port, p(1) => 
                           q_0_12_25_port, p(0) => q_0_12_24_port);
   encI_14 : ENC_4 port map( b(2) => n208, b(1) => n210, b(0) => n208, A(31) =>
                           n208, A(30) => n208, A(29) => n208, A(28) => n208, 
                           A(27) => n208, A(26) => n208, A(25) => n208, A(24) 
                           => n208, A(23) => n65, A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => net99050, A(15) => 
                           net99051, A(14) => net99052, A(13) => net99053, 
                           A(12) => net99054, A(11) => net99055, A(10) => 
                           net99056, A(9) => net99057, A(8) => net99058, A(7) 
                           => net99059, A(6) => net99060, A(5) => A(5), A(4) =>
                           A(4), A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), clk => clk, p_32_port => n_1738, p_31_port 
                           => n_1739, p_30_port => n_1740, p_29_port => n_1741,
                           p_28_port => n_1742, p_27_port => n_1743, p_26_port 
                           => n_1744, p_25_port => n_1745, p_24_port => 
                           q_0_5_50_port, p_23_port => q_0_5_49_port, p_22_port
                           => q_0_6_48_port, p_21_port => q_0_6_47_port, 
                           p_20_port => q_0_7_46_port, p_19_port => 
                           q_0_7_45_port, p_18_port => q_0_8_44_port, p_17_BAR 
                           => q_0_8_43_port, p_16_port => n_1746, p_15_port => 
                           n_1747, p_14_port => n_1748, p_13_port => n_1749, 
                           p_12_port => n_1750, p_11_port => n_1751, p_10_port 
                           => n_1752, p_9_port => n_1753, p_8_port => n_1754, 
                           p_7_port => n_1755, p_5_port => q_0_13_31_port, 
                           p_4_port => q_0_13_30_port, p_3_port => 
                           q_0_13_29_port, p_2_port => q_0_13_28_port, p_1_port
                           => q_0_13_27_port, p_0_port => q_0_13_26_port, 
                           p_6_BAR => q_0_13_32_port);
   encI_15 : ENC_3 port map( b(2) => n208, b(1) => n209, b(0) => n208, A(31) =>
                           n208, A(30) => n208, A(29) => n208, A(28) => n208, 
                           A(27) => n208, A(26) => n208, A(25) => n208, A(24) 
                           => n208, A(23) => net99033, A(22) => net99034, A(21)
                           => net99035, A(20) => net99036, A(19) => net99037, 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => net99038, A(14) => net99039, A(13) => 
                           net99040, A(12) => net99041, A(11) => net99042, 
                           A(10) => net99043, A(9) => net99044, A(8) => 
                           net99045, A(7) => net99046, A(6) => net99047, A(5) 
                           => net99048, A(4) => net99049, A(3) => A(3), A(2) =>
                           A(2), A(1) => A(1), A(0) => A(0), clk => clk, 
                           p_32_port => n_1756, p_31_port => n_1757, p_30_port 
                           => n_1758, p_29_port => n_1759, p_28_port => n_1760,
                           p_27_port => n_1761, p_26_port => n_1762, p_25_port 
                           => n_1763, p_24_port => n_1764, p_23_port => n_1765,
                           p_22_port => n_1766, p_21_port => n_1767, p_20_port 
                           => n_1768, p_19_BAR => q_0_7_47_port, p_18_port => 
                           q_0_8_46_port, p_17_port => q_0_8_45_port, p_15_port
                           => n_1769, p_14_port => n_1770, p_13_port => n_1771,
                           p_12_port => n_1772, p_11_port => n_1773, p_10_port 
                           => n_1774, p_9_port => n_1775, p_8_port => n_1776, 
                           p_7_port => n_1777, p_6_port => n_1778, p_5_port => 
                           n_1779, p_3_port => q_0_14_31_port, p_2_port => 
                           q_0_14_30_port, p_1_port => q_0_14_29_port, p_0_port
                           => q_0_14_28_port, p_4_BAR => q_0_14_32_port, 
                           p_16_BAR => q_0_9_44_port);
   HA_R_0_0_24 : HA_0 port map( A => q_0_0_24_port, B => q_0_1_24_port, S => 
                           q_1_0_24_port, C => q_1_1_25_port);
   HA_R_0_0_25 : HA_43 port map( A => q_0_0_25_port, B => q_0_1_25_port, S => 
                           q_1_0_25_port, C => q_1_1_26_port);
   FA_C_0_0_26 : FA_0 port map( A => q_0_0_26_port, B => q_0_1_26_port, Ci => 
                           q_0_2_26_port, S => q_1_0_26_port, Co => 
                           q_1_1_27_port);
   FA_C_0_0_27 : FA_479 port map( A => q_0_0_27_port, B => q_0_1_27_port, Ci =>
                           q_0_2_27_port, S => q_1_0_27_port, Co => 
                           q_1_1_28_port);
   FA_C_0_0_28 : FA_478 port map( A => q_0_0_28_port, B => q_0_1_28_port, Ci =>
                           q_0_2_28_port, S => q_1_0_28_port, Co => 
                           q_1_1_29_port);
   FA_C_0_0_29 : FA_477 port map( A => q_0_0_29_port, B => q_0_1_29_port, Ci =>
                           q_0_2_29_port, S => q_1_0_29_port, Co => 
                           q_1_1_30_port);
   FA_C_0_0_30 : FA_476 port map( A => q_0_0_30_port, B => q_0_1_30_port, Ci =>
                           q_0_2_30_port, S => q_1_0_30_port, Co => 
                           q_1_1_31_port);
   FA_C_0_0_31 : FA_475 port map( A => q_0_0_31_port, B => q_0_1_31_port, Ci =>
                           q_0_2_31_port, S => q_1_0_31_port, Co => 
                           q_1_1_32_port);
   FA_C_0_0_32 : FA_474 port map( A => q_0_0_32_port, B => q_0_1_32_port, Ci =>
                           q_0_2_32_port, S => q_1_0_32_port, Co => 
                           q_1_1_33_port);
   FA_C_0_0_33 : FA_473 port map( A => B(1), B => q_0_1_33_port, Ci => 
                           q_0_2_33_port, S => n147, Co => q_1_1_34_port);
   FA_C_0_0_34 : FA_472 port map( B => q_0_1_34_port, Ci => q_0_2_34_port, S =>
                           q_1_0_34_port, Co => q_1_1_35_port, A_BAR => n97);
   FA_C_0_0_35 : FA_471 port map( A => n97, B => n96, Ci => q_0_2_35_port, S =>
                           q_1_0_35_port, Co => q_1_1_36_port);
   FA_C_0_0_36 : FA_470 port map( A => X_Logic1_port, B => q_0_1_36_port, Ci =>
                           q_0_2_36_port, S => q_1_0_36_port, Co => 
                           q_1_1_37_port);
   FA_C_0_0_37 : FA_469 port map( A => n95, B => q_0_1_37_port, Ci => 
                           q_0_2_37_port, S => q_1_0_37_port, Co => 
                           q_1_1_38_port);
   FA_C_0_0_38 : FA_468 port map( A => X_Logic1_port, B => q_0_1_38_port, Ci =>
                           q_0_2_38_port, S => q_1_0_38_port, Co => 
                           q_1_1_39_port);
   FA_C_0_0_39 : FA_467 port map( A => n94, B => q_0_1_39_port, Ci => 
                           q_0_2_39_port, S => q_1_0_39_port, Co => 
                           q_1_1_40_port);
   FA_C_0_0_40 : FA_466 port map( A => X_Logic1_port, B => q_0_1_40_port, Ci =>
                           q_0_2_40_port, S => q_1_0_40_port, Co => 
                           q_1_1_41_port);
   FA_C_0_0_41 : FA_465 port map( A => n93, B => q_0_1_41_port, Ci => 
                           q_0_2_41_port, S => q_1_0_41_port, Co => 
                           q_1_1_42_port);
   HA_L_0_0_42 : HA_42 port map( A => X_Logic1_port, B => q_0_1_42_port, S => 
                           q_1_0_42_port, C => q_1_0_43_port);
   HA_R_0_3_26 : HA_41 port map( A => q_0_3_26_port, B => q_0_4_26_port, S => 
                           q_1_2_26_port, C => q_1_3_27_port);
   HA_R_0_3_27 : HA_40 port map( A => q_0_3_27_port, B => q_0_4_27_port, S => 
                           q_1_2_27_port, C => q_1_3_28_port);
   FA_C_0_3_28 : FA_464 port map( A => q_0_3_28_port, B => q_0_4_28_port, Ci =>
                           q_0_5_28_port, S => q_1_2_28_port, Co => 
                           q_1_3_29_port);
   FA_C_0_3_29 : FA_463 port map( A => q_0_3_29_port, B => q_0_4_29_port, Ci =>
                           q_0_5_29_port, S => q_1_2_29_port, Co => 
                           q_1_3_30_port);
   FA_C_0_3_30 : FA_462 port map( A => q_0_3_30_port, B => q_0_4_30_port, Ci =>
                           q_0_5_30_port, S => q_1_2_30_port, Co => 
                           q_1_3_31_port);
   FA_C_0_3_31 : FA_461 port map( A => q_0_3_31_port, B => q_0_4_31_port, Ci =>
                           q_0_5_31_port, S => q_1_2_31_port, Co => n155);
   FA_C_0_3_32 : FA_460 port map( A => q_0_3_32_port, B => q_0_4_32_port, Ci =>
                           n167, S => q_1_2_32_port, Co => q_1_3_33_port);
   FA_C_0_3_33 : FA_459 port map( A => q_0_3_33_port, B => q_0_4_33_port, Ci =>
                           q_0_5_33_port, S => q_1_2_33_port, Co => 
                           q_1_3_34_port);
   FA_C_0_3_34 : FA_458 port map( A => q_0_3_34_port, B => q_0_4_34_port, Ci =>
                           q_0_5_34_port, S => q_1_2_34_port, Co => 
                           q_1_3_35_port);
   FA_C_0_3_35 : FA_457 port map( A => q_0_3_35_port, B => q_0_4_35_port, Ci =>
                           q_0_5_35_port, S => q_1_2_35_port, Co => 
                           q_1_3_36_port);
   FA_C_0_3_36 : FA_456 port map( A => q_0_3_36_port, B => q_0_4_36_port, Ci =>
                           q_0_5_36_port, S => q_1_2_36_port, Co => 
                           q_1_3_37_port);
   FA_C_0_3_37 : FA_455 port map( A => q_0_3_37_port, B => q_0_4_37_port, Ci =>
                           q_0_5_37_port, S => q_1_2_37_port, Co => 
                           q_1_3_38_port);
   FA_C_0_3_38 : FA_454 port map( A => q_0_3_38_port, B => q_0_4_38_port, Ci =>
                           q_0_5_38_port, S => q_1_2_38_port, Co => 
                           q_1_3_39_port);
   FA_C_0_3_39 : FA_453 port map( A => q_0_3_39_port, B => q_0_4_39_port, Ci =>
                           q_0_5_39_port, S => q_1_2_39_port, Co => 
                           q_1_3_40_port);
   HA_L_0_3_40 : HA_39 port map( A => q_0_3_40_port, B => q_0_4_40_port, S => 
                           q_1_2_40_port, C => q_1_2_41_port);
   HA_R_0_6_28 : HA_38 port map( A => q_0_6_28_port, B => q_0_7_28_port, S => 
                           q_1_4_28_port, C => q_1_5_29_port);
   HA_R_0_6_29 : HA_37 port map( A => q_0_6_29_port, B => q_0_7_29_port, S => 
                           q_1_4_29_port, C => q_1_5_30_port);
   FA_C_0_6_30 : FA_452 port map( A => q_0_6_30_port, B => q_0_7_30_port, Ci =>
                           q_0_8_30_port, S => q_1_4_30_port, Co => 
                           q_1_5_31_port);
   FA_C_0_6_31 : FA_451 port map( A => q_0_6_31_port, B => q_0_7_31_port, Ci =>
                           q_0_8_31_port, S => n150, Co => q_1_5_32_port);
   FA_C_0_6_32 : FA_450 port map( A => q_0_6_32_port, B => q_0_7_32_port, Ci =>
                           q_0_8_32_port, S => q_1_4_32_port, Co => 
                           q_1_5_33_port);
   FA_C_0_6_33 : FA_449 port map( A => q_0_6_33_port, B => q_0_7_33_port, Ci =>
                           q_0_8_33_port, S => q_1_4_33_port, Co => 
                           q_1_5_34_port);
   FA_C_0_6_34 : FA_448 port map( A => q_0_6_34_port, B => q_0_7_34_port, Ci =>
                           q_0_8_34_port, S => q_1_4_34_port, Co => 
                           q_1_5_35_port);
   FA_C_0_6_35 : FA_447 port map( A => q_0_6_35_port, B => q_0_7_35_port, Ci =>
                           q_0_8_35_port, S => q_1_4_35_port, Co => 
                           q_1_5_36_port);
   FA_C_0_6_36 : FA_446 port map( A => q_0_6_36_port, B => q_0_7_36_port, Ci =>
                           q_0_8_36_port, S => q_1_4_36_port, Co => 
                           q_1_5_37_port);
   FA_C_0_6_37 : FA_445 port map( A => q_0_6_37_port, B => q_0_7_37_port, Ci =>
                           q_0_8_37_port, S => q_1_4_37_port, Co => 
                           q_1_5_38_port);
   HA_L_0_6_38 : HA_36 port map( A => q_0_6_38_port, B => q_0_7_38_port, S => 
                           q_1_4_38_port, C => q_1_4_39_port);
   HA_R_0_9_30 : HA_35 port map( A => q_0_9_30_port, B => q_0_10_30_port, S => 
                           q_1_6_30_port, C => q_1_7_31_port);
   HA_R_0_9_31 : HA_34 port map( A => q_0_9_31_port, B => q_0_10_31_port, S => 
                           q_1_6_31_port, C => q_1_7_32_port);
   FA_C_0_9_32 : FA_444 port map( A => q_0_9_32_port, B => q_0_10_32_port, Ci 
                           => q_0_11_32_port, S => q_1_6_32_port, Co => 
                           q_1_7_33_port);
   FA_C_0_9_33 : FA_443 port map( A => q_0_9_33_port, B => q_0_10_33_port, Ci 
                           => q_0_11_33_port, S => q_1_6_33_port, Co => 
                           q_1_7_34_port);
   FA_C_0_9_34 : FA_442 port map( A => q_0_9_34_port, B => q_0_10_34_port, Ci 
                           => q_0_11_34_port, S => q_1_6_34_port, Co => 
                           q_1_7_35_port);
   FA_C_0_9_35 : FA_441 port map( A => q_0_9_35_port, B => q_0_10_35_port, Ci 
                           => q_0_11_35_port, S => q_1_6_35_port, Co => 
                           q_1_7_36_port);
   HA_L_0_9_36 : HA_33 port map( A => q_0_9_36_port, B => q_0_10_36_port, S => 
                           q_1_6_36_port, C => q_1_6_37_port);
   HA_R_1_0_16 : HA_32 port map( A => q_0_0_16_port, B => q_0_1_16_port, S => 
                           q_2_0_16_port, C => q_2_1_17_port);
   HA_R_1_0_17 : HA_31 port map( A => q_0_0_17_port, B => q_0_1_17_port, S => 
                           q_2_0_17_port, C => q_2_1_18_port);
   FA_C_1_0_18 : FA_440 port map( A => q_0_0_18_port, B => q_0_1_18_port, Ci =>
                           q_0_2_18_port, S => q_2_0_18_port, Co => 
                           q_2_1_19_port);
   FA_C_1_0_19 : FA_439 port map( A => q_0_0_19_port, B => q_0_1_19_port, Ci =>
                           q_0_2_19_port, S => q_2_0_19_port, Co => 
                           q_2_1_20_port);
   FA_C_1_0_20 : FA_438 port map( A => q_0_0_20_port, B => q_0_1_20_port, Ci =>
                           q_0_2_20_port, S => q_2_0_20_port, Co => 
                           q_2_1_21_port);
   FA_C_1_0_21 : FA_437 port map( A => q_0_0_21_port, B => q_0_1_21_port, Ci =>
                           q_0_2_21_port, S => q_2_0_21_port, Co => 
                           q_2_1_22_port);
   FA_C_1_0_22 : FA_436 port map( A => q_0_0_22_port, B => q_0_1_22_port, Ci =>
                           q_0_2_22_port, S => q_2_0_22_port, Co => 
                           q_2_1_23_port);
   FA_C_1_0_23 : FA_435 port map( A => q_0_0_23_port, B => q_0_1_23_port, Ci =>
                           q_0_2_23_port, S => q_2_0_23_port, Co => 
                           q_2_1_24_port);
   FA_C_1_0_24 : FA_434 port map( A => q_1_0_24_port, B => q_0_2_24_port, Ci =>
                           q_0_3_24_port, S => q_2_0_24_port, Co => 
                           q_2_1_25_port);
   FA_C_1_0_25 : FA_433 port map( A => q_1_0_25_port, B => q_1_1_25_port, Ci =>
                           q_0_2_25_port, S => q_2_0_25_port, Co => 
                           q_2_1_26_port);
   FA_C_1_0_26 : FA_432 port map( A => q_1_0_26_port, B => q_1_1_26_port, Ci =>
                           q_1_2_26_port, S => q_2_0_26_port, Co => 
                           q_2_1_27_port);
   FA_C_1_0_27 : FA_431 port map( A => q_1_0_27_port, B => q_1_1_27_port, Ci =>
                           q_1_2_27_port, S => q_2_0_27_port, Co => 
                           q_2_1_28_port, clk => clk);
   FA_C_1_0_28 : FA_430 port map( A => q_1_0_28_port, B => q_1_1_28_port, Ci =>
                           q_1_2_28_port, S => q_2_0_28_port, Co => 
                           q_2_1_29_port);
   FA_C_1_0_29 : FA_429 port map( A => q_1_0_29_port, B => q_1_1_29_port, Ci =>
                           q_1_2_29_port, S => q_2_0_29_port, Co => 
                           q_2_1_30_port);
   FA_C_1_0_30 : FA_428 port map( A => q_1_0_30_port, B => q_1_1_30_port, Ci =>
                           q_1_2_30_port, S => q_2_0_30_port, Co => 
                           q_2_1_31_port, clk => clk);
   FA_C_1_0_31 : FA_427 port map( A => q_1_0_31_port, B => q_1_1_31_port, Ci =>
                           q_1_2_31_port, S => q_2_0_31_port, Co => 
                           q_2_1_32_port);
   FA_C_1_0_32 : FA_426 port map( A => q_1_0_32_port, B => q_1_1_32_port, Ci =>
                           q_1_2_32_port, S => q_2_0_32_port, Co => 
                           q_2_1_33_port, clk => clk);
   FA_C_1_0_33 : FA_425 port map( A => n147, B => q_1_1_33_port, Ci => 
                           q_1_2_33_port, S => q_2_0_33_port, Co => 
                           q_2_1_34_port, clk => clk);
   FA_C_1_0_34 : FA_424 port map( A => q_1_0_34_port, B => q_1_1_34_port, Ci =>
                           q_1_2_34_port, S => q_2_0_34_port, Co => 
                           q_2_1_35_port);
   FA_C_1_0_35 : FA_423 port map( A => q_1_0_35_port, B => q_1_1_35_port, Ci =>
                           q_1_2_35_port, S => q_2_0_35_port, Co => 
                           q_2_1_36_port, clk => clk);
   FA_C_1_0_36 : FA_422 port map( A => q_1_0_36_port, B => q_1_1_36_port, Ci =>
                           q_1_2_36_port, S => q_2_0_36_port, Co => 
                           q_2_1_37_port);
   FA_C_1_0_37 : FA_421 port map( A => q_1_0_37_port, B => q_1_1_37_port, Ci =>
                           q_1_2_37_port, S => q_2_0_37_port, Co => 
                           q_2_1_38_port);
   FA_C_1_0_38 : FA_420 port map( A => q_1_0_38_port, B => q_1_1_38_port, Ci =>
                           q_1_2_38_port, S => q_2_0_38_port, Co => 
                           q_2_1_39_port, clk => clk);
   FA_C_1_0_39 : FA_419 port map( A => q_1_0_39_port, B => q_1_1_39_port, Ci =>
                           q_1_2_39_port, S => q_2_0_39_port, Co => 
                           q_2_1_40_port);
   FA_C_1_0_40 : FA_418 port map( A => q_1_0_40_port, B => q_1_1_40_port, Ci =>
                           q_1_2_40_port, S => q_2_0_40_port, Co => 
                           q_2_1_41_port, clk => clk);
   FA_C_1_0_41 : FA_417 port map( A => q_1_0_41_port, B => q_1_1_41_port, Ci =>
                           q_1_2_41_port, S => q_2_0_41_port, Co => 
                           q_2_1_42_port, clk => clk);
   FA_C_1_0_42 : FA_416 port map( A => q_1_0_42_port, B => q_1_1_42_port, Ci =>
                           q_0_2_42_port, S => q_2_0_42_port, Co => 
                           q_2_1_43_port);
   FA_C_1_0_43 : FA_415 port map( A => q_1_0_43_port, Ci => q_0_1_43_port, S =>
                           q_2_0_43_port, Co => q_2_1_44_port, B_BAR => B(11));
   FA_C_1_0_44 : FA_414 port map( A => X_Logic1_port, B => q_0_1_44_port, Ci =>
                           q_0_2_44_port, S => q_2_0_44_port, Co => 
                           q_2_1_45_port);
   FA_C_1_0_45 : FA_413 port map( B => q_0_1_45_port, Ci => q_0_2_45_port, S =>
                           q_2_0_45_port, Co => q_2_1_46_port, A_BAR => B(13));
   FA_C_1_0_46 : FA_412 port map( A => X_Logic1_port, B => q_0_1_46_port, Ci =>
                           q_0_2_46_port, S => q_2_0_46_port, Co => 
                           q_2_1_47_port);
   FA_C_1_0_47 : FA_411 port map( B => q_0_1_47_port, Ci => q_0_2_47_port, S =>
                           q_2_0_47_port, Co => q_2_1_48_port, A_BAR => B(15));
   FA_C_1_0_48 : FA_410 port map( A => X_Logic1_port, B => q_0_1_48_port, Ci =>
                           q_0_2_48_port, S => q_2_0_48_port, Co => 
                           q_2_1_49_port);
   FA_C_1_0_49 : FA_409 port map( A => n89, B => q_0_1_49_port, Ci => 
                           q_0_2_49_port, S => q_2_0_49_port, Co => 
                           q_2_1_50_port);
   HA_L_1_0_50 : HA_30 port map( A => X_Logic1_port, B => q_0_1_50_port, S => 
                           q_2_0_50_port, C => q_2_0_51_port);
   HA_R_1_3_18 : HA_29 port map( A => q_0_3_18_port, B => q_0_4_18_port, S => 
                           q_2_2_18_port, C => q_2_3_19_port);
   HA_R_1_3_19 : HA_28 port map( A => q_0_3_19_port, B => q_0_4_19_port, S => 
                           q_2_2_19_port, C => q_2_3_20_port);
   FA_C_1_3_20 : FA_408 port map( A => q_0_3_20_port, B => q_0_4_20_port, Ci =>
                           q_0_5_20_port, S => q_2_2_20_port, Co => 
                           q_2_3_21_port);
   FA_C_1_3_21 : FA_407 port map( A => q_0_3_21_port, B => q_0_4_21_port, Ci =>
                           q_0_5_21_port, S => q_2_2_21_port, Co => 
                           q_2_3_22_port);
   FA_C_1_3_22 : FA_406 port map( A => q_0_3_22_port, B => q_0_4_22_port, Ci =>
                           q_0_5_22_port, S => q_2_2_22_port, Co => 
                           q_2_3_23_port);
   FA_C_1_3_23 : FA_405 port map( A => q_0_3_23_port, B => q_0_4_23_port, Ci =>
                           q_0_5_23_port, S => q_2_2_23_port, Co => 
                           q_2_3_24_port);
   FA_C_1_3_24 : FA_404 port map( A => q_0_4_24_port, B => q_0_5_24_port, Ci =>
                           q_0_6_24_port, S => q_2_2_24_port, Co => 
                           q_2_3_25_port);
   FA_C_1_3_25 : FA_403 port map( A => q_0_3_25_port, B => q_0_4_25_port, Ci =>
                           q_0_5_25_port, S => q_2_2_25_port, Co => 
                           q_2_3_26_port);
   FA_C_1_3_26 : FA_402 port map( A => q_0_5_26_port, B => q_0_6_26_port, Ci =>
                           q_0_7_26_port, S => q_2_2_26_port, Co => 
                           q_2_3_27_port);
   FA_C_1_3_27 : FA_401 port map( A => q_1_3_27_port, B => q_0_5_27_port, Ci =>
                           q_0_6_27_port, S => q_2_2_27_port, Co => 
                           q_2_3_28_port);
   FA_C_1_3_28 : FA_400 port map( A => q_1_3_28_port, B => q_1_4_28_port, Ci =>
                           q_0_8_28_port, S => q_2_2_28_port, Co => 
                           q_2_3_29_port);
   FA_C_1_3_29 : FA_399 port map( A => q_1_3_29_port, B => q_1_4_29_port, Ci =>
                           q_1_5_29_port, S => q_2_2_29_port, Co => 
                           q_2_3_30_port);
   FA_C_1_3_30 : FA_398 port map( A => q_1_3_30_port, B => q_1_4_30_port, Ci =>
                           q_1_5_30_port, S => q_2_2_30_port, Co => 
                           q_2_3_31_port);
   FA_C_1_3_31 : FA_397 port map( A => q_1_3_31_port, B => n150, Ci => 
                           q_1_5_31_port, S => q_2_2_31_port, Co => 
                           q_2_3_32_port);
   FA_C_1_3_32 : FA_396 port map( A => n155, B => q_1_4_32_port, Ci => 
                           q_1_5_32_port, S => q_2_2_32_port, Co => 
                           q_2_3_33_port);
   FA_C_1_3_33 : FA_395 port map( A => q_1_3_33_port, B => q_1_4_33_port, Ci =>
                           q_1_5_33_port, S => q_2_2_33_port, Co => 
                           q_2_3_34_port);
   FA_C_1_3_34 : FA_394 port map( A => q_1_3_34_port, B => q_1_4_34_port, Ci =>
                           q_1_5_34_port, S => q_2_2_34_port, Co => 
                           q_2_3_35_port);
   FA_C_1_3_35 : FA_393 port map( A => q_1_3_35_port, B => q_1_4_35_port, Ci =>
                           q_1_5_35_port, S => q_2_2_35_port, Co => 
                           q_2_3_36_port, clk => clk);
   FA_C_1_3_36 : FA_392 port map( A => q_1_3_36_port, B => q_1_4_36_port, Ci =>
                           q_1_5_36_port, S => n177, Co => q_2_3_37_port, clk 
                           => clk);
   FA_C_1_3_37 : FA_391 port map( A => q_1_3_37_port, B => q_1_4_37_port, Ci =>
                           q_1_5_37_port, S => q_2_2_37_port, Co => 
                           q_2_3_38_port, clk => clk);
   FA_C_1_3_38 : FA_390 port map( A => q_1_3_38_port, B => q_1_4_38_port, Ci =>
                           q_1_5_38_port, S => q_2_2_38_port, Co => 
                           q_2_3_39_port, clk => clk);
   FA_C_1_3_39 : FA_389 port map( A => q_1_3_39_port, B => q_1_4_39_port, Ci =>
                           q_0_6_39_port, S => q_2_2_39_port, Co => 
                           q_2_3_40_port);
   FA_C_1_3_40 : FA_388 port map( A => q_1_3_40_port, B => q_0_5_40_port, Ci =>
                           q_0_6_40_port, S => q_2_2_40_port, Co => 
                           q_2_3_41_port);
   FA_C_1_3_41 : FA_387 port map( A => q_0_3_41_port, B => q_0_4_41_port, Ci =>
                           q_0_5_41_port, S => q_2_2_41_port, Co => 
                           q_2_3_42_port);
   FA_C_1_3_42 : FA_386 port map( A => q_0_3_42_port, B => q_0_4_42_port, Ci =>
                           q_0_5_42_port, S => q_2_2_42_port, Co => 
                           q_2_3_43_port);
   FA_C_1_3_43 : FA_385 port map( A => q_0_2_43_port, B => q_0_3_43_port, Ci =>
                           q_0_4_43_port, S => q_2_2_43_port, Co => 
                           q_2_3_44_port);
   FA_C_1_3_44 : FA_384 port map( A => q_0_3_44_port, B => q_0_4_44_port, Ci =>
                           q_0_5_44_port, S => q_2_2_44_port, Co => 
                           q_2_3_45_port);
   FA_C_1_3_45 : FA_383 port map( A => q_0_3_45_port, B => q_0_4_45_port, Ci =>
                           q_0_5_45_port, S => q_2_2_45_port, Co => 
                           q_2_3_46_port);
   FA_C_1_3_46 : FA_382 port map( A => q_0_3_46_port, B => q_0_4_46_port, Ci =>
                           q_0_5_46_port, S => q_2_2_46_port, Co => 
                           q_2_3_47_port);
   FA_C_1_3_47 : FA_381 port map( A => q_0_3_47_port, B => q_0_4_47_port, Ci =>
                           q_0_5_47_port, S => q_2_2_47_port, Co => 
                           q_2_3_48_port);
   HA_L_1_3_48 : HA_27 port map( A => q_0_3_48_port, B => q_0_4_48_port, S => 
                           q_2_2_48_port, C => q_2_2_49_port);
   HA_R_1_6_20 : HA_26 port map( A => q_0_6_20_port, B => q_0_7_20_port, S => 
                           q_2_4_20_port, C => q_2_5_21_port);
   HA_R_1_6_21 : HA_25 port map( A => q_0_6_21_port, B => q_0_7_21_port, S => 
                           q_2_4_21_port, C => q_2_5_22_port);
   FA_C_1_6_22 : FA_380 port map( A => q_0_6_22_port, B => q_0_7_22_port, Ci =>
                           q_0_8_22_port, S => q_2_4_22_port, Co => 
                           q_2_5_23_port);
   FA_C_1_6_23 : FA_379 port map( A => q_0_6_23_port, B => q_0_7_23_port, Ci =>
                           q_0_8_23_port, S => q_2_4_23_port, Co => 
                           q_2_5_24_port);
   FA_C_1_6_24 : FA_378 port map( A => q_0_7_24_port, B => q_0_8_24_port, Ci =>
                           q_0_9_24_port, S => q_2_4_24_port, Co => 
                           q_2_5_25_port);
   FA_C_1_6_25 : FA_377 port map( A => q_0_6_25_port, B => q_0_7_25_port, Ci =>
                           q_0_8_25_port, S => q_2_4_25_port, Co => 
                           q_2_5_26_port);
   FA_C_1_6_26 : FA_376 port map( A => q_0_8_26_port, B => q_0_9_26_port, Ci =>
                           q_0_10_26_port, S => q_2_4_26_port, Co => 
                           q_2_5_27_port);
   FA_C_1_6_27 : FA_375 port map( A => q_0_7_27_port, B => q_0_8_27_port, Ci =>
                           q_0_9_27_port, S => q_2_4_27_port, Co => 
                           q_2_5_28_port);
   FA_C_1_6_28 : FA_374 port map( A => q_0_9_28_port, B => q_0_10_28_port, Ci 
                           => q_0_11_28_port, S => q_2_4_28_port, Co => 
                           q_2_5_29_port);
   FA_C_1_6_29 : FA_373 port map( A => q_0_8_29_port, B => q_0_9_29_port, Ci =>
                           q_0_10_29_port, S => q_2_4_29_port, Co => 
                           q_2_5_30_port);
   FA_C_1_6_30 : FA_372 port map( A => q_1_6_30_port, B => q_0_11_30_port, Ci 
                           => q_0_12_30_port, S => q_2_4_30_port, Co => 
                           q_2_5_31_port);
   FA_C_1_6_31 : FA_371 port map( A => q_1_6_31_port, B => q_1_7_31_port, Ci =>
                           q_0_11_31_port, S => q_2_4_31_port, Co => 
                           q_2_5_32_port);
   FA_C_1_6_32 : FA_370 port map( A => q_1_6_32_port, B => q_1_7_32_port, Ci =>
                           q_0_12_32_port, S => q_2_4_32_port, Co => 
                           q_2_5_33_port, clk => clk);
   FA_C_1_6_33 : FA_369 port map( A => q_1_6_33_port, B => q_1_7_33_port, Ci =>
                           q_0_12_33_port, S => q_2_4_33_port, Co => 
                           q_2_5_34_port, clk => clk);
   FA_C_1_6_34 : FA_368 port map( A => q_1_6_34_port, B => q_1_7_34_port, Ci =>
                           q_0_12_34_port, S => q_2_4_34_port, Co => 
                           q_2_5_35_port, clk => clk);
   FA_C_1_6_35 : FA_367 port map( A => q_1_6_35_port, B => q_1_7_35_port, Ci =>
                           q_0_12_35_port, S => q_2_4_35_port, Co => 
                           q_2_5_36_port, clk => clk);
   FA_C_1_6_36 : FA_366 port map( A => q_1_6_36_port, B => q_1_7_36_port, Ci =>
                           q_0_11_36_port, S => q_2_4_36_port, Co => 
                           q_2_5_37_port);
   FA_C_1_6_37 : FA_365 port map( A => q_1_6_37_port, B => q_0_9_37_port, Ci =>
                           q_0_10_37_port, S => q_2_4_37_port, Co => 
                           q_2_5_38_port);
   FA_C_1_6_38 : FA_364 port map( A => q_0_8_38_port, B => q_0_9_38_port, Ci =>
                           q_0_10_38_port, S => q_2_4_38_port, Co => 
                           q_2_5_39_port);
   FA_C_1_6_39 : FA_363 port map( A => q_0_7_39_port, B => q_0_8_39_port, Ci =>
                           q_0_9_39_port, S => q_2_4_39_port, Co => 
                           q_2_5_40_port);
   FA_C_1_6_40 : FA_362 port map( A => q_0_7_40_port, B => q_0_8_40_port, Ci =>
                           q_0_9_40_port, S => q_2_4_40_port, Co => 
                           q_2_5_41_port);
   FA_C_1_6_41 : FA_361 port map( A => q_0_6_41_port, B => q_0_7_41_port, Ci =>
                           q_0_8_41_port, S => q_2_4_41_port, Co => 
                           q_2_5_42_port);
   FA_C_1_6_42 : FA_360 port map( A => q_0_6_42_port, B => q_0_7_42_port, Ci =>
                           q_0_8_42_port, S => q_2_4_42_port, Co => 
                           q_2_5_43_port);
   FA_C_1_6_43 : FA_359 port map( A => q_0_5_43_port, B => q_0_6_43_port, Ci =>
                           q_0_7_43_port, S => q_2_4_43_port, Co => 
                           q_2_5_44_port);
   FA_C_1_6_44 : FA_358 port map( A => q_0_6_44_port, B => q_0_7_44_port, Ci =>
                           q_0_8_44_port, S => q_2_4_44_port, Co => 
                           q_2_5_45_port);
   FA_C_1_6_45 : FA_357 port map( A => q_0_6_45_port, B => q_0_7_45_port, Ci =>
                           q_0_8_45_port, S => q_2_4_45_port, Co => 
                           q_2_5_46_port);
   HA_L_1_6_46 : HA_24 port map( A => q_0_6_46_port, B => q_0_7_46_port, S => 
                           q_2_4_46_port, C => q_2_4_47_port);
   HA_R_1_9_22 : HA_23 port map( A => q_0_9_22_port, B => q_0_10_22_port, S => 
                           q_2_6_22_port, C => q_2_7_23_port);
   HA_R_1_9_23 : HA_22 port map( A => q_0_9_23_port, B => q_0_10_23_port, S => 
                           q_2_6_23_port, C => q_2_7_24_port);
   FA_C_1_9_24 : FA_356 port map( A => q_0_10_24_port, B => q_0_11_24_port, Ci 
                           => q_0_12_24_port, S => q_2_6_24_port, Co => 
                           q_2_7_25_port);
   FA_C_1_9_25 : FA_355 port map( A => q_0_9_25_port, B => q_0_10_25_port, Ci 
                           => q_0_11_25_port, S => q_2_6_25_port, Co => 
                           q_2_7_26_port);
   FA_C_1_9_26 : FA_354 port map( A => q_0_11_26_port, B => q_0_12_26_port, Ci 
                           => q_0_13_26_port, S => q_2_6_26_port, Co => 
                           q_2_7_27_port);
   FA_C_1_9_27 : FA_353 port map( A => q_0_10_27_port, B => q_0_11_27_port, Ci 
                           => q_0_12_27_port, S => q_2_6_27_port, Co => 
                           q_2_7_28_port);
   FA_C_1_9_28 : FA_352 port map( A => q_0_12_28_port, B => q_0_13_28_port, Ci 
                           => q_0_14_28_port, S => q_2_6_28_port, Co => 
                           q_2_7_29_port);
   FA_C_1_9_29 : FA_351 port map( A => q_0_11_29_port, B => q_0_12_29_port, Ci 
                           => q_0_13_29_port, S => q_2_6_29_port, Co => 
                           q_2_7_30_port);
   FA_C_1_9_30 : FA_350 port map( A => q_0_13_30_port, B => q_0_14_30_port, Ci 
                           => net99032, S => q_2_6_30_port, Co => q_2_7_31_port
                           , clk => clk);
   FA_C_1_9_31 : FA_349 port map( A => q_0_12_31_port, B => q_0_13_31_port, Ci 
                           => q_0_14_31_port, S => q_2_6_31_port, Co => 
                           q_2_7_32_port);
   FA_C_1_9_32 : FA_348 port map( Ci => net99031, Co => q_2_7_33_port, B_BAR =>
                           q_0_14_32_port, A_BAR => q_0_13_32_port, S_BAR => 
                           q_2_6_32_port);
   FA_C_1_9_43 : FA_337 port map( B => net99029, Ci => net99030, Co => n_1780, 
                           A_BAR => q_0_8_43_port, S_BAR => q_2_6_43_port);
   HA_L_1_9_44 : HA_21 port map( B => net99028, C => n_1781, S => q_2_6_44_port
                           , A => q_0_9_44_port);
   HA_R_2_0_10 : HA_20 port map( A => q_0_0_10_port, B => q_0_1_10_port, S => 
                           q_3_0_10_port, C => q_3_1_11_port);
   HA_R_2_0_11 : HA_19 port map( A => q_0_0_11_port, B => q_0_1_11_port, S => 
                           q_3_0_11_port, C => q_3_1_12_port);
   FA_C_2_0_12 : FA_336 port map( A => q_0_0_12_port, B => q_0_1_12_port, Ci =>
                           q_0_2_12_port, S => q_3_0_12_port, Co => 
                           q_3_1_13_port);
   FA_C_2_0_13 : FA_335 port map( A => q_0_0_13_port, B => q_0_1_13_port, Ci =>
                           q_0_2_13_port, S => q_3_0_13_port, Co => 
                           q_3_1_14_port);
   FA_C_2_0_14 : FA_334 port map( A => q_0_0_14_port, B => q_0_1_14_port, Ci =>
                           q_0_2_14_port, S => q_3_0_14_port, Co => 
                           q_3_1_15_port);
   FA_C_2_0_15 : FA_333 port map( A => q_0_0_15_port, B => q_0_1_15_port, Ci =>
                           q_0_2_15_port, S => q_3_0_15_port, Co => 
                           q_3_1_16_port);
   FA_C_2_0_16 : FA_332 port map( A => q_2_0_16_port, B => q_0_2_16_port, Ci =>
                           q_0_3_16_port, S => q_3_0_16_port, Co => 
                           q_3_1_17_port);
   FA_C_2_0_17 : FA_331 port map( A => q_2_0_17_port, B => q_2_1_17_port, Ci =>
                           q_0_2_17_port, S => q_3_0_17_port, Co => 
                           q_3_1_18_port);
   FA_C_2_0_18 : FA_330 port map( A => q_2_0_18_port, B => q_2_1_18_port, Ci =>
                           q_2_2_18_port, S => q_3_0_18_port, Co => 
                           q_3_1_19_port, clk => clk);
   FA_C_2_0_19 : FA_329 port map( A => q_2_0_19_port, B => q_2_1_19_port, Ci =>
                           q_2_2_19_port, S => q_3_0_19_port, Co => 
                           q_3_1_20_port, clk => clk);
   FA_C_2_0_20 : FA_328 port map( A => q_2_0_20_port, B => q_2_1_20_port, Ci =>
                           q_2_2_20_port, S => q_3_0_20_port, Co => 
                           q_3_1_21_port);
   FA_C_2_0_21 : FA_327 port map( A => q_2_0_21_port, B => q_2_1_21_port, Ci =>
                           q_2_2_21_port, S => q_3_0_21_port, Co => 
                           q_3_1_22_port, clk => clk);
   FA_C_2_0_22 : FA_326 port map( A => q_2_0_22_port, B => q_2_1_22_port, Ci =>
                           q_2_2_22_port, S => q_3_0_22_port, Co => 
                           q_3_1_23_port, clk => clk);
   FA_C_2_0_23 : FA_325 port map( A => q_2_0_23_port, B => q_2_1_23_port, Ci =>
                           q_2_2_23_port, S => q_3_0_23_port, Co => 
                           q_3_1_24_port, clk => clk);
   FA_C_2_0_24 : FA_324 port map( A => q_2_0_24_port, B => q_2_1_24_port, Ci =>
                           q_2_2_24_port, S => q_3_0_24_port, Co => 
                           q_3_1_25_port, clk => clk);
   FA_C_2_0_25 : FA_323 port map( A => q_2_0_25_port, B => q_2_1_25_port, Ci =>
                           q_2_2_25_port, S => q_3_0_25_port, Co => 
                           q_3_1_26_port, clk => clk);
   FA_C_2_0_26 : FA_322 port map( A => q_2_0_26_port, B => q_2_1_26_port, Ci =>
                           q_2_2_26_port, S => q_3_0_26_port, Co => 
                           q_3_1_27_port, clk => clk);
   FA_C_2_0_27 : FA_321 port map( A => q_2_0_27_port, B => q_2_1_27_port, Ci =>
                           q_2_2_27_port, S => q_3_0_27_port, Co => 
                           q_3_1_28_port, clk => clk);
   FA_C_2_0_28 : FA_320 port map( A => q_2_0_28_port, B => q_2_1_28_port, Ci =>
                           q_2_2_28_port, S => q_3_0_28_port, Co => 
                           q_3_1_29_port, clk => clk);
   FA_C_2_0_29 : FA_319 port map( A => q_2_0_29_port, B => q_2_1_29_port, Ci =>
                           q_2_2_29_port, S => q_3_0_29_port, Co => 
                           q_3_1_30_port, clk => clk);
   FA_C_2_0_30 : FA_318 port map( A => q_2_0_30_port, B => q_2_1_30_port, Ci =>
                           q_2_2_30_port, S => q_3_0_30_port, Co => 
                           q_3_1_31_port, clk => clk);
   FA_C_2_0_31 : FA_317 port map( A => q_2_0_31_port, B => q_2_1_31_port, Ci =>
                           q_2_2_31_port, S => q_3_0_31_port, Co => 
                           q_3_1_32_port, clk => clk);
   FA_C_2_0_32 : FA_316 port map( A => q_2_0_32_port, B => q_2_1_32_port, Ci =>
                           q_2_2_32_port, S => q_3_0_32_port, Co => 
                           q_3_1_33_port, clk => clk);
   FA_C_2_0_33 : FA_315 port map( A => q_2_0_33_port, B => q_2_1_33_port, Ci =>
                           q_2_2_33_port, S => q_3_0_33_port, Co => 
                           q_3_1_34_port, clk => clk);
   FA_C_2_0_34 : FA_314 port map( A => q_2_0_34_port, B => q_2_1_34_port, Ci =>
                           q_2_2_34_port, S => q_3_0_34_port, Co => 
                           q_3_1_35_port, clk => clk);
   FA_C_2_0_35 : FA_313 port map( A => q_2_0_35_port, B => q_2_1_35_port, Ci =>
                           q_2_2_35_port, S => q_3_0_35_port, Co => 
                           q_3_1_36_port, clk => clk);
   FA_C_2_0_36 : FA_312 port map( A => q_2_0_36_port, B => q_2_1_36_port, Ci =>
                           n177, S => n166, Co => q_3_1_37_port, clk => clk);
   FA_C_2_0_37 : FA_311 port map( A => q_2_0_37_port, B => q_2_1_37_port, Ci =>
                           q_2_2_37_port, S => q_3_0_37_port, Co => 
                           q_3_1_38_port, clk => clk);
   FA_C_2_0_38 : FA_310 port map( A => q_2_0_38_port, B => q_2_1_38_port, Ci =>
                           q_2_2_38_port, S => q_3_0_38_port, Co => 
                           q_3_1_39_port, clk => clk);
   FA_C_2_0_39 : FA_309 port map( A => q_2_0_39_port, B => q_2_1_39_port, Ci =>
                           q_2_2_39_port, S => n180, Co => q_3_1_40_port, clk 
                           => clk);
   FA_C_2_0_40 : FA_308 port map( A => q_2_0_40_port, B => q_2_1_40_port, Ci =>
                           q_2_2_40_port, S => n178, Co => q_3_1_41_port, clk 
                           => clk);
   FA_C_2_0_41 : FA_307 port map( A => q_2_0_41_port, B => q_2_1_41_port, Ci =>
                           q_2_2_41_port, S => q_3_0_41_port, Co => 
                           q_3_1_42_port, clk => clk);
   FA_C_2_0_42 : FA_306 port map( A => q_2_0_42_port, B => q_2_1_42_port, Ci =>
                           q_2_2_42_port, S => q_3_0_42_port, Co => 
                           q_3_1_43_port, clk => clk);
   FA_C_2_0_43 : FA_305 port map( A => q_2_0_43_port, B => q_2_1_43_port, Ci =>
                           q_2_2_43_port, S => q_3_0_43_port, Co => 
                           q_3_1_44_port, clk => clk);
   FA_C_2_0_44 : FA_304 port map( A => q_2_0_44_port, B => q_2_1_44_port, Ci =>
                           q_2_2_44_port, S => n179, Co => q_3_1_45_port, clk 
                           => clk);
   FA_C_2_0_45 : FA_303 port map( A => q_2_0_45_port, B => q_2_1_45_port, Ci =>
                           q_2_2_45_port, S => q_3_0_45_port, Co => 
                           q_3_1_46_port, clk => clk);
   FA_C_2_0_46 : FA_302 port map( A => q_2_0_46_port, B => q_2_1_46_port, Ci =>
                           q_2_2_46_port, S => q_3_0_46_port, Co => 
                           q_3_1_47_port, clk => clk);
   FA_C_2_0_47 : FA_301 port map( A => q_2_0_47_port, B => q_2_1_47_port, Ci =>
                           q_2_2_47_port, S => q_3_0_47_port, Co => 
                           q_3_1_48_port, clk => clk);
   FA_C_2_0_48 : FA_300 port map( A => q_2_0_48_port, B => q_2_1_48_port, Ci =>
                           q_2_2_48_port, S => q_3_0_48_port, Co => 
                           q_3_1_49_port);
   FA_C_2_0_49 : FA_299 port map( A => q_2_0_49_port, B => q_2_1_49_port, Ci =>
                           q_2_2_49_port, S => q_3_0_49_port, Co => 
                           q_3_1_50_port);
   FA_C_2_0_50 : FA_298 port map( A => q_2_0_50_port, B => q_2_1_50_port, Ci =>
                           q_0_2_50_port, S => q_3_0_50_port, Co => 
                           q_3_1_51_port);
   FA_C_2_0_51 : FA_297 port map( A => q_2_0_51_port, Ci => q_0_1_51_port, S =>
                           q_3_0_51_port, Co => q_3_1_52_port, B_BAR => B(19));
   FA_C_2_0_52 : FA_296 port map( A => X_Logic1_port, B => q_0_1_52_port, Ci =>
                           q_0_2_52_port, S => q_3_0_52_port, Co => 
                           q_3_1_53_port);
   FA_C_2_0_53 : FA_295 port map( A => n87, B => q_0_1_53_port, Ci => 
                           q_0_2_53_port, S => q_3_0_53_port, Co => 
                           q_3_1_54_port);
   FA_C_2_0_54 : FA_294 port map( A => X_Logic1_port, B => q_0_1_54_port, Ci =>
                           q_0_2_54_port, S => q_3_0_54_port, Co => 
                           q_3_1_55_port);
   FA_C_2_0_55 : FA_293 port map( A => n86, B => q_0_1_55_port, Ci => net99027,
                           S => q_3_0_55_port, Co_BAR => q_3_1_56_port);
   HA_R_2_3_12 : HA_17 port map( A => q_0_3_12_port, B => q_0_4_12_port, S => 
                           q_3_2_12_port, C => q_3_3_13_port);
   HA_R_2_3_13 : HA_16 port map( A => q_0_3_13_port, B => q_0_4_13_port, S => 
                           q_3_2_13_port, C => q_3_3_14_port);
   FA_C_2_3_14 : FA_292 port map( A => q_0_3_14_port, B => q_0_4_14_port, Ci =>
                           q_0_5_14_port, S => q_3_2_14_port, Co => 
                           q_3_3_15_port);
   FA_C_2_3_15 : FA_291 port map( A => q_0_3_15_port, B => q_0_4_15_port, Ci =>
                           q_0_5_15_port, S => q_3_2_15_port, Co => 
                           q_3_3_16_port);
   FA_C_2_3_16 : FA_290 port map( A => q_0_4_16_port, B => q_0_5_16_port, Ci =>
                           q_0_6_16_port, S => q_3_2_16_port, Co => 
                           q_3_3_17_port);
   FA_C_2_3_17 : FA_289 port map( A => q_0_3_17_port, B => q_0_4_17_port, Ci =>
                           q_0_5_17_port, S => q_3_2_17_port, Co => 
                           q_3_3_18_port);
   FA_C_2_3_18 : FA_288 port map( A => q_0_5_18_port, B => q_0_6_18_port, Ci =>
                           q_0_7_18_port, S => q_3_2_18_port, Co => 
                           q_3_3_19_port);
   FA_C_2_3_19 : FA_287 port map( A => q_2_3_19_port, B => q_0_5_19_port, Ci =>
                           q_0_6_19_port, S => q_3_2_19_port, Co => 
                           q_3_3_20_port);
   FA_C_2_3_20 : FA_286 port map( A => q_2_3_20_port, B => q_2_4_20_port, Ci =>
                           q_0_8_20_port, S => q_3_2_20_port, Co => 
                           q_3_3_21_port);
   FA_C_2_3_21 : FA_285 port map( A => q_2_3_21_port, B => q_2_4_21_port, Ci =>
                           q_2_5_21_port, S => q_3_2_21_port, Co => 
                           q_3_3_22_port);
   FA_C_2_3_22 : FA_284 port map( A => q_2_3_22_port, B => q_2_4_22_port, Ci =>
                           q_2_5_22_port, S => q_3_2_22_port, Co => 
                           q_3_3_23_port, clk => clk);
   FA_C_2_3_23 : FA_283 port map( A => q_2_3_23_port, B => q_2_4_23_port, Ci =>
                           q_2_5_23_port, S => n170, Co => q_3_3_24_port, clk 
                           => clk);
   FA_C_2_3_24 : FA_282 port map( A => q_2_3_24_port, B => q_2_4_24_port, Ci =>
                           q_2_5_24_port, S => q_3_2_24_port, Co => 
                           q_3_3_25_port, clk => clk);
   FA_C_2_3_25 : FA_281 port map( A => q_2_3_25_port, B => q_2_4_25_port, Ci =>
                           q_2_5_25_port, S => n173, Co => q_3_3_26_port, clk 
                           => clk);
   FA_C_2_3_26 : FA_280 port map( A => q_2_3_26_port, B => q_2_4_26_port, Ci =>
                           q_2_5_26_port, S => q_3_2_26_port, Co => 
                           q_3_3_27_port, clk => clk);
   FA_C_2_3_27 : FA_279 port map( A => q_2_3_27_port, B => q_2_4_27_port, Ci =>
                           q_2_5_27_port, S => n172, Co => q_3_3_28_port, clk 
                           => clk);
   FA_C_2_3_28 : FA_278 port map( A => q_2_3_28_port, B => q_2_4_28_port, Ci =>
                           q_2_5_28_port, S => q_3_2_28_port, Co => 
                           q_3_3_29_port, clk => clk);
   FA_C_2_3_29 : FA_277 port map( A => q_2_3_29_port, B => q_2_4_29_port, Ci =>
                           q_2_5_29_port, S => q_3_2_29_port, Co => 
                           q_3_3_30_port, clk => clk);
   FA_C_2_3_30 : FA_276 port map( A => q_2_3_30_port, B => q_2_4_30_port, Ci =>
                           q_2_5_30_port, S => q_3_2_30_port, Co => 
                           q_3_3_31_port, clk => clk);
   FA_C_2_3_31 : FA_275 port map( A => q_2_3_31_port, B => q_2_4_31_port, Ci =>
                           q_2_5_31_port, S => q_3_2_31_port, Co => 
                           q_3_3_32_port, clk => clk);
   FA_C_2_3_32 : FA_274 port map( A => q_2_3_32_port, B => q_2_4_32_port, Ci =>
                           q_2_5_32_port, S => q_3_2_32_port, Co => 
                           q_3_3_33_port, clk => clk);
   FA_C_2_3_33 : FA_273 port map( A => q_2_3_33_port, B => q_2_4_33_port, Ci =>
                           q_2_5_33_port, S => q_3_2_33_port, Co => 
                           q_3_3_34_port, clk => clk);
   FA_C_2_3_34 : FA_272 port map( A => q_2_3_34_port, B => q_2_4_34_port, Ci =>
                           q_2_5_34_port, S => q_3_2_34_port, Co => 
                           q_3_3_35_port, clk => clk);
   FA_C_2_3_35 : FA_271 port map( A => q_2_3_35_port, B => q_2_4_35_port, Ci =>
                           q_2_5_35_port, S => q_3_2_35_port, Co => 
                           q_3_3_36_port, clk => clk);
   FA_C_2_3_36 : FA_270 port map( A => q_2_3_36_port, B => q_2_4_36_port, Ci =>
                           q_2_5_36_port, S => q_3_2_36_port, Co => 
                           q_3_3_37_port, clk => clk);
   FA_C_2_3_37 : FA_269 port map( A => q_2_3_37_port, B => q_2_4_37_port, Ci =>
                           q_2_5_37_port, S => q_3_2_37_port, Co => 
                           q_3_3_38_port, clk => clk);
   FA_C_2_3_38 : FA_268 port map( A => q_2_3_38_port, B => q_2_4_38_port, Ci =>
                           q_2_5_38_port, S => n168, Co => q_3_3_39_port, clk 
                           => clk);
   FA_C_2_3_39 : FA_267 port map( A => q_2_3_39_port, B => q_2_4_39_port, Ci =>
                           q_2_5_39_port, S => n169, Co => q_3_3_40_port, clk 
                           => clk);
   FA_C_2_3_40 : FA_266 port map( A => q_2_3_40_port, B => q_2_4_40_port, Ci =>
                           q_2_5_40_port, S => q_3_2_40_port, Co => 
                           q_3_3_41_port, clk => clk);
   FA_C_2_3_41 : FA_265 port map( A => q_2_3_41_port, B => q_2_4_41_port, Ci =>
                           q_2_5_41_port, S => q_3_2_41_port, Co => 
                           q_3_3_42_port, clk => clk);
   FA_C_2_3_42 : FA_264 port map( A => q_2_3_42_port, B => q_2_4_42_port, Ci =>
                           q_2_5_42_port, S => q_3_2_42_port, Co => 
                           q_3_3_43_port, clk => clk);
   FA_C_2_3_43 : FA_263 port map( A => q_2_3_43_port, B => q_2_4_43_port, Ci =>
                           q_2_5_43_port, S => n176, Co => q_3_3_44_port, clk 
                           => clk);
   FA_C_2_3_44 : FA_262 port map( A => q_2_3_44_port, B => q_2_4_44_port, Ci =>
                           q_2_5_44_port, S => q_3_2_44_port, Co => 
                           q_3_3_45_port, clk => clk);
   FA_C_2_3_45 : FA_261 port map( A => q_2_3_45_port, B => q_2_4_45_port, Ci =>
                           q_2_5_45_port, S => q_3_2_45_port, Co => 
                           q_3_3_46_port, clk => clk);
   FA_C_2_3_46 : FA_260 port map( A => q_2_3_46_port, B => q_2_4_46_port, Ci =>
                           q_2_5_46_port, S => q_3_2_46_port, Co => 
                           q_3_3_47_port, clk => clk);
   FA_C_2_3_47 : FA_259 port map( A => q_2_3_47_port, B => q_2_4_47_port, Ci =>
                           q_0_6_47_port, S => q_3_2_47_port, Co => 
                           q_3_3_48_port, clk => clk);
   FA_C_2_3_48 : FA_258 port map( A => q_2_3_48_port, B => q_0_5_48_port, Ci =>
                           q_0_6_48_port, S => q_3_2_48_port, Co => 
                           q_3_3_49_port);
   FA_C_2_3_49 : FA_257 port map( A => q_0_3_49_port, B => q_0_4_49_port, Ci =>
                           q_0_5_49_port, S => q_3_2_49_port, Co => 
                           q_3_3_50_port);
   FA_C_2_3_50 : FA_256 port map( A => q_0_3_50_port, B => q_0_4_50_port, Ci =>
                           q_0_5_50_port, S => q_3_2_50_port, Co => 
                           q_3_3_51_port);
   FA_C_2_3_51 : FA_255 port map( A => q_0_2_51_port, B => q_0_3_51_port, Ci =>
                           net99026, S => q_3_2_51_port, Co => q_3_3_52_port);
   FA_C_2_3_52 : FA_254 port map( A => q_0_3_52_port, B => net99024, Ci => 
                           net99025, S => q_3_2_52_port, Co => n_1782, clk => 
                           clk);
   HA_R_2_6_14 : HA_14 port map( A => q_0_6_14_port, B => q_0_7_14_port, S => 
                           q_3_4_14_port, C => q_3_5_15_port);
   HA_R_2_6_15 : HA_13 port map( A => q_0_6_15_port, B => q_0_7_15_port, S => 
                           q_3_4_15_port, C => q_3_5_16_port);
   FA_C_2_6_16 : FA_252 port map( A => q_0_7_16_port, B => q_0_8_16_port, Ci =>
                           n8, S => q_3_4_16_port, Co => q_3_5_17_port);
   FA_C_2_6_17 : FA_251 port map( A => q_0_6_17_port, B => q_0_7_17_port, Ci =>
                           q_0_8_17_port, S => q_3_4_17_port, Co => 
                           q_3_5_18_port);
   FA_C_2_6_18 : FA_250 port map( A => q_0_8_18_port, B => q_0_9_18_port, Ci =>
                           B(19), S => q_3_4_18_port, Co => q_3_5_19_port);
   FA_C_2_6_19 : FA_249 port map( A => q_0_7_19_port, B => q_0_8_19_port, Ci =>
                           q_0_9_19_port, S => q_3_4_19_port, Co => 
                           q_3_5_20_port);
   FA_C_2_6_20 : FA_248 port map( A => q_0_9_20_port, B => q_0_10_20_port, Ci 
                           => B(21), S => q_3_4_20_port, Co => q_3_5_21_port);
   FA_C_2_6_21 : FA_247 port map( A => q_0_8_21_port, B => q_0_9_21_port, Ci =>
                           q_0_10_21_port, S => q_3_4_21_port, Co => 
                           q_3_5_22_port);
   FA_C_2_6_22 : FA_246 port map( A => q_2_6_22_port, B => q_0_11_22_port, Ci 
                           => n185, S => q_3_4_22_port, Co => q_3_5_23_port, 
                           clk => clk);
   FA_C_2_6_23 : FA_245 port map( A => q_2_6_23_port, B => q_2_7_23_port, Ci =>
                           q_0_11_23_port, S => n182, Co => n181, clk => clk);
   FA_C_2_6_24 : FA_244 port map( A => q_2_6_24_port, B => q_2_7_24_port, Ci =>
                           n208, S => q_3_4_24_port, Co => q_3_5_25_port, clk 
                           => clk);
   FA_C_2_6_25 : FA_243 port map( A => q_2_6_25_port, B => q_2_7_25_port, Ci =>
                           q_0_12_25_port, S => q_3_4_25_port, Co => 
                           q_3_5_26_port, clk => clk);
   FA_C_2_6_26 : FA_242 port map( A => q_2_6_26_port, B => q_2_7_26_port, Ci =>
                           n208, S => q_3_4_26_port, Co => q_3_5_27_port, clk 
                           => clk);
   FA_C_2_6_27 : FA_241 port map( A => q_2_6_27_port, B => q_2_7_27_port, Ci =>
                           q_0_13_27_port, S => q_3_4_27_port, Co => 
                           q_3_5_28_port, clk => clk);
   FA_C_2_6_28 : FA_240 port map( A => q_2_6_28_port, B => q_2_7_28_port, Ci =>
                           n208, S => q_3_4_28_port, Co => q_3_5_29_port);
   FA_C_2_6_29 : FA_239 port map( A => q_2_6_29_port, B => q_2_7_29_port, Ci =>
                           q_0_14_29_port, S => q_3_4_29_port, Co => 
                           q_3_5_30_port, clk => clk);
   FA_C_2_6_30 : FA_238 port map( A => q_2_6_30_port, B => q_2_7_30_port, Ci =>
                           n208, S => q_3_4_30_port, Co => n174, clk => clk);
   FA_C_2_6_31 : FA_237 port map( A => q_2_6_31_port, B => q_2_7_31_port, Ci =>
                           net99023, S => q_3_4_31_port, Co => q_3_5_32_port, 
                           clk => clk);
   FA_C_2_6_32 : FA_236 port map( B => q_2_7_32_port, Ci => net99022, S => 
                           q_3_4_32_port, Co => q_3_5_33_port, clk => clk, 
                           A_BAR => q_2_6_32_port);
   FA_C_2_6_33 : FA_235 port map( A => net99020, B => q_2_7_33_port, Ci => 
                           net99021, S => q_3_4_33_port, Co => n_1783);
   FA_C_2_6_43 : FA_225 port map( B => net99018, Ci => net99019, Co => n_1784, 
                           A_BAR => q_2_6_43_port, S_BAR => q_3_4_43_port);
   FA_C_2_6_44 : FA_224 port map( B => net99016, Ci => net99017, Co => n_1785, 
                           A_BAR => q_2_6_44_port, S_BAR => q_3_4_44_port);
   FA_C_2_6_46 : FA_222 port map( A => q_0_8_46_port, B => net99014, Ci => 
                           net99015, Co => n_1786, clk => clk, S_BAR => 
                           q_3_4_46_port);
   FA_C_2_6_47 : FA_221 port map( B => net99012, Ci => net99013, Co => n_1787, 
                           A_BAR => q_0_7_47_port, S_BAR => q_3_4_47_port);
   HA_R_3_0_6 : HA_11 port map( A => q_0_0_6_port, B => q_0_1_6_port, S => 
                           q_4_0_6_port, C => q_4_1_7_port);
   HA_R_3_0_7 : HA_10 port map( A => q_0_0_7_port, B => q_0_1_7_port, S => 
                           q_4_0_7_port, C => q_4_1_8_port);
   FA_C_3_0_8 : FA_216 port map( A => q_0_0_8_port, B => q_0_1_8_port, Ci => 
                           q_0_2_8_port, S => q_4_0_8_port, Co => q_4_1_9_port)
                           ;
   FA_C_3_0_9 : FA_215 port map( A => q_0_0_9_port, B => q_0_1_9_port, Ci => 
                           q_0_2_9_port, S => q_4_0_9_port, Co => q_4_1_10_port
                           );
   FA_C_3_0_10 : FA_214 port map( A => q_3_0_10_port, B => q_0_2_10_port, Ci =>
                           q_0_3_10_port, S => q_4_0_10_port, Co => 
                           q_4_1_11_port);
   FA_C_3_0_11 : FA_213 port map( A => q_3_0_11_port, B => q_3_1_11_port, Ci =>
                           q_0_2_11_port, S => q_4_0_11_port, Co => 
                           q_4_1_12_port);
   FA_C_3_0_12 : FA_212 port map( A => q_3_0_12_port, B => q_3_1_12_port, Ci =>
                           q_3_2_12_port, S => q_4_0_12_port, Co => 
                           q_4_1_13_port, clk => clk);
   FA_C_3_0_13 : FA_211 port map( A => q_3_0_13_port, B => q_3_1_13_port, Ci =>
                           q_3_2_13_port, S => q_4_0_13_port, Co => 
                           q_4_1_14_port, clk => clk);
   FA_C_3_0_14 : FA_210 port map( A => q_3_0_14_port, B => q_3_1_14_port, Ci =>
                           q_3_2_14_port, S => q_4_0_14_port, Co => 
                           q_4_1_15_port, clk => clk);
   FA_C_3_0_15 : FA_209 port map( A => q_3_0_15_port, B => q_3_1_15_port, Ci =>
                           q_3_2_15_port, S => q_4_0_15_port, Co => 
                           q_4_1_16_port, clk => clk);
   FA_C_3_0_16 : FA_208 port map( A => q_3_0_16_port, B => q_3_1_16_port, Ci =>
                           q_3_2_16_port, S => q_4_0_16_port, Co => 
                           q_4_1_17_port, clk => clk);
   FA_C_3_0_17 : FA_207 port map( A => q_3_0_17_port, B => q_3_1_17_port, Ci =>
                           q_3_2_17_port, S => q_4_0_17_port, Co => 
                           q_4_1_18_port, clk => clk);
   FA_C_3_0_18 : FA_206 port map( A => q_3_0_18_port, B => q_3_1_18_port, Ci =>
                           q_3_2_18_port, S => q_4_0_18_port, Co => 
                           q_4_1_19_port, clk => clk);
   FA_C_3_0_19 : FA_205 port map( A => q_3_0_19_port, B => q_3_1_19_port, Ci =>
                           q_3_2_19_port, S => n175, Co => q_4_1_20_port, clk 
                           => clk);
   FA_C_3_0_20 : FA_204 port map( A => q_3_0_20_port, B => q_3_1_20_port, Ci =>
                           q_3_2_20_port, S => q_4_0_20_port, Co => 
                           q_4_1_21_port, clk => clk);
   FA_C_3_0_21 : FA_203 port map( A => q_3_0_21_port, B => q_3_1_21_port, Ci =>
                           q_3_2_21_port, S => q_4_0_21_port, Co => 
                           q_4_1_22_port, clk => clk);
   FA_C_3_0_22 : FA_202 port map( A => q_3_0_22_port, B => q_3_1_22_port, Ci =>
                           q_3_2_22_port, S => q_4_0_22_port, Co => 
                           q_4_1_23_port);
   FA_C_3_0_23 : FA_201 port map( A => q_3_0_23_port, B => q_3_1_23_port, Ci =>
                           n170, S => q_4_0_23_port, Co => q_4_1_24_port);
   FA_C_3_0_24 : FA_200 port map( A => q_3_0_24_port, B => q_3_1_24_port, Ci =>
                           q_3_2_24_port, S => q_4_0_24_port, Co => 
                           q_4_1_25_port);
   FA_C_3_0_25 : FA_199 port map( A => q_3_0_25_port, B => q_3_1_25_port, Ci =>
                           n173, S => q_4_0_25_port, Co => q_4_1_26_port);
   FA_C_3_0_26 : FA_198 port map( A => q_3_0_26_port, B => q_3_1_26_port, Ci =>
                           q_3_2_26_port, S => q_4_0_26_port, Co => 
                           q_4_1_27_port);
   FA_C_3_0_27 : FA_197 port map( A => q_3_0_27_port, B => q_3_1_27_port, Ci =>
                           n172, S => n159, Co => q_4_1_28_port);
   FA_C_3_0_28 : FA_196 port map( A => q_3_0_28_port, B => q_3_1_28_port, Ci =>
                           q_3_2_28_port, S => q_4_0_28_port, Co => 
                           q_4_1_29_port);
   FA_C_3_0_29 : FA_195 port map( A => q_3_0_29_port, B => q_3_1_29_port, Ci =>
                           q_3_2_29_port, S => n160, Co => q_4_1_30_port);
   FA_C_3_0_30 : FA_194 port map( A => q_3_0_30_port, B => q_3_1_30_port, Ci =>
                           q_3_2_30_port, S => q_4_0_30_port, Co => 
                           q_4_1_31_port);
   FA_C_3_0_31 : FA_193 port map( A => q_3_0_31_port, B => q_3_1_31_port, Ci =>
                           q_3_2_31_port, S => q_4_0_31_port, Co => 
                           q_4_1_32_port);
   FA_C_3_0_32 : FA_192 port map( A => q_3_0_32_port, B => q_3_1_32_port, Ci =>
                           q_3_2_32_port, S => q_4_0_32_port, Co => 
                           q_4_1_33_port);
   FA_C_3_0_33 : FA_191 port map( A => q_3_0_33_port, B => q_3_1_33_port, Ci =>
                           q_3_2_33_port, S => q_4_0_33_port, Co => 
                           q_4_1_34_port);
   FA_C_3_0_34 : FA_190 port map( A => q_3_0_34_port, B => q_3_1_34_port, Ci =>
                           q_3_2_34_port, S => q_4_0_34_port, Co => 
                           q_4_1_35_port);
   FA_C_3_0_35 : FA_189 port map( A => q_3_0_35_port, B => q_3_1_35_port, Ci =>
                           q_3_2_35_port, S => q_4_0_35_port, Co => n157);
   FA_C_3_0_36 : FA_188 port map( A => n166, B => q_3_1_36_port, Ci => 
                           q_3_2_36_port, S => q_4_0_36_port, Co => 
                           q_4_1_37_port);
   FA_C_3_0_37 : FA_187 port map( A => q_3_0_37_port, B => q_3_1_37_port, Ci =>
                           q_3_2_37_port, S => n151, Co => q_4_1_38_port);
   FA_C_3_0_38 : FA_186 port map( A => q_3_0_38_port, B => q_3_1_38_port, Ci =>
                           n168, S => q_4_0_38_port, Co => n148);
   FA_C_3_0_39 : FA_185 port map( A => n180, B => q_3_1_39_port, Ci => n169, S 
                           => q_4_0_39_port, Co => n156);
   FA_C_3_0_40 : FA_184 port map( A => n178, B => q_3_1_40_port, Ci => 
                           q_3_2_40_port, S => q_4_0_40_port, Co => 
                           q_4_1_41_port);
   FA_C_3_0_41 : FA_183 port map( A => q_3_0_41_port, B => q_3_1_41_port, Ci =>
                           q_3_2_41_port, S => q_4_0_41_port, Co => 
                           q_4_1_42_port);
   FA_C_3_0_42 : FA_182 port map( A => q_3_0_42_port, B => q_3_1_42_port, Ci =>
                           q_3_2_42_port, S => q_4_0_42_port, Co => 
                           q_4_1_43_port);
   FA_C_3_0_43 : FA_181 port map( A => q_3_0_43_port, B => q_3_1_43_port, Ci =>
                           n176, S => q_4_0_43_port, Co => q_4_1_44_port);
   FA_C_3_0_44 : FA_180 port map( A => n179, B => q_3_1_44_port, Ci => 
                           q_3_2_44_port, S => q_4_0_44_port, Co => 
                           q_4_1_45_port);
   FA_C_3_0_45 : FA_179 port map( A => q_3_0_45_port, B => q_3_1_45_port, Ci =>
                           q_3_2_45_port, S => n162, Co => n163);
   FA_C_3_0_46 : FA_178 port map( A => q_3_0_46_port, B => q_3_1_46_port, Ci =>
                           q_3_2_46_port, S => q_4_0_46_port, Co => 
                           q_4_1_47_port);
   FA_C_3_0_47 : FA_177 port map( A => q_3_0_47_port, B => q_3_1_47_port, Ci =>
                           q_3_2_47_port, S => n161, Co => q_4_1_48_port);
   FA_C_3_0_48 : FA_176 port map( A => q_3_0_48_port, B => q_3_1_48_port, Ci =>
                           q_3_2_48_port, S => q_4_0_48_port, Co => 
                           q_4_1_49_port);
   FA_C_3_0_49 : FA_175 port map( A => q_3_0_49_port, B => q_3_1_49_port, Ci =>
                           q_3_2_49_port, S => q_4_0_49_port, Co => 
                           q_4_1_50_port);
   FA_C_3_0_50 : FA_174 port map( A => q_3_0_50_port, B => q_3_1_50_port, Ci =>
                           q_3_2_50_port, S => q_4_0_50_port, Co => 
                           q_4_1_51_port);
   FA_C_3_0_51 : FA_173 port map( A => q_3_0_51_port, B => q_3_1_51_port, Ci =>
                           q_3_2_51_port, S => q_4_0_51_port, Co => 
                           q_4_1_52_port);
   FA_C_3_0_52 : FA_172 port map( A => q_3_0_52_port, B => q_3_1_52_port, Ci =>
                           q_3_2_52_port, S => q_4_0_52_port, Co => 
                           q_4_1_53_port);
   FA_C_3_0_53 : FA_171 port map( A => q_3_0_53_port, B => q_3_1_53_port, Ci =>
                           net99011, S => q_4_0_53_port, Co => q_4_1_54_port);
   FA_C_3_0_54 : FA_170 port map( A => q_3_0_54_port, B => q_3_1_54_port, Ci =>
                           net99010, S => q_4_0_54_port, Co => q_4_1_55_port);
   FA_C_3_0_55 : FA_169 port map( A => q_3_0_55_port, B => q_3_1_55_port, Ci =>
                           net99009, S => q_4_0_55_port, Co => q_4_1_56_port);
   FA_C_3_0_56 : FA_168 port map( A => net99007, Ci => net99008, S => 
                           q_4_0_56_port, B_BAR => q_3_1_56_port, Co_BAR => 
                           q_4_1_57_port);
   HA_R_3_3_8 : HA_8 port map( A => q_0_3_8_port, B => q_0_4_8_port, S => 
                           q_4_2_8_port, C => q_5_2_9_port);
   HA_R_3_3_9 : HA_7 port map( A => q_0_3_9_port, B => q_0_4_9_port, S => 
                           q_4_2_9_port, C => q_5_2_10_port);
   FA_C_3_3_10 : FA_164 port map( A => q_0_4_10_port, B => q_0_5_10_port, S => 
                           q_4_2_10_port, Co => q_5_2_11_port, Ci => B(11));
   FA_C_3_3_11 : FA_163 port map( A => q_0_3_11_port, B => q_0_4_11_port, Ci =>
                           q_0_5_11_port, S => q_4_2_11_port, Co => 
                           q_5_2_12_port);
   FA_C_3_3_12 : FA_162 port map( A => q_0_5_12_port, B => q_0_6_12_port, S => 
                           q_4_2_12_port, Co => q_5_2_13_port, Ci => B(13));
   FA_C_3_3_13 : FA_161 port map( A => q_3_3_13_port, B => q_0_5_13_port, Ci =>
                           q_0_6_13_port, S => q_4_2_13_port, Co => 
                           q_5_2_14_port);
   FA_C_3_3_14 : FA_160 port map( A => q_3_3_14_port, B => q_3_4_14_port, Ci =>
                           B(15), S => q_4_2_14_port, Co => q_5_2_15_port);
   FA_C_3_3_15 : FA_159 port map( A => q_3_3_15_port, B => q_3_4_15_port, Ci =>
                           q_3_5_15_port, S => q_4_2_15_port, Co => 
                           q_5_2_16_port);
   FA_C_3_3_16 : FA_158 port map( A => q_3_3_16_port, B => q_3_4_16_port, Ci =>
                           q_3_5_16_port, S => q_4_2_16_port, Co => 
                           q_5_2_17_port, clk => clk);
   FA_C_3_3_17 : FA_157 port map( A => q_3_3_17_port, B => q_3_4_17_port, Ci =>
                           q_3_5_17_port, S => q_4_2_17_port, Co => 
                           q_5_2_18_port, clk => clk);
   FA_C_3_3_18 : FA_156 port map( A => q_3_3_18_port, B => q_3_4_18_port, Ci =>
                           q_3_5_18_port, S => q_4_2_18_port, Co => 
                           q_5_2_19_port, clk => clk);
   FA_C_3_3_19 : FA_155 port map( A => q_3_3_19_port, B => q_3_4_19_port, Ci =>
                           q_3_5_19_port, S => q_4_2_19_port, Co => 
                           q_5_2_20_port, clk => clk);
   FA_C_3_3_20 : FA_154 port map( A => q_3_3_20_port, B => q_3_4_20_port, Ci =>
                           q_3_5_20_port, S => q_4_2_20_port, Co => 
                           q_5_2_21_port, clk => clk);
   FA_C_3_3_21 : FA_153 port map( A => q_3_3_21_port, B => q_3_4_21_port, Ci =>
                           q_3_5_21_port, S => q_4_2_21_port, Co => 
                           q_5_2_22_port, clk => clk);
   FA_C_3_3_22 : FA_152 port map( A => q_3_3_22_port, B => q_3_4_22_port, Ci =>
                           q_3_5_22_port, S => q_4_2_22_port, Co => 
                           q_5_2_23_port, clk => clk);
   FA_C_3_3_23 : FA_151 port map( A => q_3_3_23_port, B => n182, Ci => 
                           q_3_5_23_port, S => q_4_2_23_port, Co => 
                           q_5_2_24_port, clk => clk);
   FA_C_3_3_24 : FA_150 port map( A => q_3_3_24_port, B => q_3_4_24_port, Ci =>
                           n181, S => q_4_2_24_port, Co => q_5_2_25_port);
   FA_C_3_3_25 : FA_149 port map( A => q_3_3_25_port, B => q_3_4_25_port, Ci =>
                           q_3_5_25_port, S => q_4_2_25_port, Co => 
                           q_5_2_26_port);
   FA_C_3_3_26 : FA_148 port map( A => q_3_3_26_port, B => q_3_4_26_port, Ci =>
                           q_3_5_26_port, S => n158, Co => q_5_2_27_port, clk 
                           => clk);
   FA_C_3_3_27 : FA_147 port map( A => q_3_3_27_port, B => q_3_4_27_port, Ci =>
                           q_3_5_27_port, S => q_4_2_27_port, Co => 
                           q_5_2_28_port);
   FA_C_3_3_28 : FA_146 port map( A => q_3_3_28_port, B => q_3_4_28_port, Ci =>
                           q_3_5_28_port, S => q_4_2_28_port, Co => 
                           q_5_2_29_port, clk => clk);
   FA_C_3_3_29 : FA_145 port map( A => q_3_3_29_port, B => q_3_4_29_port, Ci =>
                           q_3_5_29_port, S => q_4_2_29_port, Co => 
                           q_5_2_30_port, clk => clk);
   FA_C_3_3_30 : FA_144 port map( A => q_3_3_30_port, B => q_3_4_30_port, Ci =>
                           q_3_5_30_port, S => q_4_2_30_port, Co => 
                           q_5_2_31_port, clk => clk);
   FA_C_3_3_31 : FA_143 port map( A => q_3_3_31_port, B => q_3_4_31_port, Ci =>
                           n174, S => n165, Co => q_5_2_32_port);
   FA_C_3_3_32 : FA_142 port map( A => q_3_3_32_port, B => q_3_4_32_port, Ci =>
                           q_3_5_32_port, S => n164, Co => q_5_2_33_port);
   FA_C_3_3_33 : FA_141 port map( A => q_3_3_33_port, B => q_3_4_33_port, Ci =>
                           q_3_5_33_port, S => q_4_2_33_port, Co => 
                           q_5_2_34_port);
   FA_C_3_3_34 : FA_140 port map( A => q_3_3_34_port, B => net99005, Ci => 
                           net99006, S => q_4_2_34_port, Co => n_1788);
   FA_C_3_3_35 : FA_139 port map( A => q_3_3_35_port, B => net99003, Ci => 
                           net99004, S => q_4_2_35_port, Co => n_1789);
   FA_C_3_3_36 : FA_138 port map( A => q_3_3_36_port, B => net99001, Ci => 
                           net99002, S => q_4_2_36_port, Co => n_1790);
   FA_C_3_3_37 : FA_137 port map( A => q_3_3_37_port, B => net98999, Ci => 
                           net99000, S => q_4_2_37_port, Co => n_1791);
   FA_C_3_3_38 : FA_136 port map( A => q_3_3_38_port, B => net98997, Ci => 
                           net98998, S => q_4_2_38_port, Co => n_1792);
   FA_C_3_3_39 : FA_135 port map( A => q_3_3_39_port, B => net98995, Ci => 
                           net98996, S => q_4_2_39_port, Co => n_1793);
   FA_C_3_3_40 : FA_134 port map( A => q_3_3_40_port, B => net98993, Ci => 
                           net98994, S => q_4_2_40_port, Co => n_1794);
   FA_C_3_3_41 : FA_133 port map( A => q_3_3_41_port, B => net98991, Ci => 
                           net98992, S => q_4_2_41_port, Co => n_1795);
   FA_C_3_3_42 : FA_132 port map( A => q_3_3_42_port, B => net98989, Ci => 
                           net98990, S => q_4_2_42_port, Co => n_1796);
   FA_C_3_3_43 : FA_131 port map( A => q_3_3_43_port, Ci => net98988, S => 
                           q_4_2_43_port, Co => q_5_2_44_port, B_BAR => 
                           q_3_4_43_port);
   FA_C_3_3_44 : FA_130 port map( A => q_3_3_44_port, Ci => net98987, S => 
                           q_4_2_44_port, Co => q_5_2_45_port, B_BAR => 
                           q_3_4_44_port);
   FA_C_3_3_45 : FA_129 port map( A => q_3_3_45_port, B => net98985, Ci => 
                           net98986, S => q_4_2_45_port, Co => n_1797);
   FA_C_3_3_46 : FA_128 port map( A => q_3_3_46_port, Ci => net98984, Co => 
                           q_5_2_47_port, B_BAR => q_3_4_46_port, S_BAR => 
                           q_4_2_46_port);
   FA_C_3_3_47 : FA_127 port map( A => q_3_3_47_port, Ci => net98983, Co => 
                           q_5_2_48_port, B_BAR => q_3_4_47_port, S_BAR => 
                           q_4_2_47_port);
   FA_C_3_3_48 : FA_126 port map( A => q_3_3_48_port, B => net98981, Ci => 
                           net98982, S => q_4_2_48_port, Co => n_1798);
   FA_C_3_3_49 : FA_125 port map( A => q_3_3_49_port, B => net98979, Ci => 
                           net98980, S => q_4_2_49_port, Co => n_1799, clk => 
                           clk);
   FA_C_3_3_50 : FA_124 port map( A => q_3_3_50_port, B => net98977, Ci => 
                           net98978, S => q_4_2_50_port, Co => n_1800, clk => 
                           clk);
   FA_C_3_3_51 : FA_123 port map( A => q_3_3_51_port, B => net98975, Ci => 
                           net98976, S => q_4_2_51_port, Co => n_1801, clk => 
                           clk);
   FA_C_3_3_52 : FA_122 port map( A => q_3_3_52_port, B => net98973, Ci => 
                           net98974, S => q_4_2_52_port, Co => n_1802, clk => 
                           clk);
   HA_R_4_0_4 : HA_5 port map( A => q_0_0_4_port, B => q_0_1_4_port, S => 
                           q_5_0_4_port, C => q_5_1_5_port);
   HA_R_4_0_5 : HA_4 port map( A => q_0_0_5_port, B => q_0_1_5_port, S => 
                           q_5_0_5_port, C => q_5_1_6_port);
   FA_C_4_0_6 : FA_116 port map( A => q_4_0_6_port, B => q_0_2_6_port, Ci => 
                           q_0_3_6_port, S => q_5_0_6_port, Co => q_5_1_7_port)
                           ;
   FA_C_4_0_7 : FA_115 port map( A => q_4_0_7_port, B => q_4_1_7_port, Ci => 
                           q_0_2_7_port, S => q_5_0_7_port, Co => q_5_1_8_port,
                           clk => clk);
   FA_C_4_0_8 : FA_114 port map( A => q_4_0_8_port, B => q_4_1_8_port, Ci => 
                           q_4_2_8_port, S => n171, Co => q_5_1_9_port, clk => 
                           clk);
   FA_C_4_0_9 : FA_113 port map( A => q_4_0_9_port, B => q_4_1_9_port, Ci => 
                           q_4_2_9_port, S => q_5_0_9_port, Co => q_5_1_10_port
                           , clk => clk);
   FA_C_4_0_10 : FA_112 port map( A => q_4_0_10_port, B => q_4_1_10_port, Ci =>
                           q_4_2_10_port, S => q_5_0_10_port, Co => 
                           q_5_1_11_port, clk => clk);
   FA_C_4_0_11 : FA_111 port map( A => q_4_0_11_port, B => q_4_1_11_port, Ci =>
                           q_4_2_11_port, S => q_5_0_11_port, Co => 
                           q_5_1_12_port, clk => clk);
   FA_C_4_0_12 : FA_110 port map( A => q_4_0_12_port, B => q_4_1_12_port, Ci =>
                           q_4_2_12_port, S => q_5_0_12_port, Co => 
                           q_5_1_13_port, clk => clk);
   FA_C_4_0_13 : FA_109 port map( A => q_4_0_13_port, B => q_4_1_13_port, Ci =>
                           q_4_2_13_port, S => q_5_0_13_port, Co => 
                           q_5_1_14_port, clk => clk);
   FA_C_4_0_14 : FA_108 port map( A => q_4_0_14_port, B => q_4_1_14_port, Ci =>
                           q_4_2_14_port, S => q_5_0_14_port, Co => 
                           q_5_1_15_port, clk => clk);
   FA_C_4_0_15 : FA_107 port map( A => q_4_0_15_port, B => q_4_1_15_port, Ci =>
                           q_4_2_15_port, S => q_5_0_15_port, Co => 
                           q_5_1_16_port, clk => clk);
   FA_C_4_0_16 : FA_106 port map( A => q_4_0_16_port, B => q_4_1_16_port, Ci =>
                           q_4_2_16_port, S => q_5_0_16_port, Co => 
                           q_5_1_17_port);
   FA_C_4_0_17 : FA_105 port map( A => q_4_0_17_port, B => q_4_1_17_port, Ci =>
                           q_4_2_17_port, S => q_5_0_17_port, Co => 
                           q_5_1_18_port);
   FA_C_4_0_18 : FA_104 port map( A => q_4_0_18_port, B => q_4_1_18_port, Ci =>
                           q_4_2_18_port, S => q_5_0_18_port, Co => 
                           q_5_1_19_port);
   FA_C_4_0_19 : FA_103 port map( A => n175, B => q_4_1_19_port, Ci => 
                           q_4_2_19_port, S => q_5_0_19_port, Co => 
                           q_5_1_20_port);
   FA_C_4_0_20 : FA_102 port map( A => q_4_0_20_port, B => q_4_1_20_port, Ci =>
                           q_4_2_20_port, S => q_5_0_20_port, Co => 
                           q_5_1_21_port);
   FA_C_4_0_21 : FA_101 port map( A => q_4_0_21_port, B => q_4_1_21_port, Ci =>
                           q_4_2_21_port, S => q_5_0_21_port, Co => 
                           q_5_1_22_port);
   FA_C_4_0_22 : FA_100 port map( A => q_4_0_22_port, B => q_4_1_22_port, Ci =>
                           q_4_2_22_port, S => q_5_0_22_port, Co => 
                           q_5_1_23_port);
   FA_C_4_0_23 : FA_99 port map( A => q_4_0_23_port, B => q_4_1_23_port, Ci => 
                           q_4_2_23_port, S => q_5_0_23_port, Co => 
                           q_5_1_24_port);
   FA_C_4_0_24 : FA_98 port map( A => q_4_0_24_port, B => q_4_1_24_port, Ci => 
                           q_4_2_24_port, S => q_5_0_24_port, Co => 
                           q_5_1_25_port);
   FA_C_4_0_25 : FA_97 port map( A => q_4_0_25_port, B => q_4_1_25_port, Ci => 
                           q_4_2_25_port, S => q_5_0_25_port, Co => 
                           q_5_1_26_port);
   FA_C_4_0_26 : FA_96 port map( A => q_4_0_26_port, B => q_4_1_26_port, Ci => 
                           n158, S => n154, Co => q_5_1_27_port);
   FA_C_4_0_27 : FA_95 port map( A => n159, B => q_4_1_27_port, Ci => 
                           q_4_2_27_port, S => n153, Co => q_5_1_28_port);
   FA_C_4_0_28 : FA_94 port map( A => q_4_0_28_port, B => q_4_1_28_port, Ci => 
                           q_4_2_28_port, S => q_5_0_28_port, Co => 
                           q_5_1_29_port);
   FA_C_4_0_29 : FA_93 port map( A => n160, B => q_4_1_29_port, Ci => 
                           q_4_2_29_port, S => q_5_0_29_port, Co => 
                           q_5_1_30_port);
   FA_C_4_0_30 : FA_92 port map( A => q_4_0_30_port, B => q_4_1_30_port, Ci => 
                           q_4_2_30_port, S => q_5_0_30_port, Co => 
                           q_5_1_31_port);
   FA_C_4_0_31 : FA_91 port map( A => q_4_0_31_port, B => q_4_1_31_port, Ci => 
                           n165, S => q_5_0_31_port, Co => q_5_1_32_port);
   FA_C_4_0_32 : FA_90 port map( A => q_4_0_32_port, B => q_4_1_32_port, Ci => 
                           n164, S => q_5_0_32_port, Co => q_5_1_33_port);
   FA_C_4_0_33 : FA_89 port map( A => q_4_0_33_port, B => q_4_1_33_port, Ci => 
                           q_4_2_33_port, S => q_5_0_33_port, Co => 
                           q_5_1_34_port);
   FA_C_4_0_34 : FA_88 port map( A => q_4_0_34_port, B => q_4_1_34_port, Ci => 
                           q_4_2_34_port, S => q_5_0_34_port, Co => 
                           q_5_1_35_port);
   FA_C_4_0_35 : FA_87 port map( A => q_4_0_35_port, B => q_4_1_35_port, Ci => 
                           q_4_2_35_port, S => q_5_0_35_port, Co => 
                           q_5_1_36_port);
   FA_C_4_0_36 : FA_86 port map( A => q_4_0_36_port, B => n157, Ci => 
                           q_4_2_36_port, S => q_5_0_36_port, Co => 
                           q_5_1_37_port);
   FA_C_4_0_37 : FA_85 port map( A => n151, B => q_4_1_37_port, Ci => 
                           q_4_2_37_port, S => q_5_0_37_port, Co => 
                           q_5_1_38_port);
   FA_C_4_0_38 : FA_84 port map( A => q_4_0_38_port, B => q_4_1_38_port, Ci => 
                           q_4_2_38_port, S => q_5_0_38_port, Co => 
                           q_5_1_39_port);
   FA_C_4_0_39 : FA_83 port map( A => q_4_0_39_port, B => n148, Ci => 
                           q_4_2_39_port, S => q_5_0_39_port, Co => 
                           q_5_1_40_port);
   FA_C_4_0_40 : FA_82 port map( A => q_4_0_40_port, B => n156, Ci => 
                           q_4_2_40_port, S => q_5_0_40_port, Co => 
                           q_5_1_41_port);
   FA_C_4_0_41 : FA_81 port map( A => q_4_0_41_port, B => q_4_1_41_port, Ci => 
                           q_4_2_41_port, S => q_5_0_41_port, Co => 
                           q_5_1_42_port);
   FA_C_4_0_42 : FA_80 port map( A => q_4_0_42_port, B => q_4_1_42_port, Ci => 
                           q_4_2_42_port, S => q_5_0_42_port, Co => 
                           q_5_1_43_port);
   FA_C_4_0_43 : FA_79 port map( A => q_4_0_43_port, B => q_4_1_43_port, Ci => 
                           q_4_2_43_port, S => q_5_0_43_port, Co => n149);
   FA_C_4_0_44 : FA_78 port map( A => q_4_0_44_port, B => q_4_1_44_port, Ci => 
                           q_4_2_44_port, S => q_5_0_44_port, Co => 
                           q_5_1_45_port);
   FA_C_4_0_45 : FA_77 port map( A => n162, B => q_4_1_45_port, Ci => 
                           q_4_2_45_port, S => q_5_0_45_port, Co => 
                           q_5_1_46_port);
   FA_C_4_0_46 : FA_76 port map( A => q_4_0_46_port, B => n163, S => 
                           q_5_0_46_port, Co => q_5_1_47_port, Ci_BAR => 
                           q_4_2_46_port);
   FA_C_4_0_47 : FA_75 port map( A => n161, B => q_4_1_47_port, S => n152, Co 
                           => q_5_1_48_port, Ci_BAR => q_4_2_47_port);
   FA_C_4_0_48 : FA_74 port map( A => q_4_0_48_port, B => q_4_1_48_port, Ci => 
                           q_4_2_48_port, S => q_5_0_48_port, Co => 
                           q_5_1_49_port);
   FA_C_4_0_49 : FA_73 port map( A => q_4_0_49_port, B => q_4_1_49_port, Ci => 
                           q_4_2_49_port, S => q_5_0_49_port, Co => 
                           q_5_1_50_port);
   FA_C_4_0_50 : FA_72 port map( A => q_4_0_50_port, B => q_4_1_50_port, Ci => 
                           q_4_2_50_port, S => q_5_0_50_port, Co => 
                           q_5_1_51_port);
   FA_C_4_0_51 : FA_71 port map( A => q_4_0_51_port, B => q_4_1_51_port, Ci => 
                           q_4_2_51_port, S => q_5_0_51_port, Co => 
                           q_5_1_52_port);
   FA_C_4_0_52 : FA_70 port map( A => q_4_0_52_port, B => q_4_1_52_port, Ci => 
                           q_4_2_52_port, S => q_5_0_52_port, Co => 
                           q_5_1_53_port);
   FA_C_4_0_53 : FA_69 port map( A => q_4_0_53_port, B => q_4_1_53_port, Ci => 
                           net98972, S => q_5_0_53_port, Co => q_5_1_54_port);
   FA_C_4_0_54 : FA_68 port map( A => q_4_0_54_port, B => q_4_1_54_port, Ci => 
                           net98971, S => q_5_0_54_port, Co => q_5_1_55_port);
   FA_C_4_0_55 : FA_67 port map( A => q_4_0_55_port, B => q_4_1_55_port, Ci => 
                           net98970, S => q_5_0_55_port, Co => q_5_1_56_port);
   FA_C_4_0_56 : FA_66 port map( A => q_4_0_56_port, B => q_4_1_56_port, Ci => 
                           net98969, S => q_5_0_56_port, Co => q_5_1_57_port);
   FA_C_4_0_57 : FA_65 port map( A => net98967, Ci => net98968, S => 
                           q_5_0_57_port, B_BAR => q_4_1_57_port, Co_BAR => 
                           q_5_1_58_port);
   HA_R_5_0_2 : HA_2 port map( A => q_0_0_2_port, B => q_0_1_2_port, S => 
                           q_6_0_2_port, C => q_6_1_3_port);
   HA_R_5_0_3 : HA_1 port map( A => q_0_0_3_port, B => q_0_1_3_port, S => 
                           q_6_0_3_port, C => q_6_1_4_port);
   FA_C_5_0_4 : FA_60 port map( A => q_5_0_4_port, B => q_0_2_4_port, Ci => 
                           B(5), S => q_6_0_4_port, Co => q_6_1_5_port, clk => 
                           clk);
   FA_C_5_0_5 : FA_59 port map( A => q_5_0_5_port, B => q_5_1_5_port, Ci => 
                           q_0_2_5_port, S => q_6_0_5_port, Co => q_6_1_6_port,
                           clk => clk);
   FA_C_5_0_6 : FA_58 port map( A => q_5_0_6_port, B => q_5_1_6_port, Ci => 
                           B(7), S => q_6_0_6_port, Co => q_6_1_7_port, clk => 
                           clk);
   FA_C_5_0_7 : FA_57 port map( A => q_5_0_7_port, B => q_5_1_7_port, Ci => 
                           q_0_3_7_port, S => q_6_0_7_port, Co => q_6_1_8_port,
                           clk => clk);
   FA_C_5_0_8 : FA_56 port map( A => n171, B => q_5_1_8_port, Ci => B(9), S => 
                           q_6_0_8_port, Co => q_6_1_9_port, clk => clk);
   FA_C_5_0_9 : FA_55 port map( A => q_5_0_9_port, B => q_5_1_9_port, Ci => 
                           q_5_2_9_port, S => q_6_0_9_port, Co => q_6_1_10_port
                           , clk => clk);
   FA_C_5_0_10 : FA_54 port map( A => q_5_0_10_port, B => q_5_1_10_port, Ci => 
                           q_5_2_10_port, S => q_6_0_10_port, Co => 
                           q_6_1_11_port, clk => clk);
   FA_C_5_0_11 : FA_53 port map( A => q_5_0_11_port, B => q_5_1_11_port, Ci => 
                           q_5_2_11_port, S => q_6_0_11_port, Co => 
                           q_6_1_12_port, clk => clk);
   FA_C_5_0_12 : FA_52 port map( A => q_5_0_12_port, B => q_5_1_12_port, Ci => 
                           q_5_2_12_port, S => q_6_0_12_port, Co => 
                           q_6_1_13_port, clk => clk);
   FA_C_5_0_13 : FA_51 port map( A => q_5_0_13_port, B => q_5_1_13_port, Ci => 
                           q_5_2_13_port, S => q_6_0_13_port, Co => 
                           q_6_1_14_port, clk => clk);
   FA_C_5_0_14 : FA_50 port map( A => q_5_0_14_port, B => q_5_1_14_port, Ci => 
                           q_5_2_14_port, S => q_6_0_14_port, Co => 
                           q_6_1_15_port, clk => clk);
   FA_C_5_0_15 : FA_49 port map( A => q_5_0_15_port, B => q_5_1_15_port, Ci => 
                           q_5_2_15_port, S => q_6_0_15_port, Co => 
                           q_6_1_16_port, clk => clk);
   FA_C_5_0_16 : FA_48 port map( A => q_5_0_16_port, B => q_5_1_16_port, Ci => 
                           q_5_2_16_port, S => q_6_0_16_port, Co => 
                           q_6_1_17_port, clk => clk);
   FA_C_5_0_17 : FA_47 port map( A => q_5_0_17_port, B => q_5_1_17_port, Ci => 
                           q_5_2_17_port, S => q_6_0_17_port, Co => 
                           q_6_1_18_port);
   FA_C_5_0_18 : FA_46 port map( A => q_5_0_18_port, B => q_5_1_18_port, Ci => 
                           q_5_2_18_port, S => q_6_0_18_port, Co => 
                           q_6_1_19_port);
   FA_C_5_0_19 : FA_45 port map( A => q_5_0_19_port, B => q_5_1_19_port, Ci => 
                           q_5_2_19_port, S => q_6_0_19_port, Co => 
                           q_6_1_20_port);
   FA_C_5_0_20 : FA_44 port map( A => q_5_0_20_port, B => q_5_1_20_port, Ci => 
                           q_5_2_20_port, S => q_6_0_20_port, Co => 
                           q_6_1_21_port);
   FA_C_5_0_21 : FA_43 port map( A => q_5_0_21_port, B => q_5_1_21_port, Ci => 
                           q_5_2_21_port, S => q_6_0_21_port, Co => 
                           q_6_1_22_port);
   FA_C_5_0_22 : FA_42 port map( A => q_5_0_22_port, B => q_5_1_22_port, Ci => 
                           q_5_2_22_port, S => q_6_0_22_port, Co => 
                           q_6_1_23_port);
   FA_C_5_0_23 : FA_41 port map( A => q_5_0_23_port, B => q_5_1_23_port, Ci => 
                           q_5_2_23_port, S => q_6_0_23_port, Co => 
                           q_6_1_24_port);
   FA_C_5_0_24 : FA_40 port map( A => q_5_0_24_port, B => q_5_1_24_port, Ci => 
                           q_5_2_24_port, S => q_6_0_24_port, Co => 
                           q_6_1_25_port);
   FA_C_5_0_25 : FA_39 port map( A => q_5_0_25_port, B => q_5_1_25_port, Ci => 
                           q_5_2_25_port, S => q_6_0_25_port, Co => 
                           q_6_1_26_port);
   FA_C_5_0_26 : FA_38 port map( A => n154, B => q_5_1_26_port, Ci => 
                           q_5_2_26_port, S => q_6_0_26_port, Co => 
                           q_6_1_27_port);
   FA_C_5_0_27 : FA_37 port map( A => n153, B => q_5_1_27_port, Ci => 
                           q_5_2_27_port, S => q_6_0_27_port, Co => 
                           q_6_1_28_port);
   FA_C_5_0_28 : FA_36 port map( A => q_5_0_28_port, B => q_5_1_28_port, Ci => 
                           q_5_2_28_port, S => q_6_0_28_port, Co => 
                           q_6_1_29_port);
   FA_C_5_0_29 : FA_35 port map( A => q_5_0_29_port, B => q_5_1_29_port, Ci => 
                           q_5_2_29_port, S => q_6_0_29_port, Co => 
                           q_6_1_30_port);
   FA_C_5_0_30 : FA_34 port map( A => q_5_0_30_port, B => q_5_1_30_port, Ci => 
                           q_5_2_30_port, S => q_6_0_30_port, Co => 
                           q_6_1_31_port);
   FA_C_5_0_31 : FA_33 port map( A => q_5_0_31_port, B => q_5_1_31_port, Ci => 
                           q_5_2_31_port, S => q_6_0_31_port, Co => 
                           q_6_1_32_port);
   FA_C_5_0_32 : FA_32 port map( A => q_5_0_32_port, B => q_5_1_32_port, Ci => 
                           q_5_2_32_port, S => q_6_0_32_port, Co => 
                           q_6_1_33_port);
   FA_C_5_0_33 : FA_31 port map( A => q_5_0_33_port, B => q_5_1_33_port, Ci => 
                           q_5_2_33_port, S => q_6_0_33_port, Co => 
                           q_6_1_34_port);
   FA_C_5_0_34 : FA_30 port map( A => q_5_0_34_port, B => q_5_1_34_port, Ci => 
                           q_5_2_34_port, S => q_6_0_34_port, Co => 
                           q_6_1_35_port);
   FA_C_5_0_35 : FA_29 port map( A => q_5_0_35_port, B => q_5_1_35_port, Ci => 
                           net98966, S => q_6_0_35_port, Co => q_6_1_36_port);
   FA_C_5_0_36 : FA_28 port map( A => q_5_0_36_port, B => q_5_1_36_port, Ci => 
                           net98965, S => q_6_0_36_port, Co => q_6_1_37_port);
   FA_C_5_0_37 : FA_27 port map( A => q_5_0_37_port, B => q_5_1_37_port, Ci => 
                           net98964, S => q_6_0_37_port, Co => q_6_1_38_port);
   FA_C_5_0_38 : FA_26 port map( A => q_5_0_38_port, B => q_5_1_38_port, Ci => 
                           net98963, S => q_6_0_38_port, Co => q_6_1_39_port);
   FA_C_5_0_39 : FA_25 port map( A => q_5_0_39_port, B => q_5_1_39_port, Ci => 
                           net98962, S => q_6_0_39_port, Co => q_6_1_40_port);
   FA_C_5_0_40 : FA_24 port map( A => q_5_0_40_port, B => q_5_1_40_port, Ci => 
                           net98961, S => q_6_0_40_port, Co => q_6_1_41_port);
   FA_C_5_0_41 : FA_23 port map( A => q_5_0_41_port, B => q_5_1_41_port, Ci => 
                           net98960, S => q_6_0_41_port, Co => q_6_1_42_port);
   FA_C_5_0_42 : FA_22 port map( A => q_5_0_42_port, B => q_5_1_42_port, Ci => 
                           net98959, S => q_6_0_42_port, Co => q_6_1_43_port);
   FA_C_5_0_43 : FA_21 port map( A => q_5_0_43_port, B => q_5_1_43_port, Ci => 
                           net98958, S => q_6_0_43_port, Co => q_6_1_44_port);
   FA_C_5_0_44 : FA_20 port map( A => q_5_0_44_port, B => n149, Ci => 
                           q_5_2_44_port, S => q_6_0_44_port, Co => 
                           q_6_1_45_port);
   FA_C_5_0_45 : FA_19 port map( A => q_5_0_45_port, B => q_5_1_45_port, Ci => 
                           q_5_2_45_port, S => q_6_0_45_port, Co => 
                           q_6_1_46_port);
   FA_C_5_0_46 : FA_18 port map( A => q_5_0_46_port, B => q_5_1_46_port, Ci => 
                           net98957, S => q_6_0_46_port, Co => q_6_1_47_port);
   FA_C_5_0_47 : FA_17 port map( A => n152, B => q_5_1_47_port, Ci => 
                           q_5_2_47_port, S => q_6_0_47_port, Co => 
                           q_6_1_48_port, clk => clk);
   FA_C_5_0_48 : FA_16 port map( A => q_5_0_48_port, B => q_5_1_48_port, Ci => 
                           q_5_2_48_port, S => q_6_0_48_port, Co => n_1803);
   FA_C_5_0_49 : FA_15 port map( A => q_5_0_49_port, B => q_5_1_49_port, Ci => 
                           net98956, S => q_6_0_49_port, Co => n_1804);
   FA_C_5_0_50 : FA_14 port map( A => q_5_0_50_port, B => q_5_1_50_port, Ci => 
                           net98955, S => q_6_0_50_port, Co => n_1805);
   FA_C_5_0_51 : FA_13 port map( A => q_5_0_51_port, B => q_5_1_51_port, Ci => 
                           net98954, S => q_6_0_51_port, Co => n_1806);
   FA_C_5_0_52 : FA_12 port map( A => q_5_0_52_port, B => q_5_1_52_port, Ci => 
                           net98953, S => q_6_0_52_port, Co => n_1807);
   FA_C_5_0_53 : FA_11 port map( A => q_5_0_53_port, B => q_5_1_53_port, Ci => 
                           net98952, S => q_6_0_53_port, Co => n_1808);
   FA_C_5_0_54 : FA_10 port map( A => q_5_0_54_port, B => q_5_1_54_port, Ci => 
                           net98951, S => q_6_0_54_port, Co => n_1809);
   FA_C_5_0_55 : FA_9 port map( A => q_5_0_55_port, B => q_5_1_55_port, Ci => 
                           net98950, S => q_6_0_55_port, Co => n_1810);
   FA_C_5_0_56 : FA_8 port map( A => q_5_0_56_port, B => q_5_1_56_port, Ci => 
                           net98949, S => q_6_0_56_port, Co => n_1811);
   FA_C_5_0_57 : FA_7 port map( A => q_5_0_57_port, B => q_5_1_57_port, Ci => 
                           net98948, S => q_6_0_57_port, Co => n_1812);
   FA_C_5_0_58 : FA_6 port map( A => net98946, Ci => net98947, S => 
                           q_6_0_58_port, Co => n_1813, B_BAR => q_5_1_58_port)
                           ;
   add_271 : MBE_DW01_add_1 port map( A(63) => q_6_0_63_port, A(62) => 
                           q_6_0_62_port, A(61) => q_6_0_61_port, A(60) => 
                           q_6_0_60_port, A(59) => q_6_0_59_port, A(58) => 
                           q_6_0_58_port, A(57) => q_6_0_57_port, A(56) => 
                           q_6_0_56_port, A(55) => q_6_0_55_port, A(54) => 
                           q_6_0_54_port, A(53) => q_6_0_53_port, A(52) => 
                           q_6_0_52_port, A(51) => q_6_0_51_port, A(50) => 
                           q_6_0_50_port, A(49) => q_6_0_49_port, A(48) => 
                           q_6_0_48_port, A(47) => q_6_0_47_port, A(46) => 
                           q_6_0_46_port, A(45) => q_6_0_45_port, A(44) => 
                           q_6_0_44_port, A(43) => q_6_0_43_port, A(42) => 
                           q_6_0_42_port, A(41) => q_6_0_41_port, A(40) => 
                           q_6_0_40_port, A(39) => q_6_0_39_port, A(38) => 
                           q_6_0_38_port, A(37) => q_6_0_37_port, A(36) => 
                           q_6_0_36_port, A(35) => q_6_0_35_port, A(34) => 
                           q_6_0_34_port, A(33) => q_6_0_33_port, A(32) => 
                           q_6_0_32_port, A(31) => q_6_0_31_port, A(30) => 
                           q_6_0_30_port, A(29) => q_6_0_29_port, A(28) => 
                           q_6_0_28_port, A(27) => q_6_0_27_port, A(26) => 
                           q_6_0_26_port, A(25) => q_6_0_25_port, A(24) => 
                           q_6_0_24_port, A(23) => q_6_0_23_port, A(22) => 
                           q_6_0_22_port, A(21) => q_6_0_21_port, A(20) => 
                           q_6_0_20_port, A(19) => q_6_0_19_port, A(18) => 
                           q_6_0_18_port, A(17) => q_6_0_17_port, A(16) => 
                           q_6_0_16_port, A(15) => q_6_0_15_port, A(14) => 
                           q_6_0_14_port, A(13) => q_6_0_13_port, A(12) => 
                           q_6_0_12_port, A(11) => q_6_0_11_port, A(10) => 
                           q_6_0_10_port, A(9) => q_6_0_9_port, A(8) => 
                           q_6_0_8_port, A(7) => q_6_0_7_port, A(6) => 
                           q_6_0_6_port, A(5) => q_6_0_5_port, A(4) => 
                           q_6_0_4_port, A(3) => q_6_0_3_port, A(2) => 
                           q_6_0_2_port, A(1) => q_0_0_1_port, A(0) => 
                           q_0_0_0_port, B(63) => q_6_1_63_port, B(62) => 
                           q_6_1_62_port, B(61) => q_6_1_61_port, B(60) => 
                           q_6_1_60_port, B(59) => q_6_1_59_port, B(58) => 
                           q_6_1_58_port, B(57) => q_6_1_57_port, B(56) => 
                           q_6_1_56_port, B(55) => q_6_1_55_port, B(54) => 
                           q_6_1_54_port, B(53) => q_6_1_53_port, B(52) => 
                           q_6_1_52_port, B(51) => q_6_1_51_port, B(50) => 
                           q_6_1_50_port, B(49) => q_6_1_49_port, B(48) => 
                           q_6_1_48_port, B(47) => q_6_1_47_port, B(46) => 
                           q_6_1_46_port, B(45) => q_6_1_45_port, B(44) => 
                           q_6_1_44_port, B(43) => q_6_1_43_port, B(42) => 
                           q_6_1_42_port, B(41) => q_6_1_41_port, B(40) => 
                           q_6_1_40_port, B(39) => q_6_1_39_port, B(38) => 
                           q_6_1_38_port, B(37) => q_6_1_37_port, B(36) => 
                           q_6_1_36_port, B(35) => q_6_1_35_port, B(34) => 
                           q_6_1_34_port, B(33) => q_6_1_33_port, B(32) => 
                           q_6_1_32_port, B(31) => q_6_1_31_port, B(30) => 
                           q_6_1_30_port, B(29) => q_6_1_29_port, B(28) => 
                           q_6_1_28_port, B(27) => q_6_1_27_port, B(26) => 
                           q_6_1_26_port, B(25) => q_6_1_25_port, B(24) => 
                           q_6_1_24_port, B(23) => q_6_1_23_port, B(22) => 
                           q_6_1_22_port, B(21) => q_6_1_21_port, B(20) => 
                           q_6_1_20_port, B(19) => q_6_1_19_port, B(18) => 
                           q_6_1_18_port, B(17) => q_6_1_17_port, B(16) => 
                           q_6_1_16_port, B(15) => q_6_1_15_port, B(14) => 
                           q_6_1_14_port, B(13) => q_6_1_13_port, B(12) => 
                           q_6_1_12_port, B(11) => q_6_1_11_port, B(10) => 
                           q_6_1_10_port, B(9) => q_6_1_9_port, B(8) => 
                           q_6_1_8_port, B(7) => q_6_1_7_port, B(6) => 
                           q_6_1_6_port, B(5) => q_6_1_5_port, B(4) => 
                           q_6_1_4_port, B(3) => q_6_1_3_port, B(2) => B(3), 
                           B(1) => n1, B(0) => B(1), CI => n2, SUM(63) => 
                           n_1814, SUM(62) => n_1815, SUM(61) => n_1816, 
                           SUM(60) => n_1817, SUM(59) => n_1818, SUM(58) => 
                           n_1819, SUM(57) => n_1820, SUM(56) => n_1821, 
                           SUM(55) => n_1822, SUM(54) => n_1823, SUM(53) => 
                           n_1824, SUM(52) => n_1825, SUM(51) => n_1826, 
                           SUM(50) => n_1827, SUM(49) => n_1828, SUM(48) => 
                           n_1829, SUM(47) => C(47), SUM(46) => C(46), SUM(45) 
                           => C(45), SUM(44) => C(44), SUM(43) => C(43), 
                           SUM(42) => C(42), SUM(41) => C(41), SUM(40) => C(40)
                           , SUM(39) => C(39), SUM(38) => C(38), SUM(37) => 
                           C(37), SUM(36) => C(36), SUM(35) => C(35), SUM(34) 
                           => C(34), SUM(33) => C(33), SUM(32) => C(32), 
                           SUM(31) => C(31), SUM(30) => C(30), SUM(29) => C(29)
                           , SUM(28) => C(28), SUM(27) => C(27), SUM(26) => 
                           C(26), SUM(25) => C(25), SUM(24) => C(24), SUM(23) 
                           => C(23), SUM(22) => C(22), SUM(21) => n_1830, 
                           SUM(20) => n_1831, SUM(19) => n_1832, SUM(18) => 
                           n_1833, SUM(17) => n_1834, SUM(16) => n_1835, 
                           SUM(15) => n_1836, SUM(14) => n_1837, SUM(13) => 
                           n_1838, SUM(12) => n_1839, SUM(11) => n_1840, 
                           SUM(10) => n_1841, SUM(9) => n_1842, SUM(8) => 
                           n_1843, SUM(7) => n_1844, SUM(6) => n_1845, SUM(5) 
                           => n_1846, SUM(4) => n_1847, SUM(3) => n_1848, 
                           SUM(2) => n_1849, SUM(1) => n_1850, SUM(0) => n_1851
                           , CO => n_1852, clk => clk);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity UnpackFP_1 is

   port( FP : in std_logic_vector (31 downto 0);  SIG : out std_logic_vector 
         (31 downto 0);  EXP : out std_logic_vector (7 downto 0);  SIGN, isNaN,
         isINF, isZ, isDN : out std_logic);

end UnpackFP_1;

architecture SYN_UnpackFP of UnpackFP_1 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal N13, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13_port, n14
      , n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, 
      n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n_1853, n_1854, n_1855,
      n_1856, n_1857, n_1858, n_1859, n_1860, n_1861 : std_logic;

begin
   SIG <= ( n_1853, n_1854, n_1855, n_1856, n_1857, n_1858, n_1859, n_1860, N13
      , FP(22), FP(21), FP(20), FP(19), FP(18), FP(17), FP(16), FP(15), FP(14),
      FP(13), FP(12), FP(11), FP(10), FP(9), FP(8), FP(7), FP(6), FP(5), FP(4),
      FP(3), FP(2), n_1861, FP(0) );
   EXP <= ( FP(30), FP(29), FP(28), FP(27), FP(26), FP(25), FP(24), FP(23) );
   SIGN <= FP(31);
   
   U2 : NAND4_X1 port map( A1 => n24, A2 => n23, A3 => n22, A4 => n21, ZN => 
                           n35);
   U3 : NOR2_X1 port map( A1 => FP(0), A2 => FP(1), ZN => n24);
   U4 : NOR2_X1 port map( A1 => n15, A2 => n14, ZN => n22);
   U5 : NOR2_X1 port map( A1 => n20, A2 => n19, ZN => n21);
   U6 : NOR2_X1 port map( A1 => FP(10), A2 => FP(9), ZN => n3);
   U7 : INV_X1 port map( A => FP(19), ZN => n17);
   U8 : INV_X1 port map( A => FP(20), ZN => n16);
   U9 : NOR2_X1 port map( A1 => FP(18), A2 => FP(17), ZN => n18);
   U10 : INV_X1 port map( A => FP(13), ZN => n12);
   U11 : INV_X1 port map( A => FP(14), ZN => n11);
   U12 : NOR2_X1 port map( A1 => FP(12), A2 => FP(11), ZN => n13_port);
   U13 : NOR2_X1 port map( A1 => n10, A2 => n9, ZN => n23);
   U14 : NAND2_X1 port map( A1 => n8, A2 => n7, ZN => n9);
   U15 : NAND4_X1 port map( A1 => n6, A2 => n5, A3 => n4, A4 => n3, ZN => n10);
   U16 : INV_X1 port map( A => FP(4), ZN => n7);
   U17 : NOR2_X1 port map( A1 => FP(3), A2 => FP(2), ZN => n8);
   U18 : NOR2_X1 port map( A1 => FP(5), A2 => FP(6), ZN => n6);
   U19 : OR2_X1 port map( A1 => FP(22), A2 => FP(21), ZN => n19);
   U20 : OR2_X1 port map( A1 => FP(16), A2 => FP(15), ZN => n14);
   U21 : INV_X1 port map( A => FP(8), ZN => n4);
   U22 : INV_X1 port map( A => FP(7), ZN => n5);
   U23 : NOR4_X1 port map( A1 => FP(27), A2 => FP(28), A3 => FP(29), A4 => 
                           FP(30), ZN => n2);
   U24 : NOR4_X1 port map( A1 => FP(23), A2 => FP(24), A3 => FP(25), A4 => 
                           FP(26), ZN => n1);
   U25 : NAND2_X1 port map( A1 => n2, A2 => n1, ZN => N13);
   U26 : NAND3_X1 port map( A1 => n13_port, A2 => n12, A3 => n11, ZN => n15);
   U27 : NAND3_X1 port map( A1 => n18, A2 => n17, A3 => n16, ZN => n20);
   U28 : INV_X1 port map( A => n35, ZN => n37);
   U30 : NOR2_X1 port map( A1 => n38, A2 => n35, ZN => isZ);
   U31 : INV_X1 port map( A => FP(28), ZN => n28);
   U32 : INV_X1 port map( A => FP(27), ZN => n27);
   U33 : INV_X1 port map( A => FP(30), ZN => n26);
   U34 : INV_X1 port map( A => FP(29), ZN => n25);
   U35 : NOR4_X1 port map( A1 => n28, A2 => n27, A3 => n26, A4 => n25, ZN => 
                           n34);
   U36 : INV_X1 port map( A => FP(24), ZN => n32);
   U37 : INV_X1 port map( A => FP(23), ZN => n31);
   U38 : INV_X1 port map( A => FP(26), ZN => n30);
   U39 : INV_X1 port map( A => FP(25), ZN => n29);
   U40 : NOR4_X1 port map( A1 => n32, A2 => n31, A3 => n30, A4 => n29, ZN => 
                           n33);
   U41 : NAND2_X1 port map( A1 => n34, A2 => n33, ZN => n36);
   U42 : NOR2_X1 port map( A1 => n36, A2 => n35, ZN => isINF);
   U43 : NOR2_X1 port map( A1 => n37, A2 => n36, ZN => isNaN);
   U44 : CLKBUF_X1 port map( A => N13, Z => n38);

end SYN_UnpackFP;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity UnpackFP_0 is

   port( FP : in std_logic_vector (31 downto 0);  SIG : out std_logic_vector 
         (31 downto 0);  EXP : out std_logic_vector (7 downto 0);  SIGN, isNaN,
         isINF, isZ, isDN : out std_logic);

end UnpackFP_0;

architecture SYN_UnpackFP of UnpackFP_0 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal N13, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13_port, n14
      , n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, 
      n29, n30, n31, n32, n33, n34, n35, n36, n37, n_1863, n_1864, n_1865, 
      n_1866, n_1867, n_1868, n_1869, n_1870 : std_logic;

begin
   SIG <= ( n_1863, n_1864, n_1865, n_1866, n_1867, n_1868, n_1869, n_1870, N13
      , FP(22), FP(21), FP(20), FP(19), FP(18), FP(17), FP(16), FP(15), FP(14),
      FP(13), FP(12), FP(11), FP(10), FP(9), FP(8), FP(7), FP(6), FP(5), FP(4),
      FP(3), FP(2), FP(1), FP(0) );
   EXP <= ( FP(30), FP(29), FP(28), FP(27), FP(26), FP(25), FP(24), FP(23) );
   SIGN <= FP(31);
   
   U2 : NAND4_X1 port map( A1 => n24, A2 => n23, A3 => n22, A4 => n21, ZN => 
                           n35);
   U3 : NOR2_X1 port map( A1 => FP(0), A2 => FP(1), ZN => n24);
   U4 : NOR2_X1 port map( A1 => n15, A2 => n14, ZN => n22);
   U5 : NOR2_X1 port map( A1 => n20, A2 => n19, ZN => n21);
   U6 : NOR2_X1 port map( A1 => FP(10), A2 => FP(9), ZN => n3);
   U7 : INV_X1 port map( A => FP(19), ZN => n17);
   U8 : INV_X1 port map( A => FP(20), ZN => n16);
   U9 : NOR2_X1 port map( A1 => FP(18), A2 => FP(17), ZN => n18);
   U10 : INV_X1 port map( A => FP(13), ZN => n12);
   U11 : INV_X1 port map( A => FP(14), ZN => n11);
   U12 : NOR2_X1 port map( A1 => FP(12), A2 => FP(11), ZN => n13_port);
   U13 : NOR2_X1 port map( A1 => n10, A2 => n9, ZN => n23);
   U14 : NAND2_X1 port map( A1 => n8, A2 => n7, ZN => n9);
   U15 : NAND4_X1 port map( A1 => n6, A2 => n5, A3 => n4, A4 => n3, ZN => n10);
   U16 : INV_X1 port map( A => FP(4), ZN => n7);
   U17 : NOR2_X1 port map( A1 => FP(3), A2 => FP(2), ZN => n8);
   U18 : NOR2_X1 port map( A1 => FP(5), A2 => FP(6), ZN => n6);
   U19 : OR2_X1 port map( A1 => FP(22), A2 => FP(21), ZN => n19);
   U20 : OR2_X1 port map( A1 => FP(16), A2 => FP(15), ZN => n14);
   U21 : INV_X1 port map( A => FP(8), ZN => n4);
   U22 : INV_X1 port map( A => FP(7), ZN => n5);
   U23 : NOR4_X1 port map( A1 => FP(27), A2 => FP(28), A3 => FP(29), A4 => 
                           FP(30), ZN => n2);
   U24 : NOR4_X1 port map( A1 => FP(23), A2 => FP(24), A3 => FP(25), A4 => 
                           FP(26), ZN => n1);
   U25 : NAND2_X1 port map( A1 => n1, A2 => n2, ZN => N13);
   U26 : NAND3_X1 port map( A1 => n13_port, A2 => n12, A3 => n11, ZN => n15);
   U27 : NAND3_X1 port map( A1 => n18, A2 => n17, A3 => n16, ZN => n20);
   U28 : INV_X1 port map( A => n35, ZN => n37);
   U30 : NOR2_X1 port map( A1 => N13, A2 => n35, ZN => isZ);
   U31 : INV_X1 port map( A => FP(28), ZN => n28);
   U32 : INV_X1 port map( A => FP(27), ZN => n27);
   U33 : INV_X1 port map( A => FP(30), ZN => n26);
   U34 : INV_X1 port map( A => FP(29), ZN => n25);
   U35 : NOR4_X1 port map( A1 => n28, A2 => n27, A3 => n26, A4 => n25, ZN => 
                           n34);
   U36 : INV_X1 port map( A => FP(24), ZN => n32);
   U37 : INV_X1 port map( A => FP(23), ZN => n31);
   U38 : INV_X1 port map( A => FP(26), ZN => n30);
   U39 : INV_X1 port map( A => FP(25), ZN => n29);
   U40 : NOR4_X1 port map( A1 => n32, A2 => n31, A3 => n30, A4 => n29, ZN => 
                           n33);
   U41 : NAND2_X1 port map( A1 => n34, A2 => n33, ZN => n36);
   U42 : NOR2_X1 port map( A1 => n36, A2 => n35, ZN => isINF);
   U43 : NOR2_X1 port map( A1 => n37, A2 => n36, ZN => isNaN);

end SYN_UnpackFP;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FPmul_stage4 is

   port( EXP_neg : in std_logic;  EXP_out_round : in std_logic_vector (7 downto
         0);  EXP_pos, SIGN_out : in std_logic;  SIG_out_round : in 
         std_logic_vector (27 downto 0);  clk, isINF_tab, isNaN, isZ_tab : in 
         std_logic;  FP_Z : out std_logic_vector (31 downto 0));

end FPmul_stage4;

architecture SYN_struct of FPmul_stage4 is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component PackFP
      port( SIGN : in std_logic;  EXP : in std_logic_vector (7 downto 0);  SIG 
            : in std_logic_vector (22 downto 0);  isNaN, isINF, isZ : in 
            std_logic;  FP : out std_logic_vector (31 downto 0);  clk : in 
            std_logic);
   end component;
   
   component FPnormalize_SIG_width28_1
      port( SIG_in : in std_logic_vector (27 downto 0);  EXP_in : in 
            std_logic_vector (7 downto 0);  SIG_out : out std_logic_vector (27 
            downto 0);  EXP_out : out std_logic_vector (7 downto 0);  clk : in 
            std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n179, SIG_out_norm2_26_port, SIG_out_22_port, SIG_out_21_port, 
      SIG_out_20_port, SIG_out_19_port, SIG_out_18_port, SIG_out_17_port, 
      SIG_out_16_port, SIG_out_15_port, SIG_out_14_port, SIG_out_13_port, 
      SIG_out_12_port, SIG_out_11_port, SIG_out_10_port, SIG_out_9_port, 
      SIG_out_8_port, SIG_out_7_port, SIG_out_6_port, SIG_out_5_port, 
      SIG_out_4_port, SIG_out_3_port, SIG_out_2_port, SIG_out_1_port, 
      SIG_out_0_port, EXP_out_7_port, EXP_out_6_port, EXP_out_5_port, 
      EXP_out_4_port, EXP_out_3_port, EXP_out_2_port, EXP_out_1_port, 
      EXP_out_0_port, isINF, n1, n5, n9, n13, n17, n18, n19, n20, n21, n22, n23
      , n25, n26, n27, n28, n29, n30, n31, n32, n33, n73, n74, n75, n76, n77, 
      n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92
      , n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, 
      n106, n107, n108, n109, n110, n176, n177, n178, n180, n181, n182, n183, 
      n184, n185, n186, n187, n188, n189, n190, n191, n192, n_1875, n_1876, 
      n_1877, n_1878, n_1879, n_1880, n_1881, n_1882, n_1883, n_1884, n_1885, 
      n_1886, n_1887, n_1888, n_1889, n_1890, n_1891, n_1892, n_1893, n_1894, 
      n_1895, n_1896, n_1897, n_1898, n_1899, n_1900, n_1901, n_1902, n_1903, 
      n_1904 : std_logic;

begin
   
   U3 : NOR2_X1 port map( A1 => n23, A2 => n22, ZN => n27);
   U4 : NAND2_X1 port map( A1 => EXP_out_3_port, A2 => EXP_out_4_port, ZN => 
                           n23);
   U5 : NAND2_X1 port map( A1 => EXP_out_5_port, A2 => EXP_out_6_port, ZN => 
                           n22);
   U7 : INV_X1 port map( A => EXP_out_2_port, ZN => n25);
   U8 : AOI21_X1 port map( B1 => n32, B2 => n82, A => n33, ZN => isINF);
   U9 : INV_X1 port map( A => isINF_tab, ZN => n31);
   U10 : INV_X1 port map( A => EXP_pos, ZN => n29);
   U11 : NOR2_X1 port map( A1 => n25, A2 => n192, ZN => n26);
   U15 : NOR3_X1 port map( A1 => n87, A2 => n88, A3 => n89, ZN => n1);
   U16 : NAND4_X1 port map( A1 => n187, A2 => n181, A3 => n182, A4 => n1, ZN =>
                           n20);
   U20 : NOR3_X1 port map( A1 => n93, A2 => n94, A3 => n95, ZN => n5);
   U21 : NAND4_X1 port map( A1 => n185, A2 => n186, A3 => n189, A4 => n5, ZN =>
                           n19);
   U25 : NOR3_X1 port map( A1 => n99, A2 => n100, A3 => n101, ZN => n9);
   U26 : NAND4_X1 port map( A1 => n191, A2 => n190, A3 => n183, A4 => n9, ZN =>
                           n18);
   U30 : NOR3_X1 port map( A1 => n108, A2 => n109, A3 => n110, ZN => n13);
   U31 : NAND4_X1 port map( A1 => n184, A2 => n188, A3 => n180, A4 => n13, ZN 
                           => n17);
   U32 : NOR4_X1 port map( A1 => n20, A2 => n19, A3 => n18, A4 => n17, ZN => 
                           n21);
   U33 : AOI211_X1 port map( C1 => EXP_out_7_port, C2 => n76, A => n73, B => 
                           n21, ZN => n30);
   U34 : INV_X1 port map( A => n30, ZN => n33);
   U35 : NAND3_X1 port map( A1 => n86, A2 => n27, A3 => n26, ZN => n28);
   U36 : MUX2_X1 port map( A => n79, B => n28, S => EXP_out_7_port, Z => n32);
   MY_CLK_r_REG1_S2 : DFF_X1 port map( D => n179, CK => clk, Q => FP_Z(31), QN 
                           => n_1875);
   MY_CLK_r_REG26_S4 : DFF_X1 port map( D => SIG_out_norm2_26_port, CK => clk, 
                           Q => n110, QN => n_1876);
   MY_CLK_r_REG27_S4 : DFF_X1 port map( D => SIG_out_22_port, CK => clk, Q => 
                           n109, QN => n_1877);
   MY_CLK_r_REG39_S4 : DFF_X1 port map( D => SIG_out_21_port, CK => clk, Q => 
                           n108, QN => n_1878);
   MY_CLK_r_REG46_S4 : DFF_X1 port map( D => SIG_out_14_port, CK => clk, Q => 
                           n101, QN => n_1879);
   MY_CLK_r_REG47_S4 : DFF_X1 port map( D => SIG_out_13_port, CK => clk, Q => 
                           n100, QN => n_1880);
   MY_CLK_r_REG48_S4 : DFF_X1 port map( D => SIG_out_12_port, CK => clk, Q => 
                           n99, QN => n_1881);
   MY_CLK_r_REG29_S4 : DFF_X1 port map( D => SIG_out_8_port, CK => clk, Q => 
                           n95, QN => n_1882);
   MY_CLK_r_REG30_S4 : DFF_X1 port map( D => SIG_out_7_port, CK => clk, Q => 
                           n94, QN => n_1883);
   MY_CLK_r_REG31_S4 : DFF_X1 port map( D => SIG_out_6_port, CK => clk, Q => 
                           n93, QN => n_1884);
   MY_CLK_r_REG35_S4 : DFF_X1 port map( D => SIG_out_2_port, CK => clk, Q => 
                           n89, QN => n_1885);
   MY_CLK_r_REG36_S4 : DFF_X1 port map( D => SIG_out_1_port, CK => clk, Q => 
                           n88, QN => n_1886);
   MY_CLK_r_REG37_S4 : DFF_X1 port map( D => SIG_out_0_port, CK => clk, Q => 
                           n87, QN => n_1887);
   MY_CLK_r_REG21_S4 : DFF_X1 port map( D => EXP_out_1_port, CK => clk, Q => 
                           n86, QN => n_1888);
   MY_CLK_r_REG13_S2 : DFF_X1 port map( D => n31, CK => clk, Q => n84, QN => 
                           n_1889);
   MY_CLK_r_REG14_S3 : DFF_X1 port map( D => n84, CK => clk, Q => n83, QN => 
                           n_1890);
   MY_CLK_r_REG15_S4 : DFF_X1 port map( D => n83, CK => clk, Q => n82, QN => 
                           n_1891);
   MY_CLK_r_REG217_S2 : DFF_X1 port map( D => n29, CK => clk, Q => n81, QN => 
                           n_1892);
   MY_CLK_r_REG218_S3 : DFF_X1 port map( D => n81, CK => clk, Q => n80, QN => 
                           n_1893);
   MY_CLK_r_REG219_S4 : DFF_X1 port map( D => n80, CK => clk, Q => n79, QN => 
                           n_1894);
   MY_CLK_r_REG214_S2 : DFF_X1 port map( D => EXP_neg, CK => clk, Q => n78, QN 
                           => n_1895);
   MY_CLK_r_REG215_S3 : DFF_X1 port map( D => n78, CK => clk, Q => n77, QN => 
                           n_1896);
   MY_CLK_r_REG216_S4 : DFF_X1 port map( D => n77, CK => clk, Q => n76, QN => 
                           n_1897);
   MY_CLK_r_REG9_S2 : DFF_X1 port map( D => isZ_tab, CK => clk, Q => n75, QN =>
                           n_1898);
   MY_CLK_r_REG10_S3 : DFF_X1 port map( D => n75, CK => clk, Q => n74, QN => 
                           n_1899);
   MY_CLK_r_REG11_S4 : DFF_X1 port map( D => n74, CK => clk, Q => n73, QN => 
                           n_1900);
   n176 <= '0';
   n177 <= '0';
   n178 <= '0';
   I1 : FPnormalize_SIG_width28_1 port map( SIG_in(27) => SIG_out_round(27), 
                           SIG_in(26) => SIG_out_round(26), SIG_in(25) => 
                           SIG_out_round(25), SIG_in(24) => SIG_out_round(24), 
                           SIG_in(23) => SIG_out_round(23), SIG_in(22) => 
                           SIG_out_round(22), SIG_in(21) => SIG_out_round(21), 
                           SIG_in(20) => SIG_out_round(20), SIG_in(19) => 
                           SIG_out_round(19), SIG_in(18) => SIG_out_round(18), 
                           SIG_in(17) => SIG_out_round(17), SIG_in(16) => 
                           SIG_out_round(16), SIG_in(15) => SIG_out_round(15), 
                           SIG_in(14) => SIG_out_round(14), SIG_in(13) => 
                           SIG_out_round(13), SIG_in(12) => SIG_out_round(12), 
                           SIG_in(11) => SIG_out_round(11), SIG_in(10) => 
                           SIG_out_round(10), SIG_in(9) => SIG_out_round(9), 
                           SIG_in(8) => SIG_out_round(8), SIG_in(7) => 
                           SIG_out_round(7), SIG_in(6) => SIG_out_round(6), 
                           SIG_in(5) => SIG_out_round(5), SIG_in(4) => 
                           SIG_out_round(4), SIG_in(3) => SIG_out_round(3), 
                           SIG_in(2) => n176, SIG_in(1) => n177, SIG_in(0) => 
                           n178, EXP_in(7) => EXP_out_round(7), EXP_in(6) => 
                           EXP_out_round(6), EXP_in(5) => EXP_out_round(5), 
                           EXP_in(4) => EXP_out_round(4), EXP_in(3) => 
                           EXP_out_round(3), EXP_in(2) => EXP_out_round(2), 
                           EXP_in(1) => EXP_out_round(1), EXP_in(0) => 
                           EXP_out_round(0), SIG_out(27) => n_1901, SIG_out(26)
                           => SIG_out_norm2_26_port, SIG_out(25) => 
                           SIG_out_22_port, SIG_out(24) => SIG_out_21_port, 
                           SIG_out(23) => SIG_out_20_port, SIG_out(22) => 
                           SIG_out_19_port, SIG_out(21) => SIG_out_18_port, 
                           SIG_out(20) => SIG_out_17_port, SIG_out(19) => 
                           SIG_out_16_port, SIG_out(18) => SIG_out_15_port, 
                           SIG_out(17) => SIG_out_14_port, SIG_out(16) => 
                           SIG_out_13_port, SIG_out(15) => SIG_out_12_port, 
                           SIG_out(14) => SIG_out_11_port, SIG_out(13) => 
                           SIG_out_10_port, SIG_out(12) => SIG_out_9_port, 
                           SIG_out(11) => SIG_out_8_port, SIG_out(10) => 
                           SIG_out_7_port, SIG_out(9) => SIG_out_6_port, 
                           SIG_out(8) => SIG_out_5_port, SIG_out(7) => 
                           SIG_out_4_port, SIG_out(6) => SIG_out_3_port, 
                           SIG_out(5) => SIG_out_2_port, SIG_out(4) => 
                           SIG_out_1_port, SIG_out(3) => SIG_out_0_port, 
                           SIG_out(2) => n_1902, SIG_out(1) => n_1903, 
                           SIG_out(0) => n_1904, EXP_out(7) => EXP_out_7_port, 
                           EXP_out(6) => EXP_out_6_port, EXP_out(5) => 
                           EXP_out_5_port, EXP_out(4) => EXP_out_4_port, 
                           EXP_out(3) => EXP_out_3_port, EXP_out(2) => 
                           EXP_out_2_port, EXP_out(1) => EXP_out_1_port, 
                           EXP_out(0) => EXP_out_0_port, clk => clk);
   I3 : PackFP port map( SIGN => SIGN_out, EXP(7) => EXP_out_7_port, EXP(6) => 
                           EXP_out_6_port, EXP(5) => EXP_out_5_port, EXP(4) => 
                           EXP_out_4_port, EXP(3) => EXP_out_3_port, EXP(2) => 
                           EXP_out_2_port, EXP(1) => n86, EXP(0) => n85, 
                           SIG(22) => n109, SIG(21) => n108, SIG(20) => n107, 
                           SIG(19) => n106, SIG(18) => n105, SIG(17) => n104, 
                           SIG(16) => n103, SIG(15) => n102, SIG(14) => n101, 
                           SIG(13) => n100, SIG(12) => n99, SIG(11) => n98, 
                           SIG(10) => n97, SIG(9) => n96, SIG(8) => n95, SIG(7)
                           => n94, SIG(6) => n93, SIG(5) => n92, SIG(4) => n91,
                           SIG(3) => n90, SIG(2) => n89, SIG(1) => n88, SIG(0) 
                           => n87, isNaN => isNaN, isINF => isINF, isZ => n33, 
                           FP(31) => n179, FP(30) => FP_Z(30), FP(29) => 
                           FP_Z(29), FP(28) => FP_Z(28), FP(27) => FP_Z(27), 
                           FP(26) => FP_Z(26), FP(25) => FP_Z(25), FP(24) => 
                           FP_Z(24), FP(23) => FP_Z(23), FP(22) => FP_Z(22), 
                           FP(21) => FP_Z(21), FP(20) => FP_Z(20), FP(19) => 
                           FP_Z(19), FP(18) => FP_Z(18), FP(17) => FP_Z(17), 
                           FP(16) => FP_Z(16), FP(15) => FP_Z(15), FP(14) => 
                           FP_Z(14), FP(13) => FP_Z(13), FP(12) => FP_Z(12), 
                           FP(11) => FP_Z(11), FP(10) => FP_Z(10), FP(9) => 
                           FP_Z(9), FP(8) => FP_Z(8), FP(7) => FP_Z(7), FP(6) 
                           => FP_Z(6), FP(5) => FP_Z(5), FP(4) => FP_Z(4), 
                           FP(3) => FP_Z(3), FP(2) => FP_Z(2), FP(1) => FP_Z(1)
                           , FP(0) => FP_Z(0), clk => clk);
   MY_CLK_r_REG50_S4 : DFF_X1 port map( D => SIG_out_10_port, CK => clk, Q => 
                           n97, QN => n186);
   MY_CLK_r_REG49_S4 : DFF_X1 port map( D => SIG_out_11_port, CK => clk, Q => 
                           n98, QN => n185);
   MY_CLK_r_REG45_S4 : DFF_X1 port map( D => SIG_out_15_port, CK => clk, Q => 
                           n102, QN => n183);
   MY_CLK_r_REG44_S4 : DFF_X1 port map( D => SIG_out_16_port, CK => clk, Q => 
                           n103, QN => n190);
   MY_CLK_r_REG43_S4 : DFF_X1 port map( D => SIG_out_17_port, CK => clk, Q => 
                           n104, QN => n191);
   MY_CLK_r_REG42_S4 : DFF_X1 port map( D => SIG_out_18_port, CK => clk, Q => 
                           n105, QN => n180);
   MY_CLK_r_REG41_S4 : DFF_X1 port map( D => SIG_out_19_port, CK => clk, Q => 
                           n106, QN => n188);
   MY_CLK_r_REG40_S4 : DFF_X1 port map( D => SIG_out_20_port, CK => clk, Q => 
                           n107, QN => n184);
   MY_CLK_r_REG38_S4 : DFF_X1 port map( D => EXP_out_0_port, CK => clk, Q => 
                           n85, QN => n192);
   MY_CLK_r_REG34_S4 : DFF_X1 port map( D => SIG_out_3_port, CK => clk, Q => 
                           n90, QN => n182);
   MY_CLK_r_REG33_S4 : DFF_X1 port map( D => SIG_out_4_port, CK => clk, Q => 
                           n91, QN => n181);
   MY_CLK_r_REG32_S4 : DFF_X1 port map( D => SIG_out_5_port, CK => clk, Q => 
                           n92, QN => n187);
   MY_CLK_r_REG28_S4 : DFF_X1 port map( D => SIG_out_9_port, CK => clk, Q => 
                           n96, QN => n189);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FPmul_stage3 is

   port( EXP_in : in std_logic_vector (7 downto 0);  EXP_neg_stage2, 
         EXP_pos_stage2, SIGN_out_stage2 : in std_logic;  SIG_in : in 
         std_logic_vector (27 downto 0);  clk, isINF_stage2, isNaN_stage2, 
         isZ_tab_stage2 : in std_logic;  EXP_neg : out std_logic;  
         EXP_out_round : out std_logic_vector (7 downto 0);  EXP_pos, SIGN_out 
         : out std_logic;  SIG_out_round : out std_logic_vector (27 downto 0); 
         isINF_tab, isNaN, isZ_tab : out std_logic);

end FPmul_stage3;

architecture SYN_struct of FPmul_stage3 is

   component FPround_SIG_width28
      port( SIG_in : in std_logic_vector (27 downto 0);  EXP_in : in 
            std_logic_vector (7 downto 0);  SIG_out : out std_logic_vector (27 
            downto 0);  EXP_out : out std_logic_vector (7 downto 0);  clk : in 
            std_logic);
   end component;
   
   component FPnormalize_SIG_width28_0
      port( SIG_in : in std_logic_vector (27 downto 0);  EXP_in : in 
            std_logic_vector (7 downto 0);  SIG_out : out std_logic_vector (27 
            downto 0);  EXP_out : out std_logic_vector (7 downto 0);  clk : in 
            std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal SIG_out_norm_27_port, SIG_out_norm_26_port, SIG_out_norm_25_port, 
      SIG_out_norm_24_port, SIG_out_norm_23_port, SIG_out_norm_22_port, 
      SIG_out_norm_21_port, SIG_out_norm_20_port, SIG_out_norm_19_port, 
      SIG_out_norm_18_port, SIG_out_norm_17_port, SIG_out_norm_16_port, 
      SIG_out_norm_15_port, SIG_out_norm_14_port, SIG_out_norm_13_port, 
      SIG_out_norm_12_port, SIG_out_norm_11_port, SIG_out_norm_10_port, 
      SIG_out_norm_9_port, SIG_out_norm_8_port, SIG_out_norm_7_port, 
      SIG_out_norm_6_port, SIG_out_norm_5_port, SIG_out_norm_4_port, 
      SIG_out_norm_3_port, SIG_out_norm_2_port, EXP_out_norm_7_port, 
      EXP_out_norm_6_port, EXP_out_norm_5_port, EXP_out_norm_4_port, 
      EXP_out_norm_3_port, EXP_out_norm_2_port, EXP_out_norm_1_port, 
      EXP_out_norm_0_port, n89, n90, n91, n92, n_1910, n_1911, n_1912, n_1913, 
      n_1914, n_1915, n_1916, n_1917, n_1918, n_1919, n_1920 : std_logic;

begin
   EXP_pos <= EXP_pos_stage2;
   
   SIG_out_norm_27_port <= '0';
   MY_CLK_r_REG213_S1 : DFF_X1 port map( D => EXP_neg_stage2, CK => clk, Q => 
                           EXP_neg, QN => n_1910);
   MY_CLK_r_REG0_S1 : DFF_X1 port map( D => SIGN_out_stage2, CK => clk, Q => 
                           SIGN_out, QN => n_1911);
   MY_CLK_r_REG12_S1 : DFF_X1 port map( D => isINF_stage2, CK => clk, Q => 
                           isINF_tab, QN => n_1912);
   MY_CLK_r_REG4_S1 : DFF_X1 port map( D => isNaN_stage2, CK => clk, Q => isNaN
                           , QN => n_1913);
   MY_CLK_r_REG8_S1 : DFF_X1 port map( D => isZ_tab_stage2, CK => clk, Q => 
                           isZ_tab, QN => n_1914);
   n89 <= '0';
   n90 <= '0';
   n91 <= '0';
   n92 <= '0';
   I9 : FPnormalize_SIG_width28_0 port map( SIG_in(27) => SIG_in(27), 
                           SIG_in(26) => SIG_in(26), SIG_in(25) => SIG_in(25), 
                           SIG_in(24) => SIG_in(24), SIG_in(23) => SIG_in(23), 
                           SIG_in(22) => SIG_in(22), SIG_in(21) => SIG_in(21), 
                           SIG_in(20) => SIG_in(20), SIG_in(19) => SIG_in(19), 
                           SIG_in(18) => SIG_in(18), SIG_in(17) => SIG_in(17), 
                           SIG_in(16) => SIG_in(16), SIG_in(15) => SIG_in(15), 
                           SIG_in(14) => SIG_in(14), SIG_in(13) => SIG_in(13), 
                           SIG_in(12) => SIG_in(12), SIG_in(11) => SIG_in(11), 
                           SIG_in(10) => SIG_in(10), SIG_in(9) => SIG_in(9), 
                           SIG_in(8) => SIG_in(8), SIG_in(7) => SIG_in(7), 
                           SIG_in(6) => SIG_in(6), SIG_in(5) => SIG_in(5), 
                           SIG_in(4) => SIG_in(4), SIG_in(3) => SIG_in(3), 
                           SIG_in(2) => SIG_in(2), SIG_in(1) => n89, SIG_in(0) 
                           => n90, EXP_in(7) => EXP_in(7), EXP_in(6) => 
                           EXP_in(6), EXP_in(5) => EXP_in(5), EXP_in(4) => 
                           EXP_in(4), EXP_in(3) => EXP_in(3), EXP_in(2) => 
                           EXP_in(2), EXP_in(1) => EXP_in(1), EXP_in(0) => 
                           EXP_in(0), SIG_out(27) => n_1915, SIG_out(26) => 
                           SIG_out_norm_26_port, SIG_out(25) => 
                           SIG_out_norm_25_port, SIG_out(24) => 
                           SIG_out_norm_24_port, SIG_out(23) => 
                           SIG_out_norm_23_port, SIG_out(22) => 
                           SIG_out_norm_22_port, SIG_out(21) => 
                           SIG_out_norm_21_port, SIG_out(20) => 
                           SIG_out_norm_20_port, SIG_out(19) => 
                           SIG_out_norm_19_port, SIG_out(18) => 
                           SIG_out_norm_18_port, SIG_out(17) => 
                           SIG_out_norm_17_port, SIG_out(16) => 
                           SIG_out_norm_16_port, SIG_out(15) => 
                           SIG_out_norm_15_port, SIG_out(14) => 
                           SIG_out_norm_14_port, SIG_out(13) => 
                           SIG_out_norm_13_port, SIG_out(12) => 
                           SIG_out_norm_12_port, SIG_out(11) => 
                           SIG_out_norm_11_port, SIG_out(10) => 
                           SIG_out_norm_10_port, SIG_out(9) => 
                           SIG_out_norm_9_port, SIG_out(8) => 
                           SIG_out_norm_8_port, SIG_out(7) => 
                           SIG_out_norm_7_port, SIG_out(6) => 
                           SIG_out_norm_6_port, SIG_out(5) => 
                           SIG_out_norm_5_port, SIG_out(4) => 
                           SIG_out_norm_4_port, SIG_out(3) => 
                           SIG_out_norm_3_port, SIG_out(2) => 
                           SIG_out_norm_2_port, SIG_out(1) => n_1916, 
                           SIG_out(0) => n_1917, EXP_out(7) => 
                           EXP_out_norm_7_port, EXP_out(6) => 
                           EXP_out_norm_6_port, EXP_out(5) => 
                           EXP_out_norm_5_port, EXP_out(4) => 
                           EXP_out_norm_4_port, EXP_out(3) => 
                           EXP_out_norm_3_port, EXP_out(2) => 
                           EXP_out_norm_2_port, EXP_out(1) => 
                           EXP_out_norm_1_port, EXP_out(0) => 
                           EXP_out_norm_0_port, clk => clk);
   I11 : FPround_SIG_width28 port map( SIG_in(27) => SIG_out_norm_27_port, 
                           SIG_in(26) => SIG_out_norm_26_port, SIG_in(25) => 
                           SIG_out_norm_25_port, SIG_in(24) => 
                           SIG_out_norm_24_port, SIG_in(23) => 
                           SIG_out_norm_23_port, SIG_in(22) => 
                           SIG_out_norm_22_port, SIG_in(21) => 
                           SIG_out_norm_21_port, SIG_in(20) => 
                           SIG_out_norm_20_port, SIG_in(19) => 
                           SIG_out_norm_19_port, SIG_in(18) => 
                           SIG_out_norm_18_port, SIG_in(17) => 
                           SIG_out_norm_17_port, SIG_in(16) => 
                           SIG_out_norm_16_port, SIG_in(15) => 
                           SIG_out_norm_15_port, SIG_in(14) => 
                           SIG_out_norm_14_port, SIG_in(13) => 
                           SIG_out_norm_13_port, SIG_in(12) => 
                           SIG_out_norm_12_port, SIG_in(11) => 
                           SIG_out_norm_11_port, SIG_in(10) => 
                           SIG_out_norm_10_port, SIG_in(9) => 
                           SIG_out_norm_9_port, SIG_in(8) => 
                           SIG_out_norm_8_port, SIG_in(7) => 
                           SIG_out_norm_7_port, SIG_in(6) => 
                           SIG_out_norm_6_port, SIG_in(5) => 
                           SIG_out_norm_5_port, SIG_in(4) => 
                           SIG_out_norm_4_port, SIG_in(3) => 
                           SIG_out_norm_3_port, SIG_in(2) => 
                           SIG_out_norm_2_port, SIG_in(1) => n91, SIG_in(0) => 
                           n92, EXP_in(7) => EXP_out_norm_7_port, EXP_in(6) => 
                           EXP_out_norm_6_port, EXP_in(5) => 
                           EXP_out_norm_5_port, EXP_in(4) => 
                           EXP_out_norm_4_port, EXP_in(3) => 
                           EXP_out_norm_3_port, EXP_in(2) => 
                           EXP_out_norm_2_port, EXP_in(1) => 
                           EXP_out_norm_1_port, EXP_in(0) => 
                           EXP_out_norm_0_port, SIG_out(27) => 
                           SIG_out_round(27), SIG_out(26) => SIG_out_round(26),
                           SIG_out(25) => SIG_out_round(25), SIG_out(24) => 
                           SIG_out_round(24), SIG_out(23) => SIG_out_round(23),
                           SIG_out(22) => SIG_out_round(22), SIG_out(21) => 
                           SIG_out_round(21), SIG_out(20) => SIG_out_round(20),
                           SIG_out(19) => SIG_out_round(19), SIG_out(18) => 
                           SIG_out_round(18), SIG_out(17) => SIG_out_round(17),
                           SIG_out(16) => SIG_out_round(16), SIG_out(15) => 
                           SIG_out_round(15), SIG_out(14) => SIG_out_round(14),
                           SIG_out(13) => SIG_out_round(13), SIG_out(12) => 
                           SIG_out_round(12), SIG_out(11) => SIG_out_round(11),
                           SIG_out(10) => SIG_out_round(10), SIG_out(9) => 
                           SIG_out_round(9), SIG_out(8) => SIG_out_round(8), 
                           SIG_out(7) => SIG_out_round(7), SIG_out(6) => 
                           SIG_out_round(6), SIG_out(5) => SIG_out_round(5), 
                           SIG_out(4) => SIG_out_round(4), SIG_out(3) => 
                           SIG_out_round(3), SIG_out(2) => n_1918, SIG_out(1) 
                           => n_1919, SIG_out(0) => n_1920, EXP_out(7) => 
                           EXP_out_round(7), EXP_out(6) => EXP_out_round(6), 
                           EXP_out(5) => EXP_out_round(5), EXP_out(4) => 
                           EXP_out_round(4), EXP_out(3) => EXP_out_round(3), 
                           EXP_out(2) => EXP_out_round(2), EXP_out(1) => 
                           EXP_out_round(1), EXP_out(0) => EXP_out_round(0), 
                           clk => clk);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FPmul_stage2 is

   port( A_EXP : in std_logic_vector (7 downto 0);  A_SIG : in std_logic_vector
         (31 downto 0);  B_EXP : in std_logic_vector (7 downto 0);  B_SIG : in 
         std_logic_vector (31 downto 0);  SIGN_out_stage1, clk, isINF_stage1, 
         isNaN_stage1, isZ_tab_stage1 : in std_logic;  EXP_in : out 
         std_logic_vector (7 downto 0);  EXP_neg_stage2, EXP_pos_stage2, 
         SIGN_out_stage2 : out std_logic;  SIG_in : out std_logic_vector (27 
         downto 0);  isINF_stage2, isNaN_stage2, isZ_tab_stage2 : out std_logic
         );

end FPmul_stage2;

architecture SYN_struct of FPmul_stage2 is

   component MBE
      port( A, B : in std_logic_vector (31 downto 0);  C : out std_logic_vector
            (63 downto 0);  clk : in std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, 
      n108, n109, n110, n111, mw_I4sum_7_port, n1, n2, n3, n4, n5, n6, n7, n8, 
      n9, n10, n14, n15, add_1_root_add_131_2_n6, add_1_root_add_131_2_n5, 
      add_1_root_add_131_2_n4, add_1_root_add_131_2_carry_1_port, 
      add_1_root_add_131_2_carry_2_port, add_1_root_add_131_2_carry_3_port, 
      add_1_root_add_131_2_carry_4_port, add_1_root_add_131_2_carry_5_port, 
      add_1_root_add_131_2_carry_6_port, add_1_root_add_131_2_carry_7_port, 
      n_1939, n_1940, n_1941, n_1942, n_1943, n_1944, n_1945, n_1946, n_1947, 
      n_1948, n_1949, n_1950, n_1951, n_1952, n_1953, n_1954, n_1955, n_1956, 
      n_1957, n_1958, n_1959, n_1960, n_1961, n_1962, n_1963, n_1964, n_1965, 
      n_1966, n_1967, n_1968, n_1969, n_1970, n_1971, n_1972, n_1973, n_1974, 
      n_1975, n_1976, n_1977, n_1978, n_1979, n_1980, n_1981, n_1982 : 
      std_logic;

begin
   SIGN_out_stage2 <= SIGN_out_stage1;
   isINF_stage2 <= isINF_stage1;
   isNaN_stage2 <= isNaN_stage1;
   isZ_tab_stage2 <= isZ_tab_stage1;
   
   U3 : AND2_X1 port map( A1 => n15, A2 => n14, ZN => EXP_pos_stage2);
   U4 : NAND4_X1 port map( A1 => B_EXP(5), A2 => B_EXP(6), A3 => B_EXP(3), A4 
                           => B_EXP(4), ZN => n4);
   U5 : INV_X1 port map( A => B_EXP(0), ZN => n3);
   U6 : INV_X1 port map( A => B_EXP(2), ZN => n2);
   U7 : INV_X1 port map( A => B_EXP(1), ZN => n1);
   U8 : NOR4_X1 port map( A1 => n4, A2 => n3, A3 => n2, A4 => n1, ZN => n10);
   U9 : NAND4_X1 port map( A1 => A_EXP(5), A2 => A_EXP(6), A3 => A_EXP(3), A4 
                           => A_EXP(4), ZN => n8);
   U10 : INV_X1 port map( A => A_EXP(0), ZN => n7);
   U11 : INV_X1 port map( A => A_EXP(2), ZN => n6);
   U12 : INV_X1 port map( A => A_EXP(1), ZN => n5);
   U13 : NOR4_X1 port map( A1 => n8, A2 => n7, A3 => n6, A4 => n5, ZN => n9);
   U14 : NOR4_X1 port map( A1 => B_EXP(7), A2 => A_EXP(7), A3 => n10, A4 => n9,
                           ZN => EXP_neg_stage2);
   U15 : INV_X1 port map( A => mw_I4sum_7_port, ZN => EXP_in(7));
   MY_CLK_r_REG212_S1 : DFF_X1 port map( D => A_EXP(7), CK => clk, Q => n15, QN
                           => n_1939);
   MY_CLK_r_REG488_S1 : DFF_X1 port map( D => B_EXP(7), CK => clk, Q => n14, QN
                           => n_1940);
   add_1_root_add_131_2_MY_CLK_r_REG225_S1 : DFF_X1 port map( D => 
                           add_1_root_add_131_2_carry_6_port, CK => clk, Q => 
                           add_1_root_add_131_2_n4, QN => n_1941);
   add_1_root_add_131_2_MY_CLK_r_REG489_S1 : DFF_X1 port map( D => B_EXP(6), CK
                           => clk, Q => add_1_root_add_131_2_n5, QN => n_1942);
   add_1_root_add_131_2_MY_CLK_r_REG222_S1 : DFF_X1 port map( D => A_EXP(6), CK
                           => clk, Q => add_1_root_add_131_2_n6, QN => n_1943);
   add_1_root_add_131_2_U2 : XNOR2_X1 port map( A => B_EXP(0), B => A_EXP(0), 
                           ZN => EXP_in(0));
   add_1_root_add_131_2_U1 : OR2_X1 port map( A1 => B_EXP(0), A2 => A_EXP(0), 
                           ZN => add_1_root_add_131_2_carry_1_port);
   add_1_root_add_131_2_U1_1 : FA_X1 port map( A => A_EXP(1), B => B_EXP(1), CI
                           => add_1_root_add_131_2_carry_1_port, CO => 
                           add_1_root_add_131_2_carry_2_port, S => EXP_in(1));
   add_1_root_add_131_2_U1_2 : FA_X1 port map( A => A_EXP(2), B => B_EXP(2), CI
                           => add_1_root_add_131_2_carry_2_port, CO => 
                           add_1_root_add_131_2_carry_3_port, S => EXP_in(2));
   add_1_root_add_131_2_U1_3 : FA_X1 port map( A => A_EXP(3), B => B_EXP(3), CI
                           => add_1_root_add_131_2_carry_3_port, CO => 
                           add_1_root_add_131_2_carry_4_port, S => EXP_in(3));
   add_1_root_add_131_2_U1_4 : FA_X1 port map( A => A_EXP(4), B => B_EXP(4), CI
                           => add_1_root_add_131_2_carry_4_port, CO => 
                           add_1_root_add_131_2_carry_5_port, S => EXP_in(4));
   add_1_root_add_131_2_U1_5 : FA_X1 port map( A => A_EXP(5), B => B_EXP(5), CI
                           => add_1_root_add_131_2_carry_5_port, CO => 
                           add_1_root_add_131_2_carry_6_port, S => EXP_in(5));
   add_1_root_add_131_2_U1_6 : FA_X1 port map( A => add_1_root_add_131_2_n6, B 
                           => add_1_root_add_131_2_n5, CI => 
                           add_1_root_add_131_2_n4, CO => 
                           add_1_root_add_131_2_carry_7_port, S => EXP_in(6));
   add_1_root_add_131_2_U1_7 : FA_X1 port map( A => n15, B => n14, CI => 
                           add_1_root_add_131_2_carry_7_port, CO => n_1944, S 
                           => mw_I4sum_7_port);
   n111 <= '0';
   n110 <= '0';
   n109 <= '0';
   n108 <= '0';
   n107 <= '0';
   n106 <= '0';
   n105 <= '0';
   n104 <= '0';
   n103 <= '0';
   n102 <= '0';
   n101 <= '0';
   n100 <= '0';
   n99 <= '0';
   n98 <= '0';
   n97 <= '0';
   n96 <= '0';
   MBE_SIG : MBE port map( A(31) => n96, A(30) => n97, A(29) => n98, A(28) => 
                           n99, A(27) => n100, A(26) => n101, A(25) => n102, 
                           A(24) => n103, A(23) => A_SIG(23), A(22) => 
                           A_SIG(22), A(21) => A_SIG(21), A(20) => A_SIG(20), 
                           A(19) => A_SIG(19), A(18) => A_SIG(18), A(17) => 
                           A_SIG(17), A(16) => A_SIG(16), A(15) => A_SIG(15), 
                           A(14) => A_SIG(14), A(13) => A_SIG(13), A(12) => 
                           A_SIG(12), A(11) => A_SIG(11), A(10) => A_SIG(10), 
                           A(9) => A_SIG(9), A(8) => A_SIG(8), A(7) => A_SIG(7)
                           , A(6) => A_SIG(6), A(5) => A_SIG(5), A(4) => 
                           A_SIG(4), A(3) => A_SIG(3), A(2) => A_SIG(2), A(1) 
                           => A_SIG(1), A(0) => A_SIG(0), B(31) => n104, B(30) 
                           => n105, B(29) => n106, B(28) => n107, B(27) => n108
                           , B(26) => n109, B(25) => n110, B(24) => n111, B(23)
                           => B_SIG(23), B(22) => B_SIG(22), B(21) => B_SIG(21)
                           , B(20) => B_SIG(20), B(19) => B_SIG(19), B(18) => 
                           B_SIG(18), B(17) => B_SIG(17), B(16) => B_SIG(16), 
                           B(15) => B_SIG(15), B(14) => B_SIG(14), B(13) => 
                           B_SIG(13), B(12) => B_SIG(12), B(11) => B_SIG(11), 
                           B(10) => B_SIG(10), B(9) => B_SIG(9), B(8) => 
                           B_SIG(8), B(7) => B_SIG(7), B(6) => B_SIG(6), B(5) 
                           => B_SIG(5), B(4) => B_SIG(4), B(3) => B_SIG(3), 
                           B(2) => B_SIG(2), B(1) => B_SIG(1), B(0) => B_SIG(0)
                           , C(63) => n_1945, C(62) => n_1946, C(61) => n_1947,
                           C(60) => n_1948, C(59) => n_1949, C(58) => n_1950, 
                           C(57) => n_1951, C(56) => n_1952, C(55) => n_1953, 
                           C(54) => n_1954, C(53) => n_1955, C(52) => n_1956, 
                           C(51) => n_1957, C(50) => n_1958, C(49) => n_1959, 
                           C(48) => n_1960, C(47) => SIG_in(27), C(46) => 
                           SIG_in(26), C(45) => SIG_in(25), C(44) => SIG_in(24)
                           , C(43) => SIG_in(23), C(42) => SIG_in(22), C(41) =>
                           SIG_in(21), C(40) => SIG_in(20), C(39) => SIG_in(19)
                           , C(38) => SIG_in(18), C(37) => SIG_in(17), C(36) =>
                           SIG_in(16), C(35) => SIG_in(15), C(34) => SIG_in(14)
                           , C(33) => SIG_in(13), C(32) => SIG_in(12), C(31) =>
                           SIG_in(11), C(30) => SIG_in(10), C(29) => SIG_in(9),
                           C(28) => SIG_in(8), C(27) => SIG_in(7), C(26) => 
                           SIG_in(6), C(25) => SIG_in(5), C(24) => SIG_in(4), 
                           C(23) => SIG_in(3), C(22) => SIG_in(2), C(21) => 
                           n_1961, C(20) => n_1962, C(19) => n_1963, C(18) => 
                           n_1964, C(17) => n_1965, C(16) => n_1966, C(15) => 
                           n_1967, C(14) => n_1968, C(13) => n_1969, C(12) => 
                           n_1970, C(11) => n_1971, C(10) => n_1972, C(9) => 
                           n_1973, C(8) => n_1974, C(7) => n_1975, C(6) => 
                           n_1976, C(5) => n_1977, C(4) => n_1978, C(3) => 
                           n_1979, C(2) => n_1980, C(1) => n_1981, C(0) => 
                           n_1982, clk => clk);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FPmul_stage1 is

   port( FP_A, FP_B : in std_logic_vector (31 downto 0);  clk : in std_logic;  
         A_EXP : out std_logic_vector (7 downto 0);  A_SIG : out 
         std_logic_vector (31 downto 0);  B_EXP : out std_logic_vector (7 
         downto 0);  B_SIG : out std_logic_vector (31 downto 0);  
         SIGN_out_stage1, isINF_stage1, isNaN_stage1, isZ_tab_stage1 : out 
         std_logic);

end FPmul_stage1;

architecture SYN_struct of FPmul_stage1 is

   component UnpackFP_1
      port( FP : in std_logic_vector (31 downto 0);  SIG : out std_logic_vector
            (31 downto 0);  EXP : out std_logic_vector (7 downto 0);  SIGN, 
            isNaN, isINF, isZ, isDN : out std_logic);
   end component;
   
   component UnpackFP_0
      port( FP : in std_logic_vector (31 downto 0);  SIG : out std_logic_vector
            (31 downto 0);  EXP : out std_logic_vector (7 downto 0);  SIGN, 
            isNaN, isINF, isZ, isDN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal B_SIG_22_port, B_SIG_21_port, B_SIG_20_port, B_SIG_19_port, 
      B_SIG_18_port, B_SIG_16_port, B_SIG_14_port, B_SIG_12_port, B_SIG_10_port
      , B_SIG_8_port, B_SIG_6_port, B_SIG_4_port, B_SIG_2_port, B_SIG_0_port, 
      B_SIG_int_17_port, B_SIG_int_15_port, B_SIG_int_9_port, B_SIG_int_7_port,
      B_SIG_int_3_port, A_isINF, A_isNaN, A_isZ, B_isINF, B_isNaN, B_isZ, 
      A_SIGN, B_SIGN, B_SIG_23_port, B_SIG_13_port, B_SIG_5_port, B_SIG_11_port
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n_1991, 
      n_1992, n_1993, n_1994, n_1995, n_1996, n_1997, n_1998, n_1999, n_2000, 
      n_2001, n_2002, n_2003, n_2004, n_2005, n_2006, n_2007, n_2008, n_2009, 
      n_2010, n_2011, n_2012, n_2013, n_2014, n_2015, n_2016, n_2017 : 
      std_logic;

begin
   B_SIG <= ( n_1991, n_1992, n_1993, n_1994, n_1995, n_1996, n_1997, n_1998, 
      B_SIG_23_port, B_SIG_22_port, B_SIG_21_port, B_SIG_20_port, B_SIG_19_port
      , B_SIG_18_port, B_SIG_int_17_port, B_SIG_16_port, B_SIG_int_15_port, 
      B_SIG_14_port, B_SIG_13_port, B_SIG_12_port, B_SIG_11_port, B_SIG_10_port
      , B_SIG_int_9_port, B_SIG_8_port, B_SIG_int_7_port, B_SIG_6_port, 
      B_SIG_5_port, B_SIG_4_port, B_SIG_int_3_port, B_SIG_2_port, FP_B(1), 
      B_SIG_0_port );
   
   U25 : INV_X1 port map( A => B_isZ, ZN => n19);
   U26 : INV_X1 port map( A => A_isZ, ZN => n21);
   U27 : OR2_X1 port map( A1 => B_isNaN, A2 => A_isNaN, ZN => n20);
   U28 : INV_X1 port map( A => n20, ZN => n17);
   U29 : INV_X1 port map( A => A_isINF, ZN => n24);
   U30 : NAND2_X1 port map( A1 => n17, A2 => n24, ZN => n18);
   U31 : AOI211_X1 port map( C1 => n19, C2 => n21, A => n18, B => B_isINF, ZN 
                           => isZ_tab_stage1);
   U32 : NAND2_X1 port map( A1 => B_isZ, A2 => A_isINF, ZN => n25);
   U33 : NAND2_X1 port map( A1 => n20, A2 => n24, ZN => n22);
   U34 : MUX2_X1 port map( A => n22, B => n21, S => B_isINF, Z => n23);
   U35 : NAND2_X1 port map( A1 => n25, A2 => n23, ZN => isNaN_stage1);
   U36 : NOR2_X1 port map( A1 => B_isZ, A2 => n24, ZN => n28);
   U37 : INV_X1 port map( A => n25, ZN => n26);
   U38 : NOR2_X1 port map( A1 => A_isZ, A2 => n26, ZN => n27);
   U39 : MUX2_X1 port map( A => n28, B => n27, S => B_isINF, Z => isINF_stage1)
                           ;
   U40 : XOR2_X1 port map( A => B_SIGN, B => A_SIGN, Z => SIGN_out_stage1);
   I0 : UnpackFP_0 port map( FP(31) => FP_A(31), FP(30) => FP_A(30), FP(29) => 
                           FP_A(29), FP(28) => FP_A(28), FP(27) => FP_A(27), 
                           FP(26) => FP_A(26), FP(25) => FP_A(25), FP(24) => 
                           FP_A(24), FP(23) => FP_A(23), FP(22) => FP_A(22), 
                           FP(21) => FP_A(21), FP(20) => FP_A(20), FP(19) => 
                           FP_A(19), FP(18) => FP_A(18), FP(17) => FP_A(17), 
                           FP(16) => FP_A(16), FP(15) => FP_A(15), FP(14) => 
                           FP_A(14), FP(13) => FP_A(13), FP(12) => FP_A(12), 
                           FP(11) => FP_A(11), FP(10) => FP_A(10), FP(9) => 
                           FP_A(9), FP(8) => FP_A(8), FP(7) => FP_A(7), FP(6) 
                           => FP_A(6), FP(5) => FP_A(5), FP(4) => FP_A(4), 
                           FP(3) => FP_A(3), FP(2) => FP_A(2), FP(1) => FP_A(1)
                           , FP(0) => FP_A(0), SIG(31) => n_1999, SIG(30) => 
                           n_2000, SIG(29) => n_2001, SIG(28) => n_2002, 
                           SIG(27) => n_2003, SIG(26) => n_2004, SIG(25) => 
                           n_2005, SIG(24) => n_2006, SIG(23) => A_SIG(23), 
                           SIG(22) => A_SIG(22), SIG(21) => A_SIG(21), SIG(20) 
                           => A_SIG(20), SIG(19) => A_SIG(19), SIG(18) => 
                           A_SIG(18), SIG(17) => A_SIG(17), SIG(16) => 
                           A_SIG(16), SIG(15) => A_SIG(15), SIG(14) => 
                           A_SIG(14), SIG(13) => A_SIG(13), SIG(12) => 
                           A_SIG(12), SIG(11) => A_SIG(11), SIG(10) => 
                           A_SIG(10), SIG(9) => A_SIG(9), SIG(8) => A_SIG(8), 
                           SIG(7) => A_SIG(7), SIG(6) => A_SIG(6), SIG(5) => 
                           A_SIG(5), SIG(4) => A_SIG(4), SIG(3) => A_SIG(3), 
                           SIG(2) => A_SIG(2), SIG(1) => A_SIG(1), SIG(0) => 
                           A_SIG(0), EXP(7) => A_EXP(7), EXP(6) => A_EXP(6), 
                           EXP(5) => A_EXP(5), EXP(4) => A_EXP(4), EXP(3) => 
                           A_EXP(3), EXP(2) => A_EXP(2), EXP(1) => A_EXP(1), 
                           EXP(0) => A_EXP(0), SIGN => A_SIGN, isNaN => A_isNaN
                           , isINF => A_isINF, isZ => A_isZ, isDN => n_2007);
   I1 : UnpackFP_1 port map( FP(31) => FP_B(31), FP(30) => FP_B(30), FP(29) => 
                           FP_B(29), FP(28) => FP_B(28), FP(27) => FP_B(27), 
                           FP(26) => FP_B(26), FP(25) => FP_B(25), FP(24) => 
                           FP_B(24), FP(23) => FP_B(23), FP(22) => FP_B(22), 
                           FP(21) => FP_B(21), FP(20) => FP_B(20), FP(19) => 
                           FP_B(19), FP(18) => FP_B(18), FP(17) => FP_B(17), 
                           FP(16) => FP_B(16), FP(15) => FP_B(15), FP(14) => 
                           FP_B(14), FP(13) => FP_B(13), FP(12) => FP_B(12), 
                           FP(11) => FP_B(11), FP(10) => FP_B(10), FP(9) => 
                           FP_B(9), FP(8) => FP_B(8), FP(7) => FP_B(7), FP(6) 
                           => FP_B(6), FP(5) => FP_B(5), FP(4) => FP_B(4), 
                           FP(3) => FP_B(3), FP(2) => FP_B(2), FP(1) => FP_B(1)
                           , FP(0) => FP_B(0), SIG(31) => n_2008, SIG(30) => 
                           n_2009, SIG(29) => n_2010, SIG(28) => n_2011, 
                           SIG(27) => n_2012, SIG(26) => n_2013, SIG(25) => 
                           n_2014, SIG(24) => n_2015, SIG(23) => B_SIG_23_port,
                           SIG(22) => B_SIG_22_port, SIG(21) => B_SIG_21_port, 
                           SIG(20) => B_SIG_20_port, SIG(19) => B_SIG_19_port, 
                           SIG(18) => B_SIG_18_port, SIG(17) => 
                           B_SIG_int_17_port, SIG(16) => B_SIG_16_port, SIG(15)
                           => B_SIG_int_15_port, SIG(14) => B_SIG_14_port, 
                           SIG(13) => B_SIG_13_port, SIG(12) => B_SIG_12_port, 
                           SIG(11) => B_SIG_11_port, SIG(10) => B_SIG_10_port, 
                           SIG(9) => B_SIG_int_9_port, SIG(8) => B_SIG_8_port, 
                           SIG(7) => B_SIG_int_7_port, SIG(6) => B_SIG_6_port, 
                           SIG(5) => B_SIG_5_port, SIG(4) => B_SIG_4_port, 
                           SIG(3) => B_SIG_int_3_port, SIG(2) => B_SIG_2_port, 
                           SIG(1) => n_2016, SIG(0) => B_SIG_0_port, EXP(7) => 
                           B_EXP(7), EXP(6) => B_EXP(6), EXP(5) => B_EXP(5), 
                           EXP(4) => B_EXP(4), EXP(3) => B_EXP(3), EXP(2) => 
                           B_EXP(2), EXP(1) => B_EXP(1), EXP(0) => B_EXP(0), 
                           SIGN => B_SIGN, isNaN => B_isNaN, isINF => B_isINF, 
                           isZ => B_isZ, isDN => n_2017);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FPmul.all;

entity FPmul is

   port( FP_A, FP_B : in std_logic_vector (31 downto 0);  clk : in std_logic;  
         FP_Z : out std_logic_vector (31 downto 0));

end FPmul;

architecture SYN_pipeline of FPmul is

   component FPmul_stage4
      port( EXP_neg : in std_logic;  EXP_out_round : in std_logic_vector (7 
            downto 0);  EXP_pos, SIGN_out : in std_logic;  SIG_out_round : in 
            std_logic_vector (27 downto 0);  clk, isINF_tab, isNaN, isZ_tab : 
            in std_logic;  FP_Z : out std_logic_vector (31 downto 0));
   end component;
   
   component FPmul_stage3
      port( EXP_in : in std_logic_vector (7 downto 0);  EXP_neg_stage2, 
            EXP_pos_stage2, SIGN_out_stage2 : in std_logic;  SIG_in : in 
            std_logic_vector (27 downto 0);  clk, isINF_stage2, isNaN_stage2, 
            isZ_tab_stage2 : in std_logic;  EXP_neg : out std_logic;  
            EXP_out_round : out std_logic_vector (7 downto 0);  EXP_pos, 
            SIGN_out : out std_logic;  SIG_out_round : out std_logic_vector (27
            downto 0);  isINF_tab, isNaN, isZ_tab : out std_logic);
   end component;
   
   component FPmul_stage2
      port( A_EXP : in std_logic_vector (7 downto 0);  A_SIG : in 
            std_logic_vector (31 downto 0);  B_EXP : in std_logic_vector (7 
            downto 0);  B_SIG : in std_logic_vector (31 downto 0);  
            SIGN_out_stage1, clk, isINF_stage1, isNaN_stage1, isZ_tab_stage1 : 
            in std_logic;  EXP_in : out std_logic_vector (7 downto 0);  
            EXP_neg_stage2, EXP_pos_stage2, SIGN_out_stage2 : out std_logic;  
            SIG_in : out std_logic_vector (27 downto 0);  isINF_stage2, 
            isNaN_stage2, isZ_tab_stage2 : out std_logic);
   end component;
   
   component FPmul_stage1
      port( FP_A, FP_B : in std_logic_vector (31 downto 0);  clk : in std_logic
            ;  A_EXP : out std_logic_vector (7 downto 0);  A_SIG : out 
            std_logic_vector (31 downto 0);  B_EXP : out std_logic_vector (7 
            downto 0);  B_SIG : out std_logic_vector (31 downto 0);  
            SIGN_out_stage1, isINF_stage1, isNaN_stage1, isZ_tab_stage1 : out 
            std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n10, A_EXP_7_port, A_EXP_6_port, A_EXP_5_port, A_EXP_4_port, 
      A_EXP_3_port, A_EXP_2_port, A_EXP_1_port, A_EXP_0_port, A_SIG_23_port, 
      A_SIG_22_port, A_SIG_21_port, A_SIG_20_port, A_SIG_19_port, A_SIG_18_port
      , A_SIG_17_port, A_SIG_16_port, A_SIG_15_port, A_SIG_14_port, 
      A_SIG_13_port, A_SIG_12_port, A_SIG_11_port, A_SIG_10_port, A_SIG_9_port,
      A_SIG_8_port, A_SIG_7_port, A_SIG_6_port, A_SIG_5_port, A_SIG_4_port, 
      A_SIG_3_port, A_SIG_2_port, A_SIG_1_port, A_SIG_0_port, B_EXP_7_port, 
      B_EXP_6_port, B_EXP_5_port, B_EXP_4_port, B_EXP_3_port, B_EXP_2_port, 
      B_EXP_1_port, B_EXP_0_port, B_SIG_23_port, B_SIG_22_port, B_SIG_21_port, 
      B_SIG_20_port, B_SIG_19_port, B_SIG_18_port, B_SIG_17_port, B_SIG_16_port
      , B_SIG_15_port, B_SIG_14_port, B_SIG_13_port, B_SIG_12_port, 
      B_SIG_11_port, B_SIG_10_port, B_SIG_9_port, B_SIG_8_port, B_SIG_7_port, 
      B_SIG_6_port, B_SIG_5_port, B_SIG_4_port, B_SIG_3_port, B_SIG_2_port, 
      B_SIG_1_port, B_SIG_0_port, SIGN_out_stage1, isINF_stage1, isNaN_stage1, 
      isZ_tab_stage1, EXP_in_7_port, EXP_in_6_port, EXP_in_5_port, 
      EXP_in_4_port, EXP_in_3_port, EXP_in_2_port, EXP_in_1_port, EXP_in_0_port
      , EXP_neg_stage2, EXP_pos_stage2, SIGN_out_stage2, SIG_in_27_port, 
      SIG_in_26_port, SIG_in_25_port, SIG_in_24_port, SIG_in_23_port, 
      SIG_in_22_port, SIG_in_21_port, SIG_in_20_port, SIG_in_19_port, 
      SIG_in_18_port, SIG_in_17_port, SIG_in_16_port, SIG_in_15_port, 
      SIG_in_14_port, SIG_in_13_port, SIG_in_12_port, SIG_in_11_port, 
      SIG_in_10_port, SIG_in_9_port, SIG_in_8_port, SIG_in_7_port, 
      SIG_in_6_port, SIG_in_5_port, SIG_in_4_port, SIG_in_3_port, SIG_in_2_port
      , isINF_stage2, isNaN_stage2, isZ_tab_stage2, EXP_neg, 
      EXP_out_round_7_port, EXP_out_round_6_port, EXP_out_round_5_port, 
      EXP_out_round_4_port, EXP_out_round_3_port, EXP_out_round_2_port, 
      EXP_out_round_1_port, EXP_out_round_0_port, EXP_pos, SIGN_out, 
      SIG_out_round_27_port, SIG_out_round_26_port, SIG_out_round_25_port, 
      SIG_out_round_24_port, SIG_out_round_23_port, SIG_out_round_22_port, 
      SIG_out_round_21_port, SIG_out_round_20_port, SIG_out_round_19_port, 
      SIG_out_round_18_port, SIG_out_round_17_port, SIG_out_round_16_port, 
      SIG_out_round_15_port, SIG_out_round_14_port, SIG_out_round_13_port, 
      SIG_out_round_12_port, SIG_out_round_11_port, SIG_out_round_10_port, 
      SIG_out_round_9_port, SIG_out_round_8_port, SIG_out_round_7_port, 
      SIG_out_round_6_port, SIG_out_round_5_port, SIG_out_round_4_port, 
      SIG_out_round_3_port, isINF_tab, isNaN, isZ_tab, n1, n5, n6, n7, n8, n9, 
      n_2018, n_2019, n_2020, n_2021, n_2022, n_2023, n_2024, n_2025, n_2026, 
      n_2027, n_2028, n_2029, n_2030, n_2031, n_2032, n_2033, n_2034, n_2035, 
      n_2036, n_2037, n_2038, n_2039, n_2040 : std_logic;

begin
   
   n1 <= '0';
   MY_CLK_r_REG2_S3 : DFF_X1 port map( D => n10, CK => clk, Q => n5, QN => 
                           n_2018);
   MY_CLK_r_REG3_S4 : DFF_X1 port map( D => n5, CK => clk, Q => FP_Z(31), QN =>
                           n_2019);
   n6 <= '0';
   n7 <= '0';
   n8 <= '0';
   n9 <= '0';
   I1 : FPmul_stage1 port map( FP_A(31) => FP_A(31), FP_A(30) => FP_A(30), 
                           FP_A(29) => FP_A(29), FP_A(28) => FP_A(28), FP_A(27)
                           => FP_A(27), FP_A(26) => FP_A(26), FP_A(25) => 
                           FP_A(25), FP_A(24) => FP_A(24), FP_A(23) => FP_A(23)
                           , FP_A(22) => FP_A(22), FP_A(21) => FP_A(21), 
                           FP_A(20) => FP_A(20), FP_A(19) => FP_A(19), FP_A(18)
                           => FP_A(18), FP_A(17) => FP_A(17), FP_A(16) => 
                           FP_A(16), FP_A(15) => FP_A(15), FP_A(14) => FP_A(14)
                           , FP_A(13) => FP_A(13), FP_A(12) => FP_A(12), 
                           FP_A(11) => FP_A(11), FP_A(10) => FP_A(10), FP_A(9) 
                           => FP_A(9), FP_A(8) => FP_A(8), FP_A(7) => FP_A(7), 
                           FP_A(6) => FP_A(6), FP_A(5) => FP_A(5), FP_A(4) => 
                           FP_A(4), FP_A(3) => FP_A(3), FP_A(2) => FP_A(2), 
                           FP_A(1) => FP_A(1), FP_A(0) => FP_A(0), FP_B(31) => 
                           FP_B(31), FP_B(30) => FP_B(30), FP_B(29) => FP_B(29)
                           , FP_B(28) => FP_B(28), FP_B(27) => FP_B(27), 
                           FP_B(26) => FP_B(26), FP_B(25) => FP_B(25), FP_B(24)
                           => FP_B(24), FP_B(23) => FP_B(23), FP_B(22) => 
                           FP_B(22), FP_B(21) => FP_B(21), FP_B(20) => FP_B(20)
                           , FP_B(19) => FP_B(19), FP_B(18) => FP_B(18), 
                           FP_B(17) => FP_B(17), FP_B(16) => FP_B(16), FP_B(15)
                           => FP_B(15), FP_B(14) => FP_B(14), FP_B(13) => 
                           FP_B(13), FP_B(12) => FP_B(12), FP_B(11) => FP_B(11)
                           , FP_B(10) => FP_B(10), FP_B(9) => FP_B(9), FP_B(8) 
                           => FP_B(8), FP_B(7) => FP_B(7), FP_B(6) => FP_B(6), 
                           FP_B(5) => FP_B(5), FP_B(4) => FP_B(4), FP_B(3) => 
                           FP_B(3), FP_B(2) => FP_B(2), FP_B(1) => FP_B(1), 
                           FP_B(0) => FP_B(0), clk => clk, A_EXP(7) => 
                           A_EXP_7_port, A_EXP(6) => A_EXP_6_port, A_EXP(5) => 
                           A_EXP_5_port, A_EXP(4) => A_EXP_4_port, A_EXP(3) => 
                           A_EXP_3_port, A_EXP(2) => A_EXP_2_port, A_EXP(1) => 
                           A_EXP_1_port, A_EXP(0) => A_EXP_0_port, A_SIG(31) =>
                           n_2020, A_SIG(30) => n_2021, A_SIG(29) => n_2022, 
                           A_SIG(28) => n_2023, A_SIG(27) => n_2024, A_SIG(26) 
                           => n_2025, A_SIG(25) => n_2026, A_SIG(24) => n_2027,
                           A_SIG(23) => A_SIG_23_port, A_SIG(22) => 
                           A_SIG_22_port, A_SIG(21) => A_SIG_21_port, A_SIG(20)
                           => A_SIG_20_port, A_SIG(19) => A_SIG_19_port, 
                           A_SIG(18) => A_SIG_18_port, A_SIG(17) => 
                           A_SIG_17_port, A_SIG(16) => A_SIG_16_port, A_SIG(15)
                           => A_SIG_15_port, A_SIG(14) => A_SIG_14_port, 
                           A_SIG(13) => A_SIG_13_port, A_SIG(12) => 
                           A_SIG_12_port, A_SIG(11) => A_SIG_11_port, A_SIG(10)
                           => A_SIG_10_port, A_SIG(9) => A_SIG_9_port, A_SIG(8)
                           => A_SIG_8_port, A_SIG(7) => A_SIG_7_port, A_SIG(6) 
                           => A_SIG_6_port, A_SIG(5) => A_SIG_5_port, A_SIG(4) 
                           => A_SIG_4_port, A_SIG(3) => A_SIG_3_port, A_SIG(2) 
                           => A_SIG_2_port, A_SIG(1) => A_SIG_1_port, A_SIG(0) 
                           => A_SIG_0_port, B_EXP(7) => B_EXP_7_port, B_EXP(6) 
                           => B_EXP_6_port, B_EXP(5) => B_EXP_5_port, B_EXP(4) 
                           => B_EXP_4_port, B_EXP(3) => B_EXP_3_port, B_EXP(2) 
                           => B_EXP_2_port, B_EXP(1) => B_EXP_1_port, B_EXP(0) 
                           => B_EXP_0_port, B_SIG(31) => n_2028, B_SIG(30) => 
                           n_2029, B_SIG(29) => n_2030, B_SIG(28) => n_2031, 
                           B_SIG(27) => n_2032, B_SIG(26) => n_2033, B_SIG(25) 
                           => n_2034, B_SIG(24) => n_2035, B_SIG(23) => 
                           B_SIG_23_port, B_SIG(22) => B_SIG_22_port, B_SIG(21)
                           => B_SIG_21_port, B_SIG(20) => B_SIG_20_port, 
                           B_SIG(19) => B_SIG_19_port, B_SIG(18) => 
                           B_SIG_18_port, B_SIG(17) => B_SIG_17_port, B_SIG(16)
                           => B_SIG_16_port, B_SIG(15) => B_SIG_15_port, 
                           B_SIG(14) => B_SIG_14_port, B_SIG(13) => 
                           B_SIG_13_port, B_SIG(12) => B_SIG_12_port, B_SIG(11)
                           => B_SIG_11_port, B_SIG(10) => B_SIG_10_port, 
                           B_SIG(9) => B_SIG_9_port, B_SIG(8) => B_SIG_8_port, 
                           B_SIG(7) => B_SIG_7_port, B_SIG(6) => B_SIG_6_port, 
                           B_SIG(5) => B_SIG_5_port, B_SIG(4) => B_SIG_4_port, 
                           B_SIG(3) => B_SIG_3_port, B_SIG(2) => B_SIG_2_port, 
                           B_SIG(1) => B_SIG_1_port, B_SIG(0) => B_SIG_0_port, 
                           SIGN_out_stage1 => SIGN_out_stage1, isINF_stage1 => 
                           isINF_stage1, isNaN_stage1 => isNaN_stage1, 
                           isZ_tab_stage1 => isZ_tab_stage1);
   I2 : FPmul_stage2 port map( A_EXP(7) => A_EXP_7_port, A_EXP(6) => 
                           A_EXP_6_port, A_EXP(5) => A_EXP_5_port, A_EXP(4) => 
                           A_EXP_4_port, A_EXP(3) => A_EXP_3_port, A_EXP(2) => 
                           A_EXP_2_port, A_EXP(1) => A_EXP_1_port, A_EXP(0) => 
                           A_EXP_0_port, A_SIG(31) => n1, A_SIG(30) => n1, 
                           A_SIG(29) => n1, A_SIG(28) => n1, A_SIG(27) => n1, 
                           A_SIG(26) => n1, A_SIG(25) => n1, A_SIG(24) => n1, 
                           A_SIG(23) => A_SIG_23_port, A_SIG(22) => 
                           A_SIG_22_port, A_SIG(21) => A_SIG_21_port, A_SIG(20)
                           => A_SIG_20_port, A_SIG(19) => A_SIG_19_port, 
                           A_SIG(18) => A_SIG_18_port, A_SIG(17) => 
                           A_SIG_17_port, A_SIG(16) => A_SIG_16_port, A_SIG(15)
                           => A_SIG_15_port, A_SIG(14) => A_SIG_14_port, 
                           A_SIG(13) => A_SIG_13_port, A_SIG(12) => 
                           A_SIG_12_port, A_SIG(11) => A_SIG_11_port, A_SIG(10)
                           => A_SIG_10_port, A_SIG(9) => A_SIG_9_port, A_SIG(8)
                           => A_SIG_8_port, A_SIG(7) => A_SIG_7_port, A_SIG(6) 
                           => A_SIG_6_port, A_SIG(5) => A_SIG_5_port, A_SIG(4) 
                           => A_SIG_4_port, A_SIG(3) => A_SIG_3_port, A_SIG(2) 
                           => A_SIG_2_port, A_SIG(1) => A_SIG_1_port, A_SIG(0) 
                           => A_SIG_0_port, B_EXP(7) => B_EXP_7_port, B_EXP(6) 
                           => B_EXP_6_port, B_EXP(5) => B_EXP_5_port, B_EXP(4) 
                           => B_EXP_4_port, B_EXP(3) => B_EXP_3_port, B_EXP(2) 
                           => B_EXP_2_port, B_EXP(1) => B_EXP_1_port, B_EXP(0) 
                           => B_EXP_0_port, B_SIG(31) => n1, B_SIG(30) => n1, 
                           B_SIG(29) => n1, B_SIG(28) => n1, B_SIG(27) => n1, 
                           B_SIG(26) => n1, B_SIG(25) => n1, B_SIG(24) => n1, 
                           B_SIG(23) => B_SIG_23_port, B_SIG(22) => 
                           B_SIG_22_port, B_SIG(21) => B_SIG_21_port, B_SIG(20)
                           => B_SIG_20_port, B_SIG(19) => B_SIG_19_port, 
                           B_SIG(18) => B_SIG_18_port, B_SIG(17) => 
                           B_SIG_17_port, B_SIG(16) => B_SIG_16_port, B_SIG(15)
                           => B_SIG_15_port, B_SIG(14) => B_SIG_14_port, 
                           B_SIG(13) => B_SIG_13_port, B_SIG(12) => 
                           B_SIG_12_port, B_SIG(11) => B_SIG_11_port, B_SIG(10)
                           => B_SIG_10_port, B_SIG(9) => B_SIG_9_port, B_SIG(8)
                           => B_SIG_8_port, B_SIG(7) => B_SIG_7_port, B_SIG(6) 
                           => B_SIG_6_port, B_SIG(5) => B_SIG_5_port, B_SIG(4) 
                           => B_SIG_4_port, B_SIG(3) => B_SIG_3_port, B_SIG(2) 
                           => B_SIG_2_port, B_SIG(1) => B_SIG_1_port, B_SIG(0) 
                           => B_SIG_0_port, SIGN_out_stage1 => SIGN_out_stage1,
                           clk => clk, isINF_stage1 => isINF_stage1, 
                           isNaN_stage1 => isNaN_stage1, isZ_tab_stage1 => 
                           isZ_tab_stage1, EXP_in(7) => EXP_in_7_port, 
                           EXP_in(6) => EXP_in_6_port, EXP_in(5) => 
                           EXP_in_5_port, EXP_in(4) => EXP_in_4_port, EXP_in(3)
                           => EXP_in_3_port, EXP_in(2) => EXP_in_2_port, 
                           EXP_in(1) => EXP_in_1_port, EXP_in(0) => 
                           EXP_in_0_port, EXP_neg_stage2 => EXP_neg_stage2, 
                           EXP_pos_stage2 => EXP_pos_stage2, SIGN_out_stage2 =>
                           SIGN_out_stage2, SIG_in(27) => SIG_in_27_port, 
                           SIG_in(26) => SIG_in_26_port, SIG_in(25) => 
                           SIG_in_25_port, SIG_in(24) => SIG_in_24_port, 
                           SIG_in(23) => SIG_in_23_port, SIG_in(22) => 
                           SIG_in_22_port, SIG_in(21) => SIG_in_21_port, 
                           SIG_in(20) => SIG_in_20_port, SIG_in(19) => 
                           SIG_in_19_port, SIG_in(18) => SIG_in_18_port, 
                           SIG_in(17) => SIG_in_17_port, SIG_in(16) => 
                           SIG_in_16_port, SIG_in(15) => SIG_in_15_port, 
                           SIG_in(14) => SIG_in_14_port, SIG_in(13) => 
                           SIG_in_13_port, SIG_in(12) => SIG_in_12_port, 
                           SIG_in(11) => SIG_in_11_port, SIG_in(10) => 
                           SIG_in_10_port, SIG_in(9) => SIG_in_9_port, 
                           SIG_in(8) => SIG_in_8_port, SIG_in(7) => 
                           SIG_in_7_port, SIG_in(6) => SIG_in_6_port, SIG_in(5)
                           => SIG_in_5_port, SIG_in(4) => SIG_in_4_port, 
                           SIG_in(3) => SIG_in_3_port, SIG_in(2) => 
                           SIG_in_2_port, SIG_in(1) => n_2036, SIG_in(0) => 
                           n_2037, isINF_stage2 => isINF_stage2, isNaN_stage2 
                           => isNaN_stage2, isZ_tab_stage2 => isZ_tab_stage2);
   I3 : FPmul_stage3 port map( EXP_in(7) => EXP_in_7_port, EXP_in(6) => 
                           EXP_in_6_port, EXP_in(5) => EXP_in_5_port, EXP_in(4)
                           => EXP_in_4_port, EXP_in(3) => EXP_in_3_port, 
                           EXP_in(2) => EXP_in_2_port, EXP_in(1) => 
                           EXP_in_1_port, EXP_in(0) => EXP_in_0_port, 
                           EXP_neg_stage2 => EXP_neg_stage2, EXP_pos_stage2 => 
                           EXP_pos_stage2, SIGN_out_stage2 => SIGN_out_stage2, 
                           SIG_in(27) => SIG_in_27_port, SIG_in(26) => 
                           SIG_in_26_port, SIG_in(25) => SIG_in_25_port, 
                           SIG_in(24) => SIG_in_24_port, SIG_in(23) => 
                           SIG_in_23_port, SIG_in(22) => SIG_in_22_port, 
                           SIG_in(21) => SIG_in_21_port, SIG_in(20) => 
                           SIG_in_20_port, SIG_in(19) => SIG_in_19_port, 
                           SIG_in(18) => SIG_in_18_port, SIG_in(17) => 
                           SIG_in_17_port, SIG_in(16) => SIG_in_16_port, 
                           SIG_in(15) => SIG_in_15_port, SIG_in(14) => 
                           SIG_in_14_port, SIG_in(13) => SIG_in_13_port, 
                           SIG_in(12) => SIG_in_12_port, SIG_in(11) => 
                           SIG_in_11_port, SIG_in(10) => SIG_in_10_port, 
                           SIG_in(9) => SIG_in_9_port, SIG_in(8) => 
                           SIG_in_8_port, SIG_in(7) => SIG_in_7_port, SIG_in(6)
                           => SIG_in_6_port, SIG_in(5) => SIG_in_5_port, 
                           SIG_in(4) => SIG_in_4_port, SIG_in(3) => 
                           SIG_in_3_port, SIG_in(2) => SIG_in_2_port, SIG_in(1)
                           => n6, SIG_in(0) => n7, clk => clk, isINF_stage2 => 
                           isINF_stage2, isNaN_stage2 => isNaN_stage2, 
                           isZ_tab_stage2 => isZ_tab_stage2, EXP_neg => EXP_neg
                           , EXP_out_round(7) => EXP_out_round_7_port, 
                           EXP_out_round(6) => EXP_out_round_6_port, 
                           EXP_out_round(5) => EXP_out_round_5_port, 
                           EXP_out_round(4) => EXP_out_round_4_port, 
                           EXP_out_round(3) => EXP_out_round_3_port, 
                           EXP_out_round(2) => EXP_out_round_2_port, 
                           EXP_out_round(1) => EXP_out_round_1_port, 
                           EXP_out_round(0) => EXP_out_round_0_port, EXP_pos =>
                           EXP_pos, SIGN_out => SIGN_out, SIG_out_round(27) => 
                           SIG_out_round_27_port, SIG_out_round(26) => 
                           SIG_out_round_26_port, SIG_out_round(25) => 
                           SIG_out_round_25_port, SIG_out_round(24) => 
                           SIG_out_round_24_port, SIG_out_round(23) => 
                           SIG_out_round_23_port, SIG_out_round(22) => 
                           SIG_out_round_22_port, SIG_out_round(21) => 
                           SIG_out_round_21_port, SIG_out_round(20) => 
                           SIG_out_round_20_port, SIG_out_round(19) => 
                           SIG_out_round_19_port, SIG_out_round(18) => 
                           SIG_out_round_18_port, SIG_out_round(17) => 
                           SIG_out_round_17_port, SIG_out_round(16) => 
                           SIG_out_round_16_port, SIG_out_round(15) => 
                           SIG_out_round_15_port, SIG_out_round(14) => 
                           SIG_out_round_14_port, SIG_out_round(13) => 
                           SIG_out_round_13_port, SIG_out_round(12) => 
                           SIG_out_round_12_port, SIG_out_round(11) => 
                           SIG_out_round_11_port, SIG_out_round(10) => 
                           SIG_out_round_10_port, SIG_out_round(9) => 
                           SIG_out_round_9_port, SIG_out_round(8) => 
                           SIG_out_round_8_port, SIG_out_round(7) => 
                           SIG_out_round_7_port, SIG_out_round(6) => 
                           SIG_out_round_6_port, SIG_out_round(5) => 
                           SIG_out_round_5_port, SIG_out_round(4) => 
                           SIG_out_round_4_port, SIG_out_round(3) => 
                           SIG_out_round_3_port, SIG_out_round(2) => n_2038, 
                           SIG_out_round(1) => n_2039, SIG_out_round(0) => 
                           n_2040, isINF_tab => isINF_tab, isNaN => isNaN, 
                           isZ_tab => isZ_tab);
   I4 : FPmul_stage4 port map( EXP_neg => EXP_neg, EXP_out_round(7) => 
                           EXP_out_round_7_port, EXP_out_round(6) => 
                           EXP_out_round_6_port, EXP_out_round(5) => 
                           EXP_out_round_5_port, EXP_out_round(4) => 
                           EXP_out_round_4_port, EXP_out_round(3) => 
                           EXP_out_round_3_port, EXP_out_round(2) => 
                           EXP_out_round_2_port, EXP_out_round(1) => 
                           EXP_out_round_1_port, EXP_out_round(0) => 
                           EXP_out_round_0_port, EXP_pos => EXP_pos, SIGN_out 
                           => SIGN_out, SIG_out_round(27) => 
                           SIG_out_round_27_port, SIG_out_round(26) => 
                           SIG_out_round_26_port, SIG_out_round(25) => 
                           SIG_out_round_25_port, SIG_out_round(24) => 
                           SIG_out_round_24_port, SIG_out_round(23) => 
                           SIG_out_round_23_port, SIG_out_round(22) => 
                           SIG_out_round_22_port, SIG_out_round(21) => 
                           SIG_out_round_21_port, SIG_out_round(20) => 
                           SIG_out_round_20_port, SIG_out_round(19) => 
                           SIG_out_round_19_port, SIG_out_round(18) => 
                           SIG_out_round_18_port, SIG_out_round(17) => 
                           SIG_out_round_17_port, SIG_out_round(16) => 
                           SIG_out_round_16_port, SIG_out_round(15) => 
                           SIG_out_round_15_port, SIG_out_round(14) => 
                           SIG_out_round_14_port, SIG_out_round(13) => 
                           SIG_out_round_13_port, SIG_out_round(12) => 
                           SIG_out_round_12_port, SIG_out_round(11) => 
                           SIG_out_round_11_port, SIG_out_round(10) => 
                           SIG_out_round_10_port, SIG_out_round(9) => 
                           SIG_out_round_9_port, SIG_out_round(8) => 
                           SIG_out_round_8_port, SIG_out_round(7) => 
                           SIG_out_round_7_port, SIG_out_round(6) => 
                           SIG_out_round_6_port, SIG_out_round(5) => 
                           SIG_out_round_5_port, SIG_out_round(4) => 
                           SIG_out_round_4_port, SIG_out_round(3) => 
                           SIG_out_round_3_port, SIG_out_round(2) => n1, 
                           SIG_out_round(1) => n8, SIG_out_round(0) => n9, clk 
                           => clk, isINF_tab => isINF_tab, isNaN => isNaN, 
                           isZ_tab => isZ_tab, FP_Z(31) => n10, FP_Z(30) => 
                           FP_Z(30), FP_Z(29) => FP_Z(29), FP_Z(28) => FP_Z(28)
                           , FP_Z(27) => FP_Z(27), FP_Z(26) => FP_Z(26), 
                           FP_Z(25) => FP_Z(25), FP_Z(24) => FP_Z(24), FP_Z(23)
                           => FP_Z(23), FP_Z(22) => FP_Z(22), FP_Z(21) => 
                           FP_Z(21), FP_Z(20) => FP_Z(20), FP_Z(19) => FP_Z(19)
                           , FP_Z(18) => FP_Z(18), FP_Z(17) => FP_Z(17), 
                           FP_Z(16) => FP_Z(16), FP_Z(15) => FP_Z(15), FP_Z(14)
                           => FP_Z(14), FP_Z(13) => FP_Z(13), FP_Z(12) => 
                           FP_Z(12), FP_Z(11) => FP_Z(11), FP_Z(10) => FP_Z(10)
                           , FP_Z(9) => FP_Z(9), FP_Z(8) => FP_Z(8), FP_Z(7) =>
                           FP_Z(7), FP_Z(6) => FP_Z(6), FP_Z(5) => FP_Z(5), 
                           FP_Z(4) => FP_Z(4), FP_Z(3) => FP_Z(3), FP_Z(2) => 
                           FP_Z(2), FP_Z(1) => FP_Z(1), FP_Z(0) => FP_Z(0));

end SYN_pipeline;
