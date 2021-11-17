
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_IIR_FILTER is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_IIR_FILTER;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_IIR_FILTER.all;

entity IIR_FILTER_DW_mult_tc_2 is

   port( a : in std_logic_vector (13 downto 0);  b : in std_logic_vector (14 
         downto 0);  product : out std_logic_vector (28 downto 0));

end IIR_FILTER_DW_mult_tc_2;

architecture SYN_USE_DEFA_ARCH_NAME of IIR_FILTER_DW_mult_tc_2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X2
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n32, n33, n34, n35, n36, n37, n38, n58, n59, n60, n61, n62, n64, n65,
      n66, n67, n68, n69, n70, n71, n72, n74, n75, n76, n77, n78, n79, n80, n81
      , n82, n83, n84, n85, n86, n88, n89, n90, n91, n92, n93, n94, n95, n96, 
      n97, n98, n99, n100, n101, n102, n103, n104, n106, n107, n108, n109, n110
      , n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
      n123, n124, n125, n126, n128, n129, n130, n131, n132, n133, n134, n135, 
      n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, 
      n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, 
      n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, 
      n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, 
      n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, 
      n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, 
      n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, 
      n220, n221, n222, n223, n243, n244, n245, n246, n247, n251, n252, n253, 
      n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n266, 
      n267, n268, n269, n270, n271, n272, n273, n275, n276, n277, n278, n279, 
      n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, 
      n293, n294, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, 
      n306, n307, n308, n309, n311, n312, n314, n315, n316, n317, n318, n319, 
      n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, 
      n332, n333, n334, n335, n336, n337, n338, n341, n342, n343, n344, n345, 
      n346, n347, n348, n349, n350, n351, n352, n556, n557, n558, n559, n560, 
      n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, 
      n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, 
      n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, n596, 
      n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, 
      n609, n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, 
      n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, 
      n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, 
      n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, 
      n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668, 
      n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, 
      n681, n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, 
      n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704, 
      n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715, n716, 
      n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, n728, 
      n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, 
      n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, n752, 
      n753, n754 : std_logic;

begin
   
   U33 : FA_X1 port map( A => n60, B => n59, CI => n33, CO => n32, S => 
                           product(25));
   U34 : FA_X1 port map( A => n61, B => n64, CI => n34, CO => n33, S => 
                           product(24));
   U35 : FA_X1 port map( A => n65, B => n68, CI => n35, CO => n34, S => 
                           product(23));
   U36 : FA_X1 port map( A => n69, B => n74, CI => n36, CO => n35, S => 
                           product(22));
   U37 : FA_X1 port map( A => n75, B => n80, CI => n37, CO => n36, S => 
                           product(21));
   U38 : FA_X1 port map( A => n81, B => n88, CI => n38, CO => n37, S => 
                           product(20));
   U59 : FA_X1 port map( A => n251, B => n62, CI => n566, CO => n58, S => n59);
   U60 : FA_X1 port map( A => n567, B => n252, CI => n66, CO => n60, S => n61);
   U62 : FA_X1 port map( A => n70, B => n253, CI => n67, CO => n64, S => n65);
   U63 : FA_X1 port map( A => n266, B => n72, CI => n564, CO => n66, S => n67);
   U64 : FA_X1 port map( A => n71, B => n78, CI => n76, CO => n68, S => n69);
   U65 : FA_X1 port map( A => n254, B => n267, CI => n565, CO => n70, S => n71)
                           ;
   U67 : FA_X1 port map( A => n82, B => n79, CI => n77, CO => n74, S => n75);
   U68 : FA_X1 port map( A => n86, B => n281, CI => n84, CO => n76, S => n77);
   U69 : FA_X1 port map( A => n268, B => n255, CI => n562, CO => n78, S => n79)
                           ;
   U70 : FA_X1 port map( A => n83, B => n85, CI => n90, CO => n80, S => n81);
   U71 : FA_X1 port map( A => n94, B => n563, CI => n92, CO => n82, S => n83);
   U72 : FA_X1 port map( A => n256, B => n269, CI => n282, CO => n84, S => n85)
                           ;
   U74 : FA_X1 port map( A => n98, B => n100, CI => n91, CO => n88, S => n89);
   U75 : FA_X1 port map( A => n93, B => n102, CI => n95, CO => n90, S => n91);
   U76 : FA_X1 port map( A => n270, B => n104, CI => n283, CO => n92, S => n93)
                           ;
   U77 : FA_X1 port map( A => n296, B => n257, CI => n572, CO => n94, S => n95)
                           ;
   U78 : FA_X1 port map( A => n108, B => n101, CI => n99, CO => n96, S => n97);
   U79 : FA_X1 port map( A => n103, B => n112, CI => n110, CO => n98, S => n99)
                           ;
   U80 : FA_X1 port map( A => n571, B => n284, CI => n114, CO => n100, S => 
                           n101);
   U81 : FA_X1 port map( A => n297, B => n271, CI => n258, CO => n102, S => 
                           n103);
   U83 : FA_X1 port map( A => n118, B => n111, CI => n109, CO => n106, S => 
                           n107);
   U84 : FA_X1 port map( A => n115, B => n113, CI => n120, CO => n108, S => 
                           n109);
   U85 : FA_X1 port map( A => n124, B => n298, CI => n122, CO => n110, S => 
                           n111);
   U86 : FA_X1 port map( A => n272, B => n311, CI => n285, CO => n112, S => 
                           n113);
   U87 : FA_X1 port map( A => n126, B => n259, CI => n325, CO => n114, S => 
                           n115);
   U88 : FA_X1 port map( A => n130, B => n121, CI => n119, CO => n116, S => 
                           n117);
   U89 : FA_X1 port map( A => n123, B => n125, CI => n132, CO => n118, S => 
                           n119);
   U90 : FA_X1 port map( A => n136, B => n138, CI => n134, CO => n120, S => 
                           n121);
   U91 : FA_X1 port map( A => n260, B => n286, CI => n569, CO => n122, S => 
                           n123);
   U92 : FA_X1 port map( A => n312, B => n273, CI => n299, CO => n124, S => 
                           n125);
   U94 : FA_X1 port map( A => n142, B => n133, CI => n131, CO => n128, S => 
                           n129);
   U95 : FA_X1 port map( A => n135, B => n137, CI => n144, CO => n130, S => 
                           n131);
   U96 : FA_X1 port map( A => n148, B => n139, CI => n146, CO => n132, S => 
                           n133);
   U97 : FA_X1 port map( A => n300, B => n326, CI => n150, CO => n134, S => 
                           n135);
   U98 : FA_X1 port map( A => n261, B => n287, CI => n560, CO => n136, S => 
                           n137);
   U101 : FA_X1 port map( A => n154, B => n145, CI => n143, CO => n140, S => 
                           n141);
   U102 : FA_X1 port map( A => n147, B => n149, CI => n156, CO => n142, S => 
                           n143);
   U103 : FA_X1 port map( A => n160, B => n151, CI => n158, CO => n144, S => 
                           n145);
   U104 : FA_X1 port map( A => n314, B => n327, CI => n162, CO => n146, S => 
                           n147);
   U105 : FA_X1 port map( A => n288, B => n301, CI => n341, CO => n148, S => 
                           n149);
   U106 : HA_X1 port map( A => n262, B => n275, CO => n150, S => n151);
   U107 : FA_X1 port map( A => n166, B => n157, CI => n155, CO => n152, S => 
                           n153);
   U108 : FA_X1 port map( A => n161, B => n159, CI => n168, CO => n154, S => 
                           n155);
   U109 : FA_X1 port map( A => n172, B => n163, CI => n170, CO => n156, S => 
                           n157);
   U110 : FA_X1 port map( A => n276, B => n315, CI => n289, CO => n158, S => 
                           n159);
   U111 : FA_X1 port map( A => n342, B => n302, CI => n328, CO => n160, S => 
                           n161);
   U112 : HA_X1 port map( A => n243, B => n263, CO => n162, S => n163);
   U113 : FA_X1 port map( A => n169, B => n176, CI => n167, CO => n164, S => 
                           n165);
   U114 : FA_X1 port map( A => n171, B => n173, CI => n178, CO => n166, S => 
                           n167);
   U115 : FA_X1 port map( A => n182, B => n316, CI => n180, CO => n168, S => 
                           n169);
   U116 : FA_X1 port map( A => n277, B => n329, CI => n303, CO => n170, S => 
                           n171);
   U117 : FA_X1 port map( A => n290, B => n264, CI => n343, CO => n172, S => 
                           n173);
   U118 : FA_X1 port map( A => n186, B => n179, CI => n177, CO => n174, S => 
                           n175);
   U119 : FA_X1 port map( A => n188, B => n190, CI => n181, CO => n176, S => 
                           n177);
   U120 : FA_X1 port map( A => n304, B => n330, CI => n183, CO => n178, S => 
                           n179);
   U121 : FA_X1 port map( A => n291, B => n317, CI => n344, CO => n180, S => 
                           n181);
   U122 : HA_X1 port map( A => n244, B => n278, CO => n182, S => n183);
   U123 : FA_X1 port map( A => n194, B => n189, CI => n187, CO => n184, S => 
                           n185);
   U124 : FA_X1 port map( A => n196, B => n198, CI => n191, CO => n186, S => 
                           n187);
   U125 : FA_X1 port map( A => n292, B => n331, CI => n318, CO => n188, S => 
                           n189);
   U126 : FA_X1 port map( A => n305, B => n279, CI => n345, CO => n190, S => 
                           n191);
   U127 : FA_X1 port map( A => n197, B => n202, CI => n195, CO => n192, S => 
                           n193);
   U128 : FA_X1 port map( A => n199, B => n346, CI => n204, CO => n194, S => 
                           n195);
   U129 : FA_X1 port map( A => n306, B => n319, CI => n332, CO => n196, S => 
                           n197);
   U130 : HA_X1 port map( A => n245, B => n293, CO => n198, S => n199);
   U131 : FA_X1 port map( A => n205, B => n208, CI => n203, CO => n200, S => 
                           n201);
   U132 : FA_X1 port map( A => n307, B => n333, CI => n210, CO => n202, S => 
                           n203);
   U133 : FA_X1 port map( A => n320, B => n294, CI => n347, CO => n204, S => 
                           n205);
   U134 : FA_X1 port map( A => n214, B => n211, CI => n209, CO => n206, S => 
                           n207);
   U135 : FA_X1 port map( A => n321, B => n348, CI => n334, CO => n208, S => 
                           n209);
   U136 : HA_X1 port map( A => n246, B => n308, CO => n210, S => n211);
   U137 : FA_X1 port map( A => n218, B => n322, CI => n215, CO => n212, S => 
                           n213);
   U138 : FA_X1 port map( A => n349, B => n309, CI => n335, CO => n214, S => 
                           n215);
   U139 : FA_X1 port map( A => n336, B => n350, CI => n219, CO => n216, S => 
                           n217);
   U140 : HA_X1 port map( A => n247, B => n323, CO => n218, S => n219);
   U141 : FA_X1 port map( A => n351, B => n324, CI => n337, CO => n220, S => 
                           n221);
   U142 : HA_X1 port map( A => n338, B => n352, CO => n222, S => n223);
   U442 : XOR2_X2 port map( A => a(2), B => n594, Z => n633);
   U443 : INV_X1 port map( A => n140, ZN => n561);
   U444 : INV_X1 port map( A => n129, ZN => n559);
   U445 : INV_X1 port map( A => n153, ZN => n573);
   U446 : INV_X1 port map( A => n200, ZN => n578);
   U447 : INV_X1 port map( A => n193, ZN => n577);
   U448 : INV_X1 port map( A => n184, ZN => n576);
   U449 : INV_X1 port map( A => n175, ZN => n575);
   U450 : INV_X1 port map( A => n164, ZN => n574);
   U451 : INV_X1 port map( A => n116, ZN => n558);
   U452 : INV_X1 port map( A => n107, ZN => n557);
   U453 : INV_X1 port map( A => n96, ZN => n556);
   U454 : INV_X1 port map( A => n89, ZN => n568);
   U455 : INV_X1 port map( A => n212, ZN => n580);
   U456 : INV_X1 port map( A => n207, ZN => n579);
   U457 : INV_X1 port map( A => n86, ZN => n563);
   U458 : INV_X1 port map( A => n637, ZN => n584);
   U459 : INV_X1 port map( A => n126, ZN => n569);
   U460 : INV_X1 port map( A => n668, ZN => n570);
   U461 : INV_X1 port map( A => n652, ZN => n560);
   U462 : INV_X1 port map( A => n700, ZN => n562);
   U463 : INV_X1 port map( A => n104, ZN => n571);
   U464 : INV_X1 port map( A => n685, ZN => n572);
   U465 : INV_X1 port map( A => n220, ZN => n582);
   U466 : INV_X1 port map( A => n217, ZN => n581);
   U467 : INV_X1 port map( A => n72, ZN => n565);
   U468 : INV_X1 port map( A => n62, ZN => n567);
   U469 : INV_X1 port map( A => n728, ZN => n566);
   U470 : INV_X1 port map( A => n714, ZN => n564);
   U471 : INV_X1 port map( A => b(0), ZN => n585);
   U472 : INV_X1 port map( A => n633, ZN => n593);
   U473 : INV_X1 port map( A => n654, ZN => n591);
   U474 : INV_X1 port map( A => n223, ZN => n583);
   U475 : INV_X1 port map( A => a(5), ZN => n590);
   U476 : INV_X1 port map( A => a(7), ZN => n589);
   U477 : INV_X1 port map( A => a(9), ZN => n588);
   U478 : INV_X1 port map( A => a(11), ZN => n587);
   U479 : INV_X1 port map( A => a(3), ZN => n592);
   U480 : INV_X1 port map( A => a(1), ZN => n594);
   U481 : INV_X1 port map( A => a(0), ZN => n595);
   U482 : INV_X1 port map( A => a(13), ZN => n586);
   U483 : XNOR2_X2 port map( A => a(6), B => a(5), ZN => n604);
   U484 : XNOR2_X2 port map( A => a(8), B => a(7), ZN => n608);
   U485 : XNOR2_X2 port map( A => a(12), B => a(11), ZN => n599);
   U486 : XNOR2_X2 port map( A => a(10), B => a(9), ZN => n612);
   U487 : XNOR2_X2 port map( A => a(4), B => a(3), ZN => n669);
   U488 : XNOR2_X1 port map( A => n596, B => n597, ZN => product(26));
   U489 : XOR2_X1 port map( A => n58, B => n32, Z => n597);
   U490 : OAI22_X1 port map( A1 => n598, A2 => n599, B1 => n600, B2 => n601, ZN
                           => n596);
   U491 : XOR2_X1 port map( A => b(14), B => n586, Z => n598);
   U492 : OAI22_X1 port map( A1 => n602, A2 => n603, B1 => n604, B2 => n605, ZN
                           => n86);
   U493 : OAI22_X1 port map( A1 => n606, A2 => n607, B1 => n608, B2 => n609, ZN
                           => n72);
   U494 : OAI22_X1 port map( A1 => n610, A2 => n611, B1 => n612, B2 => n613, ZN
                           => n62);
   U495 : OAI222_X1 port map( A1 => n614, A2 => n568, B1 => n614, B2 => n556, 
                           C1 => n556, C2 => n568, ZN => n38);
   U496 : AOI222_X1 port map( A1 => n615, A2 => n97, B1 => n615, B2 => n106, C1
                           => n106, C2 => n97, ZN => n614);
   U497 : OAI222_X1 port map( A1 => n616, A2 => n557, B1 => n616, B2 => n558, 
                           C1 => n558, C2 => n557, ZN => n615);
   U498 : AOI222_X1 port map( A1 => n617, A2 => n117, B1 => n617, B2 => n128, 
                           C1 => n128, C2 => n117, ZN => n616);
   U499 : OAI222_X1 port map( A1 => n618, A2 => n559, B1 => n618, B2 => n561, 
                           C1 => n561, C2 => n559, ZN => n617);
   U500 : AOI222_X1 port map( A1 => n619, A2 => n141, B1 => n619, B2 => n152, 
                           C1 => n152, C2 => n141, ZN => n618);
   U501 : OAI222_X1 port map( A1 => n620, A2 => n573, B1 => n620, B2 => n574, 
                           C1 => n574, C2 => n573, ZN => n619);
   U502 : AOI222_X1 port map( A1 => n621, A2 => n165, B1 => n621, B2 => n174, 
                           C1 => n174, C2 => n165, ZN => n620);
   U503 : OAI222_X1 port map( A1 => n622, A2 => n575, B1 => n622, B2 => n576, 
                           C1 => n576, C2 => n575, ZN => n621);
   U504 : AOI222_X1 port map( A1 => n623, A2 => n185, B1 => n623, B2 => n192, 
                           C1 => n192, C2 => n185, ZN => n622);
   U505 : OAI222_X1 port map( A1 => n624, A2 => n577, B1 => n624, B2 => n578, 
                           C1 => n578, C2 => n577, ZN => n623);
   U506 : AOI222_X1 port map( A1 => n625, A2 => n201, B1 => n625, B2 => n206, 
                           C1 => n206, C2 => n201, ZN => n624);
   U507 : OAI222_X1 port map( A1 => n626, A2 => n579, B1 => n626, B2 => n580, 
                           C1 => n580, C2 => n579, ZN => n625);
   U508 : AOI222_X1 port map( A1 => n627, A2 => n213, B1 => n627, B2 => n216, 
                           C1 => n216, C2 => n213, ZN => n626);
   U509 : OAI222_X1 port map( A1 => n628, A2 => n581, B1 => n628, B2 => n582, 
                           C1 => n582, C2 => n581, ZN => n627);
   U510 : AOI222_X1 port map( A1 => n629, A2 => n221, B1 => n629, B2 => n222, 
                           C1 => n222, C2 => n221, ZN => n628);
   U511 : OAI222_X1 port map( A1 => n630, A2 => n583, B1 => n631, B2 => n630, 
                           C1 => n631, C2 => n583, ZN => n629);
   U512 : AOI21_X1 port map( B1 => a(3), B2 => n591, A => n632, ZN => n631);
   U513 : NOR3_X1 port map( A1 => n633, A2 => b(0), A3 => n592, ZN => n632);
   U514 : MUX2_X1 port map( A => n634, B => n635, S => b(0), Z => n630);
   U515 : NAND2_X1 port map( A1 => n593, A2 => n636, ZN => n635);
   U516 : NAND2_X1 port map( A1 => n637, A2 => n636, ZN => n634);
   U517 : OAI22_X1 port map( A1 => n584, A2 => n638, B1 => n639, B2 => n595, ZN
                           => n636);
   U518 : NOR2_X1 port map( A1 => n594, A2 => b(1), ZN => n637);
   U519 : OAI22_X1 port map( A1 => n639, A2 => n638, B1 => n640, B2 => n595, ZN
                           => n352);
   U520 : XOR2_X1 port map( A => b(2), B => n594, Z => n639);
   U521 : OAI22_X1 port map( A1 => n640, A2 => n638, B1 => n641, B2 => n595, ZN
                           => n351);
   U522 : XOR2_X1 port map( A => b(3), B => n594, Z => n640);
   U523 : OAI22_X1 port map( A1 => n641, A2 => n638, B1 => n642, B2 => n595, ZN
                           => n350);
   U524 : XOR2_X1 port map( A => b(4), B => n594, Z => n641);
   U525 : OAI22_X1 port map( A1 => n642, A2 => n638, B1 => n643, B2 => n595, ZN
                           => n349);
   U526 : XOR2_X1 port map( A => b(5), B => n594, Z => n642);
   U527 : OAI22_X1 port map( A1 => n643, A2 => n638, B1 => n644, B2 => n595, ZN
                           => n348);
   U528 : XOR2_X1 port map( A => b(6), B => n594, Z => n643);
   U529 : OAI22_X1 port map( A1 => n644, A2 => n638, B1 => n645, B2 => n595, ZN
                           => n347);
   U530 : XOR2_X1 port map( A => b(7), B => n594, Z => n644);
   U531 : OAI22_X1 port map( A1 => n645, A2 => n638, B1 => n646, B2 => n595, ZN
                           => n346);
   U532 : XOR2_X1 port map( A => b(8), B => n594, Z => n645);
   U533 : OAI22_X1 port map( A1 => n646, A2 => n638, B1 => n647, B2 => n595, ZN
                           => n345);
   U534 : XOR2_X1 port map( A => b(9), B => n594, Z => n646);
   U535 : OAI22_X1 port map( A1 => n647, A2 => n638, B1 => n648, B2 => n595, ZN
                           => n344);
   U536 : XOR2_X1 port map( A => b(10), B => n594, Z => n647);
   U537 : OAI22_X1 port map( A1 => n648, A2 => n638, B1 => n649, B2 => n595, ZN
                           => n343);
   U538 : XOR2_X1 port map( A => b(11), B => n594, Z => n648);
   U539 : OAI22_X1 port map( A1 => n649, A2 => n638, B1 => n650, B2 => n595, ZN
                           => n342);
   U540 : XOR2_X1 port map( A => b(12), B => n594, Z => n649);
   U541 : OAI22_X1 port map( A1 => n650, A2 => n638, B1 => n651, B2 => n595, ZN
                           => n341);
   U542 : XOR2_X1 port map( A => b(13), B => n594, Z => n650);
   U543 : OAI22_X1 port map( A1 => n595, A2 => n651, B1 => n638, B2 => n651, ZN
                           => n652);
   U544 : NAND2_X1 port map( A1 => a(1), A2 => n595, ZN => n638);
   U545 : XNOR2_X1 port map( A => b(14), B => a(1), ZN => n651);
   U546 : OAI22_X1 port map( A1 => n653, A2 => n654, B1 => n633, B2 => n655, ZN
                           => n338);
   U547 : XOR2_X1 port map( A => n592, B => b(0), Z => n653);
   U548 : OAI22_X1 port map( A1 => n655, A2 => n654, B1 => n633, B2 => n656, ZN
                           => n337);
   U549 : XOR2_X1 port map( A => b(1), B => n592, Z => n655);
   U550 : OAI22_X1 port map( A1 => n656, A2 => n654, B1 => n633, B2 => n657, ZN
                           => n336);
   U551 : XOR2_X1 port map( A => b(2), B => n592, Z => n656);
   U552 : OAI22_X1 port map( A1 => n657, A2 => n654, B1 => n633, B2 => n658, ZN
                           => n335);
   U553 : XOR2_X1 port map( A => b(3), B => n592, Z => n657);
   U554 : OAI22_X1 port map( A1 => n658, A2 => n654, B1 => n633, B2 => n659, ZN
                           => n334);
   U555 : XOR2_X1 port map( A => b(4), B => n592, Z => n658);
   U556 : OAI22_X1 port map( A1 => n659, A2 => n654, B1 => n633, B2 => n660, ZN
                           => n333);
   U557 : XOR2_X1 port map( A => b(5), B => n592, Z => n659);
   U558 : OAI22_X1 port map( A1 => n660, A2 => n654, B1 => n633, B2 => n661, ZN
                           => n332);
   U559 : XOR2_X1 port map( A => b(6), B => n592, Z => n660);
   U560 : OAI22_X1 port map( A1 => n661, A2 => n654, B1 => n633, B2 => n662, ZN
                           => n331);
   U561 : XOR2_X1 port map( A => b(7), B => n592, Z => n661);
   U562 : OAI22_X1 port map( A1 => n662, A2 => n654, B1 => n633, B2 => n663, ZN
                           => n330);
   U563 : XOR2_X1 port map( A => b(8), B => n592, Z => n662);
   U564 : OAI22_X1 port map( A1 => n663, A2 => n654, B1 => n633, B2 => n664, ZN
                           => n329);
   U565 : XOR2_X1 port map( A => b(9), B => n592, Z => n663);
   U566 : OAI22_X1 port map( A1 => n664, A2 => n654, B1 => n633, B2 => n665, ZN
                           => n328);
   U567 : XOR2_X1 port map( A => b(10), B => n592, Z => n664);
   U568 : OAI22_X1 port map( A1 => n665, A2 => n654, B1 => n633, B2 => n666, ZN
                           => n327);
   U569 : XOR2_X1 port map( A => b(11), B => n592, Z => n665);
   U570 : OAI22_X1 port map( A1 => n666, A2 => n654, B1 => n633, B2 => n667, ZN
                           => n326);
   U571 : XOR2_X1 port map( A => b(12), B => n592, Z => n666);
   U572 : AOI22_X1 port map( A1 => n570, A2 => n593, B1 => n591, B2 => n570, ZN
                           => n325);
   U573 : NOR2_X1 port map( A1 => n669, A2 => n585, ZN => n324);
   U574 : OAI22_X1 port map( A1 => n670, A2 => n671, B1 => n669, B2 => n672, ZN
                           => n323);
   U575 : XOR2_X1 port map( A => n590, B => b(0), Z => n670);
   U576 : OAI22_X1 port map( A1 => n672, A2 => n671, B1 => n669, B2 => n673, ZN
                           => n322);
   U577 : XOR2_X1 port map( A => b(1), B => n590, Z => n672);
   U578 : OAI22_X1 port map( A1 => n673, A2 => n671, B1 => n669, B2 => n674, ZN
                           => n321);
   U579 : XOR2_X1 port map( A => b(2), B => n590, Z => n673);
   U580 : OAI22_X1 port map( A1 => n674, A2 => n671, B1 => n669, B2 => n675, ZN
                           => n320);
   U581 : XOR2_X1 port map( A => b(3), B => n590, Z => n674);
   U582 : OAI22_X1 port map( A1 => n675, A2 => n671, B1 => n669, B2 => n676, ZN
                           => n319);
   U583 : XOR2_X1 port map( A => b(4), B => n590, Z => n675);
   U584 : OAI22_X1 port map( A1 => n676, A2 => n671, B1 => n669, B2 => n677, ZN
                           => n318);
   U585 : XOR2_X1 port map( A => b(5), B => n590, Z => n676);
   U586 : OAI22_X1 port map( A1 => n677, A2 => n671, B1 => n669, B2 => n678, ZN
                           => n317);
   U587 : XOR2_X1 port map( A => b(6), B => n590, Z => n677);
   U588 : OAI22_X1 port map( A1 => n678, A2 => n671, B1 => n669, B2 => n679, ZN
                           => n316);
   U589 : XOR2_X1 port map( A => b(7), B => n590, Z => n678);
   U590 : OAI22_X1 port map( A1 => n679, A2 => n671, B1 => n669, B2 => n680, ZN
                           => n315);
   U591 : XOR2_X1 port map( A => b(8), B => n590, Z => n679);
   U592 : OAI22_X1 port map( A1 => n680, A2 => n671, B1 => n669, B2 => n681, ZN
                           => n314);
   U593 : XOR2_X1 port map( A => b(9), B => n590, Z => n680);
   U594 : OAI22_X1 port map( A1 => n682, A2 => n671, B1 => n669, B2 => n683, ZN
                           => n312);
   U595 : OAI22_X1 port map( A1 => n683, A2 => n671, B1 => n669, B2 => n684, ZN
                           => n311);
   U596 : XOR2_X1 port map( A => b(12), B => n590, Z => n683);
   U597 : OAI22_X1 port map( A1 => n686, A2 => n669, B1 => n671, B2 => n686, ZN
                           => n685);
   U598 : NOR2_X1 port map( A1 => n604, A2 => n585, ZN => n309);
   U599 : OAI22_X1 port map( A1 => n687, A2 => n603, B1 => n604, B2 => n688, ZN
                           => n308);
   U600 : XOR2_X1 port map( A => n589, B => b(0), Z => n687);
   U601 : OAI22_X1 port map( A1 => n688, A2 => n603, B1 => n604, B2 => n689, ZN
                           => n307);
   U602 : XOR2_X1 port map( A => b(1), B => n589, Z => n688);
   U603 : OAI22_X1 port map( A1 => n689, A2 => n603, B1 => n604, B2 => n690, ZN
                           => n306);
   U604 : XOR2_X1 port map( A => b(2), B => n589, Z => n689);
   U605 : OAI22_X1 port map( A1 => n690, A2 => n603, B1 => n604, B2 => n691, ZN
                           => n305);
   U606 : XOR2_X1 port map( A => b(3), B => n589, Z => n690);
   U607 : OAI22_X1 port map( A1 => n691, A2 => n603, B1 => n604, B2 => n692, ZN
                           => n304);
   U608 : XOR2_X1 port map( A => b(4), B => n589, Z => n691);
   U609 : OAI22_X1 port map( A1 => n692, A2 => n603, B1 => n604, B2 => n693, ZN
                           => n303);
   U610 : XOR2_X1 port map( A => b(5), B => n589, Z => n692);
   U611 : OAI22_X1 port map( A1 => n693, A2 => n603, B1 => n604, B2 => n694, ZN
                           => n302);
   U612 : XOR2_X1 port map( A => b(6), B => n589, Z => n693);
   U613 : OAI22_X1 port map( A1 => n694, A2 => n603, B1 => n604, B2 => n695, ZN
                           => n301);
   U614 : XOR2_X1 port map( A => b(7), B => n589, Z => n694);
   U615 : OAI22_X1 port map( A1 => n695, A2 => n603, B1 => n604, B2 => n696, ZN
                           => n300);
   U616 : XOR2_X1 port map( A => b(8), B => n589, Z => n695);
   U617 : OAI22_X1 port map( A1 => n696, A2 => n603, B1 => n604, B2 => n697, ZN
                           => n299);
   U618 : XOR2_X1 port map( A => b(9), B => n589, Z => n696);
   U619 : OAI22_X1 port map( A1 => n697, A2 => n603, B1 => n604, B2 => n698, ZN
                           => n298);
   U620 : XOR2_X1 port map( A => b(10), B => n589, Z => n697);
   U621 : OAI22_X1 port map( A1 => n698, A2 => n603, B1 => n604, B2 => n699, ZN
                           => n297);
   U622 : XOR2_X1 port map( A => b(11), B => n589, Z => n698);
   U623 : OAI22_X1 port map( A1 => n699, A2 => n603, B1 => n604, B2 => n602, ZN
                           => n296);
   U624 : XOR2_X1 port map( A => b(13), B => n589, Z => n602);
   U625 : XOR2_X1 port map( A => b(12), B => n589, Z => n699);
   U626 : OAI22_X1 port map( A1 => n605, A2 => n604, B1 => n603, B2 => n605, ZN
                           => n700);
   U627 : XOR2_X1 port map( A => b(14), B => n589, Z => n605);
   U628 : NOR2_X1 port map( A1 => n608, A2 => n585, ZN => n294);
   U629 : OAI22_X1 port map( A1 => n701, A2 => n607, B1 => n608, B2 => n702, ZN
                           => n293);
   U630 : XOR2_X1 port map( A => n588, B => b(0), Z => n701);
   U631 : OAI22_X1 port map( A1 => n702, A2 => n607, B1 => n608, B2 => n703, ZN
                           => n292);
   U632 : XOR2_X1 port map( A => b(1), B => n588, Z => n702);
   U633 : OAI22_X1 port map( A1 => n703, A2 => n607, B1 => n608, B2 => n704, ZN
                           => n291);
   U634 : XOR2_X1 port map( A => b(2), B => n588, Z => n703);
   U635 : OAI22_X1 port map( A1 => n704, A2 => n607, B1 => n608, B2 => n705, ZN
                           => n290);
   U636 : XOR2_X1 port map( A => b(3), B => n588, Z => n704);
   U637 : OAI22_X1 port map( A1 => n705, A2 => n607, B1 => n608, B2 => n706, ZN
                           => n289);
   U638 : XOR2_X1 port map( A => b(4), B => n588, Z => n705);
   U639 : OAI22_X1 port map( A1 => n706, A2 => n607, B1 => n608, B2 => n707, ZN
                           => n288);
   U640 : XOR2_X1 port map( A => b(5), B => n588, Z => n706);
   U641 : OAI22_X1 port map( A1 => n707, A2 => n607, B1 => n608, B2 => n708, ZN
                           => n287);
   U642 : XOR2_X1 port map( A => b(6), B => n588, Z => n707);
   U643 : OAI22_X1 port map( A1 => n708, A2 => n607, B1 => n608, B2 => n709, ZN
                           => n286);
   U644 : XOR2_X1 port map( A => b(7), B => n588, Z => n708);
   U645 : OAI22_X1 port map( A1 => n709, A2 => n607, B1 => n608, B2 => n710, ZN
                           => n285);
   U646 : XOR2_X1 port map( A => b(8), B => n588, Z => n709);
   U647 : OAI22_X1 port map( A1 => n710, A2 => n607, B1 => n608, B2 => n711, ZN
                           => n284);
   U648 : XOR2_X1 port map( A => b(9), B => n588, Z => n710);
   U649 : OAI22_X1 port map( A1 => n711, A2 => n607, B1 => n608, B2 => n712, ZN
                           => n283);
   U650 : XOR2_X1 port map( A => b(10), B => n588, Z => n711);
   U651 : OAI22_X1 port map( A1 => n712, A2 => n607, B1 => n608, B2 => n713, ZN
                           => n282);
   U652 : XOR2_X1 port map( A => b(11), B => n588, Z => n712);
   U653 : OAI22_X1 port map( A1 => n713, A2 => n607, B1 => n608, B2 => n606, ZN
                           => n281);
   U654 : XOR2_X1 port map( A => b(13), B => n588, Z => n606);
   U655 : XOR2_X1 port map( A => b(12), B => n588, Z => n713);
   U656 : OAI22_X1 port map( A1 => n609, A2 => n608, B1 => n607, B2 => n609, ZN
                           => n714);
   U657 : XOR2_X1 port map( A => b(14), B => n588, Z => n609);
   U658 : NOR2_X1 port map( A1 => n612, A2 => n585, ZN => n279);
   U659 : OAI22_X1 port map( A1 => n715, A2 => n611, B1 => n612, B2 => n716, ZN
                           => n278);
   U660 : XOR2_X1 port map( A => n587, B => b(0), Z => n715);
   U661 : OAI22_X1 port map( A1 => n716, A2 => n611, B1 => n612, B2 => n717, ZN
                           => n277);
   U662 : XOR2_X1 port map( A => b(1), B => n587, Z => n716);
   U663 : OAI22_X1 port map( A1 => n717, A2 => n611, B1 => n612, B2 => n718, ZN
                           => n276);
   U664 : XOR2_X1 port map( A => b(2), B => n587, Z => n717);
   U665 : OAI22_X1 port map( A1 => n718, A2 => n611, B1 => n612, B2 => n719, ZN
                           => n275);
   U666 : XOR2_X1 port map( A => b(3), B => n587, Z => n718);
   U667 : OAI22_X1 port map( A1 => n720, A2 => n611, B1 => n612, B2 => n721, ZN
                           => n273);
   U668 : OAI22_X1 port map( A1 => n721, A2 => n611, B1 => n612, B2 => n722, ZN
                           => n272);
   U669 : XOR2_X1 port map( A => b(6), B => n587, Z => n721);
   U670 : OAI22_X1 port map( A1 => n722, A2 => n611, B1 => n612, B2 => n723, ZN
                           => n271);
   U671 : XOR2_X1 port map( A => b(7), B => n587, Z => n722);
   U672 : OAI22_X1 port map( A1 => n723, A2 => n611, B1 => n612, B2 => n724, ZN
                           => n270);
   U673 : XOR2_X1 port map( A => b(8), B => n587, Z => n723);
   U674 : OAI22_X1 port map( A1 => n724, A2 => n611, B1 => n612, B2 => n725, ZN
                           => n269);
   U675 : XOR2_X1 port map( A => b(9), B => n587, Z => n724);
   U676 : OAI22_X1 port map( A1 => n725, A2 => n611, B1 => n612, B2 => n726, ZN
                           => n268);
   U677 : XOR2_X1 port map( A => b(10), B => n587, Z => n725);
   U678 : OAI22_X1 port map( A1 => n726, A2 => n611, B1 => n612, B2 => n727, ZN
                           => n267);
   U679 : XOR2_X1 port map( A => b(11), B => n587, Z => n726);
   U680 : OAI22_X1 port map( A1 => n727, A2 => n611, B1 => n612, B2 => n610, ZN
                           => n266);
   U681 : XOR2_X1 port map( A => b(13), B => n587, Z => n610);
   U682 : XOR2_X1 port map( A => b(12), B => n587, Z => n727);
   U683 : OAI22_X1 port map( A1 => n613, A2 => n612, B1 => n611, B2 => n613, ZN
                           => n728);
   U684 : XOR2_X1 port map( A => b(14), B => n587, Z => n613);
   U685 : NOR2_X1 port map( A1 => n599, A2 => n585, ZN => n264);
   U686 : OAI22_X1 port map( A1 => n729, A2 => n600, B1 => n599, B2 => n730, ZN
                           => n263);
   U687 : XOR2_X1 port map( A => n586, B => b(0), Z => n729);
   U688 : OAI22_X1 port map( A1 => n730, A2 => n600, B1 => n599, B2 => n731, ZN
                           => n262);
   U689 : XOR2_X1 port map( A => b(1), B => n586, Z => n730);
   U690 : OAI22_X1 port map( A1 => n731, A2 => n600, B1 => n599, B2 => n732, ZN
                           => n261);
   U691 : XOR2_X1 port map( A => b(2), B => n586, Z => n731);
   U692 : OAI22_X1 port map( A1 => n732, A2 => n600, B1 => n599, B2 => n733, ZN
                           => n260);
   U693 : XOR2_X1 port map( A => b(3), B => n586, Z => n732);
   U694 : OAI22_X1 port map( A1 => n733, A2 => n600, B1 => n599, B2 => n734, ZN
                           => n259);
   U695 : XOR2_X1 port map( A => b(4), B => n586, Z => n733);
   U696 : OAI22_X1 port map( A1 => n734, A2 => n600, B1 => n599, B2 => n735, ZN
                           => n258);
   U697 : XOR2_X1 port map( A => b(5), B => n586, Z => n734);
   U698 : OAI22_X1 port map( A1 => n735, A2 => n600, B1 => n599, B2 => n736, ZN
                           => n257);
   U699 : XOR2_X1 port map( A => b(6), B => n586, Z => n735);
   U700 : OAI22_X1 port map( A1 => n736, A2 => n600, B1 => n599, B2 => n737, ZN
                           => n256);
   U701 : XOR2_X1 port map( A => b(7), B => n586, Z => n736);
   U702 : OAI22_X1 port map( A1 => n737, A2 => n600, B1 => n599, B2 => n738, ZN
                           => n255);
   U703 : XOR2_X1 port map( A => b(8), B => n586, Z => n737);
   U704 : OAI22_X1 port map( A1 => n738, A2 => n600, B1 => n599, B2 => n739, ZN
                           => n254);
   U705 : XOR2_X1 port map( A => b(9), B => n586, Z => n738);
   U706 : OAI22_X1 port map( A1 => n739, A2 => n600, B1 => n599, B2 => n740, ZN
                           => n253);
   U707 : XOR2_X1 port map( A => b(10), B => n586, Z => n739);
   U708 : OAI22_X1 port map( A1 => n740, A2 => n600, B1 => n599, B2 => n741, ZN
                           => n252);
   U709 : XOR2_X1 port map( A => b(11), B => n586, Z => n740);
   U710 : OAI22_X1 port map( A1 => n741, A2 => n600, B1 => n599, B2 => n601, ZN
                           => n251);
   U711 : XNOR2_X1 port map( A => b(13), B => a(13), ZN => n601);
   U712 : XOR2_X1 port map( A => b(12), B => n586, Z => n741);
   U713 : OAI21_X1 port map( B1 => n590, B2 => n671, A => n742, ZN => n247);
   U714 : OR3_X1 port map( A1 => n669, A2 => b(0), A3 => n590, ZN => n742);
   U715 : OAI21_X1 port map( B1 => n589, B2 => n603, A => n743, ZN => n246);
   U716 : OR3_X1 port map( A1 => n604, A2 => b(0), A3 => n589, ZN => n743);
   U717 : NAND2_X1 port map( A1 => n604, A2 => n744, ZN => n603);
   U718 : XOR2_X1 port map( A => a(7), B => a(6), Z => n744);
   U719 : OAI21_X1 port map( B1 => n588, B2 => n607, A => n745, ZN => n245);
   U720 : OR3_X1 port map( A1 => n608, A2 => b(0), A3 => n588, ZN => n745);
   U721 : NAND2_X1 port map( A1 => n608, A2 => n746, ZN => n607);
   U722 : XOR2_X1 port map( A => a(9), B => a(8), Z => n746);
   U723 : OAI21_X1 port map( B1 => n587, B2 => n611, A => n747, ZN => n244);
   U724 : OR3_X1 port map( A1 => n612, A2 => b(0), A3 => n587, ZN => n747);
   U725 : OAI21_X1 port map( B1 => n586, B2 => n600, A => n748, ZN => n243);
   U726 : OR3_X1 port map( A1 => n599, A2 => b(0), A3 => n586, ZN => n748);
   U727 : NAND2_X1 port map( A1 => n599, A2 => n749, ZN => n600);
   U728 : XOR2_X1 port map( A => a(13), B => a(12), Z => n749);
   U729 : XNOR2_X1 port map( A => n750, B => n751, ZN => n139);
   U730 : OR2_X1 port map( A1 => n750, A2 => n751, ZN => n138);
   U731 : OAI22_X1 port map( A1 => n681, A2 => n671, B1 => n669, B2 => n682, ZN
                           => n751);
   U732 : XOR2_X1 port map( A => b(11), B => n590, Z => n682);
   U733 : XOR2_X1 port map( A => b(10), B => n590, Z => n681);
   U734 : OAI22_X1 port map( A1 => n719, A2 => n611, B1 => n612, B2 => n720, ZN
                           => n750);
   U735 : XOR2_X1 port map( A => b(5), B => n587, Z => n720);
   U736 : NAND2_X1 port map( A1 => n612, A2 => n752, ZN => n611);
   U737 : XOR2_X1 port map( A => a(11), B => a(10), Z => n752);
   U738 : XOR2_X1 port map( A => b(4), B => n587, Z => n719);
   U739 : OAI22_X1 port map( A1 => n667, A2 => n654, B1 => n633, B2 => n668, ZN
                           => n126);
   U740 : XNOR2_X1 port map( A => b(14), B => a(3), ZN => n668);
   U741 : NAND2_X1 port map( A1 => n633, A2 => n753, ZN => n654);
   U742 : XOR2_X1 port map( A => a(3), B => a(2), Z => n753);
   U743 : XOR2_X1 port map( A => b(13), B => n592, Z => n667);
   U744 : OAI22_X1 port map( A1 => n684, A2 => n671, B1 => n669, B2 => n686, ZN
                           => n104);
   U745 : XOR2_X1 port map( A => b(14), B => n590, Z => n686);
   U746 : NAND2_X1 port map( A1 => n669, A2 => n754, ZN => n671);
   U747 : XOR2_X1 port map( A => a(5), B => a(4), Z => n754);
   U748 : XOR2_X1 port map( A => b(13), B => n590, Z => n684);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_IIR_FILTER.all;

entity IIR_FILTER_DW_mult_tc_1 is

   port( a : in std_logic_vector (14 downto 0);  b : in std_logic_vector (13 
         downto 0);  product : out std_logic_vector (28 downto 0));

end IIR_FILTER_DW_mult_tc_1;

architecture SYN_USE_DEFA_ARCH_NAME of IIR_FILTER_DW_mult_tc_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X2
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n32, n33, n34, n35, n36, n37, n58, n59, n61, n62, n63, n64, n65, n66,
      n67, n68, n69, n70, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82
      , n83, n84, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, 
      n98, n99, n100, n101, n102, n104, n105, n106, n107, n108, n109, n110, 
      n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, 
      n123, n124, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, 
      n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, 
      n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, 
      n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, 
      n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, 
      n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, 
      n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, 
      n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, 
      n220, n221, n241, n242, n243, n244, n245, n249, n250, n251, n252, n253, 
      n254, n255, n256, n257, n258, n259, n260, n261, n263, n264, n265, n266, 
      n267, n268, n269, n270, n272, n273, n274, n275, n276, n278, n279, n280, 
      n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n293, 
      n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, 
      n306, n308, n309, n311, n312, n313, n314, n315, n316, n317, n318, n319, 
      n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, 
      n332, n333, n334, n335, n338, n339, n340, n341, n342, n343, n344, n345, 
      n346, n347, n348, n349, n551, n552, n553, n554, n555, n556, n557, n558, 
      n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, 
      n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, 
      n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, 
      n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, 
      n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617, n618, 
      n619, n620, n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, 
      n631, n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, 
      n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, 
      n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, 
      n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, 
      n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690, 
      n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, 
      n703, n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, 
      n715, n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, 
      n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, 
      n739, n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, 
      n751 : std_logic;

begin
   
   U33 : FA_X1 port map( A => n59, B => n62, CI => n33, CO => n32, S => 
                           product(24));
   U34 : FA_X1 port map( A => n63, B => n66, CI => n34, CO => n33, S => 
                           product(23));
   U35 : FA_X1 port map( A => n67, B => n72, CI => n35, CO => n34, S => 
                           product(22));
   U36 : FA_X1 port map( A => n73, B => n78, CI => n36, CO => n35, S => 
                           product(21));
   U37 : FA_X1 port map( A => n79, B => n86, CI => n37, CO => n36, S => 
                           product(20));
   U59 : FA_X1 port map( A => n61, B => n249, CI => n64, CO => n58, S => n59);
   U61 : FA_X1 port map( A => n68, B => n250, CI => n65, CO => n62, S => n63);
   U62 : FA_X1 port map( A => n263, B => n70, CI => n567, CO => n64, S => n65);
   U63 : FA_X1 port map( A => n69, B => n76, CI => n74, CO => n66, S => n67);
   U64 : FA_X1 port map( A => n251, B => n264, CI => n568, CO => n68, S => n69)
                           ;
   U66 : FA_X1 port map( A => n80, B => n77, CI => n75, CO => n72, S => n73);
   U67 : FA_X1 port map( A => n84, B => n278, CI => n82, CO => n74, S => n75);
   U68 : FA_X1 port map( A => n265, B => n252, CI => n572, CO => n76, S => n77)
                           ;
   U69 : FA_X1 port map( A => n81, B => n83, CI => n88, CO => n78, S => n79);
   U70 : FA_X1 port map( A => n92, B => n573, CI => n90, CO => n80, S => n81);
   U71 : FA_X1 port map( A => n253, B => n266, CI => n279, CO => n82, S => n83)
                           ;
   U73 : FA_X1 port map( A => n96, B => n98, CI => n89, CO => n86, S => n87);
   U74 : FA_X1 port map( A => n91, B => n100, CI => n93, CO => n88, S => n89);
   U75 : FA_X1 port map( A => n267, B => n102, CI => n280, CO => n90, S => n91)
                           ;
   U76 : FA_X1 port map( A => n293, B => n254, CI => n578, CO => n92, S => n93)
                           ;
   U77 : FA_X1 port map( A => n106, B => n99, CI => n97, CO => n94, S => n95);
   U78 : FA_X1 port map( A => n101, B => n110, CI => n108, CO => n96, S => n97)
                           ;
   U79 : FA_X1 port map( A => n577, B => n281, CI => n112, CO => n98, S => n99)
                           ;
   U80 : FA_X1 port map( A => n294, B => n268, CI => n255, CO => n100, S => 
                           n101);
   U82 : FA_X1 port map( A => n116, B => n109, CI => n107, CO => n104, S => 
                           n105);
   U83 : FA_X1 port map( A => n113, B => n111, CI => n118, CO => n106, S => 
                           n107);
   U84 : FA_X1 port map( A => n122, B => n295, CI => n120, CO => n108, S => 
                           n109);
   U85 : FA_X1 port map( A => n269, B => n308, CI => n282, CO => n110, S => 
                           n111);
   U86 : FA_X1 port map( A => n124, B => n256, CI => n322, CO => n112, S => 
                           n113);
   U87 : FA_X1 port map( A => n128, B => n119, CI => n117, CO => n114, S => 
                           n115);
   U88 : FA_X1 port map( A => n121, B => n123, CI => n130, CO => n116, S => 
                           n117);
   U89 : FA_X1 port map( A => n134, B => n136, CI => n132, CO => n118, S => 
                           n119);
   U90 : FA_X1 port map( A => n257, B => n283, CI => n582, CO => n120, S => 
                           n121);
   U91 : FA_X1 port map( A => n309, B => n270, CI => n296, CO => n122, S => 
                           n123);
   U93 : FA_X1 port map( A => n140, B => n131, CI => n129, CO => n126, S => 
                           n127);
   U94 : FA_X1 port map( A => n133, B => n135, CI => n142, CO => n128, S => 
                           n129);
   U95 : FA_X1 port map( A => n146, B => n137, CI => n144, CO => n130, S => 
                           n131);
   U96 : FA_X1 port map( A => n297, B => n323, CI => n148, CO => n132, S => 
                           n133);
   U97 : FA_X1 port map( A => n258, B => n284, CI => n587, CO => n134, S => 
                           n135);
   U100 : FA_X1 port map( A => n152, B => n143, CI => n141, CO => n138, S => 
                           n139);
   U101 : FA_X1 port map( A => n145, B => n147, CI => n154, CO => n140, S => 
                           n141);
   U102 : FA_X1 port map( A => n158, B => n149, CI => n156, CO => n142, S => 
                           n143);
   U103 : FA_X1 port map( A => n311, B => n324, CI => n160, CO => n144, S => 
                           n145);
   U104 : FA_X1 port map( A => n285, B => n298, CI => n338, CO => n146, S => 
                           n147);
   U105 : HA_X1 port map( A => n259, B => n272, CO => n148, S => n149);
   U106 : FA_X1 port map( A => n164, B => n155, CI => n153, CO => n150, S => 
                           n151);
   U107 : FA_X1 port map( A => n159, B => n157, CI => n166, CO => n152, S => 
                           n153);
   U108 : FA_X1 port map( A => n170, B => n161, CI => n168, CO => n154, S => 
                           n155);
   U109 : FA_X1 port map( A => n273, B => n312, CI => n286, CO => n156, S => 
                           n157);
   U110 : FA_X1 port map( A => n339, B => n299, CI => n325, CO => n158, S => 
                           n159);
   U111 : HA_X1 port map( A => n241, B => n260, CO => n160, S => n161);
   U112 : FA_X1 port map( A => n167, B => n174, CI => n165, CO => n162, S => 
                           n163);
   U113 : FA_X1 port map( A => n169, B => n171, CI => n176, CO => n164, S => 
                           n165);
   U114 : FA_X1 port map( A => n180, B => n313, CI => n178, CO => n166, S => 
                           n167);
   U115 : FA_X1 port map( A => n274, B => n326, CI => n300, CO => n168, S => 
                           n169);
   U116 : FA_X1 port map( A => n287, B => n261, CI => n340, CO => n170, S => 
                           n171);
   U117 : FA_X1 port map( A => n184, B => n177, CI => n175, CO => n172, S => 
                           n173);
   U118 : FA_X1 port map( A => n186, B => n188, CI => n179, CO => n174, S => 
                           n175);
   U119 : FA_X1 port map( A => n301, B => n327, CI => n181, CO => n176, S => 
                           n177);
   U120 : FA_X1 port map( A => n288, B => n314, CI => n341, CO => n178, S => 
                           n179);
   U121 : HA_X1 port map( A => n242, B => n275, CO => n180, S => n181);
   U122 : FA_X1 port map( A => n192, B => n187, CI => n185, CO => n182, S => 
                           n183);
   U123 : FA_X1 port map( A => n194, B => n196, CI => n189, CO => n184, S => 
                           n185);
   U124 : FA_X1 port map( A => n289, B => n328, CI => n315, CO => n186, S => 
                           n187);
   U125 : FA_X1 port map( A => n302, B => n276, CI => n342, CO => n188, S => 
                           n189);
   U126 : FA_X1 port map( A => n195, B => n200, CI => n193, CO => n190, S => 
                           n191);
   U127 : FA_X1 port map( A => n197, B => n343, CI => n202, CO => n192, S => 
                           n193);
   U128 : FA_X1 port map( A => n303, B => n316, CI => n329, CO => n194, S => 
                           n195);
   U129 : HA_X1 port map( A => n243, B => n290, CO => n196, S => n197);
   U130 : FA_X1 port map( A => n203, B => n206, CI => n201, CO => n198, S => 
                           n199);
   U131 : FA_X1 port map( A => n304, B => n330, CI => n208, CO => n200, S => 
                           n201);
   U132 : FA_X1 port map( A => n317, B => n291, CI => n344, CO => n202, S => 
                           n203);
   U133 : FA_X1 port map( A => n212, B => n209, CI => n207, CO => n204, S => 
                           n205);
   U134 : FA_X1 port map( A => n318, B => n345, CI => n331, CO => n206, S => 
                           n207);
   U135 : HA_X1 port map( A => n244, B => n305, CO => n208, S => n209);
   U136 : FA_X1 port map( A => n216, B => n319, CI => n213, CO => n210, S => 
                           n211);
   U137 : FA_X1 port map( A => n346, B => n306, CI => n332, CO => n212, S => 
                           n213);
   U138 : FA_X1 port map( A => n333, B => n347, CI => n217, CO => n214, S => 
                           n215);
   U139 : HA_X1 port map( A => n245, B => n320, CO => n216, S => n217);
   U140 : FA_X1 port map( A => n348, B => n321, CI => n334, CO => n218, S => 
                           n219);
   U141 : HA_X1 port map( A => n335, B => n349, CO => n220, S => n221);
   U439 : XOR2_X2 port map( A => b(2), B => n589, Z => n632);
   U440 : INV_X1 port map( A => n138, ZN => n554);
   U441 : INV_X1 port map( A => n127, ZN => n553);
   U442 : INV_X1 port map( A => n198, ZN => n570);
   U443 : INV_X1 port map( A => n191, ZN => n566);
   U444 : INV_X1 port map( A => n162, ZN => n559);
   U445 : INV_X1 port map( A => n151, ZN => n555);
   U446 : INV_X1 port map( A => n114, ZN => n552);
   U447 : INV_X1 port map( A => n105, ZN => n551);
   U448 : INV_X1 port map( A => n182, ZN => n564);
   U449 : INV_X1 port map( A => n173, ZN => n560);
   U450 : INV_X1 port map( A => n94, ZN => n557);
   U451 : INV_X1 port map( A => n87, ZN => n556);
   U452 : INV_X1 port map( A => n210, ZN => n575);
   U453 : INV_X1 port map( A => n205, ZN => n571);
   U454 : INV_X1 port map( A => n84, ZN => n573);
   U455 : INV_X1 port map( A => n218, ZN => n580);
   U456 : INV_X1 port map( A => n215, ZN => n576);
   U457 : INV_X1 port map( A => n636, ZN => n588);
   U458 : INV_X1 port map( A => n601, ZN => n565);
   U459 : INV_X1 port map( A => n632, ZN => n586);
   U460 : INV_X1 port map( A => n653, ZN => n584);
   U461 : INV_X1 port map( A => n221, ZN => n581);
   U462 : INV_X1 port map( A => n651, ZN => n587);
   U463 : INV_X1 port map( A => n70, ZN => n568);
   U464 : INV_X1 port map( A => n124, ZN => n582);
   U465 : INV_X1 port map( A => n667, ZN => n583);
   U466 : INV_X1 port map( A => n699, ZN => n572);
   U467 : INV_X1 port map( A => n102, ZN => n577);
   U468 : INV_X1 port map( A => n684, ZN => n578);
   U469 : INV_X1 port map( A => n612, ZN => n562);
   U470 : INV_X1 port map( A => n611, ZN => n561);
   U471 : INV_X1 port map( A => n713, ZN => n567);
   U472 : INV_X1 port map( A => b(3), ZN => n585);
   U473 : INV_X1 port map( A => a(0), ZN => n591);
   U474 : INV_X1 port map( A => b(5), ZN => n579);
   U475 : INV_X1 port map( A => b(7), ZN => n574);
   U476 : INV_X1 port map( A => b(9), ZN => n569);
   U477 : INV_X1 port map( A => b(1), ZN => n589);
   U478 : INV_X1 port map( A => b(0), ZN => n590);
   U479 : INV_X1 port map( A => b(11), ZN => n563);
   U480 : INV_X1 port map( A => b(13), ZN => n558);
   U481 : XNOR2_X2 port map( A => b(6), B => b(5), ZN => n605);
   U482 : XNOR2_X2 port map( A => b(8), B => b(7), ZN => n609);
   U483 : XNOR2_X2 port map( A => b(12), B => b(11), ZN => n597);
   U484 : XNOR2_X2 port map( A => b(4), B => b(3), ZN => n668);
   U485 : XOR2_X1 port map( A => n592, B => n593, Z => product(25));
   U486 : XNOR2_X1 port map( A => n594, B => n595, ZN => n593);
   U487 : OAI22_X1 port map( A1 => n596, A2 => n597, B1 => n598, B2 => n599, ZN
                           => n595);
   U488 : XOR2_X1 port map( A => n558, B => a(13), Z => n596);
   U489 : AOI22_X1 port map( A1 => n600, A2 => n601, B1 => n561, B2 => n600, ZN
                           => n594);
   U490 : XOR2_X1 port map( A => n61, B => n602, Z => n592);
   U491 : XOR2_X1 port map( A => n58, B => n32, Z => n602);
   U492 : OAI22_X1 port map( A1 => n603, A2 => n604, B1 => n605, B2 => n606, ZN
                           => n84);
   U493 : OAI22_X1 port map( A1 => n607, A2 => n608, B1 => n609, B2 => n610, ZN
                           => n70);
   U494 : AOI22_X1 port map( A1 => n562, A2 => n561, B1 => n601, B2 => n600, ZN
                           => n61);
   U495 : XOR2_X1 port map( A => a(14), B => b(11), Z => n600);
   U496 : OAI222_X1 port map( A1 => n613, A2 => n556, B1 => n613, B2 => n557, 
                           C1 => n557, C2 => n556, ZN => n37);
   U497 : AOI222_X1 port map( A1 => n614, A2 => n95, B1 => n614, B2 => n104, C1
                           => n104, C2 => n95, ZN => n613);
   U498 : OAI222_X1 port map( A1 => n615, A2 => n551, B1 => n615, B2 => n552, 
                           C1 => n552, C2 => n551, ZN => n614);
   U499 : AOI222_X1 port map( A1 => n616, A2 => n115, B1 => n616, B2 => n126, 
                           C1 => n126, C2 => n115, ZN => n615);
   U500 : OAI222_X1 port map( A1 => n617, A2 => n553, B1 => n617, B2 => n554, 
                           C1 => n554, C2 => n553, ZN => n616);
   U501 : AOI222_X1 port map( A1 => n618, A2 => n139, B1 => n618, B2 => n150, 
                           C1 => n150, C2 => n139, ZN => n617);
   U502 : OAI222_X1 port map( A1 => n619, A2 => n555, B1 => n619, B2 => n559, 
                           C1 => n559, C2 => n555, ZN => n618);
   U503 : AOI222_X1 port map( A1 => n620, A2 => n163, B1 => n620, B2 => n172, 
                           C1 => n172, C2 => n163, ZN => n619);
   U504 : OAI222_X1 port map( A1 => n621, A2 => n560, B1 => n621, B2 => n564, 
                           C1 => n564, C2 => n560, ZN => n620);
   U505 : AOI222_X1 port map( A1 => n622, A2 => n183, B1 => n622, B2 => n190, 
                           C1 => n190, C2 => n183, ZN => n621);
   U506 : OAI222_X1 port map( A1 => n623, A2 => n566, B1 => n623, B2 => n570, 
                           C1 => n570, C2 => n566, ZN => n622);
   U507 : AOI222_X1 port map( A1 => n624, A2 => n199, B1 => n624, B2 => n204, 
                           C1 => n204, C2 => n199, ZN => n623);
   U508 : OAI222_X1 port map( A1 => n625, A2 => n571, B1 => n625, B2 => n575, 
                           C1 => n575, C2 => n571, ZN => n624);
   U509 : AOI222_X1 port map( A1 => n626, A2 => n211, B1 => n626, B2 => n214, 
                           C1 => n214, C2 => n211, ZN => n625);
   U510 : OAI222_X1 port map( A1 => n627, A2 => n576, B1 => n627, B2 => n580, 
                           C1 => n580, C2 => n576, ZN => n626);
   U511 : AOI222_X1 port map( A1 => n628, A2 => n219, B1 => n628, B2 => n220, 
                           C1 => n220, C2 => n219, ZN => n627);
   U512 : OAI222_X1 port map( A1 => n629, A2 => n581, B1 => n630, B2 => n629, 
                           C1 => n630, C2 => n581, ZN => n628);
   U513 : AOI21_X1 port map( B1 => b(3), B2 => n584, A => n631, ZN => n630);
   U514 : NOR3_X1 port map( A1 => n632, A2 => a(0), A3 => n585, ZN => n631);
   U515 : MUX2_X1 port map( A => n633, B => n634, S => a(0), Z => n629);
   U516 : NAND2_X1 port map( A1 => n586, A2 => n635, ZN => n634);
   U517 : NAND2_X1 port map( A1 => n636, A2 => n635, ZN => n633);
   U518 : OAI22_X1 port map( A1 => n588, A2 => n637, B1 => n638, B2 => n590, ZN
                           => n635);
   U519 : NOR2_X1 port map( A1 => n589, A2 => a(1), ZN => n636);
   U520 : OAI22_X1 port map( A1 => n638, A2 => n637, B1 => n639, B2 => n590, ZN
                           => n349);
   U521 : XOR2_X1 port map( A => a(2), B => n589, Z => n638);
   U522 : OAI22_X1 port map( A1 => n639, A2 => n637, B1 => n640, B2 => n590, ZN
                           => n348);
   U523 : XOR2_X1 port map( A => a(3), B => n589, Z => n639);
   U524 : OAI22_X1 port map( A1 => n640, A2 => n637, B1 => n641, B2 => n590, ZN
                           => n347);
   U525 : XOR2_X1 port map( A => a(4), B => n589, Z => n640);
   U526 : OAI22_X1 port map( A1 => n641, A2 => n637, B1 => n642, B2 => n590, ZN
                           => n346);
   U527 : XOR2_X1 port map( A => a(5), B => n589, Z => n641);
   U528 : OAI22_X1 port map( A1 => n642, A2 => n637, B1 => n643, B2 => n590, ZN
                           => n345);
   U529 : XOR2_X1 port map( A => a(6), B => n589, Z => n642);
   U530 : OAI22_X1 port map( A1 => n643, A2 => n637, B1 => n644, B2 => n590, ZN
                           => n344);
   U531 : XOR2_X1 port map( A => a(7), B => n589, Z => n643);
   U532 : OAI22_X1 port map( A1 => n644, A2 => n637, B1 => n645, B2 => n590, ZN
                           => n343);
   U533 : XOR2_X1 port map( A => a(8), B => n589, Z => n644);
   U534 : OAI22_X1 port map( A1 => n645, A2 => n637, B1 => n646, B2 => n590, ZN
                           => n342);
   U535 : XOR2_X1 port map( A => a(9), B => n589, Z => n645);
   U536 : OAI22_X1 port map( A1 => n646, A2 => n637, B1 => n647, B2 => n590, ZN
                           => n341);
   U537 : XOR2_X1 port map( A => a(10), B => n589, Z => n646);
   U538 : OAI22_X1 port map( A1 => n647, A2 => n637, B1 => n648, B2 => n590, ZN
                           => n340);
   U539 : XOR2_X1 port map( A => a(11), B => n589, Z => n647);
   U540 : OAI22_X1 port map( A1 => n648, A2 => n637, B1 => n649, B2 => n590, ZN
                           => n339);
   U541 : XOR2_X1 port map( A => a(12), B => n589, Z => n648);
   U542 : OAI22_X1 port map( A1 => n649, A2 => n637, B1 => n650, B2 => n590, ZN
                           => n338);
   U543 : XOR2_X1 port map( A => a(13), B => n589, Z => n649);
   U544 : OAI22_X1 port map( A1 => n590, A2 => n650, B1 => n637, B2 => n650, ZN
                           => n651);
   U545 : NAND2_X1 port map( A1 => b(1), A2 => n590, ZN => n637);
   U546 : XNOR2_X1 port map( A => a(14), B => b(1), ZN => n650);
   U547 : OAI22_X1 port map( A1 => n652, A2 => n653, B1 => n632, B2 => n654, ZN
                           => n335);
   U548 : XOR2_X1 port map( A => n591, B => b(3), Z => n652);
   U549 : OAI22_X1 port map( A1 => n654, A2 => n653, B1 => n632, B2 => n655, ZN
                           => n334);
   U550 : XOR2_X1 port map( A => a(1), B => n585, Z => n654);
   U551 : OAI22_X1 port map( A1 => n655, A2 => n653, B1 => n632, B2 => n656, ZN
                           => n333);
   U552 : XOR2_X1 port map( A => a(2), B => n585, Z => n655);
   U553 : OAI22_X1 port map( A1 => n656, A2 => n653, B1 => n632, B2 => n657, ZN
                           => n332);
   U554 : XOR2_X1 port map( A => a(3), B => n585, Z => n656);
   U555 : OAI22_X1 port map( A1 => n657, A2 => n653, B1 => n632, B2 => n658, ZN
                           => n331);
   U556 : XOR2_X1 port map( A => a(4), B => n585, Z => n657);
   U557 : OAI22_X1 port map( A1 => n658, A2 => n653, B1 => n632, B2 => n659, ZN
                           => n330);
   U558 : XOR2_X1 port map( A => a(5), B => n585, Z => n658);
   U559 : OAI22_X1 port map( A1 => n659, A2 => n653, B1 => n632, B2 => n660, ZN
                           => n329);
   U560 : XOR2_X1 port map( A => a(6), B => n585, Z => n659);
   U561 : OAI22_X1 port map( A1 => n660, A2 => n653, B1 => n632, B2 => n661, ZN
                           => n328);
   U562 : XOR2_X1 port map( A => a(7), B => n585, Z => n660);
   U563 : OAI22_X1 port map( A1 => n661, A2 => n653, B1 => n632, B2 => n662, ZN
                           => n327);
   U564 : XOR2_X1 port map( A => a(8), B => n585, Z => n661);
   U565 : OAI22_X1 port map( A1 => n662, A2 => n653, B1 => n632, B2 => n663, ZN
                           => n326);
   U566 : XOR2_X1 port map( A => a(9), B => n585, Z => n662);
   U567 : OAI22_X1 port map( A1 => n663, A2 => n653, B1 => n632, B2 => n664, ZN
                           => n325);
   U568 : XOR2_X1 port map( A => a(10), B => n585, Z => n663);
   U569 : OAI22_X1 port map( A1 => n664, A2 => n653, B1 => n632, B2 => n665, ZN
                           => n324);
   U570 : XOR2_X1 port map( A => a(11), B => n585, Z => n664);
   U571 : OAI22_X1 port map( A1 => n665, A2 => n653, B1 => n632, B2 => n666, ZN
                           => n323);
   U572 : XOR2_X1 port map( A => a(12), B => n585, Z => n665);
   U573 : AOI22_X1 port map( A1 => n583, A2 => n586, B1 => n584, B2 => n583, ZN
                           => n322);
   U574 : NOR2_X1 port map( A1 => n668, A2 => n591, ZN => n321);
   U575 : OAI22_X1 port map( A1 => n669, A2 => n670, B1 => n668, B2 => n671, ZN
                           => n320);
   U576 : XOR2_X1 port map( A => n591, B => b(5), Z => n669);
   U577 : OAI22_X1 port map( A1 => n671, A2 => n670, B1 => n668, B2 => n672, ZN
                           => n319);
   U578 : XOR2_X1 port map( A => a(1), B => n579, Z => n671);
   U579 : OAI22_X1 port map( A1 => n672, A2 => n670, B1 => n668, B2 => n673, ZN
                           => n318);
   U580 : XOR2_X1 port map( A => a(2), B => n579, Z => n672);
   U581 : OAI22_X1 port map( A1 => n673, A2 => n670, B1 => n668, B2 => n674, ZN
                           => n317);
   U582 : XOR2_X1 port map( A => a(3), B => n579, Z => n673);
   U583 : OAI22_X1 port map( A1 => n674, A2 => n670, B1 => n668, B2 => n675, ZN
                           => n316);
   U584 : XOR2_X1 port map( A => a(4), B => n579, Z => n674);
   U585 : OAI22_X1 port map( A1 => n675, A2 => n670, B1 => n668, B2 => n676, ZN
                           => n315);
   U586 : XOR2_X1 port map( A => a(5), B => n579, Z => n675);
   U587 : OAI22_X1 port map( A1 => n676, A2 => n670, B1 => n668, B2 => n677, ZN
                           => n314);
   U588 : XOR2_X1 port map( A => a(6), B => n579, Z => n676);
   U589 : OAI22_X1 port map( A1 => n677, A2 => n670, B1 => n668, B2 => n678, ZN
                           => n313);
   U590 : XOR2_X1 port map( A => a(7), B => n579, Z => n677);
   U591 : OAI22_X1 port map( A1 => n678, A2 => n670, B1 => n668, B2 => n679, ZN
                           => n312);
   U592 : XOR2_X1 port map( A => a(8), B => n579, Z => n678);
   U593 : OAI22_X1 port map( A1 => n679, A2 => n670, B1 => n668, B2 => n680, ZN
                           => n311);
   U594 : XOR2_X1 port map( A => a(9), B => n579, Z => n679);
   U595 : OAI22_X1 port map( A1 => n681, A2 => n670, B1 => n668, B2 => n682, ZN
                           => n309);
   U596 : OAI22_X1 port map( A1 => n682, A2 => n670, B1 => n668, B2 => n683, ZN
                           => n308);
   U597 : XOR2_X1 port map( A => a(12), B => n579, Z => n682);
   U598 : OAI22_X1 port map( A1 => n685, A2 => n668, B1 => n670, B2 => n685, ZN
                           => n684);
   U599 : NOR2_X1 port map( A1 => n605, A2 => n591, ZN => n306);
   U600 : OAI22_X1 port map( A1 => n686, A2 => n604, B1 => n605, B2 => n687, ZN
                           => n305);
   U601 : XOR2_X1 port map( A => n591, B => b(7), Z => n686);
   U602 : OAI22_X1 port map( A1 => n687, A2 => n604, B1 => n605, B2 => n688, ZN
                           => n304);
   U603 : XOR2_X1 port map( A => a(1), B => n574, Z => n687);
   U604 : OAI22_X1 port map( A1 => n688, A2 => n604, B1 => n605, B2 => n689, ZN
                           => n303);
   U605 : XOR2_X1 port map( A => a(2), B => n574, Z => n688);
   U606 : OAI22_X1 port map( A1 => n689, A2 => n604, B1 => n605, B2 => n690, ZN
                           => n302);
   U607 : XOR2_X1 port map( A => a(3), B => n574, Z => n689);
   U608 : OAI22_X1 port map( A1 => n690, A2 => n604, B1 => n605, B2 => n691, ZN
                           => n301);
   U609 : XOR2_X1 port map( A => a(4), B => n574, Z => n690);
   U610 : OAI22_X1 port map( A1 => n691, A2 => n604, B1 => n605, B2 => n692, ZN
                           => n300);
   U611 : XOR2_X1 port map( A => a(5), B => n574, Z => n691);
   U612 : OAI22_X1 port map( A1 => n692, A2 => n604, B1 => n605, B2 => n693, ZN
                           => n299);
   U613 : XOR2_X1 port map( A => a(6), B => n574, Z => n692);
   U614 : OAI22_X1 port map( A1 => n693, A2 => n604, B1 => n605, B2 => n694, ZN
                           => n298);
   U615 : XOR2_X1 port map( A => a(7), B => n574, Z => n693);
   U616 : OAI22_X1 port map( A1 => n694, A2 => n604, B1 => n605, B2 => n695, ZN
                           => n297);
   U617 : XOR2_X1 port map( A => a(8), B => n574, Z => n694);
   U618 : OAI22_X1 port map( A1 => n695, A2 => n604, B1 => n605, B2 => n696, ZN
                           => n296);
   U619 : XOR2_X1 port map( A => a(9), B => n574, Z => n695);
   U620 : OAI22_X1 port map( A1 => n696, A2 => n604, B1 => n605, B2 => n697, ZN
                           => n295);
   U621 : XOR2_X1 port map( A => a(10), B => n574, Z => n696);
   U622 : OAI22_X1 port map( A1 => n697, A2 => n604, B1 => n605, B2 => n698, ZN
                           => n294);
   U623 : XOR2_X1 port map( A => a(11), B => n574, Z => n697);
   U624 : OAI22_X1 port map( A1 => n698, A2 => n604, B1 => n605, B2 => n603, ZN
                           => n293);
   U625 : XOR2_X1 port map( A => a(13), B => n574, Z => n603);
   U626 : XOR2_X1 port map( A => a(12), B => n574, Z => n698);
   U627 : OAI22_X1 port map( A1 => n606, A2 => n605, B1 => n604, B2 => n606, ZN
                           => n699);
   U628 : XOR2_X1 port map( A => a(14), B => n574, Z => n606);
   U629 : NOR2_X1 port map( A1 => n609, A2 => n591, ZN => n291);
   U630 : OAI22_X1 port map( A1 => n700, A2 => n608, B1 => n609, B2 => n701, ZN
                           => n290);
   U631 : XOR2_X1 port map( A => n591, B => b(9), Z => n700);
   U632 : OAI22_X1 port map( A1 => n701, A2 => n608, B1 => n609, B2 => n702, ZN
                           => n289);
   U633 : XOR2_X1 port map( A => a(1), B => n569, Z => n701);
   U634 : OAI22_X1 port map( A1 => n702, A2 => n608, B1 => n609, B2 => n703, ZN
                           => n288);
   U635 : XOR2_X1 port map( A => a(2), B => n569, Z => n702);
   U636 : OAI22_X1 port map( A1 => n703, A2 => n608, B1 => n609, B2 => n704, ZN
                           => n287);
   U637 : XOR2_X1 port map( A => a(3), B => n569, Z => n703);
   U638 : OAI22_X1 port map( A1 => n704, A2 => n608, B1 => n609, B2 => n705, ZN
                           => n286);
   U639 : XOR2_X1 port map( A => a(4), B => n569, Z => n704);
   U640 : OAI22_X1 port map( A1 => n705, A2 => n608, B1 => n609, B2 => n706, ZN
                           => n285);
   U641 : XOR2_X1 port map( A => a(5), B => n569, Z => n705);
   U642 : OAI22_X1 port map( A1 => n706, A2 => n608, B1 => n609, B2 => n707, ZN
                           => n284);
   U643 : XOR2_X1 port map( A => a(6), B => n569, Z => n706);
   U644 : OAI22_X1 port map( A1 => n707, A2 => n608, B1 => n609, B2 => n708, ZN
                           => n283);
   U645 : XOR2_X1 port map( A => a(7), B => n569, Z => n707);
   U646 : OAI22_X1 port map( A1 => n708, A2 => n608, B1 => n609, B2 => n709, ZN
                           => n282);
   U647 : XOR2_X1 port map( A => a(8), B => n569, Z => n708);
   U648 : OAI22_X1 port map( A1 => n709, A2 => n608, B1 => n609, B2 => n710, ZN
                           => n281);
   U649 : XOR2_X1 port map( A => a(9), B => n569, Z => n709);
   U650 : OAI22_X1 port map( A1 => n710, A2 => n608, B1 => n609, B2 => n711, ZN
                           => n280);
   U651 : XOR2_X1 port map( A => a(10), B => n569, Z => n710);
   U652 : OAI22_X1 port map( A1 => n711, A2 => n608, B1 => n609, B2 => n712, ZN
                           => n279);
   U653 : XOR2_X1 port map( A => a(11), B => n569, Z => n711);
   U654 : OAI22_X1 port map( A1 => n712, A2 => n608, B1 => n609, B2 => n607, ZN
                           => n278);
   U655 : XOR2_X1 port map( A => a(13), B => n569, Z => n607);
   U656 : XOR2_X1 port map( A => a(12), B => n569, Z => n712);
   U657 : OAI22_X1 port map( A1 => n610, A2 => n609, B1 => n608, B2 => n610, ZN
                           => n713);
   U658 : XOR2_X1 port map( A => a(14), B => n569, Z => n610);
   U659 : NOR2_X1 port map( A1 => n565, A2 => n591, ZN => n276);
   U660 : OAI22_X1 port map( A1 => n714, A2 => n611, B1 => n565, B2 => n715, ZN
                           => n275);
   U661 : XOR2_X1 port map( A => n591, B => b(11), Z => n714);
   U662 : OAI22_X1 port map( A1 => n715, A2 => n611, B1 => n565, B2 => n716, ZN
                           => n274);
   U663 : XOR2_X1 port map( A => a(1), B => n563, Z => n715);
   U664 : OAI22_X1 port map( A1 => n716, A2 => n611, B1 => n565, B2 => n717, ZN
                           => n273);
   U665 : XOR2_X1 port map( A => a(2), B => n563, Z => n716);
   U666 : OAI22_X1 port map( A1 => n717, A2 => n611, B1 => n565, B2 => n718, ZN
                           => n272);
   U667 : XOR2_X1 port map( A => a(3), B => n563, Z => n717);
   U668 : OAI22_X1 port map( A1 => n719, A2 => n611, B1 => n565, B2 => n720, ZN
                           => n270);
   U669 : OAI22_X1 port map( A1 => n720, A2 => n611, B1 => n565, B2 => n721, ZN
                           => n269);
   U670 : XOR2_X1 port map( A => a(6), B => n563, Z => n720);
   U671 : OAI22_X1 port map( A1 => n721, A2 => n611, B1 => n565, B2 => n722, ZN
                           => n268);
   U672 : XOR2_X1 port map( A => a(7), B => n563, Z => n721);
   U673 : OAI22_X1 port map( A1 => n722, A2 => n611, B1 => n565, B2 => n723, ZN
                           => n267);
   U674 : XOR2_X1 port map( A => a(8), B => n563, Z => n722);
   U675 : OAI22_X1 port map( A1 => n723, A2 => n611, B1 => n565, B2 => n724, ZN
                           => n266);
   U676 : XOR2_X1 port map( A => a(9), B => n563, Z => n723);
   U677 : OAI22_X1 port map( A1 => n724, A2 => n611, B1 => n565, B2 => n725, ZN
                           => n265);
   U678 : XOR2_X1 port map( A => a(10), B => n563, Z => n724);
   U679 : OAI22_X1 port map( A1 => n725, A2 => n611, B1 => n565, B2 => n726, ZN
                           => n264);
   U680 : XOR2_X1 port map( A => a(11), B => n563, Z => n725);
   U681 : OAI22_X1 port map( A1 => n726, A2 => n611, B1 => n565, B2 => n612, ZN
                           => n263);
   U682 : XOR2_X1 port map( A => a(13), B => n563, Z => n612);
   U683 : XOR2_X1 port map( A => a(12), B => n563, Z => n726);
   U684 : NOR2_X1 port map( A1 => n597, A2 => n591, ZN => n261);
   U685 : OAI22_X1 port map( A1 => n727, A2 => n598, B1 => n597, B2 => n728, ZN
                           => n260);
   U686 : XOR2_X1 port map( A => n558, B => a(0), Z => n727);
   U687 : OAI22_X1 port map( A1 => n728, A2 => n598, B1 => n597, B2 => n729, ZN
                           => n259);
   U688 : XOR2_X1 port map( A => a(1), B => n558, Z => n728);
   U689 : OAI22_X1 port map( A1 => n729, A2 => n598, B1 => n597, B2 => n730, ZN
                           => n258);
   U690 : XOR2_X1 port map( A => a(2), B => n558, Z => n729);
   U691 : OAI22_X1 port map( A1 => n730, A2 => n598, B1 => n597, B2 => n731, ZN
                           => n257);
   U692 : XOR2_X1 port map( A => a(3), B => n558, Z => n730);
   U693 : OAI22_X1 port map( A1 => n731, A2 => n598, B1 => n597, B2 => n732, ZN
                           => n256);
   U694 : XOR2_X1 port map( A => a(4), B => n558, Z => n731);
   U695 : OAI22_X1 port map( A1 => n732, A2 => n598, B1 => n597, B2 => n733, ZN
                           => n255);
   U696 : XOR2_X1 port map( A => a(5), B => n558, Z => n732);
   U697 : OAI22_X1 port map( A1 => n733, A2 => n598, B1 => n597, B2 => n734, ZN
                           => n254);
   U698 : XOR2_X1 port map( A => a(6), B => n558, Z => n733);
   U699 : OAI22_X1 port map( A1 => n734, A2 => n598, B1 => n597, B2 => n735, ZN
                           => n253);
   U700 : XOR2_X1 port map( A => a(7), B => n558, Z => n734);
   U701 : OAI22_X1 port map( A1 => n735, A2 => n598, B1 => n597, B2 => n736, ZN
                           => n252);
   U702 : XOR2_X1 port map( A => a(8), B => n558, Z => n735);
   U703 : OAI22_X1 port map( A1 => n736, A2 => n598, B1 => n597, B2 => n737, ZN
                           => n251);
   U704 : XOR2_X1 port map( A => a(9), B => n558, Z => n736);
   U705 : OAI22_X1 port map( A1 => n737, A2 => n598, B1 => n597, B2 => n738, ZN
                           => n250);
   U706 : XOR2_X1 port map( A => a(10), B => n558, Z => n737);
   U707 : OAI22_X1 port map( A1 => n738, A2 => n598, B1 => n597, B2 => n599, ZN
                           => n249);
   U708 : XNOR2_X1 port map( A => a(12), B => b(13), ZN => n599);
   U709 : XOR2_X1 port map( A => a(11), B => n558, Z => n738);
   U710 : OAI21_X1 port map( B1 => n579, B2 => n670, A => n739, ZN => n245);
   U711 : OR3_X1 port map( A1 => n668, A2 => a(0), A3 => n579, ZN => n739);
   U712 : OAI21_X1 port map( B1 => n574, B2 => n604, A => n740, ZN => n244);
   U713 : OR3_X1 port map( A1 => n605, A2 => a(0), A3 => n574, ZN => n740);
   U714 : NAND2_X1 port map( A1 => n605, A2 => n741, ZN => n604);
   U715 : XOR2_X1 port map( A => b(7), B => b(6), Z => n741);
   U716 : OAI21_X1 port map( B1 => n569, B2 => n608, A => n742, ZN => n243);
   U717 : OR3_X1 port map( A1 => n609, A2 => a(0), A3 => n569, ZN => n742);
   U718 : NAND2_X1 port map( A1 => n609, A2 => n743, ZN => n608);
   U719 : XOR2_X1 port map( A => b(9), B => b(8), Z => n743);
   U720 : OAI21_X1 port map( B1 => n563, B2 => n611, A => n744, ZN => n242);
   U721 : NAND3_X1 port map( A1 => n601, A2 => n591, A3 => b(11), ZN => n744);
   U722 : OAI21_X1 port map( B1 => n558, B2 => n598, A => n745, ZN => n241);
   U723 : OR3_X1 port map( A1 => n597, A2 => a(0), A3 => n558, ZN => n745);
   U724 : NAND2_X1 port map( A1 => n597, A2 => n746, ZN => n598);
   U725 : XOR2_X1 port map( A => b(13), B => b(12), Z => n746);
   U726 : XNOR2_X1 port map( A => n747, B => n748, ZN => n137);
   U727 : OR2_X1 port map( A1 => n747, A2 => n748, ZN => n136);
   U728 : OAI22_X1 port map( A1 => n680, A2 => n670, B1 => n668, B2 => n681, ZN
                           => n748);
   U729 : XOR2_X1 port map( A => a(11), B => n579, Z => n681);
   U730 : XOR2_X1 port map( A => a(10), B => n579, Z => n680);
   U731 : OAI22_X1 port map( A1 => n718, A2 => n611, B1 => n565, B2 => n719, ZN
                           => n747);
   U732 : XOR2_X1 port map( A => a(5), B => n563, Z => n719);
   U733 : NAND2_X1 port map( A1 => n565, A2 => n749, ZN => n611);
   U734 : XOR2_X1 port map( A => b(11), B => b(10), Z => n749);
   U735 : XOR2_X1 port map( A => b(10), B => b(9), Z => n601);
   U736 : XOR2_X1 port map( A => a(4), B => n563, Z => n718);
   U737 : OAI22_X1 port map( A1 => n666, A2 => n653, B1 => n632, B2 => n667, ZN
                           => n124);
   U738 : XNOR2_X1 port map( A => a(14), B => b(3), ZN => n667);
   U739 : NAND2_X1 port map( A1 => n632, A2 => n750, ZN => n653);
   U740 : XOR2_X1 port map( A => b(3), B => b(2), Z => n750);
   U741 : XOR2_X1 port map( A => a(13), B => n585, Z => n666);
   U742 : OAI22_X1 port map( A1 => n683, A2 => n670, B1 => n668, B2 => n685, ZN
                           => n102);
   U743 : XOR2_X1 port map( A => a(14), B => n579, Z => n685);
   U744 : NAND2_X1 port map( A1 => n668, A2 => n751, ZN => n670);
   U745 : XOR2_X1 port map( A => b(5), B => b(4), Z => n751);
   U746 : XOR2_X1 port map( A => a(13), B => n579, Z => n683);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_IIR_FILTER.all;

entity IIR_FILTER_DW_mult_tc_0 is

   port( a : in std_logic_vector (13 downto 0);  b : in std_logic_vector (14 
         downto 0);  product : out std_logic_vector (28 downto 0));

end IIR_FILTER_DW_mult_tc_0;

architecture SYN_USE_DEFA_ARCH_NAME of IIR_FILTER_DW_mult_tc_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X2
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n32, n33, n34, n35, n36, n37, n38, n58, n59, n60, n61, n62, n64, n65,
      n66, n67, n68, n69, n70, n71, n72, n74, n75, n76, n77, n78, n79, n80, n81
      , n82, n83, n84, n85, n86, n88, n89, n90, n91, n92, n93, n94, n95, n96, 
      n97, n98, n99, n100, n101, n102, n103, n104, n106, n107, n108, n109, n110
      , n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
      n123, n124, n125, n126, n128, n129, n130, n131, n132, n133, n134, n135, 
      n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, 
      n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, 
      n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, 
      n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, 
      n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, 
      n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, 
      n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, 
      n220, n221, n222, n223, n243, n244, n245, n246, n247, n251, n252, n253, 
      n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n266, 
      n267, n268, n269, n270, n271, n272, n273, n275, n276, n277, n278, n279, 
      n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, 
      n293, n294, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, 
      n306, n307, n308, n309, n311, n312, n314, n315, n316, n317, n318, n319, 
      n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, 
      n332, n333, n334, n335, n336, n337, n338, n341, n342, n343, n344, n345, 
      n346, n347, n348, n349, n350, n351, n352, n556, n557, n558, n559, n560, 
      n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, 
      n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, 
      n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, n596, 
      n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, 
      n609, n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, 
      n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, 
      n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, 
      n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, 
      n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668, 
      n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, 
      n681, n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, 
      n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704, 
      n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715, n716, 
      n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, n728, 
      n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, 
      n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, n752, 
      n753, n754 : std_logic;

begin
   
   U33 : FA_X1 port map( A => n60, B => n59, CI => n33, CO => n32, S => 
                           product(25));
   U34 : FA_X1 port map( A => n61, B => n64, CI => n34, CO => n33, S => 
                           product(24));
   U35 : FA_X1 port map( A => n65, B => n68, CI => n35, CO => n34, S => 
                           product(23));
   U36 : FA_X1 port map( A => n69, B => n74, CI => n36, CO => n35, S => 
                           product(22));
   U37 : FA_X1 port map( A => n75, B => n80, CI => n37, CO => n36, S => 
                           product(21));
   U38 : FA_X1 port map( A => n81, B => n88, CI => n38, CO => n37, S => 
                           product(20));
   U59 : FA_X1 port map( A => n251, B => n62, CI => n566, CO => n58, S => n59);
   U60 : FA_X1 port map( A => n567, B => n252, CI => n66, CO => n60, S => n61);
   U62 : FA_X1 port map( A => n70, B => n253, CI => n67, CO => n64, S => n65);
   U63 : FA_X1 port map( A => n266, B => n72, CI => n571, CO => n66, S => n67);
   U64 : FA_X1 port map( A => n71, B => n78, CI => n76, CO => n68, S => n69);
   U65 : FA_X1 port map( A => n254, B => n267, CI => n572, CO => n70, S => n71)
                           ;
   U67 : FA_X1 port map( A => n82, B => n79, CI => n77, CO => n74, S => n75);
   U68 : FA_X1 port map( A => n86, B => n281, CI => n84, CO => n76, S => n77);
   U69 : FA_X1 port map( A => n268, B => n255, CI => n576, CO => n78, S => n79)
                           ;
   U70 : FA_X1 port map( A => n83, B => n85, CI => n90, CO => n80, S => n81);
   U71 : FA_X1 port map( A => n94, B => n577, CI => n92, CO => n82, S => n83);
   U72 : FA_X1 port map( A => n256, B => n269, CI => n282, CO => n84, S => n85)
                           ;
   U74 : FA_X1 port map( A => n98, B => n100, CI => n91, CO => n88, S => n89);
   U75 : FA_X1 port map( A => n93, B => n102, CI => n95, CO => n90, S => n91);
   U76 : FA_X1 port map( A => n270, B => n104, CI => n283, CO => n92, S => n93)
                           ;
   U77 : FA_X1 port map( A => n296, B => n257, CI => n582, CO => n94, S => n95)
                           ;
   U78 : FA_X1 port map( A => n108, B => n101, CI => n99, CO => n96, S => n97);
   U79 : FA_X1 port map( A => n103, B => n112, CI => n110, CO => n98, S => n99)
                           ;
   U80 : FA_X1 port map( A => n580, B => n284, CI => n114, CO => n100, S => 
                           n101);
   U81 : FA_X1 port map( A => n297, B => n271, CI => n258, CO => n102, S => 
                           n103);
   U83 : FA_X1 port map( A => n118, B => n111, CI => n109, CO => n106, S => 
                           n107);
   U84 : FA_X1 port map( A => n115, B => n113, CI => n120, CO => n108, S => 
                           n109);
   U85 : FA_X1 port map( A => n124, B => n298, CI => n122, CO => n110, S => 
                           n111);
   U86 : FA_X1 port map( A => n272, B => n311, CI => n285, CO => n112, S => 
                           n113);
   U87 : FA_X1 port map( A => n126, B => n259, CI => n325, CO => n114, S => 
                           n115);
   U88 : FA_X1 port map( A => n130, B => n121, CI => n119, CO => n116, S => 
                           n117);
   U89 : FA_X1 port map( A => n123, B => n125, CI => n132, CO => n118, S => 
                           n119);
   U90 : FA_X1 port map( A => n136, B => n138, CI => n134, CO => n120, S => 
                           n121);
   U91 : FA_X1 port map( A => n260, B => n286, CI => n585, CO => n122, S => 
                           n123);
   U92 : FA_X1 port map( A => n312, B => n273, CI => n299, CO => n124, S => 
                           n125);
   U94 : FA_X1 port map( A => n142, B => n133, CI => n131, CO => n128, S => 
                           n129);
   U95 : FA_X1 port map( A => n135, B => n137, CI => n144, CO => n130, S => 
                           n131);
   U96 : FA_X1 port map( A => n148, B => n139, CI => n146, CO => n132, S => 
                           n133);
   U97 : FA_X1 port map( A => n300, B => n326, CI => n150, CO => n134, S => 
                           n135);
   U98 : FA_X1 port map( A => n261, B => n287, CI => n591, CO => n136, S => 
                           n137);
   U101 : FA_X1 port map( A => n154, B => n145, CI => n143, CO => n140, S => 
                           n141);
   U102 : FA_X1 port map( A => n147, B => n149, CI => n156, CO => n142, S => 
                           n143);
   U103 : FA_X1 port map( A => n160, B => n151, CI => n158, CO => n144, S => 
                           n145);
   U104 : FA_X1 port map( A => n314, B => n327, CI => n162, CO => n146, S => 
                           n147);
   U105 : FA_X1 port map( A => n288, B => n301, CI => n341, CO => n148, S => 
                           n149);
   U106 : HA_X1 port map( A => n262, B => n275, CO => n150, S => n151);
   U107 : FA_X1 port map( A => n166, B => n157, CI => n155, CO => n152, S => 
                           n153);
   U108 : FA_X1 port map( A => n161, B => n159, CI => n168, CO => n154, S => 
                           n155);
   U109 : FA_X1 port map( A => n172, B => n163, CI => n170, CO => n156, S => 
                           n157);
   U110 : FA_X1 port map( A => n276, B => n315, CI => n289, CO => n158, S => 
                           n159);
   U111 : FA_X1 port map( A => n342, B => n302, CI => n328, CO => n160, S => 
                           n161);
   U112 : HA_X1 port map( A => n243, B => n263, CO => n162, S => n163);
   U113 : FA_X1 port map( A => n169, B => n176, CI => n167, CO => n164, S => 
                           n165);
   U114 : FA_X1 port map( A => n171, B => n173, CI => n178, CO => n166, S => 
                           n167);
   U115 : FA_X1 port map( A => n182, B => n316, CI => n180, CO => n168, S => 
                           n169);
   U116 : FA_X1 port map( A => n277, B => n329, CI => n303, CO => n170, S => 
                           n171);
   U117 : FA_X1 port map( A => n290, B => n264, CI => n343, CO => n172, S => 
                           n173);
   U118 : FA_X1 port map( A => n186, B => n179, CI => n177, CO => n174, S => 
                           n175);
   U119 : FA_X1 port map( A => n188, B => n190, CI => n181, CO => n176, S => 
                           n177);
   U120 : FA_X1 port map( A => n304, B => n330, CI => n183, CO => n178, S => 
                           n179);
   U121 : FA_X1 port map( A => n291, B => n317, CI => n344, CO => n180, S => 
                           n181);
   U122 : HA_X1 port map( A => n244, B => n278, CO => n182, S => n183);
   U123 : FA_X1 port map( A => n194, B => n189, CI => n187, CO => n184, S => 
                           n185);
   U124 : FA_X1 port map( A => n196, B => n198, CI => n191, CO => n186, S => 
                           n187);
   U125 : FA_X1 port map( A => n292, B => n331, CI => n318, CO => n188, S => 
                           n189);
   U126 : FA_X1 port map( A => n305, B => n279, CI => n345, CO => n190, S => 
                           n191);
   U127 : FA_X1 port map( A => n197, B => n202, CI => n195, CO => n192, S => 
                           n193);
   U128 : FA_X1 port map( A => n199, B => n346, CI => n204, CO => n194, S => 
                           n195);
   U129 : FA_X1 port map( A => n306, B => n319, CI => n332, CO => n196, S => 
                           n197);
   U130 : HA_X1 port map( A => n245, B => n293, CO => n198, S => n199);
   U131 : FA_X1 port map( A => n205, B => n208, CI => n203, CO => n200, S => 
                           n201);
   U132 : FA_X1 port map( A => n307, B => n333, CI => n210, CO => n202, S => 
                           n203);
   U133 : FA_X1 port map( A => n320, B => n294, CI => n347, CO => n204, S => 
                           n205);
   U134 : FA_X1 port map( A => n214, B => n211, CI => n209, CO => n206, S => 
                           n207);
   U135 : FA_X1 port map( A => n321, B => n348, CI => n334, CO => n208, S => 
                           n209);
   U136 : HA_X1 port map( A => n246, B => n308, CO => n210, S => n211);
   U137 : FA_X1 port map( A => n218, B => n322, CI => n215, CO => n212, S => 
                           n213);
   U138 : FA_X1 port map( A => n349, B => n309, CI => n335, CO => n214, S => 
                           n215);
   U139 : FA_X1 port map( A => n336, B => n350, CI => n219, CO => n216, S => 
                           n217);
   U140 : HA_X1 port map( A => n247, B => n323, CO => n218, S => n219);
   U141 : FA_X1 port map( A => n351, B => n324, CI => n337, CO => n220, S => 
                           n221);
   U142 : HA_X1 port map( A => n338, B => n352, CO => n222, S => n223);
   U442 : XOR2_X2 port map( A => a(2), B => n593, Z => n633);
   U443 : INV_X1 port map( A => n140, ZN => n559);
   U444 : INV_X1 port map( A => n129, ZN => n558);
   U445 : INV_X1 port map( A => n200, ZN => n574);
   U446 : INV_X1 port map( A => n193, ZN => n570);
   U447 : INV_X1 port map( A => n184, ZN => n569);
   U448 : INV_X1 port map( A => n175, ZN => n565);
   U449 : INV_X1 port map( A => n116, ZN => n557);
   U450 : INV_X1 port map( A => n107, ZN => n556);
   U451 : INV_X1 port map( A => n164, ZN => n564);
   U452 : INV_X1 port map( A => n153, ZN => n560);
   U453 : INV_X1 port map( A => n96, ZN => n562);
   U454 : INV_X1 port map( A => n89, ZN => n561);
   U455 : INV_X1 port map( A => n212, ZN => n579);
   U456 : INV_X1 port map( A => n207, ZN => n575);
   U457 : INV_X1 port map( A => n86, ZN => n577);
   U458 : INV_X1 port map( A => n220, ZN => n584);
   U459 : INV_X1 port map( A => n217, ZN => n581);
   U460 : INV_X1 port map( A => n637, ZN => n592);
   U461 : INV_X1 port map( A => n633, ZN => n590);
   U462 : INV_X1 port map( A => n654, ZN => n587);
   U463 : INV_X1 port map( A => n126, ZN => n585);
   U464 : INV_X1 port map( A => n223, ZN => n588);
   U465 : INV_X1 port map( A => n72, ZN => n572);
   U466 : INV_X1 port map( A => n668, ZN => n586);
   U467 : INV_X1 port map( A => n652, ZN => n591);
   U468 : INV_X1 port map( A => n700, ZN => n576);
   U469 : INV_X1 port map( A => n104, ZN => n580);
   U470 : INV_X1 port map( A => n685, ZN => n582);
   U471 : INV_X1 port map( A => n714, ZN => n571);
   U472 : INV_X1 port map( A => n62, ZN => n567);
   U473 : INV_X1 port map( A => n728, ZN => n566);
   U474 : INV_X1 port map( A => a(5), ZN => n583);
   U475 : INV_X1 port map( A => a(7), ZN => n578);
   U476 : INV_X1 port map( A => a(9), ZN => n573);
   U477 : INV_X1 port map( A => a(11), ZN => n568);
   U478 : INV_X1 port map( A => b(0), ZN => n595);
   U479 : INV_X1 port map( A => a(3), ZN => n589);
   U480 : INV_X1 port map( A => a(1), ZN => n593);
   U481 : INV_X1 port map( A => a(0), ZN => n594);
   U482 : INV_X1 port map( A => a(13), ZN => n563);
   U483 : XNOR2_X2 port map( A => a(6), B => a(5), ZN => n604);
   U484 : XNOR2_X2 port map( A => a(8), B => a(7), ZN => n608);
   U485 : XNOR2_X2 port map( A => a(12), B => a(11), ZN => n599);
   U486 : XNOR2_X2 port map( A => a(10), B => a(9), ZN => n612);
   U487 : XNOR2_X2 port map( A => a(4), B => a(3), ZN => n669);
   U488 : XNOR2_X1 port map( A => n596, B => n597, ZN => product(26));
   U489 : XOR2_X1 port map( A => n58, B => n32, Z => n597);
   U490 : OAI22_X1 port map( A1 => n598, A2 => n599, B1 => n600, B2 => n601, ZN
                           => n596);
   U491 : XOR2_X1 port map( A => b(14), B => n563, Z => n598);
   U492 : OAI22_X1 port map( A1 => n602, A2 => n603, B1 => n604, B2 => n605, ZN
                           => n86);
   U493 : OAI22_X1 port map( A1 => n606, A2 => n607, B1 => n608, B2 => n609, ZN
                           => n72);
   U494 : OAI22_X1 port map( A1 => n610, A2 => n611, B1 => n612, B2 => n613, ZN
                           => n62);
   U495 : OAI222_X1 port map( A1 => n614, A2 => n561, B1 => n614, B2 => n562, 
                           C1 => n562, C2 => n561, ZN => n38);
   U496 : AOI222_X1 port map( A1 => n615, A2 => n97, B1 => n615, B2 => n106, C1
                           => n106, C2 => n97, ZN => n614);
   U497 : OAI222_X1 port map( A1 => n616, A2 => n556, B1 => n616, B2 => n557, 
                           C1 => n557, C2 => n556, ZN => n615);
   U498 : AOI222_X1 port map( A1 => n617, A2 => n117, B1 => n617, B2 => n128, 
                           C1 => n128, C2 => n117, ZN => n616);
   U499 : OAI222_X1 port map( A1 => n618, A2 => n558, B1 => n618, B2 => n559, 
                           C1 => n559, C2 => n558, ZN => n617);
   U500 : AOI222_X1 port map( A1 => n619, A2 => n141, B1 => n619, B2 => n152, 
                           C1 => n152, C2 => n141, ZN => n618);
   U501 : OAI222_X1 port map( A1 => n620, A2 => n560, B1 => n620, B2 => n564, 
                           C1 => n564, C2 => n560, ZN => n619);
   U502 : AOI222_X1 port map( A1 => n621, A2 => n165, B1 => n621, B2 => n174, 
                           C1 => n174, C2 => n165, ZN => n620);
   U503 : OAI222_X1 port map( A1 => n622, A2 => n565, B1 => n622, B2 => n569, 
                           C1 => n569, C2 => n565, ZN => n621);
   U504 : AOI222_X1 port map( A1 => n623, A2 => n185, B1 => n623, B2 => n192, 
                           C1 => n192, C2 => n185, ZN => n622);
   U505 : OAI222_X1 port map( A1 => n624, A2 => n570, B1 => n624, B2 => n574, 
                           C1 => n574, C2 => n570, ZN => n623);
   U506 : AOI222_X1 port map( A1 => n625, A2 => n201, B1 => n625, B2 => n206, 
                           C1 => n206, C2 => n201, ZN => n624);
   U507 : OAI222_X1 port map( A1 => n626, A2 => n575, B1 => n626, B2 => n579, 
                           C1 => n579, C2 => n575, ZN => n625);
   U508 : AOI222_X1 port map( A1 => n627, A2 => n213, B1 => n627, B2 => n216, 
                           C1 => n216, C2 => n213, ZN => n626);
   U509 : OAI222_X1 port map( A1 => n628, A2 => n581, B1 => n628, B2 => n584, 
                           C1 => n584, C2 => n581, ZN => n627);
   U510 : AOI222_X1 port map( A1 => n629, A2 => n221, B1 => n629, B2 => n222, 
                           C1 => n222, C2 => n221, ZN => n628);
   U511 : OAI222_X1 port map( A1 => n630, A2 => n588, B1 => n631, B2 => n630, 
                           C1 => n631, C2 => n588, ZN => n629);
   U512 : AOI21_X1 port map( B1 => a(3), B2 => n587, A => n632, ZN => n631);
   U513 : NOR3_X1 port map( A1 => n633, A2 => b(0), A3 => n589, ZN => n632);
   U514 : MUX2_X1 port map( A => n634, B => n635, S => b(0), Z => n630);
   U515 : NAND2_X1 port map( A1 => n590, A2 => n636, ZN => n635);
   U516 : NAND2_X1 port map( A1 => n637, A2 => n636, ZN => n634);
   U517 : OAI22_X1 port map( A1 => n592, A2 => n638, B1 => n639, B2 => n594, ZN
                           => n636);
   U518 : NOR2_X1 port map( A1 => n593, A2 => b(1), ZN => n637);
   U519 : OAI22_X1 port map( A1 => n639, A2 => n638, B1 => n640, B2 => n594, ZN
                           => n352);
   U520 : XOR2_X1 port map( A => b(2), B => n593, Z => n639);
   U521 : OAI22_X1 port map( A1 => n640, A2 => n638, B1 => n641, B2 => n594, ZN
                           => n351);
   U522 : XOR2_X1 port map( A => b(3), B => n593, Z => n640);
   U523 : OAI22_X1 port map( A1 => n641, A2 => n638, B1 => n642, B2 => n594, ZN
                           => n350);
   U524 : XOR2_X1 port map( A => b(4), B => n593, Z => n641);
   U525 : OAI22_X1 port map( A1 => n642, A2 => n638, B1 => n643, B2 => n594, ZN
                           => n349);
   U526 : XOR2_X1 port map( A => b(5), B => n593, Z => n642);
   U527 : OAI22_X1 port map( A1 => n643, A2 => n638, B1 => n644, B2 => n594, ZN
                           => n348);
   U528 : XOR2_X1 port map( A => b(6), B => n593, Z => n643);
   U529 : OAI22_X1 port map( A1 => n644, A2 => n638, B1 => n645, B2 => n594, ZN
                           => n347);
   U530 : XOR2_X1 port map( A => b(7), B => n593, Z => n644);
   U531 : OAI22_X1 port map( A1 => n645, A2 => n638, B1 => n646, B2 => n594, ZN
                           => n346);
   U532 : XOR2_X1 port map( A => b(8), B => n593, Z => n645);
   U533 : OAI22_X1 port map( A1 => n646, A2 => n638, B1 => n647, B2 => n594, ZN
                           => n345);
   U534 : XOR2_X1 port map( A => b(9), B => n593, Z => n646);
   U535 : OAI22_X1 port map( A1 => n647, A2 => n638, B1 => n648, B2 => n594, ZN
                           => n344);
   U536 : XOR2_X1 port map( A => b(10), B => n593, Z => n647);
   U537 : OAI22_X1 port map( A1 => n648, A2 => n638, B1 => n649, B2 => n594, ZN
                           => n343);
   U538 : XOR2_X1 port map( A => b(11), B => n593, Z => n648);
   U539 : OAI22_X1 port map( A1 => n649, A2 => n638, B1 => n650, B2 => n594, ZN
                           => n342);
   U540 : XOR2_X1 port map( A => b(12), B => n593, Z => n649);
   U541 : OAI22_X1 port map( A1 => n650, A2 => n638, B1 => n651, B2 => n594, ZN
                           => n341);
   U542 : XOR2_X1 port map( A => b(13), B => n593, Z => n650);
   U543 : OAI22_X1 port map( A1 => n594, A2 => n651, B1 => n638, B2 => n651, ZN
                           => n652);
   U544 : NAND2_X1 port map( A1 => a(1), A2 => n594, ZN => n638);
   U545 : XNOR2_X1 port map( A => b(14), B => a(1), ZN => n651);
   U546 : OAI22_X1 port map( A1 => n653, A2 => n654, B1 => n633, B2 => n655, ZN
                           => n338);
   U547 : XOR2_X1 port map( A => n589, B => b(0), Z => n653);
   U548 : OAI22_X1 port map( A1 => n655, A2 => n654, B1 => n633, B2 => n656, ZN
                           => n337);
   U549 : XOR2_X1 port map( A => b(1), B => n589, Z => n655);
   U550 : OAI22_X1 port map( A1 => n656, A2 => n654, B1 => n633, B2 => n657, ZN
                           => n336);
   U551 : XOR2_X1 port map( A => b(2), B => n589, Z => n656);
   U552 : OAI22_X1 port map( A1 => n657, A2 => n654, B1 => n633, B2 => n658, ZN
                           => n335);
   U553 : XOR2_X1 port map( A => b(3), B => n589, Z => n657);
   U554 : OAI22_X1 port map( A1 => n658, A2 => n654, B1 => n633, B2 => n659, ZN
                           => n334);
   U555 : XOR2_X1 port map( A => b(4), B => n589, Z => n658);
   U556 : OAI22_X1 port map( A1 => n659, A2 => n654, B1 => n633, B2 => n660, ZN
                           => n333);
   U557 : XOR2_X1 port map( A => b(5), B => n589, Z => n659);
   U558 : OAI22_X1 port map( A1 => n660, A2 => n654, B1 => n633, B2 => n661, ZN
                           => n332);
   U559 : XOR2_X1 port map( A => b(6), B => n589, Z => n660);
   U560 : OAI22_X1 port map( A1 => n661, A2 => n654, B1 => n633, B2 => n662, ZN
                           => n331);
   U561 : XOR2_X1 port map( A => b(7), B => n589, Z => n661);
   U562 : OAI22_X1 port map( A1 => n662, A2 => n654, B1 => n633, B2 => n663, ZN
                           => n330);
   U563 : XOR2_X1 port map( A => b(8), B => n589, Z => n662);
   U564 : OAI22_X1 port map( A1 => n663, A2 => n654, B1 => n633, B2 => n664, ZN
                           => n329);
   U565 : XOR2_X1 port map( A => b(9), B => n589, Z => n663);
   U566 : OAI22_X1 port map( A1 => n664, A2 => n654, B1 => n633, B2 => n665, ZN
                           => n328);
   U567 : XOR2_X1 port map( A => b(10), B => n589, Z => n664);
   U568 : OAI22_X1 port map( A1 => n665, A2 => n654, B1 => n633, B2 => n666, ZN
                           => n327);
   U569 : XOR2_X1 port map( A => b(11), B => n589, Z => n665);
   U570 : OAI22_X1 port map( A1 => n666, A2 => n654, B1 => n633, B2 => n667, ZN
                           => n326);
   U571 : XOR2_X1 port map( A => b(12), B => n589, Z => n666);
   U572 : AOI22_X1 port map( A1 => n586, A2 => n590, B1 => n587, B2 => n586, ZN
                           => n325);
   U573 : NOR2_X1 port map( A1 => n669, A2 => n595, ZN => n324);
   U574 : OAI22_X1 port map( A1 => n670, A2 => n671, B1 => n669, B2 => n672, ZN
                           => n323);
   U575 : XOR2_X1 port map( A => n583, B => b(0), Z => n670);
   U576 : OAI22_X1 port map( A1 => n672, A2 => n671, B1 => n669, B2 => n673, ZN
                           => n322);
   U577 : XOR2_X1 port map( A => b(1), B => n583, Z => n672);
   U578 : OAI22_X1 port map( A1 => n673, A2 => n671, B1 => n669, B2 => n674, ZN
                           => n321);
   U579 : XOR2_X1 port map( A => b(2), B => n583, Z => n673);
   U580 : OAI22_X1 port map( A1 => n674, A2 => n671, B1 => n669, B2 => n675, ZN
                           => n320);
   U581 : XOR2_X1 port map( A => b(3), B => n583, Z => n674);
   U582 : OAI22_X1 port map( A1 => n675, A2 => n671, B1 => n669, B2 => n676, ZN
                           => n319);
   U583 : XOR2_X1 port map( A => b(4), B => n583, Z => n675);
   U584 : OAI22_X1 port map( A1 => n676, A2 => n671, B1 => n669, B2 => n677, ZN
                           => n318);
   U585 : XOR2_X1 port map( A => b(5), B => n583, Z => n676);
   U586 : OAI22_X1 port map( A1 => n677, A2 => n671, B1 => n669, B2 => n678, ZN
                           => n317);
   U587 : XOR2_X1 port map( A => b(6), B => n583, Z => n677);
   U588 : OAI22_X1 port map( A1 => n678, A2 => n671, B1 => n669, B2 => n679, ZN
                           => n316);
   U589 : XOR2_X1 port map( A => b(7), B => n583, Z => n678);
   U590 : OAI22_X1 port map( A1 => n679, A2 => n671, B1 => n669, B2 => n680, ZN
                           => n315);
   U591 : XOR2_X1 port map( A => b(8), B => n583, Z => n679);
   U592 : OAI22_X1 port map( A1 => n680, A2 => n671, B1 => n669, B2 => n681, ZN
                           => n314);
   U593 : XOR2_X1 port map( A => b(9), B => n583, Z => n680);
   U594 : OAI22_X1 port map( A1 => n682, A2 => n671, B1 => n669, B2 => n683, ZN
                           => n312);
   U595 : OAI22_X1 port map( A1 => n683, A2 => n671, B1 => n669, B2 => n684, ZN
                           => n311);
   U596 : XOR2_X1 port map( A => b(12), B => n583, Z => n683);
   U597 : OAI22_X1 port map( A1 => n686, A2 => n669, B1 => n671, B2 => n686, ZN
                           => n685);
   U598 : NOR2_X1 port map( A1 => n604, A2 => n595, ZN => n309);
   U599 : OAI22_X1 port map( A1 => n687, A2 => n603, B1 => n604, B2 => n688, ZN
                           => n308);
   U600 : XOR2_X1 port map( A => n578, B => b(0), Z => n687);
   U601 : OAI22_X1 port map( A1 => n688, A2 => n603, B1 => n604, B2 => n689, ZN
                           => n307);
   U602 : XOR2_X1 port map( A => b(1), B => n578, Z => n688);
   U603 : OAI22_X1 port map( A1 => n689, A2 => n603, B1 => n604, B2 => n690, ZN
                           => n306);
   U604 : XOR2_X1 port map( A => b(2), B => n578, Z => n689);
   U605 : OAI22_X1 port map( A1 => n690, A2 => n603, B1 => n604, B2 => n691, ZN
                           => n305);
   U606 : XOR2_X1 port map( A => b(3), B => n578, Z => n690);
   U607 : OAI22_X1 port map( A1 => n691, A2 => n603, B1 => n604, B2 => n692, ZN
                           => n304);
   U608 : XOR2_X1 port map( A => b(4), B => n578, Z => n691);
   U609 : OAI22_X1 port map( A1 => n692, A2 => n603, B1 => n604, B2 => n693, ZN
                           => n303);
   U610 : XOR2_X1 port map( A => b(5), B => n578, Z => n692);
   U611 : OAI22_X1 port map( A1 => n693, A2 => n603, B1 => n604, B2 => n694, ZN
                           => n302);
   U612 : XOR2_X1 port map( A => b(6), B => n578, Z => n693);
   U613 : OAI22_X1 port map( A1 => n694, A2 => n603, B1 => n604, B2 => n695, ZN
                           => n301);
   U614 : XOR2_X1 port map( A => b(7), B => n578, Z => n694);
   U615 : OAI22_X1 port map( A1 => n695, A2 => n603, B1 => n604, B2 => n696, ZN
                           => n300);
   U616 : XOR2_X1 port map( A => b(8), B => n578, Z => n695);
   U617 : OAI22_X1 port map( A1 => n696, A2 => n603, B1 => n604, B2 => n697, ZN
                           => n299);
   U618 : XOR2_X1 port map( A => b(9), B => n578, Z => n696);
   U619 : OAI22_X1 port map( A1 => n697, A2 => n603, B1 => n604, B2 => n698, ZN
                           => n298);
   U620 : XOR2_X1 port map( A => b(10), B => n578, Z => n697);
   U621 : OAI22_X1 port map( A1 => n698, A2 => n603, B1 => n604, B2 => n699, ZN
                           => n297);
   U622 : XOR2_X1 port map( A => b(11), B => n578, Z => n698);
   U623 : OAI22_X1 port map( A1 => n699, A2 => n603, B1 => n604, B2 => n602, ZN
                           => n296);
   U624 : XOR2_X1 port map( A => b(13), B => n578, Z => n602);
   U625 : XOR2_X1 port map( A => b(12), B => n578, Z => n699);
   U626 : OAI22_X1 port map( A1 => n605, A2 => n604, B1 => n603, B2 => n605, ZN
                           => n700);
   U627 : XOR2_X1 port map( A => b(14), B => n578, Z => n605);
   U628 : NOR2_X1 port map( A1 => n608, A2 => n595, ZN => n294);
   U629 : OAI22_X1 port map( A1 => n701, A2 => n607, B1 => n608, B2 => n702, ZN
                           => n293);
   U630 : XOR2_X1 port map( A => n573, B => b(0), Z => n701);
   U631 : OAI22_X1 port map( A1 => n702, A2 => n607, B1 => n608, B2 => n703, ZN
                           => n292);
   U632 : XOR2_X1 port map( A => b(1), B => n573, Z => n702);
   U633 : OAI22_X1 port map( A1 => n703, A2 => n607, B1 => n608, B2 => n704, ZN
                           => n291);
   U634 : XOR2_X1 port map( A => b(2), B => n573, Z => n703);
   U635 : OAI22_X1 port map( A1 => n704, A2 => n607, B1 => n608, B2 => n705, ZN
                           => n290);
   U636 : XOR2_X1 port map( A => b(3), B => n573, Z => n704);
   U637 : OAI22_X1 port map( A1 => n705, A2 => n607, B1 => n608, B2 => n706, ZN
                           => n289);
   U638 : XOR2_X1 port map( A => b(4), B => n573, Z => n705);
   U639 : OAI22_X1 port map( A1 => n706, A2 => n607, B1 => n608, B2 => n707, ZN
                           => n288);
   U640 : XOR2_X1 port map( A => b(5), B => n573, Z => n706);
   U641 : OAI22_X1 port map( A1 => n707, A2 => n607, B1 => n608, B2 => n708, ZN
                           => n287);
   U642 : XOR2_X1 port map( A => b(6), B => n573, Z => n707);
   U643 : OAI22_X1 port map( A1 => n708, A2 => n607, B1 => n608, B2 => n709, ZN
                           => n286);
   U644 : XOR2_X1 port map( A => b(7), B => n573, Z => n708);
   U645 : OAI22_X1 port map( A1 => n709, A2 => n607, B1 => n608, B2 => n710, ZN
                           => n285);
   U646 : XOR2_X1 port map( A => b(8), B => n573, Z => n709);
   U647 : OAI22_X1 port map( A1 => n710, A2 => n607, B1 => n608, B2 => n711, ZN
                           => n284);
   U648 : XOR2_X1 port map( A => b(9), B => n573, Z => n710);
   U649 : OAI22_X1 port map( A1 => n711, A2 => n607, B1 => n608, B2 => n712, ZN
                           => n283);
   U650 : XOR2_X1 port map( A => b(10), B => n573, Z => n711);
   U651 : OAI22_X1 port map( A1 => n712, A2 => n607, B1 => n608, B2 => n713, ZN
                           => n282);
   U652 : XOR2_X1 port map( A => b(11), B => n573, Z => n712);
   U653 : OAI22_X1 port map( A1 => n713, A2 => n607, B1 => n608, B2 => n606, ZN
                           => n281);
   U654 : XOR2_X1 port map( A => b(13), B => n573, Z => n606);
   U655 : XOR2_X1 port map( A => b(12), B => n573, Z => n713);
   U656 : OAI22_X1 port map( A1 => n609, A2 => n608, B1 => n607, B2 => n609, ZN
                           => n714);
   U657 : XOR2_X1 port map( A => b(14), B => n573, Z => n609);
   U658 : NOR2_X1 port map( A1 => n612, A2 => n595, ZN => n279);
   U659 : OAI22_X1 port map( A1 => n715, A2 => n611, B1 => n612, B2 => n716, ZN
                           => n278);
   U660 : XOR2_X1 port map( A => n568, B => b(0), Z => n715);
   U661 : OAI22_X1 port map( A1 => n716, A2 => n611, B1 => n612, B2 => n717, ZN
                           => n277);
   U662 : XOR2_X1 port map( A => b(1), B => n568, Z => n716);
   U663 : OAI22_X1 port map( A1 => n717, A2 => n611, B1 => n612, B2 => n718, ZN
                           => n276);
   U664 : XOR2_X1 port map( A => b(2), B => n568, Z => n717);
   U665 : OAI22_X1 port map( A1 => n718, A2 => n611, B1 => n612, B2 => n719, ZN
                           => n275);
   U666 : XOR2_X1 port map( A => b(3), B => n568, Z => n718);
   U667 : OAI22_X1 port map( A1 => n720, A2 => n611, B1 => n612, B2 => n721, ZN
                           => n273);
   U668 : OAI22_X1 port map( A1 => n721, A2 => n611, B1 => n612, B2 => n722, ZN
                           => n272);
   U669 : XOR2_X1 port map( A => b(6), B => n568, Z => n721);
   U670 : OAI22_X1 port map( A1 => n722, A2 => n611, B1 => n612, B2 => n723, ZN
                           => n271);
   U671 : XOR2_X1 port map( A => b(7), B => n568, Z => n722);
   U672 : OAI22_X1 port map( A1 => n723, A2 => n611, B1 => n612, B2 => n724, ZN
                           => n270);
   U673 : XOR2_X1 port map( A => b(8), B => n568, Z => n723);
   U674 : OAI22_X1 port map( A1 => n724, A2 => n611, B1 => n612, B2 => n725, ZN
                           => n269);
   U675 : XOR2_X1 port map( A => b(9), B => n568, Z => n724);
   U676 : OAI22_X1 port map( A1 => n725, A2 => n611, B1 => n612, B2 => n726, ZN
                           => n268);
   U677 : XOR2_X1 port map( A => b(10), B => n568, Z => n725);
   U678 : OAI22_X1 port map( A1 => n726, A2 => n611, B1 => n612, B2 => n727, ZN
                           => n267);
   U679 : XOR2_X1 port map( A => b(11), B => n568, Z => n726);
   U680 : OAI22_X1 port map( A1 => n727, A2 => n611, B1 => n612, B2 => n610, ZN
                           => n266);
   U681 : XOR2_X1 port map( A => b(13), B => n568, Z => n610);
   U682 : XOR2_X1 port map( A => b(12), B => n568, Z => n727);
   U683 : OAI22_X1 port map( A1 => n613, A2 => n612, B1 => n611, B2 => n613, ZN
                           => n728);
   U684 : XOR2_X1 port map( A => b(14), B => n568, Z => n613);
   U685 : NOR2_X1 port map( A1 => n599, A2 => n595, ZN => n264);
   U686 : OAI22_X1 port map( A1 => n729, A2 => n600, B1 => n599, B2 => n730, ZN
                           => n263);
   U687 : XOR2_X1 port map( A => n563, B => b(0), Z => n729);
   U688 : OAI22_X1 port map( A1 => n730, A2 => n600, B1 => n599, B2 => n731, ZN
                           => n262);
   U689 : XOR2_X1 port map( A => b(1), B => n563, Z => n730);
   U690 : OAI22_X1 port map( A1 => n731, A2 => n600, B1 => n599, B2 => n732, ZN
                           => n261);
   U691 : XOR2_X1 port map( A => b(2), B => n563, Z => n731);
   U692 : OAI22_X1 port map( A1 => n732, A2 => n600, B1 => n599, B2 => n733, ZN
                           => n260);
   U693 : XOR2_X1 port map( A => b(3), B => n563, Z => n732);
   U694 : OAI22_X1 port map( A1 => n733, A2 => n600, B1 => n599, B2 => n734, ZN
                           => n259);
   U695 : XOR2_X1 port map( A => b(4), B => n563, Z => n733);
   U696 : OAI22_X1 port map( A1 => n734, A2 => n600, B1 => n599, B2 => n735, ZN
                           => n258);
   U697 : XOR2_X1 port map( A => b(5), B => n563, Z => n734);
   U698 : OAI22_X1 port map( A1 => n735, A2 => n600, B1 => n599, B2 => n736, ZN
                           => n257);
   U699 : XOR2_X1 port map( A => b(6), B => n563, Z => n735);
   U700 : OAI22_X1 port map( A1 => n736, A2 => n600, B1 => n599, B2 => n737, ZN
                           => n256);
   U701 : XOR2_X1 port map( A => b(7), B => n563, Z => n736);
   U702 : OAI22_X1 port map( A1 => n737, A2 => n600, B1 => n599, B2 => n738, ZN
                           => n255);
   U703 : XOR2_X1 port map( A => b(8), B => n563, Z => n737);
   U704 : OAI22_X1 port map( A1 => n738, A2 => n600, B1 => n599, B2 => n739, ZN
                           => n254);
   U705 : XOR2_X1 port map( A => b(9), B => n563, Z => n738);
   U706 : OAI22_X1 port map( A1 => n739, A2 => n600, B1 => n599, B2 => n740, ZN
                           => n253);
   U707 : XOR2_X1 port map( A => b(10), B => n563, Z => n739);
   U708 : OAI22_X1 port map( A1 => n740, A2 => n600, B1 => n599, B2 => n741, ZN
                           => n252);
   U709 : XOR2_X1 port map( A => b(11), B => n563, Z => n740);
   U710 : OAI22_X1 port map( A1 => n741, A2 => n600, B1 => n599, B2 => n601, ZN
                           => n251);
   U711 : XNOR2_X1 port map( A => b(13), B => a(13), ZN => n601);
   U712 : XOR2_X1 port map( A => b(12), B => n563, Z => n741);
   U713 : OAI21_X1 port map( B1 => n583, B2 => n671, A => n742, ZN => n247);
   U714 : OR3_X1 port map( A1 => n669, A2 => b(0), A3 => n583, ZN => n742);
   U715 : OAI21_X1 port map( B1 => n578, B2 => n603, A => n743, ZN => n246);
   U716 : OR3_X1 port map( A1 => n604, A2 => b(0), A3 => n578, ZN => n743);
   U717 : NAND2_X1 port map( A1 => n604, A2 => n744, ZN => n603);
   U718 : XOR2_X1 port map( A => a(7), B => a(6), Z => n744);
   U719 : OAI21_X1 port map( B1 => n573, B2 => n607, A => n745, ZN => n245);
   U720 : OR3_X1 port map( A1 => n608, A2 => b(0), A3 => n573, ZN => n745);
   U721 : NAND2_X1 port map( A1 => n608, A2 => n746, ZN => n607);
   U722 : XOR2_X1 port map( A => a(9), B => a(8), Z => n746);
   U723 : OAI21_X1 port map( B1 => n568, B2 => n611, A => n747, ZN => n244);
   U724 : OR3_X1 port map( A1 => n612, A2 => b(0), A3 => n568, ZN => n747);
   U725 : OAI21_X1 port map( B1 => n563, B2 => n600, A => n748, ZN => n243);
   U726 : OR3_X1 port map( A1 => n599, A2 => b(0), A3 => n563, ZN => n748);
   U727 : NAND2_X1 port map( A1 => n599, A2 => n749, ZN => n600);
   U728 : XOR2_X1 port map( A => a(13), B => a(12), Z => n749);
   U729 : XNOR2_X1 port map( A => n750, B => n751, ZN => n139);
   U730 : OR2_X1 port map( A1 => n750, A2 => n751, ZN => n138);
   U731 : OAI22_X1 port map( A1 => n681, A2 => n671, B1 => n669, B2 => n682, ZN
                           => n751);
   U732 : XOR2_X1 port map( A => b(11), B => n583, Z => n682);
   U733 : XOR2_X1 port map( A => b(10), B => n583, Z => n681);
   U734 : OAI22_X1 port map( A1 => n719, A2 => n611, B1 => n612, B2 => n720, ZN
                           => n750);
   U735 : XOR2_X1 port map( A => b(5), B => n568, Z => n720);
   U736 : NAND2_X1 port map( A1 => n612, A2 => n752, ZN => n611);
   U737 : XOR2_X1 port map( A => a(11), B => a(10), Z => n752);
   U738 : XOR2_X1 port map( A => b(4), B => n568, Z => n719);
   U739 : OAI22_X1 port map( A1 => n667, A2 => n654, B1 => n633, B2 => n668, ZN
                           => n126);
   U740 : XNOR2_X1 port map( A => b(14), B => a(3), ZN => n668);
   U741 : NAND2_X1 port map( A1 => n633, A2 => n753, ZN => n654);
   U742 : XOR2_X1 port map( A => a(3), B => a(2), Z => n753);
   U743 : XOR2_X1 port map( A => b(13), B => n589, Z => n667);
   U744 : OAI22_X1 port map( A1 => n684, A2 => n671, B1 => n669, B2 => n686, ZN
                           => n104);
   U745 : XOR2_X1 port map( A => b(14), B => n583, Z => n686);
   U746 : NAND2_X1 port map( A1 => n669, A2 => n754, ZN => n671);
   U747 : XOR2_X1 port map( A => a(5), B => a(4), Z => n754);
   U748 : XOR2_X1 port map( A => b(13), B => n583, Z => n684);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_IIR_FILTER.all;

entity IIR_FILTER_DW01_add_0 is

   port( A, B : in std_logic_vector (6 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (6 downto 0);  CO : out std_logic);

end IIR_FILTER_DW01_add_0;

architecture SYN_rpl of IIR_FILTER_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port,
      n1, n_1069 : std_logic;

begin
   
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           n_1069, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_IIR_FILTER.all;

entity IIR_FILTER is

   port( DIN : in std_logic_vector (13 downto 0);  VIN, RST_n, CLK : in 
         std_logic;  a0, a1, b0, b1 : in std_logic_vector (13 downto 0);  DOUT 
         : out std_logic_vector (13 downto 0);  VOUT : out std_logic);

end IIR_FILTER;

architecture SYN_BEHAVIORAL of IIR_FILTER is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   component IIR_FILTER_DW_mult_tc_0
      port( a : in std_logic_vector (13 downto 0);  b : in std_logic_vector (14
            downto 0);  product : out std_logic_vector (28 downto 0));
   end component;
   
   component IIR_FILTER_DW_mult_tc_1
      port( a : in std_logic_vector (14 downto 0);  b : in std_logic_vector (13
            downto 0);  product : out std_logic_vector (28 downto 0));
   end component;
   
   component IIR_FILTER_DW_mult_tc_2
      port( a : in std_logic_vector (13 downto 0);  b : in std_logic_vector (14
            downto 0);  product : out std_logic_vector (28 downto 0));
   end component;
   
   component IIR_FILTER_DW01_add_0
      port( A, B : in std_logic_vector (6 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (6 downto 0);  CO : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal DOUT_13_port, DOUT_12_port, DOUT_11_port, DOUT_10_port, DOUT_9_port, 
      DOUT_8_port, DOUT_7_port, DOUT_6_port, DOUT_5_port, DOUT_4_port, 
      DOUT_3_port, DOUT_2_port, DOUT_1_port, DOUT_0_port, w_past_14_port, 
      w_past_13_port, w_past_12_port, w_past_11_port, w_past_10_port, 
      w_past_9_port, w_past_8_port, w_past_7_port, w_past_6_port, w_past_5_port
      , w_past_4_port, w_past_3_port, w_past_2_port, w_past_1_port, 
      w_past_0_port, N4, N5, N6, N7, N8, N9, fb_5_port, fb_4_port, fb_3_port, 
      fb_2_port, fb_1_port, fb_0_port, N10, N11, N12, N13, N14, N15, N16, N17, 
      N18, N19, N20, N21, N22, N23, N24, w_14_port, w_13_port, w_12_port, 
      w_11_port, w_10_port, w_9_port, w_8_port, w_7_port, w_6_port, w_5_port, 
      w_4_port, w_3_port, w_2_port, w_1_port, w_0_port, N25, N26, N27, N28, N29
      , N30, N31, ff_tmp_0_26_port, ff_tmp_0_25_port, ff_tmp_0_24_port, 
      ff_tmp_0_23_port, ff_tmp_0_22_port, ff_tmp_0_21_port, ff_tmp_0_20_port, 
      N32, N33, N34, N35, N36, N37, N38, ff_tmp_1_26_port, ff_tmp_1_25_port, 
      ff_tmp_1_24_port, ff_tmp_1_23_port, ff_tmp_1_22_port, ff_tmp_1_21_port, 
      ff_tmp_1_20_port, N39, N40, N41, N42, N43, N44, N45, n1, n29_port, 
      n30_port, n32_port, n33_port, n34_port, n35_port, n36_port, n37_port, 
      n38_port, n39_port, n40_port, n41_port, n42_port, n43_port, n44_port, 
      n45_port, n46, n47, n48, n49, n50, n51, n52, n53, add_37_carry_1_port, 
      add_37_carry_2_port, add_37_carry_3_port, add_37_carry_4_port, 
      add_37_carry_5_port, add_37_carry_6_port, add_37_carry_7_port, 
      add_37_carry_8_port, add_37_carry_9_port, add_37_carry_10_port, 
      add_37_carry_11_port, add_37_carry_12_port, add_37_carry_13_port, 
      add_37_carry_14_port, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, 
      n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78
      , n79, n80, n81, n82, n_1070, n_1071, n_1072, n_1073, n_1074, n_1075, 
      n_1076, n_1077, n_1078, n_1079, n_1080, n_1081, n_1082, n_1083, n_1084, 
      n_1085, n_1086, n_1087, n_1088, n_1089, n_1090, n_1091, n_1092, n_1093, 
      n_1094, n_1095, n_1096, n_1097, n_1098, n_1099, n_1100, n_1101, n_1102, 
      n_1103, n_1104, n_1105, n_1106, n_1107, n_1108, n_1109, n_1110, n_1111, 
      n_1112, n_1113, n_1114, n_1115, n_1116, n_1117, n_1118, n_1119, n_1120, 
      n_1121, n_1122, n_1123, n_1124, n_1125, n_1126, n_1127, n_1128, n_1129, 
      n_1130, n_1131, n_1132, n_1133, n_1134, n_1135, n_1136, n_1137, n_1138, 
      n_1139, n_1140, n_1141, n_1142, n_1143, n_1144, n_1145, n_1146, n_1147, 
      n_1148, n_1149, n_1150, n_1151, n_1152, n_1153, n_1154, n_1155, n_1156, 
      n_1157, n_1158, n_1159, n_1160, n_1161 : std_logic;

begin
   DOUT <= ( DOUT_13_port, DOUT_12_port, DOUT_11_port, DOUT_10_port, 
      DOUT_9_port, DOUT_8_port, DOUT_7_port, DOUT_6_port, DOUT_5_port, 
      DOUT_4_port, DOUT_3_port, DOUT_2_port, DOUT_1_port, DOUT_0_port );
   
   n1 <= '0';
   w_past_reg_14_inst : DFF_X1 port map( D => n68, CK => CLK, Q => 
                           w_past_14_port, QN => n_1070);
   w_past_reg_13_inst : DFF_X1 port map( D => n69, CK => CLK, Q => 
                           w_past_13_port, QN => n_1071);
   w_past_reg_12_inst : DFF_X1 port map( D => n70, CK => CLK, Q => 
                           w_past_12_port, QN => n_1072);
   w_past_reg_11_inst : DFF_X1 port map( D => n71, CK => CLK, Q => 
                           w_past_11_port, QN => n_1073);
   w_past_reg_10_inst : DFF_X1 port map( D => n72, CK => CLK, Q => 
                           w_past_10_port, QN => n_1074);
   w_past_reg_9_inst : DFF_X1 port map( D => n73, CK => CLK, Q => w_past_9_port
                           , QN => n_1075);
   w_past_reg_8_inst : DFF_X1 port map( D => n74, CK => CLK, Q => w_past_8_port
                           , QN => n_1076);
   w_past_reg_7_inst : DFF_X1 port map( D => n75, CK => CLK, Q => w_past_7_port
                           , QN => n_1077);
   w_past_reg_6_inst : DFF_X1 port map( D => n76, CK => CLK, Q => w_past_6_port
                           , QN => n_1078);
   w_past_reg_5_inst : DFF_X1 port map( D => n77, CK => CLK, Q => w_past_5_port
                           , QN => n_1079);
   w_past_reg_4_inst : DFF_X1 port map( D => n78, CK => CLK, Q => w_past_4_port
                           , QN => n_1080);
   w_past_reg_3_inst : DFF_X1 port map( D => n79, CK => CLK, Q => w_past_3_port
                           , QN => n_1081);
   w_past_reg_2_inst : DFF_X1 port map( D => n80, CK => CLK, Q => w_past_2_port
                           , QN => n_1082);
   w_past_reg_1_inst : DFF_X1 port map( D => n81, CK => CLK, Q => w_past_1_port
                           , QN => n_1083);
   w_past_reg_0_inst : DFF_X1 port map( D => n82, CK => CLK, Q => w_past_0_port
                           , QN => n_1084);
   VOUT_reg : DFF_X1 port map( D => n53, CK => CLK, Q => VOUT, QN => n_1085);
   DOUT_reg_13_inst : DFF_X1 port map( D => n61, CK => CLK, Q => DOUT_13_port, 
                           QN => n_1086);
   DOUT_reg_12_inst : DFF_X1 port map( D => n62, CK => CLK, Q => DOUT_12_port, 
                           QN => n_1087);
   DOUT_reg_11_inst : DFF_X1 port map( D => n63, CK => CLK, Q => DOUT_11_port, 
                           QN => n_1088);
   DOUT_reg_10_inst : DFF_X1 port map( D => n64, CK => CLK, Q => DOUT_10_port, 
                           QN => n_1089);
   DOUT_reg_9_inst : DFF_X1 port map( D => n65, CK => CLK, Q => DOUT_9_port, QN
                           => n_1090);
   DOUT_reg_8_inst : DFF_X1 port map( D => n66, CK => CLK, Q => DOUT_8_port, QN
                           => n_1091);
   DOUT_reg_7_inst : DFF_X1 port map( D => n67, CK => CLK, Q => DOUT_7_port, QN
                           => n_1092);
   DOUT_0_port <= '0';
   DOUT_1_port <= '0';
   DOUT_2_port <= '0';
   DOUT_3_port <= '0';
   DOUT_4_port <= '0';
   DOUT_5_port <= '0';
   DOUT_6_port <= '0';
   add_40 : IIR_FILTER_DW01_add_0 port map( A(6) => ff_tmp_0_26_port, A(5) => 
                           ff_tmp_0_25_port, A(4) => ff_tmp_0_24_port, A(3) => 
                           ff_tmp_0_23_port, A(2) => ff_tmp_0_22_port, A(1) => 
                           ff_tmp_0_21_port, A(0) => ff_tmp_0_20_port, B(6) => 
                           ff_tmp_1_26_port, B(5) => ff_tmp_1_25_port, B(4) => 
                           ff_tmp_1_24_port, B(3) => ff_tmp_1_23_port, B(2) => 
                           ff_tmp_1_22_port, B(1) => ff_tmp_1_21_port, B(0) => 
                           ff_tmp_1_20_port, CI => n1, SUM(6) => N45, SUM(5) =>
                           N44, SUM(4) => N43, SUM(3) => N42, SUM(2) => N41, 
                           SUM(1) => N40, SUM(0) => N39, CO => n_1093);
   mult_38 : IIR_FILTER_DW_mult_tc_2 port map( a(13) => b0(13), a(12) => b0(12)
                           , a(11) => b0(11), a(10) => b0(10), a(9) => b0(9), 
                           a(8) => b0(8), a(7) => b0(7), a(6) => b0(6), a(5) =>
                           b0(5), a(4) => b0(4), a(3) => b0(3), a(2) => b0(2), 
                           a(1) => b0(1), a(0) => b0(0), b(14) => w_14_port, 
                           b(13) => w_13_port, b(12) => w_12_port, b(11) => 
                           w_11_port, b(10) => w_10_port, b(9) => w_9_port, 
                           b(8) => w_8_port, b(7) => w_7_port, b(6) => w_6_port
                           , b(5) => w_5_port, b(4) => w_4_port, b(3) => 
                           w_3_port, b(2) => w_2_port, b(1) => w_1_port, b(0) 
                           => w_0_port, product(28) => n_1094, product(27) => 
                           n_1095, product(26) => N31, product(25) => N30, 
                           product(24) => N29, product(23) => N28, product(22) 
                           => N27, product(21) => N26, product(20) => N25, 
                           product(19) => n_1096, product(18) => n_1097, 
                           product(17) => n_1098, product(16) => n_1099, 
                           product(15) => n_1100, product(14) => n_1101, 
                           product(13) => n_1102, product(12) => n_1103, 
                           product(11) => n_1104, product(10) => n_1105, 
                           product(9) => n_1106, product(8) => n_1107, 
                           product(7) => n_1108, product(6) => n_1109, 
                           product(5) => n_1110, product(4) => n_1111, 
                           product(3) => n_1112, product(2) => n_1113, 
                           product(1) => n_1114, product(0) => n_1115);
   mult_35 : IIR_FILTER_DW_mult_tc_1 port map( a(14) => w_past_14_port, a(13) 
                           => w_past_13_port, a(12) => w_past_12_port, a(11) =>
                           w_past_11_port, a(10) => w_past_10_port, a(9) => 
                           w_past_9_port, a(8) => w_past_8_port, a(7) => 
                           w_past_7_port, a(6) => w_past_6_port, a(5) => 
                           w_past_5_port, a(4) => w_past_4_port, a(3) => 
                           w_past_3_port, a(2) => w_past_2_port, a(1) => 
                           w_past_1_port, a(0) => w_past_0_port, b(13) => 
                           a1(13), b(12) => a1(12), b(11) => a1(11), b(10) => 
                           a1(10), b(9) => a1(9), b(8) => a1(8), b(7) => a1(7),
                           b(6) => a1(6), b(5) => a1(5), b(4) => a1(4), b(3) =>
                           a1(3), b(2) => a1(2), b(1) => a1(1), b(0) => a1(0), 
                           product(28) => n_1116, product(27) => n_1117, 
                           product(26) => n_1118, product(25) => N9, 
                           product(24) => N8, product(23) => N7, product(22) =>
                           N6, product(21) => N5, product(20) => N4, 
                           product(19) => n_1119, product(18) => n_1120, 
                           product(17) => n_1121, product(16) => n_1122, 
                           product(15) => n_1123, product(14) => n_1124, 
                           product(13) => n_1125, product(12) => n_1126, 
                           product(11) => n_1127, product(10) => n_1128, 
                           product(9) => n_1129, product(8) => n_1130, 
                           product(7) => n_1131, product(6) => n_1132, 
                           product(5) => n_1133, product(4) => n_1134, 
                           product(3) => n_1135, product(2) => n_1136, 
                           product(1) => n_1137, product(0) => n_1138);
   mult_39 : IIR_FILTER_DW_mult_tc_0 port map( a(13) => b1(13), a(12) => b1(12)
                           , a(11) => b1(11), a(10) => b1(10), a(9) => b1(9), 
                           a(8) => b1(8), a(7) => b1(7), a(6) => b1(6), a(5) =>
                           b1(5), a(4) => b1(4), a(3) => b1(3), a(2) => b1(2), 
                           a(1) => b1(1), a(0) => b1(0), b(14) => 
                           w_past_14_port, b(13) => w_past_13_port, b(12) => 
                           w_past_12_port, b(11) => w_past_11_port, b(10) => 
                           w_past_10_port, b(9) => w_past_9_port, b(8) => 
                           w_past_8_port, b(7) => w_past_7_port, b(6) => 
                           w_past_6_port, b(5) => w_past_5_port, b(4) => 
                           w_past_4_port, b(3) => w_past_3_port, b(2) => 
                           w_past_2_port, b(1) => w_past_1_port, b(0) => 
                           w_past_0_port, product(28) => n_1139, product(27) =>
                           n_1140, product(26) => N38, product(25) => N37, 
                           product(24) => N36, product(23) => N35, product(22) 
                           => N34, product(21) => N33, product(20) => N32, 
                           product(19) => n_1141, product(18) => n_1142, 
                           product(17) => n_1143, product(16) => n_1144, 
                           product(15) => n_1145, product(14) => n_1146, 
                           product(13) => n_1147, product(12) => n_1148, 
                           product(11) => n_1149, product(10) => n_1150, 
                           product(9) => n_1151, product(8) => n_1152, 
                           product(7) => n_1153, product(6) => n_1154, 
                           product(5) => n_1155, product(4) => n_1156, 
                           product(3) => n_1157, product(2) => n_1158, 
                           product(1) => n_1159, product(0) => n_1160);
   add_37_U1_1 : FA_X1 port map( A => DIN(1), B => fb_1_port, CI => 
                           add_37_carry_1_port, CO => add_37_carry_2_port, S =>
                           N11);
   add_37_U1_2 : FA_X1 port map( A => DIN(2), B => fb_2_port, CI => 
                           add_37_carry_2_port, CO => add_37_carry_3_port, S =>
                           N12);
   add_37_U1_3 : FA_X1 port map( A => DIN(3), B => fb_3_port, CI => 
                           add_37_carry_3_port, CO => add_37_carry_4_port, S =>
                           N13);
   add_37_U1_4 : FA_X1 port map( A => DIN(4), B => fb_4_port, CI => 
                           add_37_carry_4_port, CO => add_37_carry_5_port, S =>
                           N14);
   add_37_U1_5 : FA_X1 port map( A => DIN(5), B => fb_5_port, CI => 
                           add_37_carry_5_port, CO => add_37_carry_6_port, S =>
                           N15);
   add_37_U1_6 : FA_X1 port map( A => DIN(6), B => fb_5_port, CI => 
                           add_37_carry_6_port, CO => add_37_carry_7_port, S =>
                           N16);
   add_37_U1_7 : FA_X1 port map( A => DIN(7), B => fb_5_port, CI => 
                           add_37_carry_7_port, CO => add_37_carry_8_port, S =>
                           N17);
   add_37_U1_8 : FA_X1 port map( A => DIN(8), B => fb_5_port, CI => 
                           add_37_carry_8_port, CO => add_37_carry_9_port, S =>
                           N18);
   add_37_U1_9 : FA_X1 port map( A => DIN(9), B => fb_5_port, CI => 
                           add_37_carry_9_port, CO => add_37_carry_10_port, S 
                           => N19);
   add_37_U1_10 : FA_X1 port map( A => DIN(10), B => fb_5_port, CI => 
                           add_37_carry_10_port, CO => add_37_carry_11_port, S 
                           => N20);
   add_37_U1_11 : FA_X1 port map( A => DIN(11), B => fb_5_port, CI => 
                           add_37_carry_11_port, CO => add_37_carry_12_port, S 
                           => N21);
   add_37_U1_12 : FA_X1 port map( A => DIN(12), B => fb_5_port, CI => 
                           add_37_carry_12_port, CO => add_37_carry_13_port, S 
                           => N22);
   add_37_U1_13 : FA_X1 port map( A => DIN(13), B => fb_5_port, CI => 
                           add_37_carry_13_port, CO => add_37_carry_14_port, S 
                           => N23);
   add_37_U1_14 : FA_X1 port map( A => DIN(13), B => fb_5_port, CI => 
                           add_37_carry_14_port, CO => n_1161, S => N24);
   U96 : OR2_X1 port map( A1 => n60, A2 => VIN, ZN => n54);
   U97 : INV_X1 port map( A => n59, ZN => n55);
   U98 : AND2_X1 port map( A1 => N33, A2 => RST_n, ZN => ff_tmp_1_21_port);
   U99 : AND2_X1 port map( A1 => N26, A2 => RST_n, ZN => ff_tmp_0_21_port);
   U100 : AND2_X1 port map( A1 => N34, A2 => RST_n, ZN => ff_tmp_1_22_port);
   U101 : AND2_X1 port map( A1 => N27, A2 => RST_n, ZN => ff_tmp_0_22_port);
   U102 : AND2_X1 port map( A1 => N35, A2 => RST_n, ZN => ff_tmp_1_23_port);
   U103 : AND2_X1 port map( A1 => N28, A2 => RST_n, ZN => ff_tmp_0_23_port);
   U104 : AND2_X1 port map( A1 => N36, A2 => RST_n, ZN => ff_tmp_1_24_port);
   U105 : AND2_X1 port map( A1 => N29, A2 => RST_n, ZN => ff_tmp_0_24_port);
   U106 : AND2_X1 port map( A1 => N37, A2 => RST_n, ZN => ff_tmp_1_25_port);
   U107 : AND2_X1 port map( A1 => N30, A2 => RST_n, ZN => ff_tmp_0_25_port);
   U108 : AND2_X1 port map( A1 => N25, A2 => RST_n, ZN => ff_tmp_0_20_port);
   U109 : AND2_X1 port map( A1 => N4, A2 => RST_n, ZN => fb_0_port);
   U110 : AND2_X1 port map( A1 => N32, A2 => RST_n, ZN => ff_tmp_1_20_port);
   U111 : BUF_X1 port map( A => n58, Z => n56);
   U112 : BUF_X1 port map( A => n58, Z => n57);
   U113 : BUF_X1 port map( A => n54, Z => n58);
   U114 : BUF_X1 port map( A => n54, Z => n59);
   U115 : AND2_X1 port map( A1 => RST_n, A2 => N19, ZN => w_9_port);
   U116 : AND2_X1 port map( A1 => N23, A2 => RST_n, ZN => w_13_port);
   U117 : AND2_X1 port map( A1 => N14, A2 => RST_n, ZN => w_4_port);
   U118 : AND2_X1 port map( A1 => N13, A2 => RST_n, ZN => w_3_port);
   U119 : AND2_X1 port map( A1 => N12, A2 => RST_n, ZN => w_2_port);
   U120 : AND2_X1 port map( A1 => N15, A2 => RST_n, ZN => w_5_port);
   U121 : AND2_X1 port map( A1 => N18, A2 => RST_n, ZN => w_8_port);
   U122 : AND2_X1 port map( A1 => N16, A2 => RST_n, ZN => w_6_port);
   U123 : AND2_X1 port map( A1 => N17, A2 => RST_n, ZN => w_7_port);
   U124 : AND2_X1 port map( A1 => N20, A2 => RST_n, ZN => w_10_port);
   U125 : AND2_X1 port map( A1 => N22, A2 => RST_n, ZN => w_12_port);
   U126 : AND2_X1 port map( A1 => N21, A2 => RST_n, ZN => w_11_port);
   U127 : AND2_X1 port map( A1 => N11, A2 => RST_n, ZN => w_1_port);
   U128 : AND2_X1 port map( A1 => N9, A2 => RST_n, ZN => fb_5_port);
   U129 : AND2_X1 port map( A1 => N31, A2 => RST_n, ZN => ff_tmp_0_26_port);
   U130 : NOR2_X1 port map( A1 => n60, A2 => n55, ZN => n30_port);
   U131 : INV_X1 port map( A => n29_port, ZN => n67);
   U132 : AOI22_X1 port map( A1 => N39, A2 => n30_port, B1 => DOUT_7_port, B2 
                           => n55, ZN => n29_port);
   U133 : INV_X1 port map( A => n32_port, ZN => n66);
   U134 : AOI22_X1 port map( A1 => N40, A2 => n30_port, B1 => DOUT_8_port, B2 
                           => n55, ZN => n32_port);
   U135 : INV_X1 port map( A => n33_port, ZN => n65);
   U136 : AOI22_X1 port map( A1 => N41, A2 => n30_port, B1 => DOUT_9_port, B2 
                           => n55, ZN => n33_port);
   U137 : INV_X1 port map( A => n34_port, ZN => n64);
   U138 : AOI22_X1 port map( A1 => N42, A2 => n30_port, B1 => DOUT_10_port, B2 
                           => n55, ZN => n34_port);
   U139 : INV_X1 port map( A => n35_port, ZN => n63);
   U140 : AOI22_X1 port map( A1 => N43, A2 => n30_port, B1 => DOUT_11_port, B2 
                           => n55, ZN => n35_port);
   U141 : INV_X1 port map( A => n36_port, ZN => n62);
   U142 : AOI22_X1 port map( A1 => N44, A2 => n30_port, B1 => DOUT_12_port, B2 
                           => n55, ZN => n36_port);
   U143 : INV_X1 port map( A => n37_port, ZN => n61);
   U144 : AOI22_X1 port map( A1 => N45, A2 => n30_port, B1 => DOUT_13_port, B2 
                           => n55, ZN => n37_port);
   U145 : AND2_X1 port map( A1 => N38, A2 => RST_n, ZN => ff_tmp_1_26_port);
   U146 : AND2_X1 port map( A1 => N24, A2 => RST_n, ZN => w_14_port);
   U147 : AND2_X1 port map( A1 => N5, A2 => RST_n, ZN => fb_1_port);
   U148 : AND2_X1 port map( A1 => N6, A2 => RST_n, ZN => fb_2_port);
   U149 : AND2_X1 port map( A1 => N7, A2 => RST_n, ZN => fb_3_port);
   U150 : AND2_X1 port map( A1 => N8, A2 => RST_n, ZN => fb_4_port);
   U151 : AND2_X1 port map( A1 => N10, A2 => RST_n, ZN => w_0_port);
   U152 : INV_X1 port map( A => n51, ZN => n69);
   U153 : AOI22_X1 port map( A1 => n58, A2 => w_13_port, B1 => n55, B2 => 
                           w_past_13_port, ZN => n51);
   U154 : INV_X1 port map( A => n43_port, ZN => n77);
   U155 : AOI22_X1 port map( A1 => n57, A2 => w_5_port, B1 => n55, B2 => 
                           w_past_5_port, ZN => n43_port);
   U156 : INV_X1 port map( A => n44_port, ZN => n76);
   U157 : AOI22_X1 port map( A1 => n57, A2 => w_6_port, B1 => n55, B2 => 
                           w_past_6_port, ZN => n44_port);
   U158 : INV_X1 port map( A => n45_port, ZN => n75);
   U159 : AOI22_X1 port map( A1 => n57, A2 => w_7_port, B1 => n55, B2 => 
                           w_past_7_port, ZN => n45_port);
   U160 : INV_X1 port map( A => n46, ZN => n74);
   U161 : AOI22_X1 port map( A1 => n57, A2 => w_8_port, B1 => n55, B2 => 
                           w_past_8_port, ZN => n46);
   U162 : INV_X1 port map( A => n47, ZN => n73);
   U163 : AOI22_X1 port map( A1 => n57, A2 => w_9_port, B1 => n55, B2 => 
                           w_past_9_port, ZN => n47);
   U164 : INV_X1 port map( A => n48, ZN => n72);
   U165 : AOI22_X1 port map( A1 => n58, A2 => w_10_port, B1 => n55, B2 => 
                           w_past_10_port, ZN => n48);
   U166 : INV_X1 port map( A => n49, ZN => n71);
   U167 : AOI22_X1 port map( A1 => n58, A2 => w_11_port, B1 => n55, B2 => 
                           w_past_11_port, ZN => n49);
   U168 : INV_X1 port map( A => n50, ZN => n70);
   U169 : AOI22_X1 port map( A1 => n58, A2 => w_12_port, B1 => n55, B2 => 
                           w_past_12_port, ZN => n50);
   U170 : INV_X1 port map( A => n52, ZN => n68);
   U171 : AOI22_X1 port map( A1 => n58, A2 => w_14_port, B1 => n55, B2 => 
                           w_past_14_port, ZN => n52);
   U172 : INV_X1 port map( A => n40_port, ZN => n80);
   U173 : AOI22_X1 port map( A1 => n56, A2 => w_2_port, B1 => n55, B2 => 
                           w_past_2_port, ZN => n40_port);
   U174 : INV_X1 port map( A => n41_port, ZN => n79);
   U175 : AOI22_X1 port map( A1 => n56, A2 => w_3_port, B1 => n55, B2 => 
                           w_past_3_port, ZN => n41_port);
   U176 : INV_X1 port map( A => n39_port, ZN => n81);
   U177 : AOI22_X1 port map( A1 => n56, A2 => w_1_port, B1 => n55, B2 => 
                           w_past_1_port, ZN => n39_port);
   U178 : INV_X1 port map( A => n38_port, ZN => n82);
   U179 : AOI22_X1 port map( A1 => n56, A2 => w_0_port, B1 => n55, B2 => 
                           w_past_0_port, ZN => n38_port);
   U180 : INV_X1 port map( A => n42_port, ZN => n78);
   U181 : AOI22_X1 port map( A1 => n56, A2 => w_4_port, B1 => n55, B2 => 
                           w_past_4_port, ZN => n42_port);
   U182 : AND2_X1 port map( A1 => RST_n, A2 => VIN, ZN => n53);
   U183 : INV_X1 port map( A => RST_n, ZN => n60);
   U184 : AND2_X1 port map( A1 => DIN(0), A2 => fb_0_port, ZN => 
                           add_37_carry_1_port);
   U185 : XOR2_X1 port map( A => fb_0_port, B => DIN(0), Z => N10);

end SYN_BEHAVIORAL;
