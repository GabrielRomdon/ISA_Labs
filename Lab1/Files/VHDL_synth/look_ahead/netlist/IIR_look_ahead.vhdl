
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_IIR_FILTER is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_IIR_FILTER;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_IIR_FILTER.all;

entity IIR_FILTER_DW_mult_tc_3 is

   port( a : in std_logic_vector (13 downto 0);  b : in std_logic_vector (14 
         downto 0);  product : out std_logic_vector (28 downto 0));

end IIR_FILTER_DW_mult_tc_3;

architecture SYN_USE_DEFA_ARCH_NAME of IIR_FILTER_DW_mult_tc_3 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
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
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
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
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n32, n33, n34, n35, n36, n58, n59, n60, n61, n62, n63, n64, n65, n66,
      n67, n68, n69, n70, n71, n72, n73, n74, n76, n77, n78, n79, n80, n81, n82
      , n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, 
      n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, 
      n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, 
      n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, 
      n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, 
      n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, 
      n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, 
      n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, 
      n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, 
      n210, n211, n212, n213, n214, n218, n219, n220, n221, n222, n223, n224, 
      n225, n227, n228, n229, n230, n232, n233, n234, n235, n236, n238, n239, 
      n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n251, n252, 
      n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, 
      n266, n267, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, 
      n279, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, 
      n292, n293, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, 
      n306, n307, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, 
      n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, 
      n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, 
      n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, 
      n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, 
      n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, 
      n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, 
      n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, 
      n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, 
      n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, 
      n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624, 
      n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, 
      n637, n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, 
      n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, 
      n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672, 
      n673 : std_logic;

begin
   
   U32 : FA_X1 port map( A => n59, B => n66, CI => n33, CO => n32, S => 
                           product(19));
   U33 : FA_X1 port map( A => n67, B => n76, CI => n34, CO => n33, S => 
                           product(18));
   U34 : FA_X1 port map( A => n77, B => n86, CI => n35, CO => n34, S => 
                           product(17));
   U35 : FA_X1 port map( A => n87, B => n98, CI => n36, CO => n35, S => 
                           product(16));
   U36 : FA_X1 port map( A => n99, B => n110, CI => n495, CO => n36, S => 
                           product(15));
   U58 : FA_X1 port map( A => n68, B => n70, CI => n61, CO => n58, S => n59);
   U59 : FA_X1 port map( A => n63, B => n72, CI => n65, CO => n60, S => n61);
   U60 : FA_X1 port map( A => n227, B => n74, CI => n238, CO => n62, S => n63);
   U61 : FA_X1 port map( A => n251, B => n218, CI => n509, CO => n64, S => n65)
                           ;
   U62 : FA_X1 port map( A => n78, B => n71, CI => n69, CO => n66, S => n67);
   U63 : FA_X1 port map( A => n73, B => n82, CI => n80, CO => n68, S => n69);
   U64 : FA_X1 port map( A => n510, B => n239, CI => n84, CO => n70, S => n71);
   U65 : FA_X1 port map( A => n252, B => n228, CI => n219, CO => n72, S => n73)
                           ;
   U67 : FA_X1 port map( A => n88, B => n81, CI => n79, CO => n76, S => n77);
   U68 : FA_X1 port map( A => n85, B => n83, CI => n90, CO => n78, S => n79);
   U69 : FA_X1 port map( A => n94, B => n253, CI => n92, CO => n80, S => n81);
   U70 : FA_X1 port map( A => n229, B => n266, CI => n240, CO => n82, S => n83)
                           ;
   U71 : FA_X1 port map( A => n96, B => n220, CI => n514, CO => n84, S => n85);
   U72 : FA_X1 port map( A => n100, B => n91, CI => n89, CO => n86, S => n87);
   U73 : FA_X1 port map( A => n93, B => n95, CI => n102, CO => n88, S => n89);
   U74 : FA_X1 port map( A => n106, B => n108, CI => n104, CO => n90, S => n91)
                           ;
   U75 : FA_X1 port map( A => n221, B => n241, CI => n516, CO => n92, S => n93)
                           ;
   U76 : FA_X1 port map( A => n267, B => n230, CI => n254, CO => n94, S => n95)
                           ;
   U78 : FA_X1 port map( A => n112, B => n103, CI => n101, CO => n98, S => n99)
                           ;
   U79 : FA_X1 port map( A => n105, B => n107, CI => n114, CO => n100, S => 
                           n101);
   U80 : FA_X1 port map( A => n118, B => n109, CI => n116, CO => n102, S => 
                           n103);
   U81 : FA_X1 port map( A => n255, B => n281, CI => n120, CO => n104, S => 
                           n105);
   U82 : FA_X1 port map( A => n222, B => n242, CI => n521, CO => n106, S => 
                           n107);
   U85 : FA_X1 port map( A => n124, B => n115, CI => n113, CO => n110, S => 
                           n111);
   U86 : FA_X1 port map( A => n117, B => n119, CI => n126, CO => n112, S => 
                           n113);
   U87 : FA_X1 port map( A => n130, B => n121, CI => n128, CO => n114, S => 
                           n115);
   U88 : FA_X1 port map( A => n269, B => n282, CI => n132, CO => n116, S => 
                           n117);
   U89 : FA_X1 port map( A => n243, B => n256, CI => n296, CO => n118, S => 
                           n119);
   U90 : HA_X1 port map( A => n223, B => n232, CO => n120, S => n121);
   U91 : FA_X1 port map( A => n136, B => n127, CI => n125, CO => n122, S => 
                           n123);
   U92 : FA_X1 port map( A => n131, B => n129, CI => n138, CO => n124, S => 
                           n125);
   U93 : FA_X1 port map( A => n142, B => n133, CI => n140, CO => n126, S => 
                           n127);
   U94 : FA_X1 port map( A => n233, B => n270, CI => n244, CO => n128, S => 
                           n129);
   U95 : FA_X1 port map( A => n297, B => n257, CI => n283, CO => n130, S => 
                           n131);
   U96 : HA_X1 port map( A => n210, B => n224, CO => n132, S => n133);
   U97 : FA_X1 port map( A => n139, B => n146, CI => n137, CO => n134, S => 
                           n135);
   U98 : FA_X1 port map( A => n141, B => n143, CI => n148, CO => n136, S => 
                           n137);
   U99 : FA_X1 port map( A => n152, B => n271, CI => n150, CO => n138, S => 
                           n139);
   U100 : FA_X1 port map( A => n234, B => n284, CI => n258, CO => n140, S => 
                           n141);
   U101 : FA_X1 port map( A => n245, B => n225, CI => n298, CO => n142, S => 
                           n143);
   U102 : FA_X1 port map( A => n156, B => n149, CI => n147, CO => n144, S => 
                           n145);
   U103 : FA_X1 port map( A => n158, B => n160, CI => n151, CO => n146, S => 
                           n147);
   U104 : FA_X1 port map( A => n259, B => n285, CI => n153, CO => n148, S => 
                           n149);
   U105 : FA_X1 port map( A => n246, B => n272, CI => n299, CO => n150, S => 
                           n151);
   U106 : HA_X1 port map( A => n211, B => n235, CO => n152, S => n153);
   U107 : FA_X1 port map( A => n164, B => n159, CI => n157, CO => n154, S => 
                           n155);
   U108 : FA_X1 port map( A => n166, B => n168, CI => n161, CO => n156, S => 
                           n157);
   U109 : FA_X1 port map( A => n247, B => n286, CI => n273, CO => n158, S => 
                           n159);
   U110 : FA_X1 port map( A => n260, B => n236, CI => n300, CO => n160, S => 
                           n161);
   U111 : FA_X1 port map( A => n167, B => n172, CI => n165, CO => n162, S => 
                           n163);
   U112 : FA_X1 port map( A => n169, B => n301, CI => n174, CO => n164, S => 
                           n165);
   U113 : FA_X1 port map( A => n261, B => n274, CI => n287, CO => n166, S => 
                           n167);
   U114 : HA_X1 port map( A => n212, B => n248, CO => n168, S => n169);
   U115 : FA_X1 port map( A => n175, B => n178, CI => n173, CO => n170, S => 
                           n171);
   U116 : FA_X1 port map( A => n262, B => n288, CI => n180, CO => n172, S => 
                           n173);
   U117 : FA_X1 port map( A => n275, B => n249, CI => n302, CO => n174, S => 
                           n175);
   U118 : FA_X1 port map( A => n184, B => n181, CI => n179, CO => n176, S => 
                           n177);
   U119 : FA_X1 port map( A => n276, B => n303, CI => n289, CO => n178, S => 
                           n179);
   U120 : HA_X1 port map( A => n213, B => n263, CO => n180, S => n181);
   U121 : FA_X1 port map( A => n188, B => n277, CI => n185, CO => n182, S => 
                           n183);
   U122 : FA_X1 port map( A => n304, B => n264, CI => n290, CO => n184, S => 
                           n185);
   U123 : FA_X1 port map( A => n291, B => n305, CI => n189, CO => n186, S => 
                           n187);
   U124 : HA_X1 port map( A => n214, B => n278, CO => n188, S => n189);
   U125 : FA_X1 port map( A => n306, B => n279, CI => n292, CO => n190, S => 
                           n191);
   U126 : HA_X1 port map( A => n293, B => n307, CO => n192, S => n193);
   U394 : INV_X1 port map( A => n558, ZN => n495);
   U395 : INV_X1 port map( A => n561, ZN => n499);
   U396 : INV_X1 port map( A => n562, ZN => n501);
   U397 : INV_X1 port map( A => n559, ZN => n496);
   U398 : INV_X1 port map( A => n560, ZN => n498);
   U399 : INV_X1 port map( A => n182, ZN => n507);
   U400 : INV_X1 port map( A => n177, ZN => n505);
   U401 : INV_X1 port map( A => n170, ZN => n504);
   U402 : INV_X1 port map( A => n163, ZN => n502);
   U403 : INV_X1 port map( A => n190, ZN => n512);
   U404 : INV_X1 port map( A => n187, ZN => n508);
   U405 : INV_X1 port map( A => n573, ZN => n518);
   U406 : INV_X1 port map( A => n577, ZN => n519);
   U407 : INV_X1 port map( A => n592, ZN => n521);
   U408 : INV_X1 port map( A => n606, ZN => n514);
   U409 : INV_X1 port map( A => n96, ZN => n516);
   U410 : INV_X1 port map( A => n74, ZN => n510);
   U411 : INV_X1 port map( A => n621, ZN => n509);
   U412 : INV_X1 port map( A => n571, ZN => n513);
   U413 : INV_X1 port map( A => n193, ZN => n515);
   U414 : INV_X1 port map( A => a(9), ZN => n503);
   U415 : INV_X1 port map( A => a(1), ZN => n520);
   U416 : INV_X1 port map( A => a(5), ZN => n511);
   U417 : INV_X1 port map( A => a(3), ZN => n517);
   U418 : INV_X1 port map( A => a(7), ZN => n506);
   U419 : INV_X1 port map( A => b(0), ZN => n523);
   U420 : INV_X1 port map( A => a(0), ZN => n522);
   U421 : XNOR2_X1 port map( A => a(12), B => a(11), ZN => n534);
   U422 : INV_X1 port map( A => a(11), ZN => n500);
   U423 : INV_X1 port map( A => a(13), ZN => n497);
   U424 : XNOR2_X2 port map( A => a(6), B => a(5), ZN => n544);
   U425 : XNOR2_X2 port map( A => a(8), B => a(7), ZN => n538);
   U426 : XNOR2_X2 port map( A => a(4), B => a(3), ZN => n556);
   U427 : XNOR2_X2 port map( A => a(10), B => a(9), ZN => n549);
   U428 : XOR2_X1 port map( A => n524, B => n32, Z => product(20));
   U429 : XOR2_X1 port map( A => n525, B => n526, Z => n524);
   U430 : XOR2_X1 port map( A => n527, B => n528, Z => n526);
   U431 : XNOR2_X1 port map( A => n60, B => n58, ZN => n528);
   U432 : XNOR2_X1 port map( A => n64, B => n62, ZN => n527);
   U433 : XOR2_X1 port map( A => n529, B => n530, Z => n525);
   U434 : XOR2_X1 port map( A => n531, B => n532, Z => n530);
   U435 : OAI22_X1 port map( A1 => n533, A2 => n534, B1 => n535, B2 => n536, ZN
                           => n532);
   U436 : XOR2_X1 port map( A => b(8), B => n497, Z => n533);
   U437 : OAI22_X1 port map( A1 => n537, A2 => n538, B1 => n539, B2 => n540, ZN
                           => n531);
   U438 : XOR2_X1 port map( A => b(12), B => n503, Z => n537);
   U439 : XNOR2_X1 port map( A => n541, B => n542, ZN => n529);
   U440 : OAI22_X1 port map( A1 => n543, A2 => n544, B1 => n545, B2 => n546, ZN
                           => n542);
   U441 : XOR2_X1 port map( A => b(14), B => n506, Z => n543);
   U442 : OAI22_X1 port map( A1 => n547, A2 => n548, B1 => n549, B2 => n550, ZN
                           => n541);
   U443 : XOR2_X1 port map( A => b(10), B => n500, Z => n550);
   U444 : OAI22_X1 port map( A1 => n551, A2 => n552, B1 => n518, B2 => n553, ZN
                           => n96);
   U445 : OAI22_X1 port map( A1 => n554, A2 => n555, B1 => n556, B2 => n557, ZN
                           => n74);
   U446 : AOI222_X1 port map( A1 => n496, A2 => n111, B1 => n496, B2 => n122, 
                           C1 => n122, C2 => n111, ZN => n558);
   U447 : AOI222_X1 port map( A1 => n498, A2 => n123, B1 => n498, B2 => n134, 
                           C1 => n134, C2 => n123, ZN => n559);
   U448 : AOI222_X1 port map( A1 => n499, A2 => n135, B1 => n499, B2 => n144, 
                           C1 => n144, C2 => n135, ZN => n560);
   U449 : AOI222_X1 port map( A1 => n501, A2 => n145, B1 => n501, B2 => n154, 
                           C1 => n154, C2 => n145, ZN => n561);
   U450 : AOI222_X1 port map( A1 => n563, A2 => n155, B1 => n563, B2 => n162, 
                           C1 => n162, C2 => n155, ZN => n562);
   U451 : OAI222_X1 port map( A1 => n564, A2 => n502, B1 => n564, B2 => n504, 
                           C1 => n504, C2 => n502, ZN => n563);
   U452 : AOI222_X1 port map( A1 => n565, A2 => n171, B1 => n565, B2 => n176, 
                           C1 => n176, C2 => n171, ZN => n564);
   U453 : OAI222_X1 port map( A1 => n566, A2 => n505, B1 => n566, B2 => n507, 
                           C1 => n507, C2 => n505, ZN => n565);
   U454 : AOI222_X1 port map( A1 => n567, A2 => n183, B1 => n567, B2 => n186, 
                           C1 => n186, C2 => n183, ZN => n566);
   U455 : OAI222_X1 port map( A1 => n568, A2 => n508, B1 => n568, B2 => n512, 
                           C1 => n512, C2 => n508, ZN => n567);
   U456 : AOI222_X1 port map( A1 => n569, A2 => n191, B1 => n569, B2 => n192, 
                           C1 => n192, C2 => n191, ZN => n568);
   U457 : OAI222_X1 port map( A1 => n570, A2 => n515, B1 => n513, B2 => n570, 
                           C1 => n513, C2 => n515, ZN => n569);
   U458 : OAI21_X1 port map( B1 => n517, B2 => n552, A => n572, ZN => n571);
   U459 : NAND3_X1 port map( A1 => n573, A2 => n523, A3 => a(3), ZN => n572);
   U460 : MUX2_X1 port map( A => n574, B => n575, S => b(0), Z => n570);
   U461 : NAND2_X1 port map( A1 => n573, A2 => n576, ZN => n575);
   U462 : NAND2_X1 port map( A1 => n577, A2 => n576, ZN => n574);
   U463 : OAI22_X1 port map( A1 => n519, A2 => n578, B1 => n579, B2 => n522, ZN
                           => n576);
   U464 : NOR2_X1 port map( A1 => n520, A2 => b(1), ZN => n577);
   U465 : OAI22_X1 port map( A1 => n579, A2 => n578, B1 => n580, B2 => n522, ZN
                           => n307);
   U466 : XOR2_X1 port map( A => b(2), B => n520, Z => n579);
   U467 : OAI22_X1 port map( A1 => n580, A2 => n578, B1 => n581, B2 => n522, ZN
                           => n306);
   U468 : XOR2_X1 port map( A => b(3), B => n520, Z => n580);
   U469 : OAI22_X1 port map( A1 => n581, A2 => n578, B1 => n582, B2 => n522, ZN
                           => n305);
   U470 : XOR2_X1 port map( A => b(4), B => n520, Z => n581);
   U471 : OAI22_X1 port map( A1 => n582, A2 => n578, B1 => n583, B2 => n522, ZN
                           => n304);
   U472 : XOR2_X1 port map( A => b(5), B => n520, Z => n582);
   U473 : OAI22_X1 port map( A1 => n583, A2 => n578, B1 => n584, B2 => n522, ZN
                           => n303);
   U474 : XOR2_X1 port map( A => b(6), B => n520, Z => n583);
   U475 : OAI22_X1 port map( A1 => n584, A2 => n578, B1 => n585, B2 => n522, ZN
                           => n302);
   U476 : XOR2_X1 port map( A => b(7), B => n520, Z => n584);
   U477 : OAI22_X1 port map( A1 => n585, A2 => n578, B1 => n586, B2 => n522, ZN
                           => n301);
   U478 : XOR2_X1 port map( A => b(8), B => n520, Z => n585);
   U479 : OAI22_X1 port map( A1 => n586, A2 => n578, B1 => n587, B2 => n522, ZN
                           => n300);
   U480 : XOR2_X1 port map( A => b(9), B => n520, Z => n586);
   U481 : OAI22_X1 port map( A1 => n587, A2 => n578, B1 => n588, B2 => n522, ZN
                           => n299);
   U482 : XOR2_X1 port map( A => b(10), B => n520, Z => n587);
   U483 : OAI22_X1 port map( A1 => n588, A2 => n578, B1 => n589, B2 => n522, ZN
                           => n298);
   U484 : XOR2_X1 port map( A => b(11), B => n520, Z => n588);
   U485 : OAI22_X1 port map( A1 => n589, A2 => n578, B1 => n590, B2 => n522, ZN
                           => n297);
   U486 : XOR2_X1 port map( A => b(12), B => n520, Z => n589);
   U487 : OAI22_X1 port map( A1 => n590, A2 => n578, B1 => n591, B2 => n522, ZN
                           => n296);
   U488 : XOR2_X1 port map( A => b(13), B => n520, Z => n590);
   U489 : OAI22_X1 port map( A1 => n522, A2 => n591, B1 => n578, B2 => n591, ZN
                           => n592);
   U490 : NAND2_X1 port map( A1 => a(1), A2 => n522, ZN => n578);
   U491 : XNOR2_X1 port map( A => b(14), B => a(1), ZN => n591);
   U492 : OAI22_X1 port map( A1 => n593, A2 => n552, B1 => n518, B2 => n594, ZN
                           => n293);
   U493 : XOR2_X1 port map( A => n517, B => b(0), Z => n593);
   U494 : OAI22_X1 port map( A1 => n594, A2 => n552, B1 => n518, B2 => n595, ZN
                           => n292);
   U495 : XOR2_X1 port map( A => b(1), B => n517, Z => n594);
   U496 : OAI22_X1 port map( A1 => n595, A2 => n552, B1 => n518, B2 => n596, ZN
                           => n291);
   U497 : XOR2_X1 port map( A => b(2), B => n517, Z => n595);
   U498 : OAI22_X1 port map( A1 => n596, A2 => n552, B1 => n518, B2 => n597, ZN
                           => n290);
   U499 : XOR2_X1 port map( A => b(3), B => n517, Z => n596);
   U500 : OAI22_X1 port map( A1 => n597, A2 => n552, B1 => n518, B2 => n598, ZN
                           => n289);
   U501 : XOR2_X1 port map( A => b(4), B => n517, Z => n597);
   U502 : OAI22_X1 port map( A1 => n598, A2 => n552, B1 => n518, B2 => n599, ZN
                           => n288);
   U503 : XOR2_X1 port map( A => b(5), B => n517, Z => n598);
   U504 : OAI22_X1 port map( A1 => n599, A2 => n552, B1 => n518, B2 => n600, ZN
                           => n287);
   U505 : XOR2_X1 port map( A => b(6), B => n517, Z => n599);
   U506 : OAI22_X1 port map( A1 => n600, A2 => n552, B1 => n518, B2 => n601, ZN
                           => n286);
   U507 : XOR2_X1 port map( A => b(7), B => n517, Z => n600);
   U508 : OAI22_X1 port map( A1 => n601, A2 => n552, B1 => n518, B2 => n602, ZN
                           => n285);
   U509 : XOR2_X1 port map( A => b(8), B => n517, Z => n601);
   U510 : OAI22_X1 port map( A1 => n602, A2 => n552, B1 => n518, B2 => n603, ZN
                           => n284);
   U511 : XOR2_X1 port map( A => b(9), B => n517, Z => n602);
   U512 : OAI22_X1 port map( A1 => n603, A2 => n552, B1 => n518, B2 => n604, ZN
                           => n283);
   U513 : XOR2_X1 port map( A => b(10), B => n517, Z => n603);
   U514 : OAI22_X1 port map( A1 => n604, A2 => n552, B1 => n518, B2 => n605, ZN
                           => n282);
   U515 : XOR2_X1 port map( A => b(11), B => n517, Z => n604);
   U516 : OAI22_X1 port map( A1 => n605, A2 => n552, B1 => n518, B2 => n551, ZN
                           => n281);
   U517 : XOR2_X1 port map( A => b(13), B => n517, Z => n551);
   U518 : XOR2_X1 port map( A => b(12), B => n517, Z => n605);
   U519 : OAI22_X1 port map( A1 => n553, A2 => n518, B1 => n552, B2 => n553, ZN
                           => n606);
   U520 : NAND2_X1 port map( A1 => n518, A2 => n607, ZN => n552);
   U521 : XOR2_X1 port map( A => a(3), B => a(2), Z => n607);
   U522 : XOR2_X1 port map( A => a(2), B => a(1), Z => n573);
   U523 : XOR2_X1 port map( A => b(14), B => n517, Z => n553);
   U524 : NOR2_X1 port map( A1 => n556, A2 => n523, ZN => n279);
   U525 : OAI22_X1 port map( A1 => n608, A2 => n555, B1 => n556, B2 => n609, ZN
                           => n278);
   U526 : XOR2_X1 port map( A => n511, B => b(0), Z => n608);
   U527 : OAI22_X1 port map( A1 => n609, A2 => n555, B1 => n556, B2 => n610, ZN
                           => n277);
   U528 : XOR2_X1 port map( A => b(1), B => n511, Z => n609);
   U529 : OAI22_X1 port map( A1 => n610, A2 => n555, B1 => n556, B2 => n611, ZN
                           => n276);
   U530 : XOR2_X1 port map( A => b(2), B => n511, Z => n610);
   U531 : OAI22_X1 port map( A1 => n611, A2 => n555, B1 => n556, B2 => n612, ZN
                           => n275);
   U532 : XOR2_X1 port map( A => b(3), B => n511, Z => n611);
   U533 : OAI22_X1 port map( A1 => n612, A2 => n555, B1 => n556, B2 => n613, ZN
                           => n274);
   U534 : XOR2_X1 port map( A => b(4), B => n511, Z => n612);
   U535 : OAI22_X1 port map( A1 => n613, A2 => n555, B1 => n556, B2 => n614, ZN
                           => n273);
   U536 : XOR2_X1 port map( A => b(5), B => n511, Z => n613);
   U537 : OAI22_X1 port map( A1 => n614, A2 => n555, B1 => n556, B2 => n615, ZN
                           => n272);
   U538 : XOR2_X1 port map( A => b(6), B => n511, Z => n614);
   U539 : OAI22_X1 port map( A1 => n615, A2 => n555, B1 => n556, B2 => n616, ZN
                           => n271);
   U540 : XOR2_X1 port map( A => b(7), B => n511, Z => n615);
   U541 : OAI22_X1 port map( A1 => n616, A2 => n555, B1 => n556, B2 => n617, ZN
                           => n270);
   U542 : XOR2_X1 port map( A => b(8), B => n511, Z => n616);
   U543 : OAI22_X1 port map( A1 => n617, A2 => n555, B1 => n556, B2 => n618, ZN
                           => n269);
   U544 : XOR2_X1 port map( A => b(9), B => n511, Z => n617);
   U545 : OAI22_X1 port map( A1 => n619, A2 => n555, B1 => n556, B2 => n620, ZN
                           => n267);
   U546 : OAI22_X1 port map( A1 => n620, A2 => n555, B1 => n556, B2 => n554, ZN
                           => n266);
   U547 : XOR2_X1 port map( A => b(13), B => n511, Z => n554);
   U548 : XOR2_X1 port map( A => b(12), B => n511, Z => n620);
   U549 : OAI22_X1 port map( A1 => n557, A2 => n556, B1 => n555, B2 => n557, ZN
                           => n621);
   U550 : XOR2_X1 port map( A => b(14), B => n511, Z => n557);
   U551 : NOR2_X1 port map( A1 => n544, A2 => n523, ZN => n264);
   U552 : OAI22_X1 port map( A1 => n622, A2 => n545, B1 => n544, B2 => n623, ZN
                           => n263);
   U553 : XOR2_X1 port map( A => n506, B => b(0), Z => n622);
   U554 : OAI22_X1 port map( A1 => n623, A2 => n545, B1 => n544, B2 => n624, ZN
                           => n262);
   U555 : XOR2_X1 port map( A => b(1), B => n506, Z => n623);
   U556 : OAI22_X1 port map( A1 => n624, A2 => n545, B1 => n544, B2 => n625, ZN
                           => n261);
   U557 : XOR2_X1 port map( A => b(2), B => n506, Z => n624);
   U558 : OAI22_X1 port map( A1 => n625, A2 => n545, B1 => n544, B2 => n626, ZN
                           => n260);
   U559 : XOR2_X1 port map( A => b(3), B => n506, Z => n625);
   U560 : OAI22_X1 port map( A1 => n626, A2 => n545, B1 => n544, B2 => n627, ZN
                           => n259);
   U561 : XOR2_X1 port map( A => b(4), B => n506, Z => n626);
   U562 : OAI22_X1 port map( A1 => n627, A2 => n545, B1 => n544, B2 => n628, ZN
                           => n258);
   U563 : XOR2_X1 port map( A => b(5), B => n506, Z => n627);
   U564 : OAI22_X1 port map( A1 => n628, A2 => n545, B1 => n544, B2 => n629, ZN
                           => n257);
   U565 : XOR2_X1 port map( A => b(6), B => n506, Z => n628);
   U566 : OAI22_X1 port map( A1 => n629, A2 => n545, B1 => n544, B2 => n630, ZN
                           => n256);
   U567 : XOR2_X1 port map( A => b(7), B => n506, Z => n629);
   U568 : OAI22_X1 port map( A1 => n630, A2 => n545, B1 => n544, B2 => n631, ZN
                           => n255);
   U569 : XOR2_X1 port map( A => b(8), B => n506, Z => n630);
   U570 : OAI22_X1 port map( A1 => n631, A2 => n545, B1 => n544, B2 => n632, ZN
                           => n254);
   U571 : XOR2_X1 port map( A => b(9), B => n506, Z => n631);
   U572 : OAI22_X1 port map( A1 => n632, A2 => n545, B1 => n544, B2 => n633, ZN
                           => n253);
   U573 : XOR2_X1 port map( A => b(10), B => n506, Z => n632);
   U574 : OAI22_X1 port map( A1 => n633, A2 => n545, B1 => n544, B2 => n634, ZN
                           => n252);
   U575 : XOR2_X1 port map( A => b(11), B => n506, Z => n633);
   U576 : OAI22_X1 port map( A1 => n634, A2 => n545, B1 => n544, B2 => n546, ZN
                           => n251);
   U577 : XNOR2_X1 port map( A => b(13), B => a(7), ZN => n546);
   U578 : XOR2_X1 port map( A => b(12), B => n506, Z => n634);
   U579 : NOR2_X1 port map( A1 => n538, A2 => n523, ZN => n249);
   U580 : OAI22_X1 port map( A1 => n635, A2 => n539, B1 => n538, B2 => n636, ZN
                           => n248);
   U581 : XOR2_X1 port map( A => n503, B => b(0), Z => n635);
   U582 : OAI22_X1 port map( A1 => n636, A2 => n539, B1 => n538, B2 => n637, ZN
                           => n247);
   U583 : XOR2_X1 port map( A => b(1), B => n503, Z => n636);
   U584 : OAI22_X1 port map( A1 => n637, A2 => n539, B1 => n538, B2 => n638, ZN
                           => n246);
   U585 : XOR2_X1 port map( A => b(2), B => n503, Z => n637);
   U586 : OAI22_X1 port map( A1 => n638, A2 => n539, B1 => n538, B2 => n639, ZN
                           => n245);
   U587 : XOR2_X1 port map( A => b(3), B => n503, Z => n638);
   U588 : OAI22_X1 port map( A1 => n639, A2 => n539, B1 => n538, B2 => n640, ZN
                           => n244);
   U589 : XOR2_X1 port map( A => b(4), B => n503, Z => n639);
   U590 : OAI22_X1 port map( A1 => n640, A2 => n539, B1 => n538, B2 => n641, ZN
                           => n243);
   U591 : XOR2_X1 port map( A => b(5), B => n503, Z => n640);
   U592 : OAI22_X1 port map( A1 => n641, A2 => n539, B1 => n538, B2 => n642, ZN
                           => n242);
   U593 : XOR2_X1 port map( A => b(6), B => n503, Z => n641);
   U594 : OAI22_X1 port map( A1 => n642, A2 => n539, B1 => n538, B2 => n643, ZN
                           => n241);
   U595 : XOR2_X1 port map( A => b(7), B => n503, Z => n642);
   U596 : OAI22_X1 port map( A1 => n643, A2 => n539, B1 => n538, B2 => n644, ZN
                           => n240);
   U597 : XOR2_X1 port map( A => b(8), B => n503, Z => n643);
   U598 : OAI22_X1 port map( A1 => n644, A2 => n539, B1 => n538, B2 => n645, ZN
                           => n239);
   U599 : XOR2_X1 port map( A => b(9), B => n503, Z => n644);
   U600 : OAI22_X1 port map( A1 => n645, A2 => n539, B1 => n538, B2 => n540, ZN
                           => n238);
   U601 : XNOR2_X1 port map( A => b(11), B => a(9), ZN => n540);
   U602 : XOR2_X1 port map( A => b(10), B => n503, Z => n645);
   U603 : NOR2_X1 port map( A1 => n549, A2 => n523, ZN => n236);
   U604 : OAI22_X1 port map( A1 => n646, A2 => n548, B1 => n549, B2 => n647, ZN
                           => n235);
   U605 : XOR2_X1 port map( A => n500, B => b(0), Z => n646);
   U606 : OAI22_X1 port map( A1 => n647, A2 => n548, B1 => n549, B2 => n648, ZN
                           => n234);
   U607 : XOR2_X1 port map( A => b(1), B => n500, Z => n647);
   U608 : OAI22_X1 port map( A1 => n648, A2 => n548, B1 => n549, B2 => n649, ZN
                           => n233);
   U609 : XOR2_X1 port map( A => b(2), B => n500, Z => n648);
   U610 : OAI22_X1 port map( A1 => n649, A2 => n548, B1 => n549, B2 => n650, ZN
                           => n232);
   U611 : XOR2_X1 port map( A => b(3), B => n500, Z => n649);
   U612 : OAI22_X1 port map( A1 => n651, A2 => n548, B1 => n549, B2 => n652, ZN
                           => n230);
   U613 : OAI22_X1 port map( A1 => n652, A2 => n548, B1 => n549, B2 => n653, ZN
                           => n229);
   U614 : XOR2_X1 port map( A => b(6), B => n500, Z => n652);
   U615 : OAI22_X1 port map( A1 => n653, A2 => n548, B1 => n549, B2 => n654, ZN
                           => n228);
   U616 : XOR2_X1 port map( A => b(7), B => n500, Z => n653);
   U617 : OAI22_X1 port map( A1 => n654, A2 => n548, B1 => n549, B2 => n547, ZN
                           => n227);
   U618 : XOR2_X1 port map( A => b(9), B => n500, Z => n547);
   U619 : XOR2_X1 port map( A => b(8), B => n500, Z => n654);
   U620 : NOR2_X1 port map( A1 => n534, A2 => n523, ZN => n225);
   U621 : OAI22_X1 port map( A1 => n655, A2 => n535, B1 => n534, B2 => n656, ZN
                           => n224);
   U622 : XOR2_X1 port map( A => n497, B => b(0), Z => n655);
   U623 : OAI22_X1 port map( A1 => n656, A2 => n535, B1 => n534, B2 => n657, ZN
                           => n223);
   U624 : XOR2_X1 port map( A => b(1), B => n497, Z => n656);
   U625 : OAI22_X1 port map( A1 => n657, A2 => n535, B1 => n534, B2 => n658, ZN
                           => n222);
   U626 : XOR2_X1 port map( A => b(2), B => n497, Z => n657);
   U627 : OAI22_X1 port map( A1 => n658, A2 => n535, B1 => n534, B2 => n659, ZN
                           => n221);
   U628 : XOR2_X1 port map( A => b(3), B => n497, Z => n658);
   U629 : OAI22_X1 port map( A1 => n659, A2 => n535, B1 => n534, B2 => n660, ZN
                           => n220);
   U630 : XOR2_X1 port map( A => b(4), B => n497, Z => n659);
   U631 : OAI22_X1 port map( A1 => n660, A2 => n535, B1 => n534, B2 => n661, ZN
                           => n219);
   U632 : XOR2_X1 port map( A => b(5), B => n497, Z => n660);
   U633 : OAI22_X1 port map( A1 => n661, A2 => n535, B1 => n534, B2 => n536, ZN
                           => n218);
   U634 : XNOR2_X1 port map( A => b(7), B => a(13), ZN => n536);
   U635 : XOR2_X1 port map( A => b(6), B => n497, Z => n661);
   U636 : OAI21_X1 port map( B1 => n511, B2 => n555, A => n662, ZN => n214);
   U637 : OR3_X1 port map( A1 => n556, A2 => b(0), A3 => n511, ZN => n662);
   U638 : OAI21_X1 port map( B1 => n506, B2 => n545, A => n663, ZN => n213);
   U639 : OR3_X1 port map( A1 => n544, A2 => b(0), A3 => n506, ZN => n663);
   U640 : NAND2_X1 port map( A1 => n544, A2 => n664, ZN => n545);
   U641 : XOR2_X1 port map( A => a(7), B => a(6), Z => n664);
   U642 : OAI21_X1 port map( B1 => n503, B2 => n539, A => n665, ZN => n212);
   U643 : OR3_X1 port map( A1 => n538, A2 => b(0), A3 => n503, ZN => n665);
   U644 : NAND2_X1 port map( A1 => n538, A2 => n666, ZN => n539);
   U645 : XOR2_X1 port map( A => a(9), B => a(8), Z => n666);
   U646 : OAI21_X1 port map( B1 => n500, B2 => n548, A => n667, ZN => n211);
   U647 : OR3_X1 port map( A1 => n549, A2 => b(0), A3 => n500, ZN => n667);
   U648 : OAI21_X1 port map( B1 => n497, B2 => n535, A => n668, ZN => n210);
   U649 : OR3_X1 port map( A1 => n534, A2 => b(0), A3 => n497, ZN => n668);
   U650 : NAND2_X1 port map( A1 => n534, A2 => n669, ZN => n535);
   U651 : XOR2_X1 port map( A => a(13), B => a(12), Z => n669);
   U652 : XNOR2_X1 port map( A => n670, B => n671, ZN => n109);
   U653 : OR2_X1 port map( A1 => n670, A2 => n671, ZN => n108);
   U654 : OAI22_X1 port map( A1 => n618, A2 => n555, B1 => n556, B2 => n619, ZN
                           => n671);
   U655 : XOR2_X1 port map( A => b(11), B => n511, Z => n619);
   U656 : NAND2_X1 port map( A1 => n556, A2 => n672, ZN => n555);
   U657 : XOR2_X1 port map( A => a(5), B => a(4), Z => n672);
   U658 : XOR2_X1 port map( A => b(10), B => n511, Z => n618);
   U659 : OAI22_X1 port map( A1 => n650, A2 => n548, B1 => n549, B2 => n651, ZN
                           => n670);
   U660 : XOR2_X1 port map( A => b(5), B => n500, Z => n651);
   U661 : NAND2_X1 port map( A1 => n549, A2 => n673, ZN => n548);
   U662 : XOR2_X1 port map( A => a(11), B => a(10), Z => n673);
   U663 : XOR2_X1 port map( A => b(4), B => n500, Z => n650);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_IIR_FILTER.all;

entity IIR_FILTER_DW_mult_tc_2 is

   port( a : in std_logic_vector (14 downto 0);  b : in std_logic_vector (13 
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
   U80 : FA_X1 port map( A => n581, B => n284, CI => n114, CO => n100, S => 
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
   U91 : FA_X1 port map( A => n260, B => n286, CI => n586, CO => n122, S => 
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
   U442 : XOR2_X2 port map( A => b(2), B => n593, Z => n633);
   U443 : INV_X1 port map( A => n140, ZN => n559);
   U444 : INV_X1 port map( A => n129, ZN => n558);
   U445 : INV_X1 port map( A => n200, ZN => n574);
   U446 : INV_X1 port map( A => n193, ZN => n570);
   U447 : INV_X1 port map( A => n164, ZN => n564);
   U448 : INV_X1 port map( A => n153, ZN => n560);
   U449 : INV_X1 port map( A => n184, ZN => n569);
   U450 : INV_X1 port map( A => n175, ZN => n565);
   U451 : INV_X1 port map( A => n116, ZN => n557);
   U452 : INV_X1 port map( A => n107, ZN => n556);
   U453 : INV_X1 port map( A => n96, ZN => n562);
   U454 : INV_X1 port map( A => n89, ZN => n561);
   U455 : INV_X1 port map( A => n212, ZN => n579);
   U456 : INV_X1 port map( A => n207, ZN => n575);
   U457 : INV_X1 port map( A => n86, ZN => n577);
   U458 : INV_X1 port map( A => n220, ZN => n584);
   U459 : INV_X1 port map( A => n217, ZN => n580);
   U460 : INV_X1 port map( A => n223, ZN => n585);
   U461 : INV_X1 port map( A => n637, ZN => n592);
   U462 : INV_X1 port map( A => n633, ZN => n590);
   U463 : INV_X1 port map( A => n654, ZN => n588);
   U464 : INV_X1 port map( A => n126, ZN => n586);
   U465 : INV_X1 port map( A => n668, ZN => n587);
   U466 : INV_X1 port map( A => n652, ZN => n591);
   U467 : INV_X1 port map( A => n104, ZN => n581);
   U468 : INV_X1 port map( A => n72, ZN => n572);
   U469 : INV_X1 port map( A => n62, ZN => n567);
   U470 : INV_X1 port map( A => n700, ZN => n576);
   U471 : INV_X1 port map( A => n728, ZN => n566);
   U472 : INV_X1 port map( A => n685, ZN => n582);
   U473 : INV_X1 port map( A => n714, ZN => n571);
   U474 : INV_X1 port map( A => b(1), ZN => n593);
   U475 : INV_X1 port map( A => b(3), ZN => n589);
   U476 : INV_X1 port map( A => a(0), ZN => n595);
   U477 : INV_X1 port map( A => b(5), ZN => n583);
   U478 : INV_X1 port map( A => b(7), ZN => n578);
   U479 : INV_X1 port map( A => b(9), ZN => n573);
   U480 : INV_X1 port map( A => b(11), ZN => n568);
   U481 : INV_X1 port map( A => b(13), ZN => n563);
   U482 : INV_X1 port map( A => b(0), ZN => n594);
   U483 : XNOR2_X2 port map( A => b(6), B => b(5), ZN => n604);
   U484 : XNOR2_X2 port map( A => b(8), B => b(7), ZN => n608);
   U485 : XNOR2_X2 port map( A => b(12), B => b(11), ZN => n599);
   U486 : XNOR2_X2 port map( A => b(10), B => b(9), ZN => n612);
   U487 : XNOR2_X2 port map( A => b(4), B => b(3), ZN => n669);
   U488 : XNOR2_X1 port map( A => n596, B => n597, ZN => product(26));
   U489 : XOR2_X1 port map( A => n58, B => n32, Z => n597);
   U490 : OAI22_X1 port map( A1 => n598, A2 => n599, B1 => n600, B2 => n601, ZN
                           => n596);
   U491 : XOR2_X1 port map( A => n563, B => a(14), Z => n598);
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
   U509 : OAI222_X1 port map( A1 => n628, A2 => n580, B1 => n628, B2 => n584, 
                           C1 => n584, C2 => n580, ZN => n627);
   U510 : AOI222_X1 port map( A1 => n629, A2 => n221, B1 => n629, B2 => n222, 
                           C1 => n222, C2 => n221, ZN => n628);
   U511 : OAI222_X1 port map( A1 => n630, A2 => n585, B1 => n631, B2 => n630, 
                           C1 => n631, C2 => n585, ZN => n629);
   U512 : AOI21_X1 port map( B1 => b(3), B2 => n588, A => n632, ZN => n631);
   U513 : NOR3_X1 port map( A1 => n633, A2 => a(0), A3 => n589, ZN => n632);
   U514 : MUX2_X1 port map( A => n634, B => n635, S => a(0), Z => n630);
   U515 : NAND2_X1 port map( A1 => n590, A2 => n636, ZN => n635);
   U516 : NAND2_X1 port map( A1 => n637, A2 => n636, ZN => n634);
   U517 : OAI22_X1 port map( A1 => n592, A2 => n638, B1 => n639, B2 => n594, ZN
                           => n636);
   U518 : NOR2_X1 port map( A1 => n593, A2 => a(1), ZN => n637);
   U519 : OAI22_X1 port map( A1 => n639, A2 => n638, B1 => n640, B2 => n594, ZN
                           => n352);
   U520 : XOR2_X1 port map( A => a(2), B => n593, Z => n639);
   U521 : OAI22_X1 port map( A1 => n640, A2 => n638, B1 => n641, B2 => n594, ZN
                           => n351);
   U522 : XOR2_X1 port map( A => a(3), B => n593, Z => n640);
   U523 : OAI22_X1 port map( A1 => n641, A2 => n638, B1 => n642, B2 => n594, ZN
                           => n350);
   U524 : XOR2_X1 port map( A => a(4), B => n593, Z => n641);
   U525 : OAI22_X1 port map( A1 => n642, A2 => n638, B1 => n643, B2 => n594, ZN
                           => n349);
   U526 : XOR2_X1 port map( A => a(5), B => n593, Z => n642);
   U527 : OAI22_X1 port map( A1 => n643, A2 => n638, B1 => n644, B2 => n594, ZN
                           => n348);
   U528 : XOR2_X1 port map( A => a(6), B => n593, Z => n643);
   U529 : OAI22_X1 port map( A1 => n644, A2 => n638, B1 => n645, B2 => n594, ZN
                           => n347);
   U530 : XOR2_X1 port map( A => a(7), B => n593, Z => n644);
   U531 : OAI22_X1 port map( A1 => n645, A2 => n638, B1 => n646, B2 => n594, ZN
                           => n346);
   U532 : XOR2_X1 port map( A => a(8), B => n593, Z => n645);
   U533 : OAI22_X1 port map( A1 => n646, A2 => n638, B1 => n647, B2 => n594, ZN
                           => n345);
   U534 : XOR2_X1 port map( A => a(9), B => n593, Z => n646);
   U535 : OAI22_X1 port map( A1 => n647, A2 => n638, B1 => n648, B2 => n594, ZN
                           => n344);
   U536 : XOR2_X1 port map( A => a(10), B => n593, Z => n647);
   U537 : OAI22_X1 port map( A1 => n648, A2 => n638, B1 => n649, B2 => n594, ZN
                           => n343);
   U538 : XOR2_X1 port map( A => a(11), B => n593, Z => n648);
   U539 : OAI22_X1 port map( A1 => n649, A2 => n638, B1 => n650, B2 => n594, ZN
                           => n342);
   U540 : XOR2_X1 port map( A => a(12), B => n593, Z => n649);
   U541 : OAI22_X1 port map( A1 => n650, A2 => n638, B1 => n651, B2 => n594, ZN
                           => n341);
   U542 : XOR2_X1 port map( A => a(13), B => n593, Z => n650);
   U543 : OAI22_X1 port map( A1 => n594, A2 => n651, B1 => n638, B2 => n651, ZN
                           => n652);
   U544 : NAND2_X1 port map( A1 => b(1), A2 => n594, ZN => n638);
   U545 : XNOR2_X1 port map( A => a(14), B => b(1), ZN => n651);
   U546 : OAI22_X1 port map( A1 => n653, A2 => n654, B1 => n633, B2 => n655, ZN
                           => n338);
   U547 : XOR2_X1 port map( A => n595, B => b(3), Z => n653);
   U548 : OAI22_X1 port map( A1 => n655, A2 => n654, B1 => n633, B2 => n656, ZN
                           => n337);
   U549 : XOR2_X1 port map( A => a(1), B => n589, Z => n655);
   U550 : OAI22_X1 port map( A1 => n656, A2 => n654, B1 => n633, B2 => n657, ZN
                           => n336);
   U551 : XOR2_X1 port map( A => a(2), B => n589, Z => n656);
   U552 : OAI22_X1 port map( A1 => n657, A2 => n654, B1 => n633, B2 => n658, ZN
                           => n335);
   U553 : XOR2_X1 port map( A => a(3), B => n589, Z => n657);
   U554 : OAI22_X1 port map( A1 => n658, A2 => n654, B1 => n633, B2 => n659, ZN
                           => n334);
   U555 : XOR2_X1 port map( A => a(4), B => n589, Z => n658);
   U556 : OAI22_X1 port map( A1 => n659, A2 => n654, B1 => n633, B2 => n660, ZN
                           => n333);
   U557 : XOR2_X1 port map( A => a(5), B => n589, Z => n659);
   U558 : OAI22_X1 port map( A1 => n660, A2 => n654, B1 => n633, B2 => n661, ZN
                           => n332);
   U559 : XOR2_X1 port map( A => a(6), B => n589, Z => n660);
   U560 : OAI22_X1 port map( A1 => n661, A2 => n654, B1 => n633, B2 => n662, ZN
                           => n331);
   U561 : XOR2_X1 port map( A => a(7), B => n589, Z => n661);
   U562 : OAI22_X1 port map( A1 => n662, A2 => n654, B1 => n633, B2 => n663, ZN
                           => n330);
   U563 : XOR2_X1 port map( A => a(8), B => n589, Z => n662);
   U564 : OAI22_X1 port map( A1 => n663, A2 => n654, B1 => n633, B2 => n664, ZN
                           => n329);
   U565 : XOR2_X1 port map( A => a(9), B => n589, Z => n663);
   U566 : OAI22_X1 port map( A1 => n664, A2 => n654, B1 => n633, B2 => n665, ZN
                           => n328);
   U567 : XOR2_X1 port map( A => a(10), B => n589, Z => n664);
   U568 : OAI22_X1 port map( A1 => n665, A2 => n654, B1 => n633, B2 => n666, ZN
                           => n327);
   U569 : XOR2_X1 port map( A => a(11), B => n589, Z => n665);
   U570 : OAI22_X1 port map( A1 => n666, A2 => n654, B1 => n633, B2 => n667, ZN
                           => n326);
   U571 : XOR2_X1 port map( A => a(12), B => n589, Z => n666);
   U572 : AOI22_X1 port map( A1 => n587, A2 => n590, B1 => n588, B2 => n587, ZN
                           => n325);
   U573 : NOR2_X1 port map( A1 => n669, A2 => n595, ZN => n324);
   U574 : OAI22_X1 port map( A1 => n670, A2 => n671, B1 => n669, B2 => n672, ZN
                           => n323);
   U575 : XOR2_X1 port map( A => n595, B => b(5), Z => n670);
   U576 : OAI22_X1 port map( A1 => n672, A2 => n671, B1 => n669, B2 => n673, ZN
                           => n322);
   U577 : XOR2_X1 port map( A => a(1), B => n583, Z => n672);
   U578 : OAI22_X1 port map( A1 => n673, A2 => n671, B1 => n669, B2 => n674, ZN
                           => n321);
   U579 : XOR2_X1 port map( A => a(2), B => n583, Z => n673);
   U580 : OAI22_X1 port map( A1 => n674, A2 => n671, B1 => n669, B2 => n675, ZN
                           => n320);
   U581 : XOR2_X1 port map( A => a(3), B => n583, Z => n674);
   U582 : OAI22_X1 port map( A1 => n675, A2 => n671, B1 => n669, B2 => n676, ZN
                           => n319);
   U583 : XOR2_X1 port map( A => a(4), B => n583, Z => n675);
   U584 : OAI22_X1 port map( A1 => n676, A2 => n671, B1 => n669, B2 => n677, ZN
                           => n318);
   U585 : XOR2_X1 port map( A => a(5), B => n583, Z => n676);
   U586 : OAI22_X1 port map( A1 => n677, A2 => n671, B1 => n669, B2 => n678, ZN
                           => n317);
   U587 : XOR2_X1 port map( A => a(6), B => n583, Z => n677);
   U588 : OAI22_X1 port map( A1 => n678, A2 => n671, B1 => n669, B2 => n679, ZN
                           => n316);
   U589 : XOR2_X1 port map( A => a(7), B => n583, Z => n678);
   U590 : OAI22_X1 port map( A1 => n679, A2 => n671, B1 => n669, B2 => n680, ZN
                           => n315);
   U591 : XOR2_X1 port map( A => a(8), B => n583, Z => n679);
   U592 : OAI22_X1 port map( A1 => n680, A2 => n671, B1 => n669, B2 => n681, ZN
                           => n314);
   U593 : XOR2_X1 port map( A => a(9), B => n583, Z => n680);
   U594 : OAI22_X1 port map( A1 => n682, A2 => n671, B1 => n669, B2 => n683, ZN
                           => n312);
   U595 : OAI22_X1 port map( A1 => n683, A2 => n671, B1 => n669, B2 => n684, ZN
                           => n311);
   U596 : XOR2_X1 port map( A => a(12), B => n583, Z => n683);
   U597 : OAI22_X1 port map( A1 => n686, A2 => n669, B1 => n671, B2 => n686, ZN
                           => n685);
   U598 : NOR2_X1 port map( A1 => n604, A2 => n595, ZN => n309);
   U599 : OAI22_X1 port map( A1 => n687, A2 => n603, B1 => n604, B2 => n688, ZN
                           => n308);
   U600 : XOR2_X1 port map( A => n595, B => b(7), Z => n687);
   U601 : OAI22_X1 port map( A1 => n688, A2 => n603, B1 => n604, B2 => n689, ZN
                           => n307);
   U602 : XOR2_X1 port map( A => a(1), B => n578, Z => n688);
   U603 : OAI22_X1 port map( A1 => n689, A2 => n603, B1 => n604, B2 => n690, ZN
                           => n306);
   U604 : XOR2_X1 port map( A => a(2), B => n578, Z => n689);
   U605 : OAI22_X1 port map( A1 => n690, A2 => n603, B1 => n604, B2 => n691, ZN
                           => n305);
   U606 : XOR2_X1 port map( A => a(3), B => n578, Z => n690);
   U607 : OAI22_X1 port map( A1 => n691, A2 => n603, B1 => n604, B2 => n692, ZN
                           => n304);
   U608 : XOR2_X1 port map( A => a(4), B => n578, Z => n691);
   U609 : OAI22_X1 port map( A1 => n692, A2 => n603, B1 => n604, B2 => n693, ZN
                           => n303);
   U610 : XOR2_X1 port map( A => a(5), B => n578, Z => n692);
   U611 : OAI22_X1 port map( A1 => n693, A2 => n603, B1 => n604, B2 => n694, ZN
                           => n302);
   U612 : XOR2_X1 port map( A => a(6), B => n578, Z => n693);
   U613 : OAI22_X1 port map( A1 => n694, A2 => n603, B1 => n604, B2 => n695, ZN
                           => n301);
   U614 : XOR2_X1 port map( A => a(7), B => n578, Z => n694);
   U615 : OAI22_X1 port map( A1 => n695, A2 => n603, B1 => n604, B2 => n696, ZN
                           => n300);
   U616 : XOR2_X1 port map( A => a(8), B => n578, Z => n695);
   U617 : OAI22_X1 port map( A1 => n696, A2 => n603, B1 => n604, B2 => n697, ZN
                           => n299);
   U618 : XOR2_X1 port map( A => a(9), B => n578, Z => n696);
   U619 : OAI22_X1 port map( A1 => n697, A2 => n603, B1 => n604, B2 => n698, ZN
                           => n298);
   U620 : XOR2_X1 port map( A => a(10), B => n578, Z => n697);
   U621 : OAI22_X1 port map( A1 => n698, A2 => n603, B1 => n604, B2 => n699, ZN
                           => n297);
   U622 : XOR2_X1 port map( A => a(11), B => n578, Z => n698);
   U623 : OAI22_X1 port map( A1 => n699, A2 => n603, B1 => n604, B2 => n602, ZN
                           => n296);
   U624 : XOR2_X1 port map( A => a(13), B => n578, Z => n602);
   U625 : XOR2_X1 port map( A => a(12), B => n578, Z => n699);
   U626 : OAI22_X1 port map( A1 => n605, A2 => n604, B1 => n603, B2 => n605, ZN
                           => n700);
   U627 : XOR2_X1 port map( A => a(14), B => n578, Z => n605);
   U628 : NOR2_X1 port map( A1 => n608, A2 => n595, ZN => n294);
   U629 : OAI22_X1 port map( A1 => n701, A2 => n607, B1 => n608, B2 => n702, ZN
                           => n293);
   U630 : XOR2_X1 port map( A => n595, B => b(9), Z => n701);
   U631 : OAI22_X1 port map( A1 => n702, A2 => n607, B1 => n608, B2 => n703, ZN
                           => n292);
   U632 : XOR2_X1 port map( A => a(1), B => n573, Z => n702);
   U633 : OAI22_X1 port map( A1 => n703, A2 => n607, B1 => n608, B2 => n704, ZN
                           => n291);
   U634 : XOR2_X1 port map( A => a(2), B => n573, Z => n703);
   U635 : OAI22_X1 port map( A1 => n704, A2 => n607, B1 => n608, B2 => n705, ZN
                           => n290);
   U636 : XOR2_X1 port map( A => a(3), B => n573, Z => n704);
   U637 : OAI22_X1 port map( A1 => n705, A2 => n607, B1 => n608, B2 => n706, ZN
                           => n289);
   U638 : XOR2_X1 port map( A => a(4), B => n573, Z => n705);
   U639 : OAI22_X1 port map( A1 => n706, A2 => n607, B1 => n608, B2 => n707, ZN
                           => n288);
   U640 : XOR2_X1 port map( A => a(5), B => n573, Z => n706);
   U641 : OAI22_X1 port map( A1 => n707, A2 => n607, B1 => n608, B2 => n708, ZN
                           => n287);
   U642 : XOR2_X1 port map( A => a(6), B => n573, Z => n707);
   U643 : OAI22_X1 port map( A1 => n708, A2 => n607, B1 => n608, B2 => n709, ZN
                           => n286);
   U644 : XOR2_X1 port map( A => a(7), B => n573, Z => n708);
   U645 : OAI22_X1 port map( A1 => n709, A2 => n607, B1 => n608, B2 => n710, ZN
                           => n285);
   U646 : XOR2_X1 port map( A => a(8), B => n573, Z => n709);
   U647 : OAI22_X1 port map( A1 => n710, A2 => n607, B1 => n608, B2 => n711, ZN
                           => n284);
   U648 : XOR2_X1 port map( A => a(9), B => n573, Z => n710);
   U649 : OAI22_X1 port map( A1 => n711, A2 => n607, B1 => n608, B2 => n712, ZN
                           => n283);
   U650 : XOR2_X1 port map( A => a(10), B => n573, Z => n711);
   U651 : OAI22_X1 port map( A1 => n712, A2 => n607, B1 => n608, B2 => n713, ZN
                           => n282);
   U652 : XOR2_X1 port map( A => a(11), B => n573, Z => n712);
   U653 : OAI22_X1 port map( A1 => n713, A2 => n607, B1 => n608, B2 => n606, ZN
                           => n281);
   U654 : XOR2_X1 port map( A => a(13), B => n573, Z => n606);
   U655 : XOR2_X1 port map( A => a(12), B => n573, Z => n713);
   U656 : OAI22_X1 port map( A1 => n609, A2 => n608, B1 => n607, B2 => n609, ZN
                           => n714);
   U657 : XOR2_X1 port map( A => a(14), B => n573, Z => n609);
   U658 : NOR2_X1 port map( A1 => n612, A2 => n595, ZN => n279);
   U659 : OAI22_X1 port map( A1 => n715, A2 => n611, B1 => n612, B2 => n716, ZN
                           => n278);
   U660 : XOR2_X1 port map( A => n595, B => b(11), Z => n715);
   U661 : OAI22_X1 port map( A1 => n716, A2 => n611, B1 => n612, B2 => n717, ZN
                           => n277);
   U662 : XOR2_X1 port map( A => a(1), B => n568, Z => n716);
   U663 : OAI22_X1 port map( A1 => n717, A2 => n611, B1 => n612, B2 => n718, ZN
                           => n276);
   U664 : XOR2_X1 port map( A => a(2), B => n568, Z => n717);
   U665 : OAI22_X1 port map( A1 => n718, A2 => n611, B1 => n612, B2 => n719, ZN
                           => n275);
   U666 : XOR2_X1 port map( A => a(3), B => n568, Z => n718);
   U667 : OAI22_X1 port map( A1 => n720, A2 => n611, B1 => n612, B2 => n721, ZN
                           => n273);
   U668 : OAI22_X1 port map( A1 => n721, A2 => n611, B1 => n612, B2 => n722, ZN
                           => n272);
   U669 : XOR2_X1 port map( A => a(6), B => n568, Z => n721);
   U670 : OAI22_X1 port map( A1 => n722, A2 => n611, B1 => n612, B2 => n723, ZN
                           => n271);
   U671 : XOR2_X1 port map( A => a(7), B => n568, Z => n722);
   U672 : OAI22_X1 port map( A1 => n723, A2 => n611, B1 => n612, B2 => n724, ZN
                           => n270);
   U673 : XOR2_X1 port map( A => a(8), B => n568, Z => n723);
   U674 : OAI22_X1 port map( A1 => n724, A2 => n611, B1 => n612, B2 => n725, ZN
                           => n269);
   U675 : XOR2_X1 port map( A => a(9), B => n568, Z => n724);
   U676 : OAI22_X1 port map( A1 => n725, A2 => n611, B1 => n612, B2 => n726, ZN
                           => n268);
   U677 : XOR2_X1 port map( A => a(10), B => n568, Z => n725);
   U678 : OAI22_X1 port map( A1 => n726, A2 => n611, B1 => n612, B2 => n727, ZN
                           => n267);
   U679 : XOR2_X1 port map( A => a(11), B => n568, Z => n726);
   U680 : OAI22_X1 port map( A1 => n727, A2 => n611, B1 => n612, B2 => n610, ZN
                           => n266);
   U681 : XOR2_X1 port map( A => a(13), B => n568, Z => n610);
   U682 : XOR2_X1 port map( A => a(12), B => n568, Z => n727);
   U683 : OAI22_X1 port map( A1 => n613, A2 => n612, B1 => n611, B2 => n613, ZN
                           => n728);
   U684 : XOR2_X1 port map( A => a(14), B => n568, Z => n613);
   U685 : NOR2_X1 port map( A1 => n599, A2 => n595, ZN => n264);
   U686 : OAI22_X1 port map( A1 => n729, A2 => n600, B1 => n599, B2 => n730, ZN
                           => n263);
   U687 : XOR2_X1 port map( A => n595, B => b(13), Z => n729);
   U688 : OAI22_X1 port map( A1 => n730, A2 => n600, B1 => n599, B2 => n731, ZN
                           => n262);
   U689 : XOR2_X1 port map( A => a(1), B => n563, Z => n730);
   U690 : OAI22_X1 port map( A1 => n731, A2 => n600, B1 => n599, B2 => n732, ZN
                           => n261);
   U691 : XOR2_X1 port map( A => a(2), B => n563, Z => n731);
   U692 : OAI22_X1 port map( A1 => n732, A2 => n600, B1 => n599, B2 => n733, ZN
                           => n260);
   U693 : XOR2_X1 port map( A => a(3), B => n563, Z => n732);
   U694 : OAI22_X1 port map( A1 => n733, A2 => n600, B1 => n599, B2 => n734, ZN
                           => n259);
   U695 : XOR2_X1 port map( A => a(4), B => n563, Z => n733);
   U696 : OAI22_X1 port map( A1 => n734, A2 => n600, B1 => n599, B2 => n735, ZN
                           => n258);
   U697 : XOR2_X1 port map( A => a(5), B => n563, Z => n734);
   U698 : OAI22_X1 port map( A1 => n735, A2 => n600, B1 => n599, B2 => n736, ZN
                           => n257);
   U699 : XOR2_X1 port map( A => a(6), B => n563, Z => n735);
   U700 : OAI22_X1 port map( A1 => n736, A2 => n600, B1 => n599, B2 => n737, ZN
                           => n256);
   U701 : XOR2_X1 port map( A => a(7), B => n563, Z => n736);
   U702 : OAI22_X1 port map( A1 => n737, A2 => n600, B1 => n599, B2 => n738, ZN
                           => n255);
   U703 : XOR2_X1 port map( A => a(8), B => n563, Z => n737);
   U704 : OAI22_X1 port map( A1 => n738, A2 => n600, B1 => n599, B2 => n739, ZN
                           => n254);
   U705 : XOR2_X1 port map( A => a(9), B => n563, Z => n738);
   U706 : OAI22_X1 port map( A1 => n739, A2 => n600, B1 => n599, B2 => n740, ZN
                           => n253);
   U707 : XOR2_X1 port map( A => a(10), B => n563, Z => n739);
   U708 : OAI22_X1 port map( A1 => n740, A2 => n600, B1 => n599, B2 => n741, ZN
                           => n252);
   U709 : XOR2_X1 port map( A => a(11), B => n563, Z => n740);
   U710 : OAI22_X1 port map( A1 => n741, A2 => n600, B1 => n599, B2 => n601, ZN
                           => n251);
   U711 : XNOR2_X1 port map( A => a(13), B => b(13), ZN => n601);
   U712 : XOR2_X1 port map( A => a(12), B => n563, Z => n741);
   U713 : OAI21_X1 port map( B1 => n583, B2 => n671, A => n742, ZN => n247);
   U714 : OR3_X1 port map( A1 => n669, A2 => a(0), A3 => n583, ZN => n742);
   U715 : OAI21_X1 port map( B1 => n578, B2 => n603, A => n743, ZN => n246);
   U716 : OR3_X1 port map( A1 => n604, A2 => a(0), A3 => n578, ZN => n743);
   U717 : NAND2_X1 port map( A1 => n604, A2 => n744, ZN => n603);
   U718 : XOR2_X1 port map( A => b(7), B => b(6), Z => n744);
   U719 : OAI21_X1 port map( B1 => n573, B2 => n607, A => n745, ZN => n245);
   U720 : OR3_X1 port map( A1 => n608, A2 => a(0), A3 => n573, ZN => n745);
   U721 : NAND2_X1 port map( A1 => n608, A2 => n746, ZN => n607);
   U722 : XOR2_X1 port map( A => b(9), B => b(8), Z => n746);
   U723 : OAI21_X1 port map( B1 => n568, B2 => n611, A => n747, ZN => n244);
   U724 : OR3_X1 port map( A1 => n612, A2 => a(0), A3 => n568, ZN => n747);
   U725 : OAI21_X1 port map( B1 => n563, B2 => n600, A => n748, ZN => n243);
   U726 : OR3_X1 port map( A1 => n599, A2 => a(0), A3 => n563, ZN => n748);
   U727 : NAND2_X1 port map( A1 => n599, A2 => n749, ZN => n600);
   U728 : XOR2_X1 port map( A => b(13), B => b(12), Z => n749);
   U729 : XNOR2_X1 port map( A => n750, B => n751, ZN => n139);
   U730 : OR2_X1 port map( A1 => n750, A2 => n751, ZN => n138);
   U731 : OAI22_X1 port map( A1 => n681, A2 => n671, B1 => n669, B2 => n682, ZN
                           => n751);
   U732 : XOR2_X1 port map( A => a(11), B => n583, Z => n682);
   U733 : XOR2_X1 port map( A => a(10), B => n583, Z => n681);
   U734 : OAI22_X1 port map( A1 => n719, A2 => n611, B1 => n612, B2 => n720, ZN
                           => n750);
   U735 : XOR2_X1 port map( A => a(5), B => n568, Z => n720);
   U736 : NAND2_X1 port map( A1 => n612, A2 => n752, ZN => n611);
   U737 : XOR2_X1 port map( A => b(11), B => b(10), Z => n752);
   U738 : XOR2_X1 port map( A => a(4), B => n568, Z => n719);
   U739 : OAI22_X1 port map( A1 => n667, A2 => n654, B1 => n633, B2 => n668, ZN
                           => n126);
   U740 : XNOR2_X1 port map( A => a(14), B => b(3), ZN => n668);
   U741 : NAND2_X1 port map( A1 => n633, A2 => n753, ZN => n654);
   U742 : XOR2_X1 port map( A => b(3), B => b(2), Z => n753);
   U743 : XOR2_X1 port map( A => a(13), B => n589, Z => n667);
   U744 : OAI22_X1 port map( A1 => n684, A2 => n671, B1 => n669, B2 => n686, ZN
                           => n104);
   U745 : XOR2_X1 port map( A => a(14), B => n583, Z => n686);
   U746 : NAND2_X1 port map( A1 => n669, A2 => n754, ZN => n671);
   U747 : XOR2_X1 port map( A => b(5), B => b(4), Z => n754);
   U748 : XOR2_X1 port map( A => a(13), B => n583, Z => n684);

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
   U80 : FA_X1 port map( A => n581, B => n284, CI => n114, CO => n100, S => 
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
   U91 : FA_X1 port map( A => n260, B => n286, CI => n586, CO => n122, S => 
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
   U442 : XOR2_X2 port map( A => b(2), B => n593, Z => n633);
   U443 : INV_X1 port map( A => n140, ZN => n559);
   U444 : INV_X1 port map( A => n129, ZN => n558);
   U445 : INV_X1 port map( A => n200, ZN => n574);
   U446 : INV_X1 port map( A => n193, ZN => n570);
   U447 : INV_X1 port map( A => n164, ZN => n564);
   U448 : INV_X1 port map( A => n153, ZN => n560);
   U449 : INV_X1 port map( A => n184, ZN => n569);
   U450 : INV_X1 port map( A => n175, ZN => n565);
   U451 : INV_X1 port map( A => n116, ZN => n557);
   U452 : INV_X1 port map( A => n107, ZN => n556);
   U453 : INV_X1 port map( A => n96, ZN => n562);
   U454 : INV_X1 port map( A => n89, ZN => n561);
   U455 : INV_X1 port map( A => n212, ZN => n579);
   U456 : INV_X1 port map( A => n207, ZN => n575);
   U457 : INV_X1 port map( A => n86, ZN => n577);
   U458 : INV_X1 port map( A => n220, ZN => n584);
   U459 : INV_X1 port map( A => n217, ZN => n580);
   U460 : INV_X1 port map( A => n223, ZN => n585);
   U461 : INV_X1 port map( A => n637, ZN => n592);
   U462 : INV_X1 port map( A => n633, ZN => n590);
   U463 : INV_X1 port map( A => n654, ZN => n588);
   U464 : INV_X1 port map( A => n126, ZN => n586);
   U465 : INV_X1 port map( A => n668, ZN => n587);
   U466 : INV_X1 port map( A => n652, ZN => n591);
   U467 : INV_X1 port map( A => n104, ZN => n581);
   U468 : INV_X1 port map( A => n72, ZN => n572);
   U469 : INV_X1 port map( A => n62, ZN => n567);
   U470 : INV_X1 port map( A => n700, ZN => n576);
   U471 : INV_X1 port map( A => n728, ZN => n566);
   U472 : INV_X1 port map( A => n685, ZN => n582);
   U473 : INV_X1 port map( A => n714, ZN => n571);
   U474 : INV_X1 port map( A => b(1), ZN => n593);
   U475 : INV_X1 port map( A => b(3), ZN => n589);
   U476 : INV_X1 port map( A => a(0), ZN => n595);
   U477 : INV_X1 port map( A => b(5), ZN => n583);
   U478 : INV_X1 port map( A => b(7), ZN => n578);
   U479 : INV_X1 port map( A => b(9), ZN => n573);
   U480 : INV_X1 port map( A => b(11), ZN => n568);
   U481 : INV_X1 port map( A => b(13), ZN => n563);
   U482 : INV_X1 port map( A => b(0), ZN => n594);
   U483 : XNOR2_X2 port map( A => b(6), B => b(5), ZN => n604);
   U484 : XNOR2_X2 port map( A => b(8), B => b(7), ZN => n608);
   U485 : XNOR2_X2 port map( A => b(12), B => b(11), ZN => n599);
   U486 : XNOR2_X2 port map( A => b(10), B => b(9), ZN => n612);
   U487 : XNOR2_X2 port map( A => b(4), B => b(3), ZN => n669);
   U488 : XNOR2_X1 port map( A => n596, B => n597, ZN => product(26));
   U489 : XOR2_X1 port map( A => n58, B => n32, Z => n597);
   U490 : OAI22_X1 port map( A1 => n598, A2 => n599, B1 => n600, B2 => n601, ZN
                           => n596);
   U491 : XOR2_X1 port map( A => n563, B => a(14), Z => n598);
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
   U509 : OAI222_X1 port map( A1 => n628, A2 => n580, B1 => n628, B2 => n584, 
                           C1 => n584, C2 => n580, ZN => n627);
   U510 : AOI222_X1 port map( A1 => n629, A2 => n221, B1 => n629, B2 => n222, 
                           C1 => n222, C2 => n221, ZN => n628);
   U511 : OAI222_X1 port map( A1 => n630, A2 => n585, B1 => n631, B2 => n630, 
                           C1 => n631, C2 => n585, ZN => n629);
   U512 : AOI21_X1 port map( B1 => b(3), B2 => n588, A => n632, ZN => n631);
   U513 : NOR3_X1 port map( A1 => n633, A2 => a(0), A3 => n589, ZN => n632);
   U514 : MUX2_X1 port map( A => n634, B => n635, S => a(0), Z => n630);
   U515 : NAND2_X1 port map( A1 => n590, A2 => n636, ZN => n635);
   U516 : NAND2_X1 port map( A1 => n637, A2 => n636, ZN => n634);
   U517 : OAI22_X1 port map( A1 => n592, A2 => n638, B1 => n639, B2 => n594, ZN
                           => n636);
   U518 : NOR2_X1 port map( A1 => n593, A2 => a(1), ZN => n637);
   U519 : OAI22_X1 port map( A1 => n639, A2 => n638, B1 => n640, B2 => n594, ZN
                           => n352);
   U520 : XOR2_X1 port map( A => a(2), B => n593, Z => n639);
   U521 : OAI22_X1 port map( A1 => n640, A2 => n638, B1 => n641, B2 => n594, ZN
                           => n351);
   U522 : XOR2_X1 port map( A => a(3), B => n593, Z => n640);
   U523 : OAI22_X1 port map( A1 => n641, A2 => n638, B1 => n642, B2 => n594, ZN
                           => n350);
   U524 : XOR2_X1 port map( A => a(4), B => n593, Z => n641);
   U525 : OAI22_X1 port map( A1 => n642, A2 => n638, B1 => n643, B2 => n594, ZN
                           => n349);
   U526 : XOR2_X1 port map( A => a(5), B => n593, Z => n642);
   U527 : OAI22_X1 port map( A1 => n643, A2 => n638, B1 => n644, B2 => n594, ZN
                           => n348);
   U528 : XOR2_X1 port map( A => a(6), B => n593, Z => n643);
   U529 : OAI22_X1 port map( A1 => n644, A2 => n638, B1 => n645, B2 => n594, ZN
                           => n347);
   U530 : XOR2_X1 port map( A => a(7), B => n593, Z => n644);
   U531 : OAI22_X1 port map( A1 => n645, A2 => n638, B1 => n646, B2 => n594, ZN
                           => n346);
   U532 : XOR2_X1 port map( A => a(8), B => n593, Z => n645);
   U533 : OAI22_X1 port map( A1 => n646, A2 => n638, B1 => n647, B2 => n594, ZN
                           => n345);
   U534 : XOR2_X1 port map( A => a(9), B => n593, Z => n646);
   U535 : OAI22_X1 port map( A1 => n647, A2 => n638, B1 => n648, B2 => n594, ZN
                           => n344);
   U536 : XOR2_X1 port map( A => a(10), B => n593, Z => n647);
   U537 : OAI22_X1 port map( A1 => n648, A2 => n638, B1 => n649, B2 => n594, ZN
                           => n343);
   U538 : XOR2_X1 port map( A => a(11), B => n593, Z => n648);
   U539 : OAI22_X1 port map( A1 => n649, A2 => n638, B1 => n650, B2 => n594, ZN
                           => n342);
   U540 : XOR2_X1 port map( A => a(12), B => n593, Z => n649);
   U541 : OAI22_X1 port map( A1 => n650, A2 => n638, B1 => n651, B2 => n594, ZN
                           => n341);
   U542 : XOR2_X1 port map( A => a(13), B => n593, Z => n650);
   U543 : OAI22_X1 port map( A1 => n594, A2 => n651, B1 => n638, B2 => n651, ZN
                           => n652);
   U544 : NAND2_X1 port map( A1 => b(1), A2 => n594, ZN => n638);
   U545 : XNOR2_X1 port map( A => a(14), B => b(1), ZN => n651);
   U546 : OAI22_X1 port map( A1 => n653, A2 => n654, B1 => n633, B2 => n655, ZN
                           => n338);
   U547 : XOR2_X1 port map( A => n595, B => b(3), Z => n653);
   U548 : OAI22_X1 port map( A1 => n655, A2 => n654, B1 => n633, B2 => n656, ZN
                           => n337);
   U549 : XOR2_X1 port map( A => a(1), B => n589, Z => n655);
   U550 : OAI22_X1 port map( A1 => n656, A2 => n654, B1 => n633, B2 => n657, ZN
                           => n336);
   U551 : XOR2_X1 port map( A => a(2), B => n589, Z => n656);
   U552 : OAI22_X1 port map( A1 => n657, A2 => n654, B1 => n633, B2 => n658, ZN
                           => n335);
   U553 : XOR2_X1 port map( A => a(3), B => n589, Z => n657);
   U554 : OAI22_X1 port map( A1 => n658, A2 => n654, B1 => n633, B2 => n659, ZN
                           => n334);
   U555 : XOR2_X1 port map( A => a(4), B => n589, Z => n658);
   U556 : OAI22_X1 port map( A1 => n659, A2 => n654, B1 => n633, B2 => n660, ZN
                           => n333);
   U557 : XOR2_X1 port map( A => a(5), B => n589, Z => n659);
   U558 : OAI22_X1 port map( A1 => n660, A2 => n654, B1 => n633, B2 => n661, ZN
                           => n332);
   U559 : XOR2_X1 port map( A => a(6), B => n589, Z => n660);
   U560 : OAI22_X1 port map( A1 => n661, A2 => n654, B1 => n633, B2 => n662, ZN
                           => n331);
   U561 : XOR2_X1 port map( A => a(7), B => n589, Z => n661);
   U562 : OAI22_X1 port map( A1 => n662, A2 => n654, B1 => n633, B2 => n663, ZN
                           => n330);
   U563 : XOR2_X1 port map( A => a(8), B => n589, Z => n662);
   U564 : OAI22_X1 port map( A1 => n663, A2 => n654, B1 => n633, B2 => n664, ZN
                           => n329);
   U565 : XOR2_X1 port map( A => a(9), B => n589, Z => n663);
   U566 : OAI22_X1 port map( A1 => n664, A2 => n654, B1 => n633, B2 => n665, ZN
                           => n328);
   U567 : XOR2_X1 port map( A => a(10), B => n589, Z => n664);
   U568 : OAI22_X1 port map( A1 => n665, A2 => n654, B1 => n633, B2 => n666, ZN
                           => n327);
   U569 : XOR2_X1 port map( A => a(11), B => n589, Z => n665);
   U570 : OAI22_X1 port map( A1 => n666, A2 => n654, B1 => n633, B2 => n667, ZN
                           => n326);
   U571 : XOR2_X1 port map( A => a(12), B => n589, Z => n666);
   U572 : AOI22_X1 port map( A1 => n587, A2 => n590, B1 => n588, B2 => n587, ZN
                           => n325);
   U573 : NOR2_X1 port map( A1 => n669, A2 => n595, ZN => n324);
   U574 : OAI22_X1 port map( A1 => n670, A2 => n671, B1 => n669, B2 => n672, ZN
                           => n323);
   U575 : XOR2_X1 port map( A => n595, B => b(5), Z => n670);
   U576 : OAI22_X1 port map( A1 => n672, A2 => n671, B1 => n669, B2 => n673, ZN
                           => n322);
   U577 : XOR2_X1 port map( A => a(1), B => n583, Z => n672);
   U578 : OAI22_X1 port map( A1 => n673, A2 => n671, B1 => n669, B2 => n674, ZN
                           => n321);
   U579 : XOR2_X1 port map( A => a(2), B => n583, Z => n673);
   U580 : OAI22_X1 port map( A1 => n674, A2 => n671, B1 => n669, B2 => n675, ZN
                           => n320);
   U581 : XOR2_X1 port map( A => a(3), B => n583, Z => n674);
   U582 : OAI22_X1 port map( A1 => n675, A2 => n671, B1 => n669, B2 => n676, ZN
                           => n319);
   U583 : XOR2_X1 port map( A => a(4), B => n583, Z => n675);
   U584 : OAI22_X1 port map( A1 => n676, A2 => n671, B1 => n669, B2 => n677, ZN
                           => n318);
   U585 : XOR2_X1 port map( A => a(5), B => n583, Z => n676);
   U586 : OAI22_X1 port map( A1 => n677, A2 => n671, B1 => n669, B2 => n678, ZN
                           => n317);
   U587 : XOR2_X1 port map( A => a(6), B => n583, Z => n677);
   U588 : OAI22_X1 port map( A1 => n678, A2 => n671, B1 => n669, B2 => n679, ZN
                           => n316);
   U589 : XOR2_X1 port map( A => a(7), B => n583, Z => n678);
   U590 : OAI22_X1 port map( A1 => n679, A2 => n671, B1 => n669, B2 => n680, ZN
                           => n315);
   U591 : XOR2_X1 port map( A => a(8), B => n583, Z => n679);
   U592 : OAI22_X1 port map( A1 => n680, A2 => n671, B1 => n669, B2 => n681, ZN
                           => n314);
   U593 : XOR2_X1 port map( A => a(9), B => n583, Z => n680);
   U594 : OAI22_X1 port map( A1 => n682, A2 => n671, B1 => n669, B2 => n683, ZN
                           => n312);
   U595 : OAI22_X1 port map( A1 => n683, A2 => n671, B1 => n669, B2 => n684, ZN
                           => n311);
   U596 : XOR2_X1 port map( A => a(12), B => n583, Z => n683);
   U597 : OAI22_X1 port map( A1 => n686, A2 => n669, B1 => n671, B2 => n686, ZN
                           => n685);
   U598 : NOR2_X1 port map( A1 => n604, A2 => n595, ZN => n309);
   U599 : OAI22_X1 port map( A1 => n687, A2 => n603, B1 => n604, B2 => n688, ZN
                           => n308);
   U600 : XOR2_X1 port map( A => n595, B => b(7), Z => n687);
   U601 : OAI22_X1 port map( A1 => n688, A2 => n603, B1 => n604, B2 => n689, ZN
                           => n307);
   U602 : XOR2_X1 port map( A => a(1), B => n578, Z => n688);
   U603 : OAI22_X1 port map( A1 => n689, A2 => n603, B1 => n604, B2 => n690, ZN
                           => n306);
   U604 : XOR2_X1 port map( A => a(2), B => n578, Z => n689);
   U605 : OAI22_X1 port map( A1 => n690, A2 => n603, B1 => n604, B2 => n691, ZN
                           => n305);
   U606 : XOR2_X1 port map( A => a(3), B => n578, Z => n690);
   U607 : OAI22_X1 port map( A1 => n691, A2 => n603, B1 => n604, B2 => n692, ZN
                           => n304);
   U608 : XOR2_X1 port map( A => a(4), B => n578, Z => n691);
   U609 : OAI22_X1 port map( A1 => n692, A2 => n603, B1 => n604, B2 => n693, ZN
                           => n303);
   U610 : XOR2_X1 port map( A => a(5), B => n578, Z => n692);
   U611 : OAI22_X1 port map( A1 => n693, A2 => n603, B1 => n604, B2 => n694, ZN
                           => n302);
   U612 : XOR2_X1 port map( A => a(6), B => n578, Z => n693);
   U613 : OAI22_X1 port map( A1 => n694, A2 => n603, B1 => n604, B2 => n695, ZN
                           => n301);
   U614 : XOR2_X1 port map( A => a(7), B => n578, Z => n694);
   U615 : OAI22_X1 port map( A1 => n695, A2 => n603, B1 => n604, B2 => n696, ZN
                           => n300);
   U616 : XOR2_X1 port map( A => a(8), B => n578, Z => n695);
   U617 : OAI22_X1 port map( A1 => n696, A2 => n603, B1 => n604, B2 => n697, ZN
                           => n299);
   U618 : XOR2_X1 port map( A => a(9), B => n578, Z => n696);
   U619 : OAI22_X1 port map( A1 => n697, A2 => n603, B1 => n604, B2 => n698, ZN
                           => n298);
   U620 : XOR2_X1 port map( A => a(10), B => n578, Z => n697);
   U621 : OAI22_X1 port map( A1 => n698, A2 => n603, B1 => n604, B2 => n699, ZN
                           => n297);
   U622 : XOR2_X1 port map( A => a(11), B => n578, Z => n698);
   U623 : OAI22_X1 port map( A1 => n699, A2 => n603, B1 => n604, B2 => n602, ZN
                           => n296);
   U624 : XOR2_X1 port map( A => a(13), B => n578, Z => n602);
   U625 : XOR2_X1 port map( A => a(12), B => n578, Z => n699);
   U626 : OAI22_X1 port map( A1 => n605, A2 => n604, B1 => n603, B2 => n605, ZN
                           => n700);
   U627 : XOR2_X1 port map( A => a(14), B => n578, Z => n605);
   U628 : NOR2_X1 port map( A1 => n608, A2 => n595, ZN => n294);
   U629 : OAI22_X1 port map( A1 => n701, A2 => n607, B1 => n608, B2 => n702, ZN
                           => n293);
   U630 : XOR2_X1 port map( A => n595, B => b(9), Z => n701);
   U631 : OAI22_X1 port map( A1 => n702, A2 => n607, B1 => n608, B2 => n703, ZN
                           => n292);
   U632 : XOR2_X1 port map( A => a(1), B => n573, Z => n702);
   U633 : OAI22_X1 port map( A1 => n703, A2 => n607, B1 => n608, B2 => n704, ZN
                           => n291);
   U634 : XOR2_X1 port map( A => a(2), B => n573, Z => n703);
   U635 : OAI22_X1 port map( A1 => n704, A2 => n607, B1 => n608, B2 => n705, ZN
                           => n290);
   U636 : XOR2_X1 port map( A => a(3), B => n573, Z => n704);
   U637 : OAI22_X1 port map( A1 => n705, A2 => n607, B1 => n608, B2 => n706, ZN
                           => n289);
   U638 : XOR2_X1 port map( A => a(4), B => n573, Z => n705);
   U639 : OAI22_X1 port map( A1 => n706, A2 => n607, B1 => n608, B2 => n707, ZN
                           => n288);
   U640 : XOR2_X1 port map( A => a(5), B => n573, Z => n706);
   U641 : OAI22_X1 port map( A1 => n707, A2 => n607, B1 => n608, B2 => n708, ZN
                           => n287);
   U642 : XOR2_X1 port map( A => a(6), B => n573, Z => n707);
   U643 : OAI22_X1 port map( A1 => n708, A2 => n607, B1 => n608, B2 => n709, ZN
                           => n286);
   U644 : XOR2_X1 port map( A => a(7), B => n573, Z => n708);
   U645 : OAI22_X1 port map( A1 => n709, A2 => n607, B1 => n608, B2 => n710, ZN
                           => n285);
   U646 : XOR2_X1 port map( A => a(8), B => n573, Z => n709);
   U647 : OAI22_X1 port map( A1 => n710, A2 => n607, B1 => n608, B2 => n711, ZN
                           => n284);
   U648 : XOR2_X1 port map( A => a(9), B => n573, Z => n710);
   U649 : OAI22_X1 port map( A1 => n711, A2 => n607, B1 => n608, B2 => n712, ZN
                           => n283);
   U650 : XOR2_X1 port map( A => a(10), B => n573, Z => n711);
   U651 : OAI22_X1 port map( A1 => n712, A2 => n607, B1 => n608, B2 => n713, ZN
                           => n282);
   U652 : XOR2_X1 port map( A => a(11), B => n573, Z => n712);
   U653 : OAI22_X1 port map( A1 => n713, A2 => n607, B1 => n608, B2 => n606, ZN
                           => n281);
   U654 : XOR2_X1 port map( A => a(13), B => n573, Z => n606);
   U655 : XOR2_X1 port map( A => a(12), B => n573, Z => n713);
   U656 : OAI22_X1 port map( A1 => n609, A2 => n608, B1 => n607, B2 => n609, ZN
                           => n714);
   U657 : XOR2_X1 port map( A => a(14), B => n573, Z => n609);
   U658 : NOR2_X1 port map( A1 => n612, A2 => n595, ZN => n279);
   U659 : OAI22_X1 port map( A1 => n715, A2 => n611, B1 => n612, B2 => n716, ZN
                           => n278);
   U660 : XOR2_X1 port map( A => n595, B => b(11), Z => n715);
   U661 : OAI22_X1 port map( A1 => n716, A2 => n611, B1 => n612, B2 => n717, ZN
                           => n277);
   U662 : XOR2_X1 port map( A => a(1), B => n568, Z => n716);
   U663 : OAI22_X1 port map( A1 => n717, A2 => n611, B1 => n612, B2 => n718, ZN
                           => n276);
   U664 : XOR2_X1 port map( A => a(2), B => n568, Z => n717);
   U665 : OAI22_X1 port map( A1 => n718, A2 => n611, B1 => n612, B2 => n719, ZN
                           => n275);
   U666 : XOR2_X1 port map( A => a(3), B => n568, Z => n718);
   U667 : OAI22_X1 port map( A1 => n720, A2 => n611, B1 => n612, B2 => n721, ZN
                           => n273);
   U668 : OAI22_X1 port map( A1 => n721, A2 => n611, B1 => n612, B2 => n722, ZN
                           => n272);
   U669 : XOR2_X1 port map( A => a(6), B => n568, Z => n721);
   U670 : OAI22_X1 port map( A1 => n722, A2 => n611, B1 => n612, B2 => n723, ZN
                           => n271);
   U671 : XOR2_X1 port map( A => a(7), B => n568, Z => n722);
   U672 : OAI22_X1 port map( A1 => n723, A2 => n611, B1 => n612, B2 => n724, ZN
                           => n270);
   U673 : XOR2_X1 port map( A => a(8), B => n568, Z => n723);
   U674 : OAI22_X1 port map( A1 => n724, A2 => n611, B1 => n612, B2 => n725, ZN
                           => n269);
   U675 : XOR2_X1 port map( A => a(9), B => n568, Z => n724);
   U676 : OAI22_X1 port map( A1 => n725, A2 => n611, B1 => n612, B2 => n726, ZN
                           => n268);
   U677 : XOR2_X1 port map( A => a(10), B => n568, Z => n725);
   U678 : OAI22_X1 port map( A1 => n726, A2 => n611, B1 => n612, B2 => n727, ZN
                           => n267);
   U679 : XOR2_X1 port map( A => a(11), B => n568, Z => n726);
   U680 : OAI22_X1 port map( A1 => n727, A2 => n611, B1 => n612, B2 => n610, ZN
                           => n266);
   U681 : XOR2_X1 port map( A => a(13), B => n568, Z => n610);
   U682 : XOR2_X1 port map( A => a(12), B => n568, Z => n727);
   U683 : OAI22_X1 port map( A1 => n613, A2 => n612, B1 => n611, B2 => n613, ZN
                           => n728);
   U684 : XOR2_X1 port map( A => a(14), B => n568, Z => n613);
   U685 : NOR2_X1 port map( A1 => n599, A2 => n595, ZN => n264);
   U686 : OAI22_X1 port map( A1 => n729, A2 => n600, B1 => n599, B2 => n730, ZN
                           => n263);
   U687 : XOR2_X1 port map( A => n595, B => b(13), Z => n729);
   U688 : OAI22_X1 port map( A1 => n730, A2 => n600, B1 => n599, B2 => n731, ZN
                           => n262);
   U689 : XOR2_X1 port map( A => a(1), B => n563, Z => n730);
   U690 : OAI22_X1 port map( A1 => n731, A2 => n600, B1 => n599, B2 => n732, ZN
                           => n261);
   U691 : XOR2_X1 port map( A => a(2), B => n563, Z => n731);
   U692 : OAI22_X1 port map( A1 => n732, A2 => n600, B1 => n599, B2 => n733, ZN
                           => n260);
   U693 : XOR2_X1 port map( A => a(3), B => n563, Z => n732);
   U694 : OAI22_X1 port map( A1 => n733, A2 => n600, B1 => n599, B2 => n734, ZN
                           => n259);
   U695 : XOR2_X1 port map( A => a(4), B => n563, Z => n733);
   U696 : OAI22_X1 port map( A1 => n734, A2 => n600, B1 => n599, B2 => n735, ZN
                           => n258);
   U697 : XOR2_X1 port map( A => a(5), B => n563, Z => n734);
   U698 : OAI22_X1 port map( A1 => n735, A2 => n600, B1 => n599, B2 => n736, ZN
                           => n257);
   U699 : XOR2_X1 port map( A => a(6), B => n563, Z => n735);
   U700 : OAI22_X1 port map( A1 => n736, A2 => n600, B1 => n599, B2 => n737, ZN
                           => n256);
   U701 : XOR2_X1 port map( A => a(7), B => n563, Z => n736);
   U702 : OAI22_X1 port map( A1 => n737, A2 => n600, B1 => n599, B2 => n738, ZN
                           => n255);
   U703 : XOR2_X1 port map( A => a(8), B => n563, Z => n737);
   U704 : OAI22_X1 port map( A1 => n738, A2 => n600, B1 => n599, B2 => n739, ZN
                           => n254);
   U705 : XOR2_X1 port map( A => a(9), B => n563, Z => n738);
   U706 : OAI22_X1 port map( A1 => n739, A2 => n600, B1 => n599, B2 => n740, ZN
                           => n253);
   U707 : XOR2_X1 port map( A => a(10), B => n563, Z => n739);
   U708 : OAI22_X1 port map( A1 => n740, A2 => n600, B1 => n599, B2 => n741, ZN
                           => n252);
   U709 : XOR2_X1 port map( A => a(11), B => n563, Z => n740);
   U710 : OAI22_X1 port map( A1 => n741, A2 => n600, B1 => n599, B2 => n601, ZN
                           => n251);
   U711 : XNOR2_X1 port map( A => a(13), B => b(13), ZN => n601);
   U712 : XOR2_X1 port map( A => a(12), B => n563, Z => n741);
   U713 : OAI21_X1 port map( B1 => n583, B2 => n671, A => n742, ZN => n247);
   U714 : OR3_X1 port map( A1 => n669, A2 => a(0), A3 => n583, ZN => n742);
   U715 : OAI21_X1 port map( B1 => n578, B2 => n603, A => n743, ZN => n246);
   U716 : OR3_X1 port map( A1 => n604, A2 => a(0), A3 => n578, ZN => n743);
   U717 : NAND2_X1 port map( A1 => n604, A2 => n744, ZN => n603);
   U718 : XOR2_X1 port map( A => b(7), B => b(6), Z => n744);
   U719 : OAI21_X1 port map( B1 => n573, B2 => n607, A => n745, ZN => n245);
   U720 : OR3_X1 port map( A1 => n608, A2 => a(0), A3 => n573, ZN => n745);
   U721 : NAND2_X1 port map( A1 => n608, A2 => n746, ZN => n607);
   U722 : XOR2_X1 port map( A => b(9), B => b(8), Z => n746);
   U723 : OAI21_X1 port map( B1 => n568, B2 => n611, A => n747, ZN => n244);
   U724 : OR3_X1 port map( A1 => n612, A2 => a(0), A3 => n568, ZN => n747);
   U725 : OAI21_X1 port map( B1 => n563, B2 => n600, A => n748, ZN => n243);
   U726 : OR3_X1 port map( A1 => n599, A2 => a(0), A3 => n563, ZN => n748);
   U727 : NAND2_X1 port map( A1 => n599, A2 => n749, ZN => n600);
   U728 : XOR2_X1 port map( A => b(13), B => b(12), Z => n749);
   U729 : XNOR2_X1 port map( A => n750, B => n751, ZN => n139);
   U730 : OR2_X1 port map( A1 => n750, A2 => n751, ZN => n138);
   U731 : OAI22_X1 port map( A1 => n681, A2 => n671, B1 => n669, B2 => n682, ZN
                           => n751);
   U732 : XOR2_X1 port map( A => a(11), B => n583, Z => n682);
   U733 : XOR2_X1 port map( A => a(10), B => n583, Z => n681);
   U734 : OAI22_X1 port map( A1 => n719, A2 => n611, B1 => n612, B2 => n720, ZN
                           => n750);
   U735 : XOR2_X1 port map( A => a(5), B => n568, Z => n720);
   U736 : NAND2_X1 port map( A1 => n612, A2 => n752, ZN => n611);
   U737 : XOR2_X1 port map( A => b(11), B => b(10), Z => n752);
   U738 : XOR2_X1 port map( A => a(4), B => n568, Z => n719);
   U739 : OAI22_X1 port map( A1 => n667, A2 => n654, B1 => n633, B2 => n668, ZN
                           => n126);
   U740 : XNOR2_X1 port map( A => a(14), B => b(3), ZN => n668);
   U741 : NAND2_X1 port map( A1 => n633, A2 => n753, ZN => n654);
   U742 : XOR2_X1 port map( A => b(3), B => b(2), Z => n753);
   U743 : XOR2_X1 port map( A => a(13), B => n589, Z => n667);
   U744 : OAI22_X1 port map( A1 => n684, A2 => n671, B1 => n669, B2 => n686, ZN
                           => n104);
   U745 : XOR2_X1 port map( A => a(14), B => n583, Z => n686);
   U746 : NAND2_X1 port map( A1 => n669, A2 => n754, ZN => n671);
   U747 : XOR2_X1 port map( A => b(5), B => b(4), Z => n754);
   U748 : XOR2_X1 port map( A => a(13), B => n583, Z => n684);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_IIR_FILTER.all;

entity IIR_FILTER_DW_mult_tc_0 is

   port( a, b : in std_logic_vector (13 downto 0);  product : out 
         std_logic_vector (27 downto 0));

end IIR_FILTER_DW_mult_tc_0;

architecture SYN_USE_DEFA_ARCH_NAME of IIR_FILTER_DW_mult_tc_0 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
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
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X2
      port( A, B : in std_logic;  Z : out std_logic);
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
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n29, n30, n32, n33, n34, n35, n36, n37, n38, n39, n40
      , n41, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, 
      n87, n88, n89, n90, n91, n92, n93, n94, n95, n97, n98, n99, n100, n101, 
      n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, 
      n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, 
      n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, 
      n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, 
      n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, 
      n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, 
      n174, n175, n176, n177, n178, n179, n180, n200, n201, n202, n203, n204, 
      n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, 
      n221, n222, n223, n224, n225, n226, n227, n228, n230, n231, n232, n233, 
      n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, 
      n247, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, 
      n260, n261, n263, n264, n266, n267, n268, n269, n270, n271, n272, n273, 
      n274, n275, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, 
      n287, n288, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, 
      n301, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, 
      n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, 
      n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, 
      n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, 
      n554, n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, 
      n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, 
      n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, 
      n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, 
      n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613, 
      n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, 
      n626, n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, 
      n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, 
      n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, n661, 
      n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672, n673, 
      n674, n675, n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, 
      n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697, 
      n698, n699, n700, n701 : std_logic;

begin
   
   U5 : FA_X1 port map( A => n30, B => n33, CI => n5, CO => n4, S => 
                           product(23));
   U6 : FA_X1 port map( A => n34, B => n37, CI => n6, CO => n5, S => 
                           product(22));
   U7 : FA_X1 port map( A => n38, B => n43, CI => n7, CO => n6, S => 
                           product(21));
   U8 : FA_X1 port map( A => n44, B => n49, CI => n510, CO => n7, S => 
                           product(20));
   U30 : FA_X1 port map( A => n32, B => n208, CI => n35, CO => n29, S => n30);
   U32 : FA_X1 port map( A => n39, B => n209, CI => n36, CO => n33, S => n34);
   U33 : FA_X1 port map( A => n221, B => n41, CI => n526, CO => n35, S => n36);
   U34 : FA_X1 port map( A => n40, B => n47, CI => n45, CO => n37, S => n38);
   U35 : FA_X1 port map( A => n210, B => n222, CI => n527, CO => n39, S => n40)
                           ;
   U37 : FA_X1 port map( A => n51, B => n48, CI => n46, CO => n43, S => n44);
   U38 : FA_X1 port map( A => n55, B => n235, CI => n53, CO => n45, S => n46);
   U39 : FA_X1 port map( A => n223, B => n211, CI => n531, CO => n47, S => n48)
                           ;
   U40 : FA_X1 port map( A => n52, B => n54, CI => n59, CO => n49, S => n50);
   U41 : FA_X1 port map( A => n63, B => n532, CI => n61, CO => n51, S => n52);
   U42 : FA_X1 port map( A => n212, B => n224, CI => n236, CO => n53, S => n54)
                           ;
   U44 : FA_X1 port map( A => n67, B => n69, CI => n60, CO => n57, S => n58);
   U45 : FA_X1 port map( A => n62, B => n71, CI => n64, CO => n59, S => n60);
   U46 : FA_X1 port map( A => n225, B => n73, CI => n237, CO => n61, S => n62);
   U47 : FA_X1 port map( A => n249, B => n213, CI => n536, CO => n63, S => n64)
                           ;
   U48 : FA_X1 port map( A => n77, B => n70, CI => n68, CO => n65, S => n66);
   U49 : FA_X1 port map( A => n72, B => n81, CI => n79, CO => n67, S => n68);
   U50 : FA_X1 port map( A => n537, B => n238, CI => n83, CO => n69, S => n70);
   U51 : FA_X1 port map( A => n250, B => n226, CI => n214, CO => n71, S => n72)
                           ;
   U53 : FA_X1 port map( A => n87, B => n80, CI => n78, CO => n75, S => n76);
   U54 : FA_X1 port map( A => n84, B => n82, CI => n89, CO => n77, S => n78);
   U55 : FA_X1 port map( A => n93, B => n251, CI => n91, CO => n79, S => n80);
   U56 : FA_X1 port map( A => n227, B => n263, CI => n239, CO => n81, S => n82)
                           ;
   U57 : FA_X1 port map( A => n95, B => n215, CI => n541, CO => n83, S => n84);
   U58 : FA_X1 port map( A => n99, B => n90, CI => n88, CO => n85, S => n86);
   U59 : FA_X1 port map( A => n92, B => n94, CI => n101, CO => n87, S => n88);
   U60 : FA_X1 port map( A => n105, B => n107, CI => n103, CO => n89, S => n90)
                           ;
   U61 : FA_X1 port map( A => n216, B => n240, CI => n542, CO => n91, S => n92)
                           ;
   U62 : FA_X1 port map( A => n264, B => n228, CI => n252, CO => n93, S => n94)
                           ;
   U64 : FA_X1 port map( A => n111, B => n102, CI => n100, CO => n97, S => n98)
                           ;
   U65 : FA_X1 port map( A => n104, B => n106, CI => n113, CO => n99, S => n100
                           );
   U66 : FA_X1 port map( A => n117, B => n108, CI => n115, CO => n101, S => 
                           n102);
   U67 : FA_X1 port map( A => n253, B => n277, CI => n119, CO => n103, S => 
                           n104);
   U68 : FA_X1 port map( A => n217, B => n241, CI => n545, CO => n105, S => 
                           n106);
   U71 : FA_X1 port map( A => n123, B => n114, CI => n112, CO => n109, S => 
                           n110);
   U72 : FA_X1 port map( A => n118, B => n116, CI => n125, CO => n111, S => 
                           n112);
   U73 : FA_X1 port map( A => n129, B => n120, CI => n127, CO => n113, S => 
                           n114);
   U74 : FA_X1 port map( A => n230, B => n266, CI => n242, CO => n115, S => 
                           n116);
   U75 : FA_X1 port map( A => n291, B => n254, CI => n278, CO => n117, S => 
                           n118);
   U76 : HA_X1 port map( A => n200, B => n218, CO => n119, S => n120);
   U77 : FA_X1 port map( A => n126, B => n133, CI => n124, CO => n121, S => 
                           n122);
   U78 : FA_X1 port map( A => n128, B => n130, CI => n135, CO => n123, S => 
                           n124);
   U79 : FA_X1 port map( A => n139, B => n267, CI => n137, CO => n125, S => 
                           n126);
   U80 : FA_X1 port map( A => n231, B => n279, CI => n255, CO => n127, S => 
                           n128);
   U81 : FA_X1 port map( A => n243, B => n219, CI => n292, CO => n129, S => 
                           n130);
   U82 : FA_X1 port map( A => n143, B => n136, CI => n134, CO => n131, S => 
                           n132);
   U83 : FA_X1 port map( A => n145, B => n147, CI => n138, CO => n133, S => 
                           n134);
   U84 : FA_X1 port map( A => n256, B => n280, CI => n140, CO => n135, S => 
                           n136);
   U85 : FA_X1 port map( A => n244, B => n268, CI => n293, CO => n137, S => 
                           n138);
   U86 : HA_X1 port map( A => n201, B => n232, CO => n139, S => n140);
   U87 : FA_X1 port map( A => n151, B => n146, CI => n144, CO => n141, S => 
                           n142);
   U88 : FA_X1 port map( A => n153, B => n155, CI => n148, CO => n143, S => 
                           n144);
   U89 : FA_X1 port map( A => n245, B => n281, CI => n269, CO => n145, S => 
                           n146);
   U90 : FA_X1 port map( A => n257, B => n233, CI => n294, CO => n147, S => 
                           n148);
   U91 : FA_X1 port map( A => n154, B => n159, CI => n152, CO => n149, S => 
                           n150);
   U92 : FA_X1 port map( A => n156, B => n295, CI => n161, CO => n151, S => 
                           n152);
   U93 : FA_X1 port map( A => n258, B => n270, CI => n282, CO => n153, S => 
                           n154);
   U94 : HA_X1 port map( A => n202, B => n246, CO => n155, S => n156);
   U95 : FA_X1 port map( A => n162, B => n165, CI => n160, CO => n157, S => 
                           n158);
   U96 : FA_X1 port map( A => n259, B => n283, CI => n167, CO => n159, S => 
                           n160);
   U97 : FA_X1 port map( A => n271, B => n247, CI => n296, CO => n161, S => 
                           n162);
   U98 : FA_X1 port map( A => n171, B => n168, CI => n166, CO => n163, S => 
                           n164);
   U99 : FA_X1 port map( A => n272, B => n297, CI => n284, CO => n165, S => 
                           n166);
   U100 : HA_X1 port map( A => n203, B => n260, CO => n167, S => n168);
   U101 : FA_X1 port map( A => n175, B => n273, CI => n172, CO => n169, S => 
                           n170);
   U102 : FA_X1 port map( A => n298, B => n261, CI => n285, CO => n171, S => 
                           n172);
   U103 : FA_X1 port map( A => n286, B => n299, CI => n176, CO => n173, S => 
                           n174);
   U104 : HA_X1 port map( A => n204, B => n274, CO => n175, S => n176);
   U105 : FA_X1 port map( A => n300, B => n275, CI => n287, CO => n177, S => 
                           n178);
   U106 : HA_X1 port map( A => n288, B => n301, CO => n179, S => n180);
   U403 : INV_X1 port map( A => n569, ZN => n515);
   U404 : INV_X1 port map( A => n570, ZN => n516);
   U405 : INV_X1 port map( A => n565, ZN => n511);
   U406 : INV_X1 port map( A => n566, ZN => n512);
   U407 : INV_X1 port map( A => n573, ZN => n524);
   U408 : INV_X1 port map( A => n574, ZN => n525);
   U409 : INV_X1 port map( A => n571, ZN => n518);
   U410 : INV_X1 port map( A => n572, ZN => n519);
   U411 : INV_X1 port map( A => n567, ZN => n513);
   U412 : INV_X1 port map( A => n568, ZN => n514);
   U413 : INV_X1 port map( A => n577, ZN => n534);
   U414 : INV_X1 port map( A => n578, ZN => n535);
   U415 : INV_X1 port map( A => n575, ZN => n529);
   U416 : INV_X1 port map( A => n576, ZN => n530);
   U417 : INV_X1 port map( A => n564, ZN => n510);
   U418 : INV_X1 port map( A => n55, ZN => n532);
   U419 : INV_X1 port map( A => n583, ZN => n546);
   U420 : INV_X1 port map( A => n562, ZN => n544);
   U421 : INV_X1 port map( A => n579, ZN => n539);
   U422 : INV_X1 port map( A => n580, ZN => n540);
   U423 : MUX2_X1 port map( A => n508, B => n509, S => n549, Z => n507);
   U424 : AND2_X1 port map( A1 => n544, A2 => n584, ZN => n508);
   U425 : AND2_X1 port map( A1 => n583, A2 => n584, ZN => n509);
   U426 : INV_X1 port map( A => n666, ZN => n523);
   U427 : INV_X1 port map( A => n625, ZN => n541);
   U428 : INV_X1 port map( A => n95, ZN => n542);
   U429 : INV_X1 port map( A => n612, ZN => n545);
   U430 : INV_X1 port map( A => n73, ZN => n537);
   U431 : INV_X1 port map( A => n639, ZN => n536);
   U432 : INV_X1 port map( A => n600, ZN => n521);
   U433 : INV_X1 port map( A => n41, ZN => n527);
   U434 : INV_X1 port map( A => n652, ZN => n531);
   U435 : INV_X1 port map( A => n665, ZN => n526);
   U436 : INV_X1 port map( A => n599, ZN => n520);
   U437 : INV_X1 port map( A => a(0), ZN => n548);
   U438 : NAND2_X1 port map( A1 => a(1), A2 => n548, ZN => n585);
   U439 : INV_X1 port map( A => b(0), ZN => n549);
   U440 : INV_X1 port map( A => a(5), ZN => n538);
   U441 : INV_X1 port map( A => a(7), ZN => n533);
   U442 : INV_X1 port map( A => a(9), ZN => n528);
   U443 : INV_X1 port map( A => a(3), ZN => n543);
   U444 : INV_X1 port map( A => a(1), ZN => n547);
   U445 : INV_X1 port map( A => a(11), ZN => n522);
   U446 : INV_X1 port map( A => a(13), ZN => n517);
   U447 : XOR2_X2 port map( A => a(2), B => n547, Z => n562);
   U448 : XOR2_X2 port map( A => a(6), B => n538, Z => n593);
   U449 : XOR2_X2 port map( A => a(8), B => n533, Z => n597);
   U450 : XOR2_X2 port map( A => a(12), B => n522, Z => n555);
   U451 : XOR2_X2 port map( A => a(4), B => n543, Z => n589);
   U452 : XOR2_X2 port map( A => a(10), B => n528, Z => n666);
   U453 : XOR2_X1 port map( A => n550, B => n551, Z => product(24));
   U454 : XNOR2_X1 port map( A => n552, B => n553, ZN => n551);
   U455 : OAI22_X1 port map( A1 => n554, A2 => n555, B1 => n556, B2 => n557, ZN
                           => n553);
   U456 : XNOR2_X1 port map( A => b(12), B => a(13), ZN => n554);
   U457 : AOI22_X1 port map( A1 => n558, A2 => n523, B1 => n521, B2 => n558, ZN
                           => n552);
   U458 : XOR2_X1 port map( A => n32, B => n559, Z => n550);
   U459 : XOR2_X1 port map( A => n4, B => n29, Z => n559);
   U460 : OAI22_X1 port map( A1 => n560, A2 => n561, B1 => n562, B2 => n563, ZN
                           => n95);
   U461 : AOI222_X1 port map( A1 => n511, A2 => n50, B1 => n511, B2 => n57, C1 
                           => n57, C2 => n50, ZN => n564);
   U462 : AOI222_X1 port map( A1 => n512, A2 => n58, B1 => n512, B2 => n65, C1 
                           => n65, C2 => n58, ZN => n565);
   U463 : AOI222_X1 port map( A1 => n513, A2 => n66, B1 => n513, B2 => n75, C1 
                           => n75, C2 => n66, ZN => n566);
   U464 : AOI222_X1 port map( A1 => n514, A2 => n76, B1 => n514, B2 => n85, C1 
                           => n85, C2 => n76, ZN => n567);
   U465 : AOI222_X1 port map( A1 => n515, A2 => n86, B1 => n515, B2 => n97, C1 
                           => n97, C2 => n86, ZN => n568);
   U466 : AOI222_X1 port map( A1 => n516, A2 => n98, B1 => n516, B2 => n109, C1
                           => n109, C2 => n98, ZN => n569);
   U467 : AOI222_X1 port map( A1 => n518, A2 => n110, B1 => n518, B2 => n121, 
                           C1 => n121, C2 => n110, ZN => n570);
   U468 : AOI222_X1 port map( A1 => n519, A2 => n122, B1 => n519, B2 => n131, 
                           C1 => n131, C2 => n122, ZN => n571);
   U469 : AOI222_X1 port map( A1 => n524, A2 => n132, B1 => n524, B2 => n141, 
                           C1 => n141, C2 => n132, ZN => n572);
   U470 : AOI222_X1 port map( A1 => n525, A2 => n142, B1 => n525, B2 => n149, 
                           C1 => n149, C2 => n142, ZN => n573);
   U471 : AOI222_X1 port map( A1 => n529, A2 => n150, B1 => n529, B2 => n157, 
                           C1 => n157, C2 => n150, ZN => n574);
   U472 : AOI222_X1 port map( A1 => n530, A2 => n158, B1 => n530, B2 => n163, 
                           C1 => n163, C2 => n158, ZN => n575);
   U473 : AOI222_X1 port map( A1 => n534, A2 => n164, B1 => n534, B2 => n169, 
                           C1 => n169, C2 => n164, ZN => n576);
   U474 : AOI222_X1 port map( A1 => n535, A2 => n170, B1 => n535, B2 => n173, 
                           C1 => n173, C2 => n170, ZN => n577);
   U475 : AOI222_X1 port map( A1 => n539, A2 => n174, B1 => n539, B2 => n177, 
                           C1 => n177, C2 => n174, ZN => n578);
   U476 : AOI222_X1 port map( A1 => n540, A2 => n178, B1 => n540, B2 => n179, 
                           C1 => n179, C2 => n178, ZN => n579);
   U477 : AOI222_X1 port map( A1 => n507, A2 => n180, B1 => n581, B2 => n507, 
                           C1 => n581, C2 => n180, ZN => n580);
   U478 : OAI21_X1 port map( B1 => n543, B2 => n561, A => n582, ZN => n581);
   U479 : NAND3_X1 port map( A1 => n544, A2 => n549, A3 => a(3), ZN => n582);
   U480 : OAI22_X1 port map( A1 => n546, A2 => n585, B1 => n586, B2 => n548, ZN
                           => n584);
   U481 : NOR2_X1 port map( A1 => n547, A2 => b(1), ZN => n583);
   U482 : OAI22_X1 port map( A1 => n587, A2 => n588, B1 => n589, B2 => n590, ZN
                           => n73);
   U483 : OAI22_X1 port map( A1 => n591, A2 => n592, B1 => n593, B2 => n594, ZN
                           => n55);
   U484 : OAI22_X1 port map( A1 => n595, A2 => n596, B1 => n597, B2 => n598, ZN
                           => n41);
   U485 : AOI22_X1 port map( A1 => n599, A2 => n521, B1 => n523, B2 => n558, ZN
                           => n32);
   U486 : XNOR2_X1 port map( A => b(13), B => n522, ZN => n558);
   U487 : OAI22_X1 port map( A1 => n586, A2 => n585, B1 => n601, B2 => n548, ZN
                           => n301);
   U488 : XNOR2_X1 port map( A => b(2), B => a(1), ZN => n586);
   U489 : OAI22_X1 port map( A1 => n601, A2 => n585, B1 => n602, B2 => n548, ZN
                           => n300);
   U490 : XNOR2_X1 port map( A => b(3), B => a(1), ZN => n601);
   U491 : OAI22_X1 port map( A1 => n602, A2 => n585, B1 => n603, B2 => n548, ZN
                           => n299);
   U492 : XNOR2_X1 port map( A => b(4), B => a(1), ZN => n602);
   U493 : OAI22_X1 port map( A1 => n603, A2 => n585, B1 => n604, B2 => n548, ZN
                           => n298);
   U494 : XNOR2_X1 port map( A => b(5), B => a(1), ZN => n603);
   U495 : OAI22_X1 port map( A1 => n604, A2 => n585, B1 => n605, B2 => n548, ZN
                           => n297);
   U496 : XNOR2_X1 port map( A => b(6), B => a(1), ZN => n604);
   U497 : OAI22_X1 port map( A1 => n605, A2 => n585, B1 => n606, B2 => n548, ZN
                           => n296);
   U498 : XNOR2_X1 port map( A => b(7), B => a(1), ZN => n605);
   U499 : OAI22_X1 port map( A1 => n606, A2 => n585, B1 => n607, B2 => n548, ZN
                           => n295);
   U500 : XNOR2_X1 port map( A => b(8), B => a(1), ZN => n606);
   U501 : OAI22_X1 port map( A1 => n607, A2 => n585, B1 => n608, B2 => n548, ZN
                           => n294);
   U502 : XNOR2_X1 port map( A => b(9), B => a(1), ZN => n607);
   U503 : OAI22_X1 port map( A1 => n608, A2 => n585, B1 => n609, B2 => n548, ZN
                           => n293);
   U504 : XNOR2_X1 port map( A => b(10), B => a(1), ZN => n608);
   U505 : OAI22_X1 port map( A1 => n609, A2 => n585, B1 => n610, B2 => n548, ZN
                           => n292);
   U506 : XNOR2_X1 port map( A => b(11), B => a(1), ZN => n609);
   U507 : OAI22_X1 port map( A1 => n610, A2 => n585, B1 => n611, B2 => n548, ZN
                           => n291);
   U508 : XNOR2_X1 port map( A => b(12), B => a(1), ZN => n610);
   U509 : OAI22_X1 port map( A1 => n548, A2 => n611, B1 => n585, B2 => n611, ZN
                           => n612);
   U510 : XOR2_X1 port map( A => b(13), B => n547, Z => n611);
   U511 : OAI22_X1 port map( A1 => n613, A2 => n561, B1 => n562, B2 => n614, ZN
                           => n288);
   U512 : XNOR2_X1 port map( A => a(3), B => b(0), ZN => n613);
   U513 : OAI22_X1 port map( A1 => n614, A2 => n561, B1 => n562, B2 => n615, ZN
                           => n287);
   U514 : XNOR2_X1 port map( A => b(1), B => a(3), ZN => n614);
   U515 : OAI22_X1 port map( A1 => n615, A2 => n561, B1 => n562, B2 => n616, ZN
                           => n286);
   U516 : XNOR2_X1 port map( A => b(2), B => a(3), ZN => n615);
   U517 : OAI22_X1 port map( A1 => n616, A2 => n561, B1 => n562, B2 => n617, ZN
                           => n285);
   U518 : XNOR2_X1 port map( A => b(3), B => a(3), ZN => n616);
   U519 : OAI22_X1 port map( A1 => n617, A2 => n561, B1 => n562, B2 => n618, ZN
                           => n284);
   U520 : XNOR2_X1 port map( A => b(4), B => a(3), ZN => n617);
   U521 : OAI22_X1 port map( A1 => n618, A2 => n561, B1 => n562, B2 => n619, ZN
                           => n283);
   U522 : XNOR2_X1 port map( A => b(5), B => a(3), ZN => n618);
   U523 : OAI22_X1 port map( A1 => n619, A2 => n561, B1 => n562, B2 => n620, ZN
                           => n282);
   U524 : XNOR2_X1 port map( A => b(6), B => a(3), ZN => n619);
   U525 : OAI22_X1 port map( A1 => n620, A2 => n561, B1 => n562, B2 => n621, ZN
                           => n281);
   U526 : XNOR2_X1 port map( A => b(7), B => a(3), ZN => n620);
   U527 : OAI22_X1 port map( A1 => n621, A2 => n561, B1 => n562, B2 => n622, ZN
                           => n280);
   U528 : XNOR2_X1 port map( A => b(8), B => a(3), ZN => n621);
   U529 : OAI22_X1 port map( A1 => n622, A2 => n561, B1 => n562, B2 => n623, ZN
                           => n279);
   U530 : XNOR2_X1 port map( A => b(9), B => a(3), ZN => n622);
   U531 : OAI22_X1 port map( A1 => n623, A2 => n561, B1 => n562, B2 => n624, ZN
                           => n278);
   U532 : XNOR2_X1 port map( A => b(10), B => a(3), ZN => n623);
   U533 : OAI22_X1 port map( A1 => n624, A2 => n561, B1 => n562, B2 => n560, ZN
                           => n277);
   U534 : XOR2_X1 port map( A => b(12), B => n543, Z => n560);
   U535 : XNOR2_X1 port map( A => b(11), B => a(3), ZN => n624);
   U536 : OAI22_X1 port map( A1 => n563, A2 => n562, B1 => n561, B2 => n563, ZN
                           => n625);
   U537 : NAND2_X1 port map( A1 => n562, A2 => n626, ZN => n561);
   U538 : XNOR2_X1 port map( A => n543, B => a(2), ZN => n626);
   U539 : XNOR2_X1 port map( A => b(13), B => a(3), ZN => n563);
   U540 : NOR2_X1 port map( A1 => n589, A2 => n549, ZN => n275);
   U541 : OAI22_X1 port map( A1 => n627, A2 => n588, B1 => n589, B2 => n628, ZN
                           => n274);
   U542 : XNOR2_X1 port map( A => a(5), B => b(0), ZN => n627);
   U543 : OAI22_X1 port map( A1 => n628, A2 => n588, B1 => n589, B2 => n629, ZN
                           => n273);
   U544 : XNOR2_X1 port map( A => b(1), B => a(5), ZN => n628);
   U545 : OAI22_X1 port map( A1 => n629, A2 => n588, B1 => n589, B2 => n630, ZN
                           => n272);
   U546 : XNOR2_X1 port map( A => b(2), B => a(5), ZN => n629);
   U547 : OAI22_X1 port map( A1 => n630, A2 => n588, B1 => n589, B2 => n631, ZN
                           => n271);
   U548 : XNOR2_X1 port map( A => b(3), B => a(5), ZN => n630);
   U549 : OAI22_X1 port map( A1 => n631, A2 => n588, B1 => n589, B2 => n632, ZN
                           => n270);
   U550 : XNOR2_X1 port map( A => b(4), B => a(5), ZN => n631);
   U551 : OAI22_X1 port map( A1 => n632, A2 => n588, B1 => n589, B2 => n633, ZN
                           => n269);
   U552 : XNOR2_X1 port map( A => b(5), B => a(5), ZN => n632);
   U553 : OAI22_X1 port map( A1 => n633, A2 => n588, B1 => n589, B2 => n634, ZN
                           => n268);
   U554 : XNOR2_X1 port map( A => b(6), B => a(5), ZN => n633);
   U555 : OAI22_X1 port map( A1 => n634, A2 => n588, B1 => n589, B2 => n635, ZN
                           => n267);
   U556 : XNOR2_X1 port map( A => b(7), B => a(5), ZN => n634);
   U557 : OAI22_X1 port map( A1 => n635, A2 => n588, B1 => n589, B2 => n636, ZN
                           => n266);
   U558 : XNOR2_X1 port map( A => b(8), B => a(5), ZN => n635);
   U559 : OAI22_X1 port map( A1 => n637, A2 => n588, B1 => n589, B2 => n638, ZN
                           => n264);
   U560 : OAI22_X1 port map( A1 => n638, A2 => n588, B1 => n589, B2 => n587, ZN
                           => n263);
   U561 : XOR2_X1 port map( A => b(12), B => n538, Z => n587);
   U562 : XNOR2_X1 port map( A => b(11), B => a(5), ZN => n638);
   U563 : OAI22_X1 port map( A1 => n590, A2 => n589, B1 => n588, B2 => n590, ZN
                           => n639);
   U564 : XNOR2_X1 port map( A => b(13), B => a(5), ZN => n590);
   U565 : NOR2_X1 port map( A1 => n593, A2 => n549, ZN => n261);
   U566 : OAI22_X1 port map( A1 => n640, A2 => n592, B1 => n593, B2 => n641, ZN
                           => n260);
   U567 : XNOR2_X1 port map( A => a(7), B => b(0), ZN => n640);
   U568 : OAI22_X1 port map( A1 => n641, A2 => n592, B1 => n593, B2 => n642, ZN
                           => n259);
   U569 : XNOR2_X1 port map( A => b(1), B => a(7), ZN => n641);
   U570 : OAI22_X1 port map( A1 => n642, A2 => n592, B1 => n593, B2 => n643, ZN
                           => n258);
   U571 : XNOR2_X1 port map( A => b(2), B => a(7), ZN => n642);
   U572 : OAI22_X1 port map( A1 => n643, A2 => n592, B1 => n593, B2 => n644, ZN
                           => n257);
   U573 : XNOR2_X1 port map( A => b(3), B => a(7), ZN => n643);
   U574 : OAI22_X1 port map( A1 => n644, A2 => n592, B1 => n593, B2 => n645, ZN
                           => n256);
   U575 : XNOR2_X1 port map( A => b(4), B => a(7), ZN => n644);
   U576 : OAI22_X1 port map( A1 => n645, A2 => n592, B1 => n593, B2 => n646, ZN
                           => n255);
   U577 : XNOR2_X1 port map( A => b(5), B => a(7), ZN => n645);
   U578 : OAI22_X1 port map( A1 => n646, A2 => n592, B1 => n593, B2 => n647, ZN
                           => n254);
   U579 : XNOR2_X1 port map( A => b(6), B => a(7), ZN => n646);
   U580 : OAI22_X1 port map( A1 => n647, A2 => n592, B1 => n593, B2 => n648, ZN
                           => n253);
   U581 : XNOR2_X1 port map( A => b(7), B => a(7), ZN => n647);
   U582 : OAI22_X1 port map( A1 => n648, A2 => n592, B1 => n593, B2 => n649, ZN
                           => n252);
   U583 : XNOR2_X1 port map( A => b(8), B => a(7), ZN => n648);
   U584 : OAI22_X1 port map( A1 => n649, A2 => n592, B1 => n593, B2 => n650, ZN
                           => n251);
   U585 : XNOR2_X1 port map( A => b(9), B => a(7), ZN => n649);
   U586 : OAI22_X1 port map( A1 => n650, A2 => n592, B1 => n593, B2 => n651, ZN
                           => n250);
   U587 : XNOR2_X1 port map( A => b(10), B => a(7), ZN => n650);
   U588 : OAI22_X1 port map( A1 => n651, A2 => n592, B1 => n593, B2 => n591, ZN
                           => n249);
   U589 : XOR2_X1 port map( A => b(12), B => n533, Z => n591);
   U590 : XNOR2_X1 port map( A => b(11), B => a(7), ZN => n651);
   U591 : OAI22_X1 port map( A1 => n594, A2 => n593, B1 => n592, B2 => n594, ZN
                           => n652);
   U592 : XNOR2_X1 port map( A => b(13), B => a(7), ZN => n594);
   U593 : NOR2_X1 port map( A1 => n597, A2 => n549, ZN => n247);
   U594 : OAI22_X1 port map( A1 => n653, A2 => n596, B1 => n597, B2 => n654, ZN
                           => n246);
   U595 : XNOR2_X1 port map( A => a(9), B => b(0), ZN => n653);
   U596 : OAI22_X1 port map( A1 => n654, A2 => n596, B1 => n597, B2 => n655, ZN
                           => n245);
   U597 : XNOR2_X1 port map( A => b(1), B => a(9), ZN => n654);
   U598 : OAI22_X1 port map( A1 => n655, A2 => n596, B1 => n597, B2 => n656, ZN
                           => n244);
   U599 : XNOR2_X1 port map( A => b(2), B => a(9), ZN => n655);
   U600 : OAI22_X1 port map( A1 => n656, A2 => n596, B1 => n597, B2 => n657, ZN
                           => n243);
   U601 : XNOR2_X1 port map( A => b(3), B => a(9), ZN => n656);
   U602 : OAI22_X1 port map( A1 => n657, A2 => n596, B1 => n597, B2 => n658, ZN
                           => n242);
   U603 : XNOR2_X1 port map( A => b(4), B => a(9), ZN => n657);
   U604 : OAI22_X1 port map( A1 => n658, A2 => n596, B1 => n597, B2 => n659, ZN
                           => n241);
   U605 : XNOR2_X1 port map( A => b(5), B => a(9), ZN => n658);
   U606 : OAI22_X1 port map( A1 => n659, A2 => n596, B1 => n597, B2 => n660, ZN
                           => n240);
   U607 : XNOR2_X1 port map( A => b(6), B => a(9), ZN => n659);
   U608 : OAI22_X1 port map( A1 => n660, A2 => n596, B1 => n597, B2 => n661, ZN
                           => n239);
   U609 : XNOR2_X1 port map( A => b(7), B => a(9), ZN => n660);
   U610 : OAI22_X1 port map( A1 => n661, A2 => n596, B1 => n597, B2 => n662, ZN
                           => n238);
   U611 : XNOR2_X1 port map( A => b(8), B => a(9), ZN => n661);
   U612 : OAI22_X1 port map( A1 => n662, A2 => n596, B1 => n597, B2 => n663, ZN
                           => n237);
   U613 : XNOR2_X1 port map( A => b(9), B => a(9), ZN => n662);
   U614 : OAI22_X1 port map( A1 => n663, A2 => n596, B1 => n597, B2 => n664, ZN
                           => n236);
   U615 : XNOR2_X1 port map( A => b(10), B => a(9), ZN => n663);
   U616 : OAI22_X1 port map( A1 => n664, A2 => n596, B1 => n597, B2 => n595, ZN
                           => n235);
   U617 : XOR2_X1 port map( A => b(12), B => n528, Z => n595);
   U618 : XNOR2_X1 port map( A => b(11), B => a(9), ZN => n664);
   U619 : OAI22_X1 port map( A1 => n598, A2 => n597, B1 => n596, B2 => n598, ZN
                           => n665);
   U620 : XNOR2_X1 port map( A => b(13), B => a(9), ZN => n598);
   U621 : NOR2_X1 port map( A1 => n666, A2 => n549, ZN => n233);
   U622 : OAI22_X1 port map( A1 => n667, A2 => n600, B1 => n666, B2 => n668, ZN
                           => n232);
   U623 : XNOR2_X1 port map( A => a(11), B => b(0), ZN => n667);
   U624 : OAI22_X1 port map( A1 => n668, A2 => n600, B1 => n666, B2 => n669, ZN
                           => n231);
   U625 : XNOR2_X1 port map( A => b(1), B => a(11), ZN => n668);
   U626 : OAI22_X1 port map( A1 => n669, A2 => n600, B1 => n666, B2 => n670, ZN
                           => n230);
   U627 : XNOR2_X1 port map( A => b(2), B => a(11), ZN => n669);
   U628 : OAI22_X1 port map( A1 => n671, A2 => n600, B1 => n666, B2 => n672, ZN
                           => n228);
   U629 : OAI22_X1 port map( A1 => n672, A2 => n600, B1 => n666, B2 => n673, ZN
                           => n227);
   U630 : XNOR2_X1 port map( A => b(5), B => a(11), ZN => n672);
   U631 : OAI22_X1 port map( A1 => n673, A2 => n600, B1 => n666, B2 => n674, ZN
                           => n226);
   U632 : XNOR2_X1 port map( A => b(6), B => a(11), ZN => n673);
   U633 : OAI22_X1 port map( A1 => n674, A2 => n600, B1 => n666, B2 => n675, ZN
                           => n225);
   U634 : XNOR2_X1 port map( A => b(7), B => a(11), ZN => n674);
   U635 : OAI22_X1 port map( A1 => n675, A2 => n600, B1 => n666, B2 => n676, ZN
                           => n224);
   U636 : XNOR2_X1 port map( A => b(8), B => a(11), ZN => n675);
   U637 : OAI22_X1 port map( A1 => n676, A2 => n600, B1 => n666, B2 => n677, ZN
                           => n223);
   U638 : XNOR2_X1 port map( A => b(9), B => a(11), ZN => n676);
   U639 : OAI22_X1 port map( A1 => n677, A2 => n600, B1 => n666, B2 => n678, ZN
                           => n222);
   U640 : XNOR2_X1 port map( A => b(10), B => a(11), ZN => n677);
   U641 : OAI22_X1 port map( A1 => n678, A2 => n600, B1 => n666, B2 => n520, ZN
                           => n221);
   U642 : XOR2_X1 port map( A => b(12), B => a(11), Z => n599);
   U643 : XNOR2_X1 port map( A => b(11), B => a(11), ZN => n678);
   U644 : NOR2_X1 port map( A1 => n555, A2 => n549, ZN => n219);
   U645 : OAI22_X1 port map( A1 => n679, A2 => n556, B1 => n555, B2 => n680, ZN
                           => n218);
   U646 : XNOR2_X1 port map( A => a(13), B => b(0), ZN => n679);
   U647 : OAI22_X1 port map( A1 => n680, A2 => n556, B1 => n555, B2 => n681, ZN
                           => n217);
   U648 : XNOR2_X1 port map( A => b(1), B => a(13), ZN => n680);
   U649 : OAI22_X1 port map( A1 => n681, A2 => n556, B1 => n555, B2 => n682, ZN
                           => n216);
   U650 : XNOR2_X1 port map( A => b(2), B => a(13), ZN => n681);
   U651 : OAI22_X1 port map( A1 => n682, A2 => n556, B1 => n555, B2 => n683, ZN
                           => n215);
   U652 : XNOR2_X1 port map( A => b(3), B => a(13), ZN => n682);
   U653 : OAI22_X1 port map( A1 => n683, A2 => n556, B1 => n555, B2 => n684, ZN
                           => n214);
   U654 : XNOR2_X1 port map( A => b(4), B => a(13), ZN => n683);
   U655 : OAI22_X1 port map( A1 => n684, A2 => n556, B1 => n555, B2 => n685, ZN
                           => n213);
   U656 : XNOR2_X1 port map( A => b(5), B => a(13), ZN => n684);
   U657 : OAI22_X1 port map( A1 => n685, A2 => n556, B1 => n555, B2 => n686, ZN
                           => n212);
   U658 : XNOR2_X1 port map( A => b(6), B => a(13), ZN => n685);
   U659 : OAI22_X1 port map( A1 => n686, A2 => n556, B1 => n555, B2 => n687, ZN
                           => n211);
   U660 : XNOR2_X1 port map( A => b(7), B => a(13), ZN => n686);
   U661 : OAI22_X1 port map( A1 => n687, A2 => n556, B1 => n555, B2 => n688, ZN
                           => n210);
   U662 : XNOR2_X1 port map( A => b(8), B => a(13), ZN => n687);
   U663 : OAI22_X1 port map( A1 => n688, A2 => n556, B1 => n555, B2 => n689, ZN
                           => n209);
   U664 : XNOR2_X1 port map( A => b(9), B => a(13), ZN => n688);
   U665 : OAI22_X1 port map( A1 => n689, A2 => n556, B1 => n555, B2 => n557, ZN
                           => n208);
   U666 : XOR2_X1 port map( A => b(11), B => n517, Z => n557);
   U667 : XNOR2_X1 port map( A => b(10), B => a(13), ZN => n689);
   U668 : OAI21_X1 port map( B1 => n538, B2 => n588, A => n690, ZN => n204);
   U669 : OR3_X1 port map( A1 => n589, A2 => b(0), A3 => n538, ZN => n690);
   U670 : OAI21_X1 port map( B1 => n533, B2 => n592, A => n691, ZN => n203);
   U671 : OR3_X1 port map( A1 => n593, A2 => b(0), A3 => n533, ZN => n691);
   U672 : NAND2_X1 port map( A1 => n593, A2 => n692, ZN => n592);
   U673 : XNOR2_X1 port map( A => n533, B => a(6), ZN => n692);
   U674 : OAI21_X1 port map( B1 => n528, B2 => n596, A => n693, ZN => n202);
   U675 : OR3_X1 port map( A1 => n597, A2 => b(0), A3 => n528, ZN => n693);
   U676 : NAND2_X1 port map( A1 => n597, A2 => n694, ZN => n596);
   U677 : XNOR2_X1 port map( A => n528, B => a(8), ZN => n694);
   U678 : OAI21_X1 port map( B1 => n522, B2 => n600, A => n695, ZN => n201);
   U679 : NAND3_X1 port map( A1 => n523, A2 => n549, A3 => a(11), ZN => n695);
   U680 : OAI21_X1 port map( B1 => n517, B2 => n556, A => n696, ZN => n200);
   U681 : OR3_X1 port map( A1 => n555, A2 => b(0), A3 => n517, ZN => n696);
   U682 : NAND2_X1 port map( A1 => n555, A2 => n697, ZN => n556);
   U683 : XNOR2_X1 port map( A => n517, B => a(12), ZN => n697);
   U684 : XNOR2_X1 port map( A => n698, B => n699, ZN => n108);
   U685 : OR2_X1 port map( A1 => n698, A2 => n699, ZN => n107);
   U686 : OAI22_X1 port map( A1 => n636, A2 => n588, B1 => n589, B2 => n637, ZN
                           => n699);
   U687 : XNOR2_X1 port map( A => b(10), B => a(5), ZN => n637);
   U688 : NAND2_X1 port map( A1 => n589, A2 => n700, ZN => n588);
   U689 : XNOR2_X1 port map( A => n538, B => a(4), ZN => n700);
   U690 : XNOR2_X1 port map( A => b(9), B => a(5), ZN => n636);
   U691 : OAI22_X1 port map( A1 => n670, A2 => n600, B1 => n666, B2 => n671, ZN
                           => n698);
   U692 : XNOR2_X1 port map( A => b(4), B => a(11), ZN => n671);
   U693 : NAND2_X1 port map( A1 => n666, A2 => n701, ZN => n600);
   U694 : XNOR2_X1 port map( A => n522, B => a(10), ZN => n701);
   U695 : XNOR2_X1 port map( A => b(3), B => a(11), ZN => n670);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_IIR_FILTER.all;

entity IIR_FILTER_DW01_add_0 is

   port( A, B : in std_logic_vector (6 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (6 downto 0);  CO : out std_logic);

end IIR_FILTER_DW01_add_0;

architecture SYN_rpl of IIR_FILTER_DW01_add_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port,
      n2, n_1092 : std_logic;

begin
   
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           n_1092, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n2, CO => carry_2_port, S
                           => SUM(1));
   U1 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));
   U2 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n2);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_IIR_FILTER.all;

entity IIR_FILTER is

   port( DIN : in std_logic_vector (13 downto 0);  VIN, RST_n, CLK : in 
         std_logic;  a0, a1, a1_2, b0, b1 : in std_logic_vector (13 downto 0); 
         DOUT : out std_logic_vector (13 downto 0);  VOUT : out std_logic);

end IIR_FILTER;

architecture SYN_behavioral of IIR_FILTER is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   component IIR_FILTER_DW_mult_tc_0
      port( a, b : in std_logic_vector (13 downto 0);  product : out 
            std_logic_vector (27 downto 0));
   end component;
   
   component IIR_FILTER_DW_mult_tc_3
      port( a : in std_logic_vector (13 downto 0);  b : in std_logic_vector (14
            downto 0);  product : out std_logic_vector (28 downto 0));
   end component;
   
   component IIR_FILTER_DW_mult_tc_2
      port( a : in std_logic_vector (14 downto 0);  b : in std_logic_vector (13
            downto 0);  product : out std_logic_vector (28 downto 0));
   end component;
   
   component IIR_FILTER_DW_mult_tc_1
      port( a : in std_logic_vector (14 downto 0);  b : in std_logic_vector (13
            downto 0);  product : out std_logic_vector (28 downto 0));
   end component;
   
   component IIR_FILTER_DW01_add_0
      port( A, B : in std_logic_vector (6 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (6 downto 0);  CO : out std_logic);
   end component;
   
   signal DOUT_13_port, DOUT_12_port, DOUT_11_port, DOUT_10_port, DOUT_9_port, 
      DOUT_8_port, DOUT_7_port, DOUT_6_port, DOUT_5_port, DOUT_4_port, 
      DOUT_3_port, DOUT_2_port, DOUT_1_port, DOUT_0_port, w_14_port, w_13_port,
      w_12_port, w_11_port, w_10_port, w_9_port, w_8_port, w_7_port, w_6_port, 
      w_5_port, w_4_port, w_3_port, w_2_port, w_1_port, w_0_port, 
      fb_tmp_1_24_port, fb_tmp_1_23_port, fb_tmp_1_22_port, fb_tmp_1_21_port, 
      fb_tmp_1_20_port, w_past_14_port, w_past_13_port, w_past_12_port, 
      w_past_11_port, w_past_10_port, w_past_9_port, w_past_8_port, 
      w_past_7_port, w_past_6_port, w_past_5_port, w_past_4_port, w_past_3_port
      , w_past_2_port, w_past_1_port, w_past_0_port, fb_tmp_0_20_port, 
      fb_tmp_0_19_port, fb_tmp_0_18_port, fb_tmp_0_17_port, fb_tmp_0_16_port, 
      fb_tmp_0_15_port, fb_0_past_5_port, fb_0_past_4_port, fb_0_past_3_port, 
      fb_0_past_2_port, fb_0_past_1_port, fb_0_past_0_port, fb_1_past_4_port, 
      fb_1_past_3_port, fb_1_past_2_port, fb_1_past_1_port, fb_1_past_0_port, 
      w_0_14_port, w_0_13_port, w_0_12_port, w_0_11_port, w_0_10_port, 
      w_0_9_port, w_0_8_port, w_0_7_port, w_0_6_port, w_0_5_port, w_0_4_port, 
      w_0_3_port, w_0_2_port, w_0_1_port, w_0_0_port, ff_tmp_0_26_port, 
      ff_tmp_0_25_port, ff_tmp_0_24_port, ff_tmp_0_23_port, ff_tmp_0_22_port, 
      ff_tmp_0_21_port, ff_tmp_0_20_port, w_1_14_port, w_1_13_port, w_1_12_port
      , w_1_11_port, w_1_10_port, w_1_9_port, w_1_8_port, w_1_7_port, 
      w_1_6_port, w_1_5_port, w_1_4_port, w_1_3_port, w_1_2_port, w_1_1_port, 
      w_1_0_port, ff_tmp_1_26_port, ff_tmp_1_25_port, ff_tmp_1_24_port, 
      ff_tmp_1_23_port, ff_tmp_1_22_port, ff_tmp_1_21_port, ff_tmp_1_20_port, 
      ff_0_past_6_port, ff_0_past_5_port, ff_0_past_4_port, ff_0_past_3_port, 
      ff_0_past_2_port, ff_0_past_1_port, ff_0_past_0_port, ff_1_past_6_port, 
      ff_1_past_5_port, ff_1_past_4_port, ff_1_past_3_port, ff_1_past_2_port, 
      ff_1_past_1_port, ff_1_past_0_port, ff_6_port, ff_5_port, ff_4_port, 
      ff_3_port, ff_2_port, ff_1_port, ff_0_port, n1, n86, n87, n88, n89, n90, 
      n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104
      , n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
      n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, 
      n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, 
      n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, 
      n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, 
      n165, add_0_root_add_0_root_add_41_carry_1_port, 
      add_0_root_add_0_root_add_41_carry_2_port, 
      add_0_root_add_0_root_add_41_carry_3_port, 
      add_0_root_add_0_root_add_41_carry_4_port, 
      add_0_root_add_0_root_add_41_carry_5_port, 
      add_0_root_add_0_root_add_41_carry_6_port, 
      add_0_root_add_0_root_add_41_carry_7_port, 
      add_0_root_add_0_root_add_41_carry_8_port, 
      add_0_root_add_0_root_add_41_carry_9_port, 
      add_0_root_add_0_root_add_41_carry_10_port, 
      add_0_root_add_0_root_add_41_carry_11_port, 
      add_0_root_add_0_root_add_41_carry_12_port, 
      add_0_root_add_0_root_add_41_carry_13_port, 
      add_0_root_add_0_root_add_41_carry_14_port, 
      add_0_root_add_0_root_add_41_B_0_port, 
      add_0_root_add_0_root_add_41_B_1_port, 
      add_0_root_add_0_root_add_41_B_2_port, 
      add_0_root_add_0_root_add_41_B_3_port, 
      add_0_root_add_0_root_add_41_B_4_port, 
      add_0_root_add_0_root_add_41_B_5_port, 
      add_0_root_add_0_root_add_41_B_6_port, 
      add_0_root_add_0_root_add_41_B_7_port, 
      add_0_root_add_0_root_add_41_B_8_port, 
      add_0_root_add_0_root_add_41_B_9_port, 
      add_0_root_add_0_root_add_41_B_10_port, 
      add_0_root_add_0_root_add_41_B_11_port, 
      add_0_root_add_0_root_add_41_B_12_port, 
      add_0_root_add_0_root_add_41_B_13_port, 
      add_0_root_add_0_root_add_41_B_14_port, 
      add_1_root_add_0_root_add_41_carry_1_port, 
      add_1_root_add_0_root_add_41_carry_2_port, 
      add_1_root_add_0_root_add_41_carry_3_port, 
      add_1_root_add_0_root_add_41_carry_4_port, 
      add_1_root_add_0_root_add_41_carry_5_port, 
      add_1_root_add_0_root_add_41_carry_6_port, 
      add_1_root_add_0_root_add_41_carry_7_port, 
      add_1_root_add_0_root_add_41_carry_8_port, 
      add_1_root_add_0_root_add_41_carry_9_port, 
      add_1_root_add_0_root_add_41_carry_10_port, 
      add_1_root_add_0_root_add_41_carry_11_port, 
      add_1_root_add_0_root_add_41_carry_12_port, 
      add_1_root_add_0_root_add_41_carry_13_port, 
      add_1_root_add_0_root_add_41_carry_14_port, n166, n167, n168, n169, n170,
      n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, 
      n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, 
      n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, 
      n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, 
      n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, 
      n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, 
      n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, 
      n255, n256, n257, n_1093, n_1094, n_1095, n_1096, n_1097, n_1098, n_1099,
      n_1100, n_1101, n_1102, n_1103, n_1104, n_1105, n_1106, n_1107, n_1108, 
      n_1109, n_1110, n_1111, n_1112, n_1113, n_1114, n_1115, n_1116, n_1117, 
      n_1118, n_1119, n_1120, n_1121, n_1122, n_1123, n_1124, n_1125, n_1126, 
      n_1127, n_1128, n_1129, n_1130, n_1131, n_1132, n_1133, n_1134, n_1135, 
      n_1136, n_1137, n_1138, n_1139, n_1140, n_1141, n_1142, n_1143, n_1144, 
      n_1145, n_1146, n_1147, n_1148, n_1149, n_1150, n_1151, n_1152, n_1153, 
      n_1154, n_1155, n_1156, n_1157, n_1158, n_1159, n_1160, n_1161, n_1162, 
      n_1163, n_1164, n_1165, n_1166, n_1167, n_1168, n_1169, n_1170, n_1171, 
      n_1172, n_1173, n_1174, n_1175, n_1176, n_1177, n_1178, n_1179, n_1180, 
      n_1181, n_1182, n_1183, n_1184, n_1185, n_1186, n_1187, n_1188, n_1189, 
      n_1190, n_1191, n_1192, n_1193, n_1194, n_1195, n_1196, n_1197, n_1198, 
      n_1199, n_1200, n_1201, n_1202, n_1203, n_1204, n_1205, n_1206, n_1207, 
      n_1208, n_1209, n_1210, n_1211, n_1212, n_1213, n_1214, n_1215, n_1216, 
      n_1217, n_1218, n_1219, n_1220, n_1221, n_1222, n_1223, n_1224, n_1225, 
      n_1226, n_1227, n_1228, n_1229, n_1230, n_1231, n_1232, n_1233, n_1234, 
      n_1235, n_1236, n_1237, n_1238, n_1239, n_1240, n_1241, n_1242, n_1243, 
      n_1244, n_1245, n_1246, n_1247, n_1248, n_1249, n_1250, n_1251, n_1252, 
      n_1253, n_1254, n_1255, n_1256, n_1257, n_1258, n_1259, n_1260, n_1261, 
      n_1262, n_1263 : std_logic;

begin
   DOUT <= ( DOUT_13_port, DOUT_12_port, DOUT_11_port, DOUT_10_port, 
      DOUT_9_port, DOUT_8_port, DOUT_7_port, DOUT_6_port, DOUT_5_port, 
      DOUT_4_port, DOUT_3_port, DOUT_2_port, DOUT_1_port, DOUT_0_port );
   
   n1 <= '0';
   fb_1_past_reg_3_inst : DFF_X1 port map( D => n218, CK => CLK, Q => 
                           fb_1_past_3_port, QN => n_1093);
   fb_1_past_reg_2_inst : DFF_X1 port map( D => n219, CK => CLK, Q => 
                           fb_1_past_2_port, QN => n_1094);
   fb_1_past_reg_1_inst : DFF_X1 port map( D => n220, CK => CLK, Q => 
                           fb_1_past_1_port, QN => n_1095);
   fb_1_past_reg_0_inst : DFF_X1 port map( D => n221, CK => CLK, Q => 
                           fb_1_past_0_port, QN => n_1096);
   VOUT_reg : DFF_X1 port map( D => n165, CK => CLK, Q => VOUT, QN => n_1097);
   w_past_reg_14_inst : DFF_X1 port map( D => n180, CK => CLK, Q => 
                           w_past_14_port, QN => n_1098);
   w_past_reg_13_inst : DFF_X1 port map( D => n182, CK => CLK, Q => 
                           w_past_13_port, QN => n_1099);
   w_past_reg_12_inst : DFF_X1 port map( D => n184, CK => CLK, Q => 
                           w_past_12_port, QN => n_1100);
   w_past_reg_11_inst : DFF_X1 port map( D => n186, CK => CLK, Q => 
                           w_past_11_port, QN => n_1101);
   w_past_reg_10_inst : DFF_X1 port map( D => n188, CK => CLK, Q => 
                           w_past_10_port, QN => n_1102);
   w_past_reg_9_inst : DFF_X1 port map( D => n190, CK => CLK, Q => 
                           w_past_9_port, QN => n_1103);
   w_past_reg_8_inst : DFF_X1 port map( D => n192, CK => CLK, Q => 
                           w_past_8_port, QN => n_1104);
   w_past_reg_7_inst : DFF_X1 port map( D => n194, CK => CLK, Q => 
                           w_past_7_port, QN => n_1105);
   w_past_reg_6_inst : DFF_X1 port map( D => n196, CK => CLK, Q => 
                           w_past_6_port, QN => n_1106);
   w_past_reg_5_inst : DFF_X1 port map( D => n198, CK => CLK, Q => 
                           w_past_5_port, QN => n_1107);
   w_past_reg_4_inst : DFF_X1 port map( D => n200, CK => CLK, Q => 
                           w_past_4_port, QN => n_1108);
   w_past_reg_3_inst : DFF_X1 port map( D => n202, CK => CLK, Q => 
                           w_past_3_port, QN => n_1109);
   w_past_reg_2_inst : DFF_X1 port map( D => n204, CK => CLK, Q => 
                           w_past_2_port, QN => n_1110);
   w_past_reg_1_inst : DFF_X1 port map( D => n206, CK => CLK, Q => 
                           w_past_1_port, QN => n_1111);
   w_past_reg_0_inst : DFF_X1 port map( D => n208, CK => CLK, Q => 
                           w_past_0_port, QN => n_1112);
   w_0_reg_14_inst : DFF_X1 port map( D => n181, CK => CLK, Q => w_0_14_port, 
                           QN => n_1113);
   w_0_reg_13_inst : DFF_X1 port map( D => n183, CK => CLK, Q => w_0_13_port, 
                           QN => n_1114);
   w_0_reg_12_inst : DFF_X1 port map( D => n185, CK => CLK, Q => w_0_12_port, 
                           QN => n_1115);
   w_0_reg_11_inst : DFF_X1 port map( D => n187, CK => CLK, Q => w_0_11_port, 
                           QN => n_1116);
   w_0_reg_10_inst : DFF_X1 port map( D => n189, CK => CLK, Q => w_0_10_port, 
                           QN => n_1117);
   w_0_reg_9_inst : DFF_X1 port map( D => n191, CK => CLK, Q => w_0_9_port, QN 
                           => n_1118);
   w_0_reg_8_inst : DFF_X1 port map( D => n193, CK => CLK, Q => w_0_8_port, QN 
                           => n_1119);
   w_0_reg_7_inst : DFF_X1 port map( D => n195, CK => CLK, Q => w_0_7_port, QN 
                           => n_1120);
   w_0_reg_6_inst : DFF_X1 port map( D => n197, CK => CLK, Q => w_0_6_port, QN 
                           => n_1121);
   w_0_reg_5_inst : DFF_X1 port map( D => n199, CK => CLK, Q => w_0_5_port, QN 
                           => n_1122);
   w_0_reg_4_inst : DFF_X1 port map( D => n201, CK => CLK, Q => w_0_4_port, QN 
                           => n_1123);
   w_0_reg_3_inst : DFF_X1 port map( D => n203, CK => CLK, Q => w_0_3_port, QN 
                           => n_1124);
   w_0_reg_2_inst : DFF_X1 port map( D => n205, CK => CLK, Q => w_0_2_port, QN 
                           => n_1125);
   w_0_reg_1_inst : DFF_X1 port map( D => n207, CK => CLK, Q => w_0_1_port, QN 
                           => n_1126);
   w_0_reg_0_inst : DFF_X1 port map( D => n209, CK => CLK, Q => w_0_0_port, QN 
                           => n_1127);
   w_1_reg_14_inst : DFF_X1 port map( D => n222, CK => CLK, Q => w_1_14_port, 
                           QN => n_1128);
   w_1_reg_13_inst : DFF_X1 port map( D => n223, CK => CLK, Q => w_1_13_port, 
                           QN => n_1129);
   w_1_reg_12_inst : DFF_X1 port map( D => n224, CK => CLK, Q => w_1_12_port, 
                           QN => n_1130);
   w_1_reg_11_inst : DFF_X1 port map( D => n225, CK => CLK, Q => w_1_11_port, 
                           QN => n_1131);
   w_1_reg_10_inst : DFF_X1 port map( D => n226, CK => CLK, Q => w_1_10_port, 
                           QN => n_1132);
   w_1_reg_9_inst : DFF_X1 port map( D => n227, CK => CLK, Q => w_1_9_port, QN 
                           => n_1133);
   w_1_reg_8_inst : DFF_X1 port map( D => n228, CK => CLK, Q => w_1_8_port, QN 
                           => n_1134);
   w_1_reg_7_inst : DFF_X1 port map( D => n229, CK => CLK, Q => w_1_7_port, QN 
                           => n_1135);
   w_1_reg_6_inst : DFF_X1 port map( D => n230, CK => CLK, Q => w_1_6_port, QN 
                           => n_1136);
   w_1_reg_5_inst : DFF_X1 port map( D => n231, CK => CLK, Q => w_1_5_port, QN 
                           => n_1137);
   w_1_reg_4_inst : DFF_X1 port map( D => n232, CK => CLK, Q => w_1_4_port, QN 
                           => n_1138);
   w_1_reg_3_inst : DFF_X1 port map( D => n233, CK => CLK, Q => w_1_3_port, QN 
                           => n_1139);
   w_1_reg_2_inst : DFF_X1 port map( D => n234, CK => CLK, Q => w_1_2_port, QN 
                           => n_1140);
   w_1_reg_1_inst : DFF_X1 port map( D => n235, CK => CLK, Q => w_1_1_port, QN 
                           => n_1141);
   w_1_reg_0_inst : DFF_X1 port map( D => n236, CK => CLK, Q => w_1_0_port, QN 
                           => n_1142);
   ff_0_past_reg_6_inst : DFF_X1 port map( D => n237, CK => CLK, Q => 
                           ff_0_past_6_port, QN => n_1143);
   ff_0_past_reg_5_inst : DFF_X1 port map( D => n238, CK => CLK, Q => 
                           ff_0_past_5_port, QN => n_1144);
   ff_0_past_reg_4_inst : DFF_X1 port map( D => n239, CK => CLK, Q => 
                           ff_0_past_4_port, QN => n_1145);
   ff_0_past_reg_3_inst : DFF_X1 port map( D => n240, CK => CLK, Q => 
                           ff_0_past_3_port, QN => n_1146);
   ff_0_past_reg_2_inst : DFF_X1 port map( D => n241, CK => CLK, Q => 
                           ff_0_past_2_port, QN => n_1147);
   ff_0_past_reg_1_inst : DFF_X1 port map( D => n242, CK => CLK, Q => 
                           ff_0_past_1_port, QN => n_1148);
   ff_0_past_reg_0_inst : DFF_X1 port map( D => n243, CK => CLK, Q => 
                           ff_0_past_0_port, QN => n_1149);
   ff_1_past_reg_6_inst : DFF_X1 port map( D => n244, CK => CLK, Q => 
                           ff_1_past_6_port, QN => n_1150);
   ff_1_past_reg_5_inst : DFF_X1 port map( D => n245, CK => CLK, Q => 
                           ff_1_past_5_port, QN => n_1151);
   ff_1_past_reg_4_inst : DFF_X1 port map( D => n246, CK => CLK, Q => 
                           ff_1_past_4_port, QN => n_1152);
   ff_1_past_reg_3_inst : DFF_X1 port map( D => n247, CK => CLK, Q => 
                           ff_1_past_3_port, QN => n_1153);
   ff_1_past_reg_2_inst : DFF_X1 port map( D => n248, CK => CLK, Q => 
                           ff_1_past_2_port, QN => n_1154);
   ff_1_past_reg_1_inst : DFF_X1 port map( D => n249, CK => CLK, Q => 
                           ff_1_past_1_port, QN => n_1155);
   ff_1_past_reg_0_inst : DFF_X1 port map( D => n250, CK => CLK, Q => 
                           ff_1_past_0_port, QN => n_1156);
   DOUT_reg_7_inst : DFF_X1 port map( D => n216, CK => CLK, Q => DOUT_7_port, 
                           QN => n_1157);
   DOUT_reg_8_inst : DFF_X1 port map( D => n215, CK => CLK, Q => DOUT_8_port, 
                           QN => n_1158);
   DOUT_reg_9_inst : DFF_X1 port map( D => n214, CK => CLK, Q => DOUT_9_port, 
                           QN => n_1159);
   DOUT_reg_10_inst : DFF_X1 port map( D => n213, CK => CLK, Q => DOUT_10_port,
                           QN => n_1160);
   DOUT_reg_11_inst : DFF_X1 port map( D => n212, CK => CLK, Q => DOUT_11_port,
                           QN => n_1161);
   DOUT_reg_12_inst : DFF_X1 port map( D => n211, CK => CLK, Q => DOUT_12_port,
                           QN => n_1162);
   DOUT_reg_13_inst : DFF_X1 port map( D => n210, CK => CLK, Q => DOUT_13_port,
                           QN => n_1163);
   fb_0_past_reg_4_inst : DFF_X1 port map( D => n252, CK => CLK, Q => 
                           fb_0_past_4_port, QN => n_1164);
   fb_0_past_reg_3_inst : DFF_X1 port map( D => n253, CK => CLK, Q => 
                           fb_0_past_3_port, QN => n_1165);
   fb_0_past_reg_2_inst : DFF_X1 port map( D => n254, CK => CLK, Q => 
                           fb_0_past_2_port, QN => n_1166);
   fb_0_past_reg_1_inst : DFF_X1 port map( D => n255, CK => CLK, Q => 
                           fb_0_past_1_port, QN => n_1167);
   fb_0_past_reg_0_inst : DFF_X1 port map( D => n256, CK => CLK, Q => 
                           fb_0_past_0_port, QN => n_1168);
   DOUT_0_port <= '0';
   DOUT_1_port <= '0';
   DOUT_2_port <= '0';
   DOUT_3_port <= '0';
   DOUT_4_port <= '0';
   DOUT_5_port <= '0';
   DOUT_6_port <= '0';
   add_57 : IIR_FILTER_DW01_add_0 port map( A(6) => ff_0_past_6_port, A(5) => 
                           ff_0_past_5_port, A(4) => ff_0_past_4_port, A(3) => 
                           ff_0_past_3_port, A(2) => ff_0_past_2_port, A(1) => 
                           ff_0_past_1_port, A(0) => ff_0_past_0_port, B(6) => 
                           ff_1_past_6_port, B(5) => ff_1_past_5_port, B(4) => 
                           ff_1_past_4_port, B(3) => ff_1_past_3_port, B(2) => 
                           ff_1_past_2_port, B(1) => ff_1_past_1_port, B(0) => 
                           ff_1_past_0_port, CI => n1, SUM(6) => ff_6_port, 
                           SUM(5) => ff_5_port, SUM(4) => ff_4_port, SUM(3) => 
                           ff_3_port, SUM(2) => ff_2_port, SUM(1) => ff_1_port,
                           SUM(0) => ff_0_port, CO => n_1169);
   mult_53 : IIR_FILTER_DW_mult_tc_1 port map( a(14) => w_1_14_port, a(13) => 
                           w_1_13_port, a(12) => w_1_12_port, a(11) => 
                           w_1_11_port, a(10) => w_1_10_port, a(9) => 
                           w_1_9_port, a(8) => w_1_8_port, a(7) => w_1_7_port, 
                           a(6) => w_1_6_port, a(5) => w_1_5_port, a(4) => 
                           w_1_4_port, a(3) => w_1_3_port, a(2) => w_1_2_port, 
                           a(1) => w_1_1_port, a(0) => w_1_0_port, b(13) => 
                           b1(13), b(12) => b1(12), b(11) => b1(11), b(10) => 
                           b1(10), b(9) => b1(9), b(8) => b1(8), b(7) => b1(7),
                           b(6) => b1(6), b(5) => b1(5), b(4) => b1(4), b(3) =>
                           b1(3), b(2) => b1(2), b(1) => b1(1), b(0) => b1(0), 
                           product(28) => n_1170, product(27) => n_1171, 
                           product(26) => ff_tmp_1_26_port, product(25) => 
                           ff_tmp_1_25_port, product(24) => ff_tmp_1_24_port, 
                           product(23) => ff_tmp_1_23_port, product(22) => 
                           ff_tmp_1_22_port, product(21) => ff_tmp_1_21_port, 
                           product(20) => ff_tmp_1_20_port, product(19) => 
                           n_1172, product(18) => n_1173, product(17) => n_1174
                           , product(16) => n_1175, product(15) => n_1176, 
                           product(14) => n_1177, product(13) => n_1178, 
                           product(12) => n_1179, product(11) => n_1180, 
                           product(10) => n_1181, product(9) => n_1182, 
                           product(8) => n_1183, product(7) => n_1184, 
                           product(6) => n_1185, product(5) => n_1186, 
                           product(4) => n_1187, product(3) => n_1188, 
                           product(2) => n_1189, product(1) => n_1190, 
                           product(0) => n_1191);
   mult_49 : IIR_FILTER_DW_mult_tc_2 port map( a(14) => w_0_14_port, a(13) => 
                           w_0_13_port, a(12) => w_0_12_port, a(11) => 
                           w_0_11_port, a(10) => w_0_10_port, a(9) => 
                           w_0_9_port, a(8) => w_0_8_port, a(7) => w_0_7_port, 
                           a(6) => w_0_6_port, a(5) => w_0_5_port, a(4) => 
                           w_0_4_port, a(3) => w_0_3_port, a(2) => w_0_2_port, 
                           a(1) => w_0_1_port, a(0) => w_0_0_port, b(13) => 
                           b0(13), b(12) => b0(12), b(11) => b0(11), b(10) => 
                           b0(10), b(9) => b0(9), b(8) => b0(8), b(7) => b0(7),
                           b(6) => b0(6), b(5) => b0(5), b(4) => b0(4), b(3) =>
                           b0(3), b(2) => b0(2), b(1) => b0(1), b(0) => b0(0), 
                           product(28) => n_1192, product(27) => n_1193, 
                           product(26) => ff_tmp_0_26_port, product(25) => 
                           ff_tmp_0_25_port, product(24) => ff_tmp_0_24_port, 
                           product(23) => ff_tmp_0_23_port, product(22) => 
                           ff_tmp_0_22_port, product(21) => ff_tmp_0_21_port, 
                           product(20) => ff_tmp_0_20_port, product(19) => 
                           n_1194, product(18) => n_1195, product(17) => n_1196
                           , product(16) => n_1197, product(15) => n_1198, 
                           product(14) => n_1199, product(13) => n_1200, 
                           product(12) => n_1201, product(11) => n_1202, 
                           product(10) => n_1203, product(9) => n_1204, 
                           product(8) => n_1205, product(7) => n_1206, 
                           product(6) => n_1207, product(5) => n_1208, 
                           product(4) => n_1209, product(3) => n_1210, 
                           product(2) => n_1211, product(1) => n_1212, 
                           product(0) => n_1213);
   mult_45 : IIR_FILTER_DW_mult_tc_3 port map( a(13) => a1_2(13), a(12) => 
                           a1_2(12), a(11) => a1_2(11), a(10) => a1_2(10), a(9)
                           => a1_2(9), a(8) => a1_2(8), a(7) => a1_2(7), a(6) 
                           => a1_2(6), a(5) => a1_2(5), a(4) => a1_2(4), a(3) 
                           => a1_2(3), a(2) => a1_2(2), a(1) => a1_2(1), a(0) 
                           => a1_2(0), b(14) => w_past_14_port, b(13) => 
                           w_past_13_port, b(12) => w_past_12_port, b(11) => 
                           w_past_11_port, b(10) => w_past_10_port, b(9) => 
                           w_past_9_port, b(8) => w_past_8_port, b(7) => 
                           w_past_7_port, b(6) => w_past_6_port, b(5) => 
                           w_past_5_port, b(4) => w_past_4_port, b(3) => 
                           w_past_3_port, b(2) => w_past_2_port, b(1) => 
                           w_past_1_port, b(0) => w_past_0_port, product(28) =>
                           n_1214, product(27) => n_1215, product(26) => n_1216
                           , product(25) => n_1217, product(24) => n_1218, 
                           product(23) => n_1219, product(22) => n_1220, 
                           product(21) => n_1221, product(20) => 
                           fb_tmp_0_20_port, product(19) => fb_tmp_0_19_port, 
                           product(18) => fb_tmp_0_18_port, product(17) => 
                           fb_tmp_0_17_port, product(16) => fb_tmp_0_16_port, 
                           product(15) => fb_tmp_0_15_port, product(14) => 
                           n_1222, product(13) => n_1223, product(12) => n_1224
                           , product(11) => n_1225, product(10) => n_1226, 
                           product(9) => n_1227, product(8) => n_1228, 
                           product(7) => n_1229, product(6) => n_1230, 
                           product(5) => n_1231, product(4) => n_1232, 
                           product(3) => n_1233, product(2) => n_1234, 
                           product(1) => n_1235, product(0) => n_1236);
   mult_43 : IIR_FILTER_DW_mult_tc_0 port map( a(13) => DIN(13), a(12) => 
                           DIN(12), a(11) => DIN(11), a(10) => DIN(10), a(9) =>
                           DIN(9), a(8) => DIN(8), a(7) => DIN(7), a(6) => 
                           DIN(6), a(5) => DIN(5), a(4) => DIN(4), a(3) => 
                           DIN(3), a(2) => DIN(2), a(1) => DIN(1), a(0) => 
                           DIN(0), b(13) => a1(13), b(12) => a1(12), b(11) => 
                           a1(11), b(10) => a1(10), b(9) => a1(9), b(8) => 
                           a1(8), b(7) => a1(7), b(6) => a1(6), b(5) => a1(5), 
                           b(4) => a1(4), b(3) => a1(3), b(2) => a1(2), b(1) =>
                           a1(1), b(0) => a1(0), product(27) => n_1237, 
                           product(26) => n_1238, product(25) => n_1239, 
                           product(24) => fb_tmp_1_24_port, product(23) => 
                           fb_tmp_1_23_port, product(22) => fb_tmp_1_22_port, 
                           product(21) => fb_tmp_1_21_port, product(20) => 
                           fb_tmp_1_20_port, product(19) => n_1240, product(18)
                           => n_1241, product(17) => n_1242, product(16) => 
                           n_1243, product(15) => n_1244, product(14) => n_1245
                           , product(13) => n_1246, product(12) => n_1247, 
                           product(11) => n_1248, product(10) => n_1249, 
                           product(9) => n_1250, product(8) => n_1251, 
                           product(7) => n_1252, product(6) => n_1253, 
                           product(5) => n_1254, product(4) => n_1255, 
                           product(3) => n_1256, product(2) => n_1257, 
                           product(1) => n_1258, product(0) => n_1259);
   add_0_root_add_0_root_add_41_U1_1 : FA_X1 port map( A => fb_1_past_1_port, B
                           => add_0_root_add_0_root_add_41_B_1_port, CI => 
                           add_0_root_add_0_root_add_41_carry_1_port, CO => 
                           add_0_root_add_0_root_add_41_carry_2_port, S => 
                           w_1_port);
   add_0_root_add_0_root_add_41_U1_2 : FA_X1 port map( A => fb_1_past_2_port, B
                           => add_0_root_add_0_root_add_41_B_2_port, CI => 
                           add_0_root_add_0_root_add_41_carry_2_port, CO => 
                           add_0_root_add_0_root_add_41_carry_3_port, S => 
                           w_2_port);
   add_0_root_add_0_root_add_41_U1_3 : FA_X1 port map( A => fb_1_past_3_port, B
                           => add_0_root_add_0_root_add_41_B_3_port, CI => 
                           add_0_root_add_0_root_add_41_carry_3_port, CO => 
                           add_0_root_add_0_root_add_41_carry_4_port, S => 
                           w_3_port);
   add_0_root_add_0_root_add_41_U1_4 : FA_X1 port map( A => fb_1_past_4_port, B
                           => add_0_root_add_0_root_add_41_B_4_port, CI => 
                           add_0_root_add_0_root_add_41_carry_4_port, CO => 
                           add_0_root_add_0_root_add_41_carry_5_port, S => 
                           w_4_port);
   add_0_root_add_0_root_add_41_U1_5 : FA_X1 port map( A => fb_1_past_4_port, B
                           => add_0_root_add_0_root_add_41_B_5_port, CI => 
                           add_0_root_add_0_root_add_41_carry_5_port, CO => 
                           add_0_root_add_0_root_add_41_carry_6_port, S => 
                           w_5_port);
   add_0_root_add_0_root_add_41_U1_6 : FA_X1 port map( A => fb_1_past_4_port, B
                           => add_0_root_add_0_root_add_41_B_6_port, CI => 
                           add_0_root_add_0_root_add_41_carry_6_port, CO => 
                           add_0_root_add_0_root_add_41_carry_7_port, S => 
                           w_6_port);
   add_0_root_add_0_root_add_41_U1_7 : FA_X1 port map( A => fb_1_past_4_port, B
                           => add_0_root_add_0_root_add_41_B_7_port, CI => 
                           add_0_root_add_0_root_add_41_carry_7_port, CO => 
                           add_0_root_add_0_root_add_41_carry_8_port, S => 
                           w_7_port);
   add_0_root_add_0_root_add_41_U1_8 : FA_X1 port map( A => fb_1_past_4_port, B
                           => add_0_root_add_0_root_add_41_B_8_port, CI => 
                           add_0_root_add_0_root_add_41_carry_8_port, CO => 
                           add_0_root_add_0_root_add_41_carry_9_port, S => 
                           w_8_port);
   add_0_root_add_0_root_add_41_U1_9 : FA_X1 port map( A => fb_1_past_4_port, B
                           => add_0_root_add_0_root_add_41_B_9_port, CI => 
                           add_0_root_add_0_root_add_41_carry_9_port, CO => 
                           add_0_root_add_0_root_add_41_carry_10_port, S => 
                           w_9_port);
   add_0_root_add_0_root_add_41_U1_10 : FA_X1 port map( A => fb_1_past_4_port, 
                           B => add_0_root_add_0_root_add_41_B_10_port, CI => 
                           add_0_root_add_0_root_add_41_carry_10_port, CO => 
                           add_0_root_add_0_root_add_41_carry_11_port, S => 
                           w_10_port);
   add_0_root_add_0_root_add_41_U1_11 : FA_X1 port map( A => fb_1_past_4_port, 
                           B => add_0_root_add_0_root_add_41_B_11_port, CI => 
                           add_0_root_add_0_root_add_41_carry_11_port, CO => 
                           add_0_root_add_0_root_add_41_carry_12_port, S => 
                           w_11_port);
   add_0_root_add_0_root_add_41_U1_12 : FA_X1 port map( A => fb_1_past_4_port, 
                           B => add_0_root_add_0_root_add_41_B_12_port, CI => 
                           add_0_root_add_0_root_add_41_carry_12_port, CO => 
                           add_0_root_add_0_root_add_41_carry_13_port, S => 
                           w_12_port);
   add_0_root_add_0_root_add_41_U1_13 : FA_X1 port map( A => fb_1_past_4_port, 
                           B => add_0_root_add_0_root_add_41_B_13_port, CI => 
                           add_0_root_add_0_root_add_41_carry_13_port, CO => 
                           add_0_root_add_0_root_add_41_carry_14_port, S => 
                           w_13_port);
   add_0_root_add_0_root_add_41_U1_14 : FA_X1 port map( A => fb_1_past_4_port, 
                           B => add_0_root_add_0_root_add_41_B_14_port, CI => 
                           add_0_root_add_0_root_add_41_carry_14_port, CO => 
                           n_1260, S => w_14_port);
   add_1_root_add_0_root_add_41_U1_1 : FA_X1 port map( A => DIN(1), B => 
                           fb_0_past_1_port, CI => 
                           add_1_root_add_0_root_add_41_carry_1_port, CO => 
                           add_1_root_add_0_root_add_41_carry_2_port, S => 
                           add_0_root_add_0_root_add_41_B_1_port);
   add_1_root_add_0_root_add_41_U1_2 : FA_X1 port map( A => DIN(2), B => 
                           fb_0_past_2_port, CI => 
                           add_1_root_add_0_root_add_41_carry_2_port, CO => 
                           add_1_root_add_0_root_add_41_carry_3_port, S => 
                           add_0_root_add_0_root_add_41_B_2_port);
   add_1_root_add_0_root_add_41_U1_3 : FA_X1 port map( A => DIN(3), B => 
                           fb_0_past_3_port, CI => 
                           add_1_root_add_0_root_add_41_carry_3_port, CO => 
                           add_1_root_add_0_root_add_41_carry_4_port, S => 
                           add_0_root_add_0_root_add_41_B_3_port);
   add_1_root_add_0_root_add_41_U1_4 : FA_X1 port map( A => DIN(4), B => 
                           fb_0_past_4_port, CI => 
                           add_1_root_add_0_root_add_41_carry_4_port, CO => 
                           add_1_root_add_0_root_add_41_carry_5_port, S => 
                           add_0_root_add_0_root_add_41_B_4_port);
   add_1_root_add_0_root_add_41_U1_5 : FA_X1 port map( A => DIN(5), B => 
                           fb_0_past_5_port, CI => 
                           add_1_root_add_0_root_add_41_carry_5_port, CO => 
                           add_1_root_add_0_root_add_41_carry_6_port, S => 
                           add_0_root_add_0_root_add_41_B_5_port);
   add_1_root_add_0_root_add_41_U1_6 : FA_X1 port map( A => DIN(6), B => 
                           fb_0_past_5_port, CI => 
                           add_1_root_add_0_root_add_41_carry_6_port, CO => 
                           add_1_root_add_0_root_add_41_carry_7_port, S => 
                           add_0_root_add_0_root_add_41_B_6_port);
   add_1_root_add_0_root_add_41_U1_7 : FA_X1 port map( A => DIN(7), B => 
                           fb_0_past_5_port, CI => 
                           add_1_root_add_0_root_add_41_carry_7_port, CO => 
                           add_1_root_add_0_root_add_41_carry_8_port, S => 
                           add_0_root_add_0_root_add_41_B_7_port);
   add_1_root_add_0_root_add_41_U1_8 : FA_X1 port map( A => DIN(8), B => 
                           fb_0_past_5_port, CI => 
                           add_1_root_add_0_root_add_41_carry_8_port, CO => 
                           add_1_root_add_0_root_add_41_carry_9_port, S => 
                           add_0_root_add_0_root_add_41_B_8_port);
   add_1_root_add_0_root_add_41_U1_9 : FA_X1 port map( A => DIN(9), B => 
                           fb_0_past_5_port, CI => 
                           add_1_root_add_0_root_add_41_carry_9_port, CO => 
                           add_1_root_add_0_root_add_41_carry_10_port, S => 
                           add_0_root_add_0_root_add_41_B_9_port);
   add_1_root_add_0_root_add_41_U1_10 : FA_X1 port map( A => DIN(10), B => 
                           fb_0_past_5_port, CI => 
                           add_1_root_add_0_root_add_41_carry_10_port, CO => 
                           add_1_root_add_0_root_add_41_carry_11_port, S => 
                           add_0_root_add_0_root_add_41_B_10_port);
   add_1_root_add_0_root_add_41_U1_11 : FA_X1 port map( A => DIN(11), B => 
                           fb_0_past_5_port, CI => 
                           add_1_root_add_0_root_add_41_carry_11_port, CO => 
                           add_1_root_add_0_root_add_41_carry_12_port, S => 
                           add_0_root_add_0_root_add_41_B_11_port);
   add_1_root_add_0_root_add_41_U1_12 : FA_X1 port map( A => DIN(12), B => 
                           fb_0_past_5_port, CI => 
                           add_1_root_add_0_root_add_41_carry_12_port, CO => 
                           add_1_root_add_0_root_add_41_carry_13_port, S => 
                           add_0_root_add_0_root_add_41_B_12_port);
   add_1_root_add_0_root_add_41_U1_13 : FA_X1 port map( A => DIN(13), B => 
                           fb_0_past_5_port, CI => 
                           add_1_root_add_0_root_add_41_carry_13_port, CO => 
                           add_1_root_add_0_root_add_41_carry_14_port, S => 
                           add_0_root_add_0_root_add_41_B_13_port);
   add_1_root_add_0_root_add_41_U1_14 : FA_X1 port map( A => DIN(13), B => 
                           fb_0_past_5_port, CI => 
                           add_1_root_add_0_root_add_41_carry_14_port, CO => 
                           n_1261, S => add_0_root_add_0_root_add_41_B_14_port)
                           ;
   fb_0_past_reg_5_inst : DFF_X1 port map( D => n251, CK => CLK, Q => 
                           fb_0_past_5_port, QN => n_1262);
   fb_1_past_reg_4_inst : DFF_X1 port map( D => n217, CK => CLK, Q => 
                           fb_1_past_4_port, QN => n_1263);
   U169 : BUF_X1 port map( A => n173, Z => n178);
   U170 : BUF_X1 port map( A => n173, Z => n177);
   U171 : BUF_X1 port map( A => n173, Z => n175);
   U172 : BUF_X1 port map( A => n173, Z => n174);
   U173 : BUF_X1 port map( A => n173, Z => n176);
   U174 : BUF_X1 port map( A => n173, Z => n179);
   U175 : BUF_X1 port map( A => n88, Z => n170);
   U176 : BUF_X1 port map( A => n88, Z => n169);
   U177 : BUF_X1 port map( A => n88, Z => n171);
   U178 : BUF_X1 port map( A => n88, Z => n168);
   U179 : BUF_X1 port map( A => n88, Z => n167);
   U180 : BUF_X1 port map( A => n88, Z => n166);
   U181 : BUF_X1 port map( A => n87, Z => n173);
   U182 : NOR2_X1 port map( A1 => n257, A2 => n168, ZN => n87);
   U183 : INV_X1 port map( A => n107, ZN => n244);
   U184 : AOI22_X1 port map( A1 => ff_tmp_1_26_port, A2 => n176, B1 => 
                           ff_1_past_6_port, B2 => n168, ZN => n107);
   U185 : INV_X1 port map( A => n114, ZN => n237);
   U186 : AOI22_X1 port map( A1 => ff_tmp_0_26_port, A2 => n176, B1 => 
                           ff_0_past_6_port, B2 => n168, ZN => n114);
   U187 : INV_X1 port map( A => n164, ZN => n217);
   U188 : AOI22_X1 port map( A1 => fb_tmp_1_24_port, A2 => n174, B1 => 
                           fb_1_past_4_port, B2 => n166, ZN => n164);
   U189 : INV_X1 port map( A => n113, ZN => n238);
   U190 : AOI22_X1 port map( A1 => ff_tmp_0_25_port, A2 => n176, B1 => 
                           ff_0_past_5_port, B2 => n168, ZN => n113);
   U191 : INV_X1 port map( A => n106, ZN => n245);
   U192 : AOI22_X1 port map( A1 => ff_tmp_1_25_port, A2 => n175, B1 => 
                           ff_1_past_5_port, B2 => n167, ZN => n106);
   U193 : INV_X1 port map( A => n160, ZN => n221);
   U194 : AOI22_X1 port map( A1 => fb_tmp_1_20_port, A2 => n174, B1 => 
                           fb_1_past_0_port, B2 => n166, ZN => n160);
   U195 : INV_X1 port map( A => n161, ZN => n220);
   U196 : AOI22_X1 port map( A1 => fb_tmp_1_21_port, A2 => n174, B1 => 
                           fb_1_past_1_port, B2 => n166, ZN => n161);
   U197 : INV_X1 port map( A => n162, ZN => n219);
   U198 : AOI22_X1 port map( A1 => fb_tmp_1_22_port, A2 => n174, B1 => 
                           fb_1_past_2_port, B2 => n166, ZN => n162);
   U199 : INV_X1 port map( A => n163, ZN => n218);
   U200 : AOI22_X1 port map( A1 => fb_tmp_1_23_port, A2 => n174, B1 => 
                           fb_1_past_3_port, B2 => n166, ZN => n163);
   U201 : INV_X1 port map( A => n93, ZN => n251);
   U202 : AOI22_X1 port map( A1 => fb_tmp_0_20_port, A2 => n174, B1 => 
                           fb_0_past_5_port, B2 => n166, ZN => n93);
   U203 : INV_X1 port map( A => n108, ZN => n243);
   U204 : AOI22_X1 port map( A1 => ff_tmp_0_20_port, A2 => n176, B1 => 
                           ff_0_past_0_port, B2 => n168, ZN => n108);
   U205 : INV_X1 port map( A => n101, ZN => n250);
   U206 : AOI22_X1 port map( A1 => ff_tmp_1_20_port, A2 => n175, B1 => 
                           ff_1_past_0_port, B2 => n167, ZN => n101);
   U207 : INV_X1 port map( A => n109, ZN => n242);
   U208 : AOI22_X1 port map( A1 => ff_tmp_0_21_port, A2 => n176, B1 => 
                           ff_0_past_1_port, B2 => n168, ZN => n109);
   U209 : INV_X1 port map( A => n110, ZN => n241);
   U210 : AOI22_X1 port map( A1 => ff_tmp_0_22_port, A2 => n176, B1 => 
                           ff_0_past_2_port, B2 => n168, ZN => n110);
   U211 : INV_X1 port map( A => n111, ZN => n240);
   U212 : AOI22_X1 port map( A1 => ff_tmp_0_23_port, A2 => n176, B1 => 
                           ff_0_past_3_port, B2 => n168, ZN => n111);
   U213 : INV_X1 port map( A => n112, ZN => n239);
   U214 : AOI22_X1 port map( A1 => ff_tmp_0_24_port, A2 => n176, B1 => 
                           ff_0_past_4_port, B2 => n168, ZN => n112);
   U215 : INV_X1 port map( A => n86, ZN => n256);
   U216 : AOI22_X1 port map( A1 => fb_tmp_0_15_port, A2 => n175, B1 => 
                           fb_0_past_0_port, B2 => n167, ZN => n86);
   U217 : INV_X1 port map( A => n89, ZN => n255);
   U218 : AOI22_X1 port map( A1 => fb_tmp_0_16_port, A2 => n174, B1 => 
                           fb_0_past_1_port, B2 => n166, ZN => n89);
   U219 : INV_X1 port map( A => n90, ZN => n254);
   U220 : AOI22_X1 port map( A1 => fb_tmp_0_17_port, A2 => n174, B1 => 
                           fb_0_past_2_port, B2 => n166, ZN => n90);
   U221 : INV_X1 port map( A => n91, ZN => n253);
   U222 : AOI22_X1 port map( A1 => fb_tmp_0_18_port, A2 => n174, B1 => 
                           fb_0_past_3_port, B2 => n166, ZN => n91);
   U223 : INV_X1 port map( A => n92, ZN => n252);
   U224 : AOI22_X1 port map( A1 => fb_tmp_0_19_port, A2 => n174, B1 => 
                           fb_0_past_4_port, B2 => n166, ZN => n92);
   U225 : INV_X1 port map( A => n102, ZN => n249);
   U226 : AOI22_X1 port map( A1 => ff_tmp_1_21_port, A2 => n175, B1 => 
                           ff_1_past_1_port, B2 => n167, ZN => n102);
   U227 : INV_X1 port map( A => n103, ZN => n248);
   U228 : AOI22_X1 port map( A1 => ff_tmp_1_22_port, A2 => n175, B1 => 
                           ff_1_past_2_port, B2 => n167, ZN => n103);
   U229 : INV_X1 port map( A => n104, ZN => n247);
   U230 : AOI22_X1 port map( A1 => ff_tmp_1_23_port, A2 => n175, B1 => 
                           ff_1_past_3_port, B2 => n167, ZN => n104);
   U231 : INV_X1 port map( A => n105, ZN => n246);
   U232 : AOI22_X1 port map( A1 => ff_tmp_1_24_port, A2 => n175, B1 => 
                           ff_1_past_4_port, B2 => n167, ZN => n105);
   U233 : INV_X1 port map( A => n149, ZN => n200);
   U234 : AOI22_X1 port map( A1 => n171, A2 => w_past_4_port, B1 => n179, B2 =>
                           w_4_port, ZN => n149);
   U235 : INV_X1 port map( A => n153, ZN => n192);
   U236 : AOI22_X1 port map( A1 => n171, A2 => w_past_8_port, B1 => n179, B2 =>
                           w_8_port, ZN => n153);
   U237 : INV_X1 port map( A => n154, ZN => n190);
   U238 : AOI22_X1 port map( A1 => n171, A2 => w_past_9_port, B1 => n179, B2 =>
                           w_9_port, ZN => n154);
   U239 : INV_X1 port map( A => n155, ZN => n188);
   U240 : AOI22_X1 port map( A1 => n171, A2 => w_past_10_port, B1 => n179, B2 
                           => w_10_port, ZN => n155);
   U241 : INV_X1 port map( A => n157, ZN => n184);
   U242 : AOI22_X1 port map( A1 => n172, A2 => w_past_12_port, B1 => n179, B2 
                           => w_12_port, ZN => n157);
   U243 : INV_X1 port map( A => n156, ZN => n186);
   U244 : AOI22_X1 port map( A1 => n172, A2 => w_past_11_port, B1 => n179, B2 
                           => w_11_port, ZN => n156);
   U245 : INV_X1 port map( A => n150, ZN => n198);
   U246 : AOI22_X1 port map( A1 => n171, A2 => w_past_5_port, B1 => n179, B2 =>
                           w_5_port, ZN => n150);
   U247 : INV_X1 port map( A => n151, ZN => n196);
   U248 : AOI22_X1 port map( A1 => n171, A2 => w_past_6_port, B1 => n179, B2 =>
                           w_6_port, ZN => n151);
   U249 : INV_X1 port map( A => n152, ZN => n194);
   U250 : AOI22_X1 port map( A1 => n171, A2 => w_past_7_port, B1 => n179, B2 =>
                           w_7_port, ZN => n152);
   U251 : INV_X1 port map( A => n134, ZN => n201);
   U252 : AOI22_X1 port map( A1 => n170, A2 => w_0_4_port, B1 => n178, B2 => 
                           w_4_port, ZN => n134);
   U253 : INV_X1 port map( A => n135, ZN => n199);
   U254 : AOI22_X1 port map( A1 => n170, A2 => w_0_5_port, B1 => n178, B2 => 
                           w_5_port, ZN => n135);
   U255 : INV_X1 port map( A => n136, ZN => n197);
   U256 : AOI22_X1 port map( A1 => n170, A2 => w_0_6_port, B1 => n178, B2 => 
                           w_6_port, ZN => n136);
   U257 : INV_X1 port map( A => n137, ZN => n195);
   U258 : AOI22_X1 port map( A1 => n170, A2 => w_0_7_port, B1 => n178, B2 => 
                           w_7_port, ZN => n137);
   U259 : INV_X1 port map( A => n138, ZN => n193);
   U260 : AOI22_X1 port map( A1 => n170, A2 => w_0_8_port, B1 => n178, B2 => 
                           w_8_port, ZN => n138);
   U261 : INV_X1 port map( A => n139, ZN => n191);
   U262 : AOI22_X1 port map( A1 => n170, A2 => w_0_9_port, B1 => n178, B2 => 
                           w_9_port, ZN => n139);
   U263 : INV_X1 port map( A => n140, ZN => n189);
   U264 : AOI22_X1 port map( A1 => n170, A2 => w_0_10_port, B1 => n178, B2 => 
                           w_10_port, ZN => n140);
   U265 : INV_X1 port map( A => n141, ZN => n187);
   U266 : AOI22_X1 port map( A1 => n170, A2 => w_0_11_port, B1 => n178, B2 => 
                           w_11_port, ZN => n141);
   U267 : INV_X1 port map( A => n142, ZN => n185);
   U268 : AOI22_X1 port map( A1 => n171, A2 => w_0_12_port, B1 => n178, B2 => 
                           w_12_port, ZN => n142);
   U269 : INV_X1 port map( A => n143, ZN => n183);
   U270 : AOI22_X1 port map( A1 => n171, A2 => w_0_13_port, B1 => n178, B2 => 
                           w_13_port, ZN => n143);
   U271 : INV_X1 port map( A => n144, ZN => n181);
   U272 : AOI22_X1 port map( A1 => n171, A2 => w_0_14_port, B1 => n178, B2 => 
                           w_14_port, ZN => n144);
   U273 : INV_X1 port map( A => n159, ZN => n180);
   U274 : AOI22_X1 port map( A1 => n168, A2 => w_past_14_port, B1 => n176, B2 
                           => w_14_port, ZN => n159);
   U275 : INV_X1 port map( A => n158, ZN => n182);
   U276 : AOI22_X1 port map( A1 => n172, A2 => w_past_13_port, B1 => n179, B2 
                           => w_13_port, ZN => n158);
   U277 : INV_X1 port map( A => n94, ZN => n210);
   U278 : AOI22_X1 port map( A1 => ff_6_port, A2 => n174, B1 => DOUT_13_port, 
                           B2 => n166, ZN => n94);
   U279 : NOR2_X1 port map( A1 => n257, A2 => VIN, ZN => n88);
   U280 : INV_X1 port map( A => n145, ZN => n208);
   U281 : AOI22_X1 port map( A1 => n171, A2 => w_past_0_port, B1 => n179, B2 =>
                           w_0_port, ZN => n145);
   U282 : INV_X1 port map( A => n147, ZN => n204);
   U283 : AOI22_X1 port map( A1 => n169, A2 => w_past_2_port, B1 => n179, B2 =>
                           w_2_port, ZN => n147);
   U284 : INV_X1 port map( A => n130, ZN => n209);
   U285 : AOI22_X1 port map( A1 => n170, A2 => w_0_0_port, B1 => n177, B2 => 
                           w_0_port, ZN => n130);
   U286 : INV_X1 port map( A => RST_n, ZN => n257);
   U287 : INV_X1 port map( A => n115, ZN => n236);
   U288 : AOI22_X1 port map( A1 => n168, A2 => w_1_0_port, B1 => n176, B2 => 
                           w_past_0_port, ZN => n115);
   U289 : INV_X1 port map( A => n117, ZN => n234);
   U290 : AOI22_X1 port map( A1 => n169, A2 => w_1_2_port, B1 => n176, B2 => 
                           w_past_2_port, ZN => n117);
   U291 : INV_X1 port map( A => n118, ZN => n233);
   U292 : AOI22_X1 port map( A1 => n169, A2 => w_1_3_port, B1 => n177, B2 => 
                           w_past_3_port, ZN => n118);
   U293 : INV_X1 port map( A => n119, ZN => n232);
   U294 : AOI22_X1 port map( A1 => n169, A2 => w_1_4_port, B1 => n177, B2 => 
                           w_past_4_port, ZN => n119);
   U295 : INV_X1 port map( A => n120, ZN => n231);
   U296 : AOI22_X1 port map( A1 => n169, A2 => w_1_5_port, B1 => n177, B2 => 
                           w_past_5_port, ZN => n120);
   U297 : INV_X1 port map( A => n121, ZN => n230);
   U298 : AOI22_X1 port map( A1 => n169, A2 => w_1_6_port, B1 => n177, B2 => 
                           w_past_6_port, ZN => n121);
   U299 : INV_X1 port map( A => n122, ZN => n229);
   U300 : AOI22_X1 port map( A1 => n169, A2 => w_1_7_port, B1 => n177, B2 => 
                           w_past_7_port, ZN => n122);
   U301 : INV_X1 port map( A => n123, ZN => n228);
   U302 : AOI22_X1 port map( A1 => n169, A2 => w_1_8_port, B1 => n177, B2 => 
                           w_past_8_port, ZN => n123);
   U303 : INV_X1 port map( A => n116, ZN => n235);
   U304 : AOI22_X1 port map( A1 => n168, A2 => w_1_1_port, B1 => n176, B2 => 
                           w_past_1_port, ZN => n116);
   U305 : INV_X1 port map( A => n124, ZN => n227);
   U306 : AOI22_X1 port map( A1 => n169, A2 => w_1_9_port, B1 => n177, B2 => 
                           w_past_9_port, ZN => n124);
   U307 : INV_X1 port map( A => n125, ZN => n226);
   U308 : AOI22_X1 port map( A1 => n169, A2 => w_1_10_port, B1 => n177, B2 => 
                           w_past_10_port, ZN => n125);
   U309 : INV_X1 port map( A => n126, ZN => n225);
   U310 : AOI22_X1 port map( A1 => n169, A2 => w_1_11_port, B1 => n177, B2 => 
                           w_past_11_port, ZN => n126);
   U311 : INV_X1 port map( A => n127, ZN => n224);
   U312 : AOI22_X1 port map( A1 => n169, A2 => w_1_12_port, B1 => n177, B2 => 
                           w_past_12_port, ZN => n127);
   U313 : INV_X1 port map( A => n148, ZN => n202);
   U314 : AOI22_X1 port map( A1 => n171, A2 => w_past_3_port, B1 => n179, B2 =>
                           w_3_port, ZN => n148);
   U315 : INV_X1 port map( A => n146, ZN => n206);
   U316 : AOI22_X1 port map( A1 => n171, A2 => w_past_1_port, B1 => n177, B2 =>
                           w_1_port, ZN => n146);
   U317 : INV_X1 port map( A => n128, ZN => n223);
   U318 : AOI22_X1 port map( A1 => n169, A2 => w_1_13_port, B1 => n177, B2 => 
                           w_past_13_port, ZN => n128);
   U319 : INV_X1 port map( A => n129, ZN => n222);
   U320 : AOI22_X1 port map( A1 => n170, A2 => w_1_14_port, B1 => n177, B2 => 
                           w_past_14_port, ZN => n129);
   U321 : INV_X1 port map( A => n131, ZN => n207);
   U322 : AOI22_X1 port map( A1 => n170, A2 => w_0_1_port, B1 => n178, B2 => 
                           w_1_port, ZN => n131);
   U323 : INV_X1 port map( A => n132, ZN => n205);
   U324 : AOI22_X1 port map( A1 => n170, A2 => w_0_2_port, B1 => n178, B2 => 
                           w_2_port, ZN => n132);
   U325 : INV_X1 port map( A => n133, ZN => n203);
   U326 : AOI22_X1 port map( A1 => n170, A2 => w_0_3_port, B1 => n178, B2 => 
                           w_3_port, ZN => n133);
   U327 : AND2_X1 port map( A1 => RST_n, A2 => VIN, ZN => n165);
   U328 : INV_X1 port map( A => n95, ZN => n211);
   U329 : AOI22_X1 port map( A1 => ff_5_port, A2 => n174, B1 => DOUT_12_port, 
                           B2 => n166, ZN => n95);
   U330 : INV_X1 port map( A => n96, ZN => n212);
   U331 : AOI22_X1 port map( A1 => ff_4_port, A2 => n175, B1 => DOUT_11_port, 
                           B2 => n167, ZN => n96);
   U332 : INV_X1 port map( A => n97, ZN => n213);
   U333 : AOI22_X1 port map( A1 => ff_3_port, A2 => n175, B1 => DOUT_10_port, 
                           B2 => n167, ZN => n97);
   U334 : INV_X1 port map( A => n98, ZN => n214);
   U335 : AOI22_X1 port map( A1 => ff_2_port, A2 => n175, B1 => DOUT_9_port, B2
                           => n167, ZN => n98);
   U336 : INV_X1 port map( A => n99, ZN => n215);
   U337 : AOI22_X1 port map( A1 => ff_1_port, A2 => n175, B1 => DOUT_8_port, B2
                           => n167, ZN => n99);
   U338 : INV_X1 port map( A => n100, ZN => n216);
   U339 : AOI22_X1 port map( A1 => ff_0_port, A2 => n175, B1 => DOUT_7_port, B2
                           => n167, ZN => n100);
   U340 : CLKBUF_X1 port map( A => n88, Z => n172);
   U341 : AND2_X1 port map( A1 => add_0_root_add_0_root_add_41_B_0_port, A2 => 
                           fb_1_past_0_port, ZN => 
                           add_0_root_add_0_root_add_41_carry_1_port);
   U342 : XOR2_X1 port map( A => add_0_root_add_0_root_add_41_B_0_port, B => 
                           fb_1_past_0_port, Z => w_0_port);
   U343 : AND2_X1 port map( A1 => DIN(0), A2 => fb_0_past_0_port, ZN => 
                           add_1_root_add_0_root_add_41_carry_1_port);
   U344 : XOR2_X1 port map( A => fb_0_past_0_port, B => DIN(0), Z => 
                           add_0_root_add_0_root_add_41_B_0_port);

end SYN_behavioral;
