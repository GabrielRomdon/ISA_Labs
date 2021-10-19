
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_IIR_FILTER is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_IIR_FILTER;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_IIR_FILTER.all;

entity IIR_FILTER_DW_mult_tc_5 is

   port( a : in std_logic_vector (13 downto 0);  b : in std_logic_vector (14 
         downto 0);  product : out std_logic_vector (28 downto 0));

end IIR_FILTER_DW_mult_tc_5;

architecture SYN_USE_DEFA_ARCH_NAME of IIR_FILTER_DW_mult_tc_5 is

   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
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
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n1, n3, n4, n5, n7, n8, n9, n11, n12, n13, n15, n16, n17, n19, n20, 
      n21, n23, n24, n25, n27, n28, n29, n31, n32, n33, n34, n35, n36, n37, n38
      , n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, 
      n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67
      , n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, 
      n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96
      , n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, 
      n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, 
      n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, 
      n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, 
      n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, 
      n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, 
      n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, 
      n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, 
      n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, 
      n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, 
      n217, n218, n219, n220, n221, n222, n224, n225, n227, n228, n230, n231, 
      n233, n234, n236, n237, n239, n241, n242, n243, n244, n245, n246, n247, 
      n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, 
      n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, 
      n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, 
      n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, 
      n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, 
      n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, 
      n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, 
      n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, 
      n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, 
      n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, 
      n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, 
      n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, 
      n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, 
      n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, 
      n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, 
      n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, 
      n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, 
      n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, 
      n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, 
      n476, n478, n479, n480, n481, n482, n483, n484, n491, n492, n493, n494, 
      n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n519, 
      n551, n552, n553, n554, n555, n556, n_1023, n_1024, n_1025, n_1026, 
      n_1027, n_1028, n_1029, n_1030, n_1031, n_1032, n_1033, n_1034, n_1035, 
      n_1036, n_1037, n_1038, n_1039, n_1040, n_1041 : std_logic;

begin
   
   U31 : XOR2_X1 port map( A => n32, B => n31, Z => product(25));
   U32 : XOR2_X1 port map( A => n58, B => n57, Z => n31);
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
   U38 : FA_X1 port map( A => n87, B => n94, CI => n38, CO => n37, S => n_1023)
                           ;
   U39 : FA_X1 port map( A => n95, B => n104, CI => n39, CO => n38, S => n_1024
                           );
   U40 : FA_X1 port map( A => n105, B => n114, CI => n40, CO => n39, S => 
                           n_1025);
   U41 : FA_X1 port map( A => n115, B => n126, CI => n41, CO => n40, S => 
                           n_1026);
   U42 : FA_X1 port map( A => n127, B => n138, CI => n42, CO => n41, S => 
                           n_1027);
   U43 : FA_X1 port map( A => n139, B => n150, CI => n43, CO => n42, S => 
                           n_1028);
   U44 : FA_X1 port map( A => n151, B => n162, CI => n44, CO => n43, S => 
                           n_1029);
   U45 : FA_X1 port map( A => n163, B => n172, CI => n45, CO => n44, S => 
                           n_1030);
   U46 : FA_X1 port map( A => n173, B => n182, CI => n46, CO => n45, S => 
                           n_1031);
   U47 : FA_X1 port map( A => n183, B => n190, CI => n47, CO => n46, S => 
                           n_1032);
   U48 : FA_X1 port map( A => n191, B => n198, CI => n48, CO => n47, S => 
                           n_1033);
   U49 : FA_X1 port map( A => n199, B => n204, CI => n49, CO => n48, S => 
                           n_1034);
   U50 : FA_X1 port map( A => n205, B => n210, CI => n50, CO => n49, S => 
                           n_1035);
   U51 : FA_X1 port map( A => n211, B => n214, CI => n51, CO => n50, S => 
                           n_1036);
   U52 : FA_X1 port map( A => n215, B => n218, CI => n52, CO => n51, S => 
                           n_1037);
   U53 : FA_X1 port map( A => n219, B => n220, CI => n53, CO => n52, S => 
                           n_1038);
   U54 : FA_X1 port map( A => n221, B => n246, CI => n54, CO => n53, S => 
                           n_1039);
   U55 : FA_X1 port map( A => n350, B => n336, CI => n55, CO => n54, S => 
                           n_1040);
   U56 : HA_X1 port map( A => n351, B => n247, CO => n55, S => n_1041);
   U57 : XOR2_X1 port map( A => n60, B => n56, Z => n57);
   U58 : XOR2_X1 port map( A => n262, B => n248, Z => n56);
   U59 : FA_X1 port map( A => n61, B => n249, CI => n64, CO => n58, S => n59);
   U60 : INV_X1 port map( A => n60, ZN => n61);
   U61 : FA_X1 port map( A => n68, B => n250, CI => n65, CO => n62, S => n63);
   U62 : FA_X1 port map( A => n263, B => n70, CI => n277, CO => n64, S => n65);
   U63 : FA_X1 port map( A => n69, B => n76, CI => n74, CO => n66, S => n67);
   U64 : FA_X1 port map( A => n251, B => n264, CI => n71, CO => n68, S => n69);
   U65 : INV_X1 port map( A => n70, ZN => n71);
   U66 : FA_X1 port map( A => n80, B => n77, CI => n75, CO => n72, S => n73);
   U67 : FA_X1 port map( A => n84, B => n278, CI => n82, CO => n74, S => n75);
   U68 : FA_X1 port map( A => n265, B => n252, CI => n292, CO => n76, S => n77)
                           ;
   U69 : FA_X1 port map( A => n81, B => n83, CI => n88, CO => n78, S => n79);
   U70 : FA_X1 port map( A => n92, B => n85, CI => n90, CO => n80, S => n81);
   U71 : FA_X1 port map( A => n253, B => n266, CI => n279, CO => n82, S => n83)
                           ;
   U72 : INV_X1 port map( A => n84, ZN => n85);
   U73 : FA_X1 port map( A => n96, B => n98, CI => n89, CO => n86, S => n87);
   U74 : FA_X1 port map( A => n91, B => n100, CI => n93, CO => n88, S => n89);
   U75 : FA_X1 port map( A => n267, B => n102, CI => n280, CO => n90, S => n91)
                           ;
   U76 : FA_X1 port map( A => n293, B => n254, CI => n307, CO => n92, S => n93)
                           ;
   U77 : FA_X1 port map( A => n106, B => n99, CI => n97, CO => n94, S => n95);
   U78 : FA_X1 port map( A => n101, B => n110, CI => n108, CO => n96, S => n97)
                           ;
   U79 : FA_X1 port map( A => n103, B => n281, CI => n112, CO => n98, S => n99)
                           ;
   U80 : FA_X1 port map( A => n294, B => n268, CI => n255, CO => n100, S => 
                           n101);
   U81 : INV_X1 port map( A => n102, ZN => n103);
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
   U90 : FA_X1 port map( A => n257, B => n283, CI => n125, CO => n120, S => 
                           n121);
   U91 : FA_X1 port map( A => n309, B => n270, CI => n296, CO => n122, S => 
                           n123);
   U92 : INV_X1 port map( A => n124, ZN => n125);
   U93 : FA_X1 port map( A => n140, B => n131, CI => n129, CO => n126, S => 
                           n127);
   U94 : FA_X1 port map( A => n133, B => n135, CI => n142, CO => n128, S => 
                           n129);
   U95 : FA_X1 port map( A => n146, B => n137, CI => n144, CO => n130, S => 
                           n131);
   U96 : FA_X1 port map( A => n297, B => n323, CI => n148, CO => n132, S => 
                           n133);
   U97 : FA_X1 port map( A => n258, B => n284, CI => n337, CO => n134, S => 
                           n135);
   U98 : XNOR2_X1 port map( A => n310, B => n271, ZN => n137);
   U99 : OR2_X1 port map( A1 => n310, A2 => n271, ZN => n136);
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
   U142 : OAI22_X1 port map( A1 => n556, A2 => n499, B1 => n366, B2 => n28, ZN 
                           => n241);
   U143 : OAI22_X1 port map( A1 => n556, A2 => n353, B1 => n28, B2 => n352, ZN 
                           => n248);
   U144 : OAI22_X1 port map( A1 => n556, A2 => n354, B1 => n28, B2 => n353, ZN 
                           => n249);
   U145 : OAI22_X1 port map( A1 => n556, A2 => n355, B1 => n28, B2 => n354, ZN 
                           => n250);
   U146 : OAI22_X1 port map( A1 => n556, A2 => n356, B1 => n28, B2 => n355, ZN 
                           => n251);
   U147 : OAI22_X1 port map( A1 => n556, A2 => n357, B1 => n28, B2 => n356, ZN 
                           => n252);
   U148 : OAI22_X1 port map( A1 => n556, A2 => n358, B1 => n28, B2 => n357, ZN 
                           => n253);
   U149 : OAI22_X1 port map( A1 => n556, A2 => n359, B1 => n27, B2 => n358, ZN 
                           => n254);
   U150 : OAI22_X1 port map( A1 => n556, A2 => n360, B1 => n27, B2 => n359, ZN 
                           => n255);
   U151 : OAI22_X1 port map( A1 => n556, A2 => n361, B1 => n27, B2 => n360, ZN 
                           => n256);
   U152 : OAI22_X1 port map( A1 => n556, A2 => n362, B1 => n27, B2 => n361, ZN 
                           => n257);
   U153 : OAI22_X1 port map( A1 => n556, A2 => n363, B1 => n27, B2 => n362, ZN 
                           => n258);
   U154 : OAI22_X1 port map( A1 => n556, A2 => n364, B1 => n27, B2 => n363, ZN 
                           => n259);
   U155 : OAI22_X1 port map( A1 => n556, A2 => n365, B1 => n27, B2 => n364, ZN 
                           => n260);
   U156 : AND2_X1 port map( A1 => n29, A2 => n222, ZN => n261);
   U157 : INV_X1 port map( A => n27, ZN => n222);
   U158 : XNOR2_X1 port map( A => n25, B => n464, ZN => n352);
   U159 : XNOR2_X1 port map( A => n25, B => n465, ZN => n353);
   U160 : XNOR2_X1 port map( A => n25, B => n466, ZN => n354);
   U161 : XNOR2_X1 port map( A => n25, B => n467, ZN => n355);
   U162 : XNOR2_X1 port map( A => n25, B => n468, ZN => n356);
   U163 : XNOR2_X1 port map( A => n25, B => n469, ZN => n357);
   U164 : XNOR2_X1 port map( A => n25, B => n470, ZN => n358);
   U165 : XNOR2_X1 port map( A => n25, B => n471, ZN => n359);
   U166 : XNOR2_X1 port map( A => n25, B => n472, ZN => n360);
   U167 : XNOR2_X1 port map( A => n25, B => n473, ZN => n361);
   U168 : XNOR2_X1 port map( A => n25, B => n474, ZN => n362);
   U169 : XNOR2_X1 port map( A => n25, B => n475, ZN => n363);
   U170 : XNOR2_X1 port map( A => n25, B => n476, ZN => n364);
   U171 : XNOR2_X1 port map( A => n25, B => n29, ZN => n365);
   U172 : OR2_X1 port map( A1 => n29, A2 => n499, ZN => n366);
   U174 : OAI22_X1 port map( A1 => n555, A2 => n500, B1 => n382, B2 => n24, ZN 
                           => n242);
   U175 : INV_X1 port map( A => n224, ZN => n262);
   U176 : AOI21_X1 port map( B1 => n555, B2 => n24, A => n367, ZN => n224);
   U177 : OAI22_X1 port map( A1 => n555, A2 => n368, B1 => n24, B2 => n367, ZN 
                           => n60);
   U178 : OAI22_X1 port map( A1 => n555, A2 => n369, B1 => n24, B2 => n368, ZN 
                           => n263);
   U179 : OAI22_X1 port map( A1 => n555, A2 => n370, B1 => n24, B2 => n369, ZN 
                           => n264);
   U180 : OAI22_X1 port map( A1 => n555, A2 => n371, B1 => n24, B2 => n370, ZN 
                           => n265);
   U181 : OAI22_X1 port map( A1 => n555, A2 => n372, B1 => n24, B2 => n371, ZN 
                           => n266);
   U182 : OAI22_X1 port map( A1 => n555, A2 => n373, B1 => n24, B2 => n372, ZN 
                           => n267);
   U183 : OAI22_X1 port map( A1 => n555, A2 => n374, B1 => n24, B2 => n373, ZN 
                           => n268);
   U184 : OAI22_X1 port map( A1 => n555, A2 => n375, B1 => n23, B2 => n374, ZN 
                           => n269);
   U185 : OAI22_X1 port map( A1 => n555, A2 => n376, B1 => n23, B2 => n375, ZN 
                           => n270);
   U186 : OAI22_X1 port map( A1 => n555, A2 => n377, B1 => n23, B2 => n376, ZN 
                           => n271);
   U187 : OAI22_X1 port map( A1 => n555, A2 => n378, B1 => n23, B2 => n377, ZN 
                           => n272);
   U188 : OAI22_X1 port map( A1 => n555, A2 => n379, B1 => n23, B2 => n378, ZN 
                           => n273);
   U189 : OAI22_X1 port map( A1 => n555, A2 => n380, B1 => n23, B2 => n379, ZN 
                           => n274);
   U190 : OAI22_X1 port map( A1 => n555, A2 => n381, B1 => n23, B2 => n380, ZN 
                           => n275);
   U191 : AND2_X1 port map( A1 => n29, A2 => n225, ZN => n276);
   U192 : INV_X1 port map( A => n23, ZN => n225);
   U193 : XNOR2_X1 port map( A => n21, B => n463, ZN => n367);
   U194 : XNOR2_X1 port map( A => n21, B => n464, ZN => n368);
   U195 : XNOR2_X1 port map( A => n21, B => n465, ZN => n369);
   U196 : XNOR2_X1 port map( A => n21, B => n466, ZN => n370);
   U197 : XNOR2_X1 port map( A => n21, B => n467, ZN => n371);
   U198 : XNOR2_X1 port map( A => n21, B => n468, ZN => n372);
   U199 : XNOR2_X1 port map( A => n21, B => n469, ZN => n373);
   U200 : XNOR2_X1 port map( A => n21, B => n470, ZN => n374);
   U201 : XNOR2_X1 port map( A => n21, B => n471, ZN => n375);
   U202 : XNOR2_X1 port map( A => n21, B => n472, ZN => n376);
   U203 : XNOR2_X1 port map( A => n21, B => n473, ZN => n377);
   U204 : XNOR2_X1 port map( A => n21, B => n474, ZN => n378);
   U205 : XNOR2_X1 port map( A => n21, B => n475, ZN => n379);
   U206 : XNOR2_X1 port map( A => n21, B => n476, ZN => n380);
   U207 : XNOR2_X1 port map( A => n21, B => n29, ZN => n381);
   U208 : OR2_X1 port map( A1 => n29, A2 => n500, ZN => n382);
   U210 : OAI22_X1 port map( A1 => n554, A2 => n501, B1 => n398, B2 => n20, ZN 
                           => n243);
   U211 : INV_X1 port map( A => n227, ZN => n277);
   U212 : AOI21_X1 port map( B1 => n554, B2 => n20, A => n383, ZN => n227);
   U213 : OAI22_X1 port map( A1 => n554, A2 => n384, B1 => n20, B2 => n383, ZN 
                           => n70);
   U214 : OAI22_X1 port map( A1 => n554, A2 => n385, B1 => n20, B2 => n384, ZN 
                           => n278);
   U215 : OAI22_X1 port map( A1 => n554, A2 => n386, B1 => n20, B2 => n385, ZN 
                           => n279);
   U216 : OAI22_X1 port map( A1 => n554, A2 => n387, B1 => n20, B2 => n386, ZN 
                           => n280);
   U217 : OAI22_X1 port map( A1 => n554, A2 => n388, B1 => n20, B2 => n387, ZN 
                           => n281);
   U218 : OAI22_X1 port map( A1 => n554, A2 => n389, B1 => n20, B2 => n388, ZN 
                           => n282);
   U219 : OAI22_X1 port map( A1 => n554, A2 => n390, B1 => n20, B2 => n389, ZN 
                           => n283);
   U220 : OAI22_X1 port map( A1 => n554, A2 => n391, B1 => n19, B2 => n390, ZN 
                           => n284);
   U221 : OAI22_X1 port map( A1 => n554, A2 => n392, B1 => n19, B2 => n391, ZN 
                           => n285);
   U222 : OAI22_X1 port map( A1 => n554, A2 => n393, B1 => n19, B2 => n392, ZN 
                           => n286);
   U223 : OAI22_X1 port map( A1 => n554, A2 => n394, B1 => n19, B2 => n393, ZN 
                           => n287);
   U224 : OAI22_X1 port map( A1 => n554, A2 => n395, B1 => n19, B2 => n394, ZN 
                           => n288);
   U225 : OAI22_X1 port map( A1 => n554, A2 => n396, B1 => n19, B2 => n395, ZN 
                           => n289);
   U226 : OAI22_X1 port map( A1 => n554, A2 => n397, B1 => n19, B2 => n396, ZN 
                           => n290);
   U227 : AND2_X1 port map( A1 => n29, A2 => n228, ZN => n291);
   U228 : INV_X1 port map( A => n19, ZN => n228);
   U229 : XNOR2_X1 port map( A => n17, B => n463, ZN => n383);
   U230 : XNOR2_X1 port map( A => n17, B => n464, ZN => n384);
   U231 : XNOR2_X1 port map( A => n17, B => n465, ZN => n385);
   U232 : XNOR2_X1 port map( A => n17, B => n466, ZN => n386);
   U233 : XNOR2_X1 port map( A => n17, B => n467, ZN => n387);
   U234 : XNOR2_X1 port map( A => n17, B => n468, ZN => n388);
   U235 : XNOR2_X1 port map( A => n17, B => n469, ZN => n389);
   U236 : XNOR2_X1 port map( A => n17, B => n470, ZN => n390);
   U237 : XNOR2_X1 port map( A => n17, B => n471, ZN => n391);
   U238 : XNOR2_X1 port map( A => n17, B => n472, ZN => n392);
   U239 : XNOR2_X1 port map( A => n17, B => n473, ZN => n393);
   U240 : XNOR2_X1 port map( A => n17, B => n474, ZN => n394);
   U241 : XNOR2_X1 port map( A => n17, B => n475, ZN => n395);
   U242 : XNOR2_X1 port map( A => n17, B => n476, ZN => n396);
   U243 : XNOR2_X1 port map( A => n17, B => n29, ZN => n397);
   U244 : OR2_X1 port map( A1 => n29, A2 => n501, ZN => n398);
   U246 : OAI22_X1 port map( A1 => n553, A2 => n502, B1 => n414, B2 => n16, ZN 
                           => n244);
   U247 : INV_X1 port map( A => n230, ZN => n292);
   U248 : AOI21_X1 port map( B1 => n553, B2 => n16, A => n399, ZN => n230);
   U249 : OAI22_X1 port map( A1 => n553, A2 => n400, B1 => n16, B2 => n399, ZN 
                           => n84);
   U250 : OAI22_X1 port map( A1 => n553, A2 => n401, B1 => n16, B2 => n400, ZN 
                           => n293);
   U251 : OAI22_X1 port map( A1 => n553, A2 => n402, B1 => n16, B2 => n401, ZN 
                           => n294);
   U252 : OAI22_X1 port map( A1 => n553, A2 => n403, B1 => n16, B2 => n402, ZN 
                           => n295);
   U253 : OAI22_X1 port map( A1 => n553, A2 => n404, B1 => n16, B2 => n403, ZN 
                           => n296);
   U254 : OAI22_X1 port map( A1 => n553, A2 => n405, B1 => n16, B2 => n404, ZN 
                           => n297);
   U255 : OAI22_X1 port map( A1 => n553, A2 => n406, B1 => n16, B2 => n405, ZN 
                           => n298);
   U256 : OAI22_X1 port map( A1 => n553, A2 => n407, B1 => n15, B2 => n406, ZN 
                           => n299);
   U257 : OAI22_X1 port map( A1 => n553, A2 => n408, B1 => n15, B2 => n407, ZN 
                           => n300);
   U258 : OAI22_X1 port map( A1 => n553, A2 => n409, B1 => n15, B2 => n408, ZN 
                           => n301);
   U259 : OAI22_X1 port map( A1 => n553, A2 => n410, B1 => n15, B2 => n409, ZN 
                           => n302);
   U260 : OAI22_X1 port map( A1 => n553, A2 => n411, B1 => n15, B2 => n410, ZN 
                           => n303);
   U261 : OAI22_X1 port map( A1 => n553, A2 => n412, B1 => n15, B2 => n411, ZN 
                           => n304);
   U262 : OAI22_X1 port map( A1 => n553, A2 => n413, B1 => n15, B2 => n412, ZN 
                           => n305);
   U263 : AND2_X1 port map( A1 => n29, A2 => n231, ZN => n306);
   U264 : INV_X1 port map( A => n15, ZN => n231);
   U265 : XNOR2_X1 port map( A => n13, B => n463, ZN => n399);
   U266 : XNOR2_X1 port map( A => n13, B => n464, ZN => n400);
   U267 : XNOR2_X1 port map( A => n13, B => n465, ZN => n401);
   U268 : XNOR2_X1 port map( A => n13, B => n466, ZN => n402);
   U269 : XNOR2_X1 port map( A => n13, B => n467, ZN => n403);
   U270 : XNOR2_X1 port map( A => n13, B => n468, ZN => n404);
   U271 : XNOR2_X1 port map( A => n13, B => n469, ZN => n405);
   U272 : XNOR2_X1 port map( A => n13, B => n470, ZN => n406);
   U273 : XNOR2_X1 port map( A => n13, B => n471, ZN => n407);
   U274 : XNOR2_X1 port map( A => n13, B => n472, ZN => n408);
   U275 : XNOR2_X1 port map( A => n13, B => n473, ZN => n409);
   U276 : XNOR2_X1 port map( A => n13, B => n474, ZN => n410);
   U277 : XNOR2_X1 port map( A => n13, B => n475, ZN => n411);
   U278 : XNOR2_X1 port map( A => n13, B => n476, ZN => n412);
   U279 : XNOR2_X1 port map( A => n13, B => n29, ZN => n413);
   U280 : OR2_X1 port map( A1 => n29, A2 => n502, ZN => n414);
   U282 : OAI22_X1 port map( A1 => n552, A2 => n503, B1 => n430, B2 => n12, ZN 
                           => n245);
   U283 : INV_X1 port map( A => n233, ZN => n307);
   U284 : AOI21_X1 port map( B1 => n552, B2 => n12, A => n415, ZN => n233);
   U285 : OAI22_X1 port map( A1 => n552, A2 => n416, B1 => n12, B2 => n415, ZN 
                           => n102);
   U286 : OAI22_X1 port map( A1 => n552, A2 => n417, B1 => n12, B2 => n416, ZN 
                           => n308);
   U287 : OAI22_X1 port map( A1 => n552, A2 => n418, B1 => n12, B2 => n417, ZN 
                           => n309);
   U288 : OAI22_X1 port map( A1 => n552, A2 => n419, B1 => n12, B2 => n418, ZN 
                           => n310);
   U289 : OAI22_X1 port map( A1 => n552, A2 => n420, B1 => n12, B2 => n419, ZN 
                           => n311);
   U290 : OAI22_X1 port map( A1 => n552, A2 => n421, B1 => n12, B2 => n420, ZN 
                           => n312);
   U291 : OAI22_X1 port map( A1 => n552, A2 => n422, B1 => n12, B2 => n421, ZN 
                           => n313);
   U292 : OAI22_X1 port map( A1 => n552, A2 => n423, B1 => n11, B2 => n422, ZN 
                           => n314);
   U293 : OAI22_X1 port map( A1 => n552, A2 => n424, B1 => n11, B2 => n423, ZN 
                           => n315);
   U294 : OAI22_X1 port map( A1 => n552, A2 => n425, B1 => n11, B2 => n424, ZN 
                           => n316);
   U295 : OAI22_X1 port map( A1 => n552, A2 => n426, B1 => n11, B2 => n425, ZN 
                           => n317);
   U296 : OAI22_X1 port map( A1 => n552, A2 => n427, B1 => n11, B2 => n426, ZN 
                           => n318);
   U297 : OAI22_X1 port map( A1 => n552, A2 => n428, B1 => n11, B2 => n427, ZN 
                           => n319);
   U298 : OAI22_X1 port map( A1 => n552, A2 => n429, B1 => n11, B2 => n428, ZN 
                           => n320);
   U299 : AND2_X1 port map( A1 => n29, A2 => n234, ZN => n321);
   U300 : INV_X1 port map( A => n11, ZN => n234);
   U301 : XNOR2_X1 port map( A => n9, B => n463, ZN => n415);
   U302 : XNOR2_X1 port map( A => n9, B => n464, ZN => n416);
   U303 : XNOR2_X1 port map( A => n9, B => n465, ZN => n417);
   U304 : XNOR2_X1 port map( A => n9, B => n466, ZN => n418);
   U305 : XNOR2_X1 port map( A => n9, B => n467, ZN => n419);
   U306 : XNOR2_X1 port map( A => n9, B => n468, ZN => n420);
   U307 : XNOR2_X1 port map( A => n9, B => n469, ZN => n421);
   U308 : XNOR2_X1 port map( A => n9, B => n470, ZN => n422);
   U309 : XNOR2_X1 port map( A => n9, B => n471, ZN => n423);
   U310 : XNOR2_X1 port map( A => n9, B => n472, ZN => n424);
   U311 : XNOR2_X1 port map( A => n9, B => n473, ZN => n425);
   U312 : XNOR2_X1 port map( A => n9, B => n474, ZN => n426);
   U313 : XNOR2_X1 port map( A => n9, B => n475, ZN => n427);
   U314 : XNOR2_X1 port map( A => n9, B => n476, ZN => n428);
   U315 : XNOR2_X1 port map( A => n9, B => n29, ZN => n429);
   U316 : OR2_X1 port map( A1 => n29, A2 => n503, ZN => n430);
   U318 : OAI22_X1 port map( A1 => n551, A2 => n504, B1 => n446, B2 => n8, ZN 
                           => n246);
   U319 : INV_X1 port map( A => n236, ZN => n322);
   U320 : AOI21_X1 port map( B1 => n551, B2 => n8, A => n431, ZN => n236);
   U321 : OAI22_X1 port map( A1 => n551, A2 => n432, B1 => n8, B2 => n431, ZN 
                           => n124);
   U322 : OAI22_X1 port map( A1 => n551, A2 => n433, B1 => n8, B2 => n432, ZN 
                           => n323);
   U323 : OAI22_X1 port map( A1 => n551, A2 => n434, B1 => n8, B2 => n433, ZN 
                           => n324);
   U324 : OAI22_X1 port map( A1 => n551, A2 => n435, B1 => n8, B2 => n434, ZN 
                           => n325);
   U325 : OAI22_X1 port map( A1 => n551, A2 => n436, B1 => n8, B2 => n435, ZN 
                           => n326);
   U326 : OAI22_X1 port map( A1 => n551, A2 => n437, B1 => n8, B2 => n436, ZN 
                           => n327);
   U327 : OAI22_X1 port map( A1 => n551, A2 => n438, B1 => n8, B2 => n437, ZN 
                           => n328);
   U328 : OAI22_X1 port map( A1 => n551, A2 => n439, B1 => n7, B2 => n438, ZN 
                           => n329);
   U329 : OAI22_X1 port map( A1 => n551, A2 => n440, B1 => n7, B2 => n439, ZN 
                           => n330);
   U330 : OAI22_X1 port map( A1 => n551, A2 => n441, B1 => n7, B2 => n440, ZN 
                           => n331);
   U331 : OAI22_X1 port map( A1 => n551, A2 => n442, B1 => n7, B2 => n441, ZN 
                           => n332);
   U332 : OAI22_X1 port map( A1 => n551, A2 => n443, B1 => n7, B2 => n442, ZN 
                           => n333);
   U333 : OAI22_X1 port map( A1 => n551, A2 => n444, B1 => n7, B2 => n443, ZN 
                           => n334);
   U334 : OAI22_X1 port map( A1 => n551, A2 => n445, B1 => n7, B2 => n444, ZN 
                           => n335);
   U335 : AND2_X1 port map( A1 => n29, A2 => n237, ZN => n336);
   U336 : INV_X1 port map( A => n7, ZN => n237);
   U337 : XNOR2_X1 port map( A => n5, B => n463, ZN => n431);
   U338 : XNOR2_X1 port map( A => n5, B => n464, ZN => n432);
   U339 : XNOR2_X1 port map( A => n5, B => n465, ZN => n433);
   U340 : XNOR2_X1 port map( A => n5, B => n466, ZN => n434);
   U341 : XNOR2_X1 port map( A => n5, B => n467, ZN => n435);
   U342 : XNOR2_X1 port map( A => n5, B => n468, ZN => n436);
   U343 : XNOR2_X1 port map( A => n5, B => n469, ZN => n437);
   U344 : XNOR2_X1 port map( A => n5, B => n470, ZN => n438);
   U345 : XNOR2_X1 port map( A => n5, B => n471, ZN => n439);
   U346 : XNOR2_X1 port map( A => n5, B => n472, ZN => n440);
   U347 : XNOR2_X1 port map( A => n5, B => n473, ZN => n441);
   U348 : XNOR2_X1 port map( A => n5, B => n474, ZN => n442);
   U349 : XNOR2_X1 port map( A => n5, B => n475, ZN => n443);
   U350 : XNOR2_X1 port map( A => n5, B => n476, ZN => n444);
   U351 : XNOR2_X1 port map( A => n5, B => n29, ZN => n445);
   U352 : OR2_X1 port map( A1 => n29, A2 => n504, ZN => n446);
   U354 : OAI22_X1 port map( A1 => n491, A2 => n505, B1 => n462, B2 => n4, ZN 
                           => n247);
   U355 : INV_X1 port map( A => n239, ZN => n337);
   U356 : AOI21_X1 port map( B1 => n491, B2 => n4, A => n447, ZN => n239);
   U357 : OAI22_X1 port map( A1 => n491, A2 => n448, B1 => n447, B2 => n4, ZN 
                           => n338);
   U358 : OAI22_X1 port map( A1 => n491, A2 => n449, B1 => n448, B2 => n4, ZN 
                           => n339);
   U359 : OAI22_X1 port map( A1 => n491, A2 => n450, B1 => n449, B2 => n4, ZN 
                           => n340);
   U360 : OAI22_X1 port map( A1 => n491, A2 => n451, B1 => n450, B2 => n4, ZN 
                           => n341);
   U361 : OAI22_X1 port map( A1 => n491, A2 => n452, B1 => n451, B2 => n4, ZN 
                           => n342);
   U362 : OAI22_X1 port map( A1 => n491, A2 => n453, B1 => n452, B2 => n4, ZN 
                           => n343);
   U363 : OAI22_X1 port map( A1 => n491, A2 => n454, B1 => n453, B2 => n4, ZN 
                           => n344);
   U364 : OAI22_X1 port map( A1 => n491, A2 => n455, B1 => n454, B2 => n3, ZN 
                           => n345);
   U365 : OAI22_X1 port map( A1 => n491, A2 => n456, B1 => n455, B2 => n3, ZN 
                           => n346);
   U366 : OAI22_X1 port map( A1 => n491, A2 => n457, B1 => n456, B2 => n3, ZN 
                           => n347);
   U367 : OAI22_X1 port map( A1 => n491, A2 => n458, B1 => n457, B2 => n3, ZN 
                           => n348);
   U368 : OAI22_X1 port map( A1 => n491, A2 => n459, B1 => n458, B2 => n3, ZN 
                           => n349);
   U369 : OAI22_X1 port map( A1 => n491, A2 => n460, B1 => n459, B2 => n3, ZN 
                           => n350);
   U370 : OAI22_X1 port map( A1 => n491, A2 => n461, B1 => n460, B2 => n3, ZN 
                           => n351);
   U371 : XNOR2_X1 port map( A => n1, B => n463, ZN => n447);
   U372 : XNOR2_X1 port map( A => n1, B => n464, ZN => n448);
   U373 : XNOR2_X1 port map( A => n1, B => n465, ZN => n449);
   U374 : XNOR2_X1 port map( A => n1, B => n466, ZN => n450);
   U375 : XNOR2_X1 port map( A => n1, B => n467, ZN => n451);
   U376 : XNOR2_X1 port map( A => n1, B => n468, ZN => n452);
   U377 : XNOR2_X1 port map( A => n1, B => n469, ZN => n453);
   U378 : XNOR2_X1 port map( A => n1, B => n470, ZN => n454);
   U379 : XNOR2_X1 port map( A => n1, B => n471, ZN => n455);
   U380 : XNOR2_X1 port map( A => n1, B => n472, ZN => n456);
   U381 : XNOR2_X1 port map( A => n1, B => n473, ZN => n457);
   U382 : XNOR2_X1 port map( A => n1, B => n474, ZN => n458);
   U383 : XNOR2_X1 port map( A => n1, B => n475, ZN => n459);
   U384 : XNOR2_X1 port map( A => n1, B => n476, ZN => n460);
   U385 : XNOR2_X1 port map( A => n1, B => n29, ZN => n461);
   U386 : OR2_X1 port map( A1 => n29, A2 => n505, ZN => n462);
   U403 : INV_X1 port map( A => n25, ZN => n499);
   U405 : INV_X1 port map( A => n21, ZN => n500);
   U407 : INV_X1 port map( A => n17, ZN => n501);
   U409 : INV_X1 port map( A => n13, ZN => n502);
   U411 : INV_X1 port map( A => n9, ZN => n503);
   U413 : INV_X1 port map( A => n5, ZN => n504);
   U415 : INV_X1 port map( A => n1, ZN => n505);
   U417 : XOR2_X1 port map( A => a(12), B => a(13), Z => n478);
   U418 : XNOR2_X1 port map( A => a(12), B => a(11), ZN => n492);
   U420 : XOR2_X1 port map( A => a(10), B => a(11), Z => n479);
   U421 : XNOR2_X1 port map( A => a(10), B => a(9), ZN => n493);
   U423 : XOR2_X1 port map( A => a(8), B => a(9), Z => n480);
   U424 : XNOR2_X1 port map( A => a(8), B => a(7), ZN => n494);
   U426 : XOR2_X1 port map( A => a(6), B => a(7), Z => n481);
   U427 : XNOR2_X1 port map( A => a(6), B => a(5), ZN => n495);
   U429 : XOR2_X1 port map( A => a(4), B => a(5), Z => n482);
   U430 : XNOR2_X1 port map( A => a(4), B => a(3), ZN => n496);
   U432 : XOR2_X1 port map( A => a(2), B => a(3), Z => n483);
   U433 : XNOR2_X1 port map( A => a(2), B => a(1), ZN => n497);
   U434 : NAND2_X1 port map( A1 => n484, A2 => n498, ZN => n519);
   U435 : XOR2_X1 port map( A => a(0), B => a(1), Z => n484);
   U436 : INV_X1 port map( A => a(0), ZN => n498);
   U439 : NAND2_X1 port map( A1 => n483, A2 => n497, ZN => n551);
   U440 : NAND2_X1 port map( A1 => n482, A2 => n496, ZN => n552);
   U441 : NAND2_X1 port map( A1 => n481, A2 => n495, ZN => n553);
   U442 : NAND2_X1 port map( A1 => n480, A2 => n494, ZN => n554);
   U443 : NAND2_X1 port map( A1 => n479, A2 => n493, ZN => n555);
   U444 : NAND2_X1 port map( A1 => n478, A2 => n492, ZN => n556);
   U445 : BUF_X1 port map( A => n497, Z => n8);
   U446 : BUF_X1 port map( A => n496, Z => n12);
   U447 : BUF_X1 port map( A => n495, Z => n16);
   U448 : BUF_X1 port map( A => n494, Z => n20);
   U449 : BUF_X1 port map( A => n493, Z => n24);
   U450 : CLKBUF_X1 port map( A => n497, Z => n7);
   U451 : CLKBUF_X1 port map( A => n496, Z => n11);
   U452 : CLKBUF_X1 port map( A => n495, Z => n15);
   U453 : CLKBUF_X1 port map( A => n494, Z => n19);
   U454 : CLKBUF_X1 port map( A => n493, Z => n23);
   U455 : BUF_X1 port map( A => n492, Z => n27);
   U456 : CLKBUF_X1 port map( A => n492, Z => n28);
   U457 : BUF_X1 port map( A => n498, Z => n4);
   U458 : BUF_X1 port map( A => n498, Z => n3);
   U459 : BUF_X1 port map( A => n519, Z => n491);
   U460 : BUF_X1 port map( A => b(1), Z => n476);
   U461 : BUF_X1 port map( A => b(3), Z => n474);
   U462 : BUF_X1 port map( A => b(2), Z => n475);
   U463 : BUF_X1 port map( A => b(4), Z => n473);
   U464 : BUF_X1 port map( A => b(5), Z => n472);
   U465 : BUF_X1 port map( A => b(6), Z => n471);
   U466 : BUF_X1 port map( A => b(8), Z => n469);
   U467 : BUF_X1 port map( A => b(7), Z => n470);
   U468 : BUF_X1 port map( A => b(9), Z => n468);
   U469 : BUF_X1 port map( A => b(11), Z => n466);
   U470 : BUF_X1 port map( A => b(10), Z => n467);
   U471 : BUF_X1 port map( A => b(13), Z => n464);
   U472 : BUF_X1 port map( A => b(12), Z => n465);
   U473 : BUF_X1 port map( A => b(14), Z => n463);
   U474 : BUF_X1 port map( A => b(0), Z => n29);
   U475 : BUF_X1 port map( A => a(1), Z => n1);
   U476 : BUF_X1 port map( A => a(3), Z => n5);
   U477 : BUF_X1 port map( A => a(5), Z => n9);
   U478 : BUF_X1 port map( A => a(7), Z => n13);
   U479 : BUF_X1 port map( A => a(9), Z => n17);
   U480 : BUF_X1 port map( A => a(11), Z => n21);
   U481 : BUF_X1 port map( A => a(13), Z => n25);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_IIR_FILTER.all;

entity IIR_FILTER_DW_mult_tc_4 is

   port( a : in std_logic_vector (13 downto 0);  b : in std_logic_vector (14 
         downto 0);  product : out std_logic_vector (28 downto 0));

end IIR_FILTER_DW_mult_tc_4;

architecture SYN_USE_DEFA_ARCH_NAME of IIR_FILTER_DW_mult_tc_4 is

   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
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
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n1, n3, n4, n5, n7, n8, n9, n11, n12, n13, n15, n16, n17, n19, n20, 
      n21, n23, n24, n25, n27, n28, n29, n31, n32, n33, n34, n35, n36, n37, n38
      , n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, 
      n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67
      , n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, 
      n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96
      , n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, 
      n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, 
      n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, 
      n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, 
      n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, 
      n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, 
      n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, 
      n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, 
      n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, 
      n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, 
      n217, n218, n219, n220, n221, n222, n224, n225, n227, n228, n230, n231, 
      n233, n234, n236, n237, n239, n241, n242, n243, n244, n245, n246, n247, 
      n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, 
      n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, 
      n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, 
      n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, 
      n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, 
      n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, 
      n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, 
      n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, 
      n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, 
      n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, 
      n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, 
      n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, 
      n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, 
      n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, 
      n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, 
      n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, 
      n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, 
      n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, 
      n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, 
      n476, n478, n479, n480, n481, n482, n483, n484, n491, n492, n493, n494, 
      n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n519, 
      n551, n552, n553, n554, n555, n556, n_1065, n_1066, n_1067, n_1068, 
      n_1069, n_1070, n_1071, n_1072, n_1073, n_1074, n_1075, n_1076, n_1077, 
      n_1078, n_1079, n_1080, n_1081, n_1082, n_1083 : std_logic;

begin
   
   U31 : XOR2_X1 port map( A => n32, B => n31, Z => product(25));
   U32 : XOR2_X1 port map( A => n58, B => n57, Z => n31);
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
   U38 : FA_X1 port map( A => n87, B => n94, CI => n38, CO => n37, S => n_1065)
                           ;
   U39 : FA_X1 port map( A => n95, B => n104, CI => n39, CO => n38, S => n_1066
                           );
   U40 : FA_X1 port map( A => n105, B => n114, CI => n40, CO => n39, S => 
                           n_1067);
   U41 : FA_X1 port map( A => n115, B => n126, CI => n41, CO => n40, S => 
                           n_1068);
   U42 : FA_X1 port map( A => n127, B => n138, CI => n42, CO => n41, S => 
                           n_1069);
   U43 : FA_X1 port map( A => n139, B => n150, CI => n43, CO => n42, S => 
                           n_1070);
   U44 : FA_X1 port map( A => n151, B => n162, CI => n44, CO => n43, S => 
                           n_1071);
   U45 : FA_X1 port map( A => n163, B => n172, CI => n45, CO => n44, S => 
                           n_1072);
   U46 : FA_X1 port map( A => n173, B => n182, CI => n46, CO => n45, S => 
                           n_1073);
   U47 : FA_X1 port map( A => n183, B => n190, CI => n47, CO => n46, S => 
                           n_1074);
   U48 : FA_X1 port map( A => n191, B => n198, CI => n48, CO => n47, S => 
                           n_1075);
   U49 : FA_X1 port map( A => n199, B => n204, CI => n49, CO => n48, S => 
                           n_1076);
   U50 : FA_X1 port map( A => n205, B => n210, CI => n50, CO => n49, S => 
                           n_1077);
   U51 : FA_X1 port map( A => n211, B => n214, CI => n51, CO => n50, S => 
                           n_1078);
   U52 : FA_X1 port map( A => n215, B => n218, CI => n52, CO => n51, S => 
                           n_1079);
   U53 : FA_X1 port map( A => n219, B => n220, CI => n53, CO => n52, S => 
                           n_1080);
   U54 : FA_X1 port map( A => n221, B => n246, CI => n54, CO => n53, S => 
                           n_1081);
   U55 : FA_X1 port map( A => n350, B => n336, CI => n55, CO => n54, S => 
                           n_1082);
   U56 : HA_X1 port map( A => n351, B => n247, CO => n55, S => n_1083);
   U57 : XOR2_X1 port map( A => n60, B => n56, Z => n57);
   U58 : XOR2_X1 port map( A => n262, B => n248, Z => n56);
   U59 : FA_X1 port map( A => n61, B => n249, CI => n64, CO => n58, S => n59);
   U60 : INV_X1 port map( A => n60, ZN => n61);
   U61 : FA_X1 port map( A => n68, B => n250, CI => n65, CO => n62, S => n63);
   U62 : FA_X1 port map( A => n263, B => n70, CI => n277, CO => n64, S => n65);
   U63 : FA_X1 port map( A => n69, B => n76, CI => n74, CO => n66, S => n67);
   U64 : FA_X1 port map( A => n251, B => n264, CI => n71, CO => n68, S => n69);
   U65 : INV_X1 port map( A => n70, ZN => n71);
   U66 : FA_X1 port map( A => n80, B => n77, CI => n75, CO => n72, S => n73);
   U67 : FA_X1 port map( A => n84, B => n278, CI => n82, CO => n74, S => n75);
   U68 : FA_X1 port map( A => n265, B => n252, CI => n292, CO => n76, S => n77)
                           ;
   U69 : FA_X1 port map( A => n81, B => n83, CI => n88, CO => n78, S => n79);
   U70 : FA_X1 port map( A => n92, B => n85, CI => n90, CO => n80, S => n81);
   U71 : FA_X1 port map( A => n253, B => n266, CI => n279, CO => n82, S => n83)
                           ;
   U72 : INV_X1 port map( A => n84, ZN => n85);
   U73 : FA_X1 port map( A => n96, B => n98, CI => n89, CO => n86, S => n87);
   U74 : FA_X1 port map( A => n91, B => n100, CI => n93, CO => n88, S => n89);
   U75 : FA_X1 port map( A => n267, B => n102, CI => n280, CO => n90, S => n91)
                           ;
   U76 : FA_X1 port map( A => n293, B => n254, CI => n307, CO => n92, S => n93)
                           ;
   U77 : FA_X1 port map( A => n106, B => n99, CI => n97, CO => n94, S => n95);
   U78 : FA_X1 port map( A => n101, B => n110, CI => n108, CO => n96, S => n97)
                           ;
   U79 : FA_X1 port map( A => n103, B => n281, CI => n112, CO => n98, S => n99)
                           ;
   U80 : FA_X1 port map( A => n294, B => n268, CI => n255, CO => n100, S => 
                           n101);
   U81 : INV_X1 port map( A => n102, ZN => n103);
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
   U90 : FA_X1 port map( A => n257, B => n283, CI => n125, CO => n120, S => 
                           n121);
   U91 : FA_X1 port map( A => n309, B => n270, CI => n296, CO => n122, S => 
                           n123);
   U92 : INV_X1 port map( A => n124, ZN => n125);
   U93 : FA_X1 port map( A => n140, B => n131, CI => n129, CO => n126, S => 
                           n127);
   U94 : FA_X1 port map( A => n133, B => n135, CI => n142, CO => n128, S => 
                           n129);
   U95 : FA_X1 port map( A => n146, B => n137, CI => n144, CO => n130, S => 
                           n131);
   U96 : FA_X1 port map( A => n297, B => n323, CI => n148, CO => n132, S => 
                           n133);
   U97 : FA_X1 port map( A => n258, B => n284, CI => n337, CO => n134, S => 
                           n135);
   U98 : XNOR2_X1 port map( A => n310, B => n271, ZN => n137);
   U99 : OR2_X1 port map( A1 => n310, A2 => n271, ZN => n136);
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
   U142 : OAI22_X1 port map( A1 => n556, A2 => n499, B1 => n366, B2 => n28, ZN 
                           => n241);
   U143 : OAI22_X1 port map( A1 => n556, A2 => n353, B1 => n28, B2 => n352, ZN 
                           => n248);
   U144 : OAI22_X1 port map( A1 => n556, A2 => n354, B1 => n28, B2 => n353, ZN 
                           => n249);
   U145 : OAI22_X1 port map( A1 => n556, A2 => n355, B1 => n28, B2 => n354, ZN 
                           => n250);
   U146 : OAI22_X1 port map( A1 => n556, A2 => n356, B1 => n28, B2 => n355, ZN 
                           => n251);
   U147 : OAI22_X1 port map( A1 => n556, A2 => n357, B1 => n28, B2 => n356, ZN 
                           => n252);
   U148 : OAI22_X1 port map( A1 => n556, A2 => n358, B1 => n28, B2 => n357, ZN 
                           => n253);
   U149 : OAI22_X1 port map( A1 => n556, A2 => n359, B1 => n27, B2 => n358, ZN 
                           => n254);
   U150 : OAI22_X1 port map( A1 => n556, A2 => n360, B1 => n27, B2 => n359, ZN 
                           => n255);
   U151 : OAI22_X1 port map( A1 => n556, A2 => n361, B1 => n27, B2 => n360, ZN 
                           => n256);
   U152 : OAI22_X1 port map( A1 => n556, A2 => n362, B1 => n27, B2 => n361, ZN 
                           => n257);
   U153 : OAI22_X1 port map( A1 => n556, A2 => n363, B1 => n27, B2 => n362, ZN 
                           => n258);
   U154 : OAI22_X1 port map( A1 => n556, A2 => n364, B1 => n27, B2 => n363, ZN 
                           => n259);
   U155 : OAI22_X1 port map( A1 => n556, A2 => n365, B1 => n27, B2 => n364, ZN 
                           => n260);
   U156 : AND2_X1 port map( A1 => n29, A2 => n222, ZN => n261);
   U157 : INV_X1 port map( A => n27, ZN => n222);
   U158 : XNOR2_X1 port map( A => n25, B => n464, ZN => n352);
   U159 : XNOR2_X1 port map( A => n25, B => n465, ZN => n353);
   U160 : XNOR2_X1 port map( A => n25, B => n466, ZN => n354);
   U161 : XNOR2_X1 port map( A => n25, B => n467, ZN => n355);
   U162 : XNOR2_X1 port map( A => n25, B => n468, ZN => n356);
   U163 : XNOR2_X1 port map( A => n25, B => n469, ZN => n357);
   U164 : XNOR2_X1 port map( A => n25, B => n470, ZN => n358);
   U165 : XNOR2_X1 port map( A => n25, B => n471, ZN => n359);
   U166 : XNOR2_X1 port map( A => n25, B => n472, ZN => n360);
   U167 : XNOR2_X1 port map( A => n25, B => n473, ZN => n361);
   U168 : XNOR2_X1 port map( A => n25, B => n474, ZN => n362);
   U169 : XNOR2_X1 port map( A => n25, B => n475, ZN => n363);
   U170 : XNOR2_X1 port map( A => n25, B => n476, ZN => n364);
   U171 : XNOR2_X1 port map( A => n25, B => n29, ZN => n365);
   U172 : OR2_X1 port map( A1 => n29, A2 => n499, ZN => n366);
   U174 : OAI22_X1 port map( A1 => n555, A2 => n500, B1 => n382, B2 => n24, ZN 
                           => n242);
   U175 : INV_X1 port map( A => n224, ZN => n262);
   U176 : AOI21_X1 port map( B1 => n555, B2 => n24, A => n367, ZN => n224);
   U177 : OAI22_X1 port map( A1 => n555, A2 => n368, B1 => n24, B2 => n367, ZN 
                           => n60);
   U178 : OAI22_X1 port map( A1 => n555, A2 => n369, B1 => n24, B2 => n368, ZN 
                           => n263);
   U179 : OAI22_X1 port map( A1 => n555, A2 => n370, B1 => n24, B2 => n369, ZN 
                           => n264);
   U180 : OAI22_X1 port map( A1 => n555, A2 => n371, B1 => n24, B2 => n370, ZN 
                           => n265);
   U181 : OAI22_X1 port map( A1 => n555, A2 => n372, B1 => n24, B2 => n371, ZN 
                           => n266);
   U182 : OAI22_X1 port map( A1 => n555, A2 => n373, B1 => n24, B2 => n372, ZN 
                           => n267);
   U183 : OAI22_X1 port map( A1 => n555, A2 => n374, B1 => n24, B2 => n373, ZN 
                           => n268);
   U184 : OAI22_X1 port map( A1 => n555, A2 => n375, B1 => n23, B2 => n374, ZN 
                           => n269);
   U185 : OAI22_X1 port map( A1 => n555, A2 => n376, B1 => n23, B2 => n375, ZN 
                           => n270);
   U186 : OAI22_X1 port map( A1 => n555, A2 => n377, B1 => n23, B2 => n376, ZN 
                           => n271);
   U187 : OAI22_X1 port map( A1 => n555, A2 => n378, B1 => n23, B2 => n377, ZN 
                           => n272);
   U188 : OAI22_X1 port map( A1 => n555, A2 => n379, B1 => n23, B2 => n378, ZN 
                           => n273);
   U189 : OAI22_X1 port map( A1 => n555, A2 => n380, B1 => n23, B2 => n379, ZN 
                           => n274);
   U190 : OAI22_X1 port map( A1 => n555, A2 => n381, B1 => n23, B2 => n380, ZN 
                           => n275);
   U191 : AND2_X1 port map( A1 => n29, A2 => n225, ZN => n276);
   U192 : INV_X1 port map( A => n23, ZN => n225);
   U193 : XNOR2_X1 port map( A => n21, B => n463, ZN => n367);
   U194 : XNOR2_X1 port map( A => n21, B => n464, ZN => n368);
   U195 : XNOR2_X1 port map( A => n21, B => n465, ZN => n369);
   U196 : XNOR2_X1 port map( A => n21, B => n466, ZN => n370);
   U197 : XNOR2_X1 port map( A => n21, B => n467, ZN => n371);
   U198 : XNOR2_X1 port map( A => n21, B => n468, ZN => n372);
   U199 : XNOR2_X1 port map( A => n21, B => n469, ZN => n373);
   U200 : XNOR2_X1 port map( A => n21, B => n470, ZN => n374);
   U201 : XNOR2_X1 port map( A => n21, B => n471, ZN => n375);
   U202 : XNOR2_X1 port map( A => n21, B => n472, ZN => n376);
   U203 : XNOR2_X1 port map( A => n21, B => n473, ZN => n377);
   U204 : XNOR2_X1 port map( A => n21, B => n474, ZN => n378);
   U205 : XNOR2_X1 port map( A => n21, B => n475, ZN => n379);
   U206 : XNOR2_X1 port map( A => n21, B => n476, ZN => n380);
   U207 : XNOR2_X1 port map( A => n21, B => n29, ZN => n381);
   U208 : OR2_X1 port map( A1 => n29, A2 => n500, ZN => n382);
   U210 : OAI22_X1 port map( A1 => n554, A2 => n501, B1 => n398, B2 => n20, ZN 
                           => n243);
   U211 : INV_X1 port map( A => n227, ZN => n277);
   U212 : AOI21_X1 port map( B1 => n554, B2 => n20, A => n383, ZN => n227);
   U213 : OAI22_X1 port map( A1 => n554, A2 => n384, B1 => n20, B2 => n383, ZN 
                           => n70);
   U214 : OAI22_X1 port map( A1 => n554, A2 => n385, B1 => n20, B2 => n384, ZN 
                           => n278);
   U215 : OAI22_X1 port map( A1 => n554, A2 => n386, B1 => n20, B2 => n385, ZN 
                           => n279);
   U216 : OAI22_X1 port map( A1 => n554, A2 => n387, B1 => n20, B2 => n386, ZN 
                           => n280);
   U217 : OAI22_X1 port map( A1 => n554, A2 => n388, B1 => n20, B2 => n387, ZN 
                           => n281);
   U218 : OAI22_X1 port map( A1 => n554, A2 => n389, B1 => n20, B2 => n388, ZN 
                           => n282);
   U219 : OAI22_X1 port map( A1 => n554, A2 => n390, B1 => n20, B2 => n389, ZN 
                           => n283);
   U220 : OAI22_X1 port map( A1 => n554, A2 => n391, B1 => n19, B2 => n390, ZN 
                           => n284);
   U221 : OAI22_X1 port map( A1 => n554, A2 => n392, B1 => n19, B2 => n391, ZN 
                           => n285);
   U222 : OAI22_X1 port map( A1 => n554, A2 => n393, B1 => n19, B2 => n392, ZN 
                           => n286);
   U223 : OAI22_X1 port map( A1 => n554, A2 => n394, B1 => n19, B2 => n393, ZN 
                           => n287);
   U224 : OAI22_X1 port map( A1 => n554, A2 => n395, B1 => n19, B2 => n394, ZN 
                           => n288);
   U225 : OAI22_X1 port map( A1 => n554, A2 => n396, B1 => n19, B2 => n395, ZN 
                           => n289);
   U226 : OAI22_X1 port map( A1 => n554, A2 => n397, B1 => n19, B2 => n396, ZN 
                           => n290);
   U227 : AND2_X1 port map( A1 => n29, A2 => n228, ZN => n291);
   U228 : INV_X1 port map( A => n19, ZN => n228);
   U229 : XNOR2_X1 port map( A => n17, B => n463, ZN => n383);
   U230 : XNOR2_X1 port map( A => n17, B => n464, ZN => n384);
   U231 : XNOR2_X1 port map( A => n17, B => n465, ZN => n385);
   U232 : XNOR2_X1 port map( A => n17, B => n466, ZN => n386);
   U233 : XNOR2_X1 port map( A => n17, B => n467, ZN => n387);
   U234 : XNOR2_X1 port map( A => n17, B => n468, ZN => n388);
   U235 : XNOR2_X1 port map( A => n17, B => n469, ZN => n389);
   U236 : XNOR2_X1 port map( A => n17, B => n470, ZN => n390);
   U237 : XNOR2_X1 port map( A => n17, B => n471, ZN => n391);
   U238 : XNOR2_X1 port map( A => n17, B => n472, ZN => n392);
   U239 : XNOR2_X1 port map( A => n17, B => n473, ZN => n393);
   U240 : XNOR2_X1 port map( A => n17, B => n474, ZN => n394);
   U241 : XNOR2_X1 port map( A => n17, B => n475, ZN => n395);
   U242 : XNOR2_X1 port map( A => n17, B => n476, ZN => n396);
   U243 : XNOR2_X1 port map( A => n17, B => n29, ZN => n397);
   U244 : OR2_X1 port map( A1 => n29, A2 => n501, ZN => n398);
   U246 : OAI22_X1 port map( A1 => n553, A2 => n502, B1 => n414, B2 => n16, ZN 
                           => n244);
   U247 : INV_X1 port map( A => n230, ZN => n292);
   U248 : AOI21_X1 port map( B1 => n553, B2 => n16, A => n399, ZN => n230);
   U249 : OAI22_X1 port map( A1 => n553, A2 => n400, B1 => n16, B2 => n399, ZN 
                           => n84);
   U250 : OAI22_X1 port map( A1 => n553, A2 => n401, B1 => n16, B2 => n400, ZN 
                           => n293);
   U251 : OAI22_X1 port map( A1 => n553, A2 => n402, B1 => n16, B2 => n401, ZN 
                           => n294);
   U252 : OAI22_X1 port map( A1 => n553, A2 => n403, B1 => n16, B2 => n402, ZN 
                           => n295);
   U253 : OAI22_X1 port map( A1 => n553, A2 => n404, B1 => n16, B2 => n403, ZN 
                           => n296);
   U254 : OAI22_X1 port map( A1 => n553, A2 => n405, B1 => n16, B2 => n404, ZN 
                           => n297);
   U255 : OAI22_X1 port map( A1 => n553, A2 => n406, B1 => n16, B2 => n405, ZN 
                           => n298);
   U256 : OAI22_X1 port map( A1 => n553, A2 => n407, B1 => n15, B2 => n406, ZN 
                           => n299);
   U257 : OAI22_X1 port map( A1 => n553, A2 => n408, B1 => n15, B2 => n407, ZN 
                           => n300);
   U258 : OAI22_X1 port map( A1 => n553, A2 => n409, B1 => n15, B2 => n408, ZN 
                           => n301);
   U259 : OAI22_X1 port map( A1 => n553, A2 => n410, B1 => n15, B2 => n409, ZN 
                           => n302);
   U260 : OAI22_X1 port map( A1 => n553, A2 => n411, B1 => n15, B2 => n410, ZN 
                           => n303);
   U261 : OAI22_X1 port map( A1 => n553, A2 => n412, B1 => n15, B2 => n411, ZN 
                           => n304);
   U262 : OAI22_X1 port map( A1 => n553, A2 => n413, B1 => n15, B2 => n412, ZN 
                           => n305);
   U263 : AND2_X1 port map( A1 => n29, A2 => n231, ZN => n306);
   U264 : INV_X1 port map( A => n15, ZN => n231);
   U265 : XNOR2_X1 port map( A => n13, B => n463, ZN => n399);
   U266 : XNOR2_X1 port map( A => n13, B => n464, ZN => n400);
   U267 : XNOR2_X1 port map( A => n13, B => n465, ZN => n401);
   U268 : XNOR2_X1 port map( A => n13, B => n466, ZN => n402);
   U269 : XNOR2_X1 port map( A => n13, B => n467, ZN => n403);
   U270 : XNOR2_X1 port map( A => n13, B => n468, ZN => n404);
   U271 : XNOR2_X1 port map( A => n13, B => n469, ZN => n405);
   U272 : XNOR2_X1 port map( A => n13, B => n470, ZN => n406);
   U273 : XNOR2_X1 port map( A => n13, B => n471, ZN => n407);
   U274 : XNOR2_X1 port map( A => n13, B => n472, ZN => n408);
   U275 : XNOR2_X1 port map( A => n13, B => n473, ZN => n409);
   U276 : XNOR2_X1 port map( A => n13, B => n474, ZN => n410);
   U277 : XNOR2_X1 port map( A => n13, B => n475, ZN => n411);
   U278 : XNOR2_X1 port map( A => n13, B => n476, ZN => n412);
   U279 : XNOR2_X1 port map( A => n13, B => n29, ZN => n413);
   U280 : OR2_X1 port map( A1 => n29, A2 => n502, ZN => n414);
   U282 : OAI22_X1 port map( A1 => n552, A2 => n503, B1 => n430, B2 => n12, ZN 
                           => n245);
   U283 : INV_X1 port map( A => n233, ZN => n307);
   U284 : AOI21_X1 port map( B1 => n552, B2 => n12, A => n415, ZN => n233);
   U285 : OAI22_X1 port map( A1 => n552, A2 => n416, B1 => n12, B2 => n415, ZN 
                           => n102);
   U286 : OAI22_X1 port map( A1 => n552, A2 => n417, B1 => n12, B2 => n416, ZN 
                           => n308);
   U287 : OAI22_X1 port map( A1 => n552, A2 => n418, B1 => n12, B2 => n417, ZN 
                           => n309);
   U288 : OAI22_X1 port map( A1 => n552, A2 => n419, B1 => n12, B2 => n418, ZN 
                           => n310);
   U289 : OAI22_X1 port map( A1 => n552, A2 => n420, B1 => n12, B2 => n419, ZN 
                           => n311);
   U290 : OAI22_X1 port map( A1 => n552, A2 => n421, B1 => n12, B2 => n420, ZN 
                           => n312);
   U291 : OAI22_X1 port map( A1 => n552, A2 => n422, B1 => n12, B2 => n421, ZN 
                           => n313);
   U292 : OAI22_X1 port map( A1 => n552, A2 => n423, B1 => n11, B2 => n422, ZN 
                           => n314);
   U293 : OAI22_X1 port map( A1 => n552, A2 => n424, B1 => n11, B2 => n423, ZN 
                           => n315);
   U294 : OAI22_X1 port map( A1 => n552, A2 => n425, B1 => n11, B2 => n424, ZN 
                           => n316);
   U295 : OAI22_X1 port map( A1 => n552, A2 => n426, B1 => n11, B2 => n425, ZN 
                           => n317);
   U296 : OAI22_X1 port map( A1 => n552, A2 => n427, B1 => n11, B2 => n426, ZN 
                           => n318);
   U297 : OAI22_X1 port map( A1 => n552, A2 => n428, B1 => n11, B2 => n427, ZN 
                           => n319);
   U298 : OAI22_X1 port map( A1 => n552, A2 => n429, B1 => n11, B2 => n428, ZN 
                           => n320);
   U299 : AND2_X1 port map( A1 => n29, A2 => n234, ZN => n321);
   U300 : INV_X1 port map( A => n11, ZN => n234);
   U301 : XNOR2_X1 port map( A => n9, B => n463, ZN => n415);
   U302 : XNOR2_X1 port map( A => n9, B => n464, ZN => n416);
   U303 : XNOR2_X1 port map( A => n9, B => n465, ZN => n417);
   U304 : XNOR2_X1 port map( A => n9, B => n466, ZN => n418);
   U305 : XNOR2_X1 port map( A => n9, B => n467, ZN => n419);
   U306 : XNOR2_X1 port map( A => n9, B => n468, ZN => n420);
   U307 : XNOR2_X1 port map( A => n9, B => n469, ZN => n421);
   U308 : XNOR2_X1 port map( A => n9, B => n470, ZN => n422);
   U309 : XNOR2_X1 port map( A => n9, B => n471, ZN => n423);
   U310 : XNOR2_X1 port map( A => n9, B => n472, ZN => n424);
   U311 : XNOR2_X1 port map( A => n9, B => n473, ZN => n425);
   U312 : XNOR2_X1 port map( A => n9, B => n474, ZN => n426);
   U313 : XNOR2_X1 port map( A => n9, B => n475, ZN => n427);
   U314 : XNOR2_X1 port map( A => n9, B => n476, ZN => n428);
   U315 : XNOR2_X1 port map( A => n9, B => n29, ZN => n429);
   U316 : OR2_X1 port map( A1 => n29, A2 => n503, ZN => n430);
   U318 : OAI22_X1 port map( A1 => n551, A2 => n504, B1 => n446, B2 => n8, ZN 
                           => n246);
   U319 : INV_X1 port map( A => n236, ZN => n322);
   U320 : AOI21_X1 port map( B1 => n551, B2 => n8, A => n431, ZN => n236);
   U321 : OAI22_X1 port map( A1 => n551, A2 => n432, B1 => n8, B2 => n431, ZN 
                           => n124);
   U322 : OAI22_X1 port map( A1 => n551, A2 => n433, B1 => n8, B2 => n432, ZN 
                           => n323);
   U323 : OAI22_X1 port map( A1 => n551, A2 => n434, B1 => n8, B2 => n433, ZN 
                           => n324);
   U324 : OAI22_X1 port map( A1 => n551, A2 => n435, B1 => n8, B2 => n434, ZN 
                           => n325);
   U325 : OAI22_X1 port map( A1 => n551, A2 => n436, B1 => n8, B2 => n435, ZN 
                           => n326);
   U326 : OAI22_X1 port map( A1 => n551, A2 => n437, B1 => n8, B2 => n436, ZN 
                           => n327);
   U327 : OAI22_X1 port map( A1 => n551, A2 => n438, B1 => n8, B2 => n437, ZN 
                           => n328);
   U328 : OAI22_X1 port map( A1 => n551, A2 => n439, B1 => n7, B2 => n438, ZN 
                           => n329);
   U329 : OAI22_X1 port map( A1 => n551, A2 => n440, B1 => n7, B2 => n439, ZN 
                           => n330);
   U330 : OAI22_X1 port map( A1 => n551, A2 => n441, B1 => n7, B2 => n440, ZN 
                           => n331);
   U331 : OAI22_X1 port map( A1 => n551, A2 => n442, B1 => n7, B2 => n441, ZN 
                           => n332);
   U332 : OAI22_X1 port map( A1 => n551, A2 => n443, B1 => n7, B2 => n442, ZN 
                           => n333);
   U333 : OAI22_X1 port map( A1 => n551, A2 => n444, B1 => n7, B2 => n443, ZN 
                           => n334);
   U334 : OAI22_X1 port map( A1 => n551, A2 => n445, B1 => n7, B2 => n444, ZN 
                           => n335);
   U335 : AND2_X1 port map( A1 => n29, A2 => n237, ZN => n336);
   U336 : INV_X1 port map( A => n7, ZN => n237);
   U337 : XNOR2_X1 port map( A => n5, B => n463, ZN => n431);
   U338 : XNOR2_X1 port map( A => n5, B => n464, ZN => n432);
   U339 : XNOR2_X1 port map( A => n5, B => n465, ZN => n433);
   U340 : XNOR2_X1 port map( A => n5, B => n466, ZN => n434);
   U341 : XNOR2_X1 port map( A => n5, B => n467, ZN => n435);
   U342 : XNOR2_X1 port map( A => n5, B => n468, ZN => n436);
   U343 : XNOR2_X1 port map( A => n5, B => n469, ZN => n437);
   U344 : XNOR2_X1 port map( A => n5, B => n470, ZN => n438);
   U345 : XNOR2_X1 port map( A => n5, B => n471, ZN => n439);
   U346 : XNOR2_X1 port map( A => n5, B => n472, ZN => n440);
   U347 : XNOR2_X1 port map( A => n5, B => n473, ZN => n441);
   U348 : XNOR2_X1 port map( A => n5, B => n474, ZN => n442);
   U349 : XNOR2_X1 port map( A => n5, B => n475, ZN => n443);
   U350 : XNOR2_X1 port map( A => n5, B => n476, ZN => n444);
   U351 : XNOR2_X1 port map( A => n5, B => n29, ZN => n445);
   U352 : OR2_X1 port map( A1 => n29, A2 => n504, ZN => n446);
   U354 : OAI22_X1 port map( A1 => n491, A2 => n505, B1 => n462, B2 => n4, ZN 
                           => n247);
   U355 : INV_X1 port map( A => n239, ZN => n337);
   U356 : AOI21_X1 port map( B1 => n491, B2 => n4, A => n447, ZN => n239);
   U357 : OAI22_X1 port map( A1 => n491, A2 => n448, B1 => n447, B2 => n4, ZN 
                           => n338);
   U358 : OAI22_X1 port map( A1 => n491, A2 => n449, B1 => n448, B2 => n4, ZN 
                           => n339);
   U359 : OAI22_X1 port map( A1 => n491, A2 => n450, B1 => n449, B2 => n4, ZN 
                           => n340);
   U360 : OAI22_X1 port map( A1 => n491, A2 => n451, B1 => n450, B2 => n4, ZN 
                           => n341);
   U361 : OAI22_X1 port map( A1 => n491, A2 => n452, B1 => n451, B2 => n4, ZN 
                           => n342);
   U362 : OAI22_X1 port map( A1 => n491, A2 => n453, B1 => n452, B2 => n4, ZN 
                           => n343);
   U363 : OAI22_X1 port map( A1 => n491, A2 => n454, B1 => n453, B2 => n4, ZN 
                           => n344);
   U364 : OAI22_X1 port map( A1 => n491, A2 => n455, B1 => n454, B2 => n3, ZN 
                           => n345);
   U365 : OAI22_X1 port map( A1 => n491, A2 => n456, B1 => n455, B2 => n3, ZN 
                           => n346);
   U366 : OAI22_X1 port map( A1 => n491, A2 => n457, B1 => n456, B2 => n3, ZN 
                           => n347);
   U367 : OAI22_X1 port map( A1 => n491, A2 => n458, B1 => n457, B2 => n3, ZN 
                           => n348);
   U368 : OAI22_X1 port map( A1 => n491, A2 => n459, B1 => n458, B2 => n3, ZN 
                           => n349);
   U369 : OAI22_X1 port map( A1 => n491, A2 => n460, B1 => n459, B2 => n3, ZN 
                           => n350);
   U370 : OAI22_X1 port map( A1 => n491, A2 => n461, B1 => n460, B2 => n3, ZN 
                           => n351);
   U371 : XNOR2_X1 port map( A => n1, B => n463, ZN => n447);
   U372 : XNOR2_X1 port map( A => n1, B => n464, ZN => n448);
   U373 : XNOR2_X1 port map( A => n1, B => n465, ZN => n449);
   U374 : XNOR2_X1 port map( A => n1, B => n466, ZN => n450);
   U375 : XNOR2_X1 port map( A => n1, B => n467, ZN => n451);
   U376 : XNOR2_X1 port map( A => n1, B => n468, ZN => n452);
   U377 : XNOR2_X1 port map( A => n1, B => n469, ZN => n453);
   U378 : XNOR2_X1 port map( A => n1, B => n470, ZN => n454);
   U379 : XNOR2_X1 port map( A => n1, B => n471, ZN => n455);
   U380 : XNOR2_X1 port map( A => n1, B => n472, ZN => n456);
   U381 : XNOR2_X1 port map( A => n1, B => n473, ZN => n457);
   U382 : XNOR2_X1 port map( A => n1, B => n474, ZN => n458);
   U383 : XNOR2_X1 port map( A => n1, B => n475, ZN => n459);
   U384 : XNOR2_X1 port map( A => n1, B => n476, ZN => n460);
   U385 : XNOR2_X1 port map( A => n1, B => n29, ZN => n461);
   U386 : OR2_X1 port map( A1 => n29, A2 => n505, ZN => n462);
   U403 : INV_X1 port map( A => n25, ZN => n499);
   U405 : INV_X1 port map( A => n21, ZN => n500);
   U407 : INV_X1 port map( A => n17, ZN => n501);
   U409 : INV_X1 port map( A => n13, ZN => n502);
   U411 : INV_X1 port map( A => n9, ZN => n503);
   U413 : INV_X1 port map( A => n5, ZN => n504);
   U415 : INV_X1 port map( A => n1, ZN => n505);
   U417 : XOR2_X1 port map( A => a(12), B => a(13), Z => n478);
   U418 : XNOR2_X1 port map( A => a(12), B => a(11), ZN => n492);
   U420 : XOR2_X1 port map( A => a(10), B => a(11), Z => n479);
   U421 : XNOR2_X1 port map( A => a(10), B => a(9), ZN => n493);
   U423 : XOR2_X1 port map( A => a(8), B => a(9), Z => n480);
   U424 : XNOR2_X1 port map( A => a(8), B => a(7), ZN => n494);
   U426 : XOR2_X1 port map( A => a(6), B => a(7), Z => n481);
   U427 : XNOR2_X1 port map( A => a(6), B => a(5), ZN => n495);
   U429 : XOR2_X1 port map( A => a(4), B => a(5), Z => n482);
   U430 : XNOR2_X1 port map( A => a(4), B => a(3), ZN => n496);
   U432 : XOR2_X1 port map( A => a(2), B => a(3), Z => n483);
   U433 : XNOR2_X1 port map( A => a(2), B => a(1), ZN => n497);
   U434 : NAND2_X1 port map( A1 => n484, A2 => n498, ZN => n519);
   U435 : XOR2_X1 port map( A => a(0), B => a(1), Z => n484);
   U436 : INV_X1 port map( A => a(0), ZN => n498);
   U439 : NAND2_X1 port map( A1 => n483, A2 => n497, ZN => n551);
   U440 : NAND2_X1 port map( A1 => n482, A2 => n496, ZN => n552);
   U441 : NAND2_X1 port map( A1 => n481, A2 => n495, ZN => n553);
   U442 : NAND2_X1 port map( A1 => n480, A2 => n494, ZN => n554);
   U443 : NAND2_X1 port map( A1 => n479, A2 => n493, ZN => n555);
   U444 : NAND2_X1 port map( A1 => n478, A2 => n492, ZN => n556);
   U445 : BUF_X1 port map( A => b(5), Z => n472);
   U446 : BUF_X1 port map( A => b(13), Z => n464);
   U447 : BUF_X1 port map( A => b(1), Z => n476);
   U448 : BUF_X1 port map( A => b(3), Z => n474);
   U449 : BUF_X1 port map( A => b(2), Z => n475);
   U450 : BUF_X1 port map( A => b(4), Z => n473);
   U451 : BUF_X1 port map( A => b(6), Z => n471);
   U452 : BUF_X1 port map( A => b(8), Z => n469);
   U453 : BUF_X1 port map( A => b(7), Z => n470);
   U454 : BUF_X1 port map( A => b(9), Z => n468);
   U455 : BUF_X1 port map( A => b(11), Z => n466);
   U456 : BUF_X1 port map( A => b(10), Z => n467);
   U457 : BUF_X1 port map( A => b(12), Z => n465);
   U458 : BUF_X1 port map( A => n497, Z => n8);
   U459 : BUF_X1 port map( A => n496, Z => n12);
   U460 : BUF_X1 port map( A => n495, Z => n16);
   U461 : BUF_X1 port map( A => n494, Z => n20);
   U462 : BUF_X1 port map( A => n493, Z => n24);
   U463 : CLKBUF_X1 port map( A => n497, Z => n7);
   U464 : CLKBUF_X1 port map( A => n496, Z => n11);
   U465 : CLKBUF_X1 port map( A => n495, Z => n15);
   U466 : CLKBUF_X1 port map( A => n494, Z => n19);
   U467 : CLKBUF_X1 port map( A => n493, Z => n23);
   U468 : BUF_X1 port map( A => n492, Z => n27);
   U469 : CLKBUF_X1 port map( A => n492, Z => n28);
   U470 : BUF_X1 port map( A => b(14), Z => n463);
   U471 : BUF_X1 port map( A => n498, Z => n4);
   U472 : BUF_X1 port map( A => n498, Z => n3);
   U473 : BUF_X1 port map( A => b(0), Z => n29);
   U474 : BUF_X1 port map( A => n519, Z => n491);
   U475 : BUF_X1 port map( A => a(1), Z => n1);
   U476 : BUF_X1 port map( A => a(3), Z => n5);
   U477 : BUF_X1 port map( A => a(5), Z => n9);
   U478 : BUF_X1 port map( A => a(7), Z => n13);
   U479 : BUF_X1 port map( A => a(9), Z => n17);
   U480 : BUF_X1 port map( A => a(11), Z => n21);
   U481 : BUF_X1 port map( A => a(13), Z => n25);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_IIR_FILTER.all;

entity IIR_FILTER_DW_mult_tc_3 is

   port( a : in std_logic_vector (14 downto 0);  b : in std_logic_vector (13 
         downto 0);  product : out std_logic_vector (28 downto 0));

end IIR_FILTER_DW_mult_tc_3;

architecture SYN_USE_DEFA_ARCH_NAME of IIR_FILTER_DW_mult_tc_3 is

   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
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
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n1, n3, n4, n5, n7, n8, n9, n11, n12, n13, n15, n16, n17, n19, n20, 
      n21, n23, n24, n25, n27, n28, n29, n31, n32, n33, n34, n35, n36, n37, n38
      , n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, 
      n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67
      , n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, 
      n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96
      , n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, 
      n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, 
      n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, 
      n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, 
      n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, 
      n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, 
      n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, 
      n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, 
      n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, 
      n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, 
      n217, n218, n219, n220, n221, n222, n224, n225, n227, n228, n230, n231, 
      n233, n234, n236, n237, n239, n241, n242, n243, n244, n245, n246, n247, 
      n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, 
      n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, 
      n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, 
      n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, 
      n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, 
      n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, 
      n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, 
      n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, 
      n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, 
      n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, 
      n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, 
      n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, 
      n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, 
      n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, 
      n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, 
      n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, 
      n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, 
      n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, 
      n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, 
      n476, n478, n479, n480, n481, n482, n483, n484, n491, n492, n493, n494, 
      n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n519, 
      n551, n552, n553, n554, n555, n556, n_1107, n_1108, n_1109, n_1110, 
      n_1111, n_1112, n_1113, n_1114, n_1115, n_1116, n_1117, n_1118, n_1119, 
      n_1120, n_1121, n_1122, n_1123, n_1124, n_1125 : std_logic;

begin
   
   U31 : XOR2_X1 port map( A => n32, B => n31, Z => product(25));
   U32 : XOR2_X1 port map( A => n58, B => n57, Z => n31);
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
   U38 : FA_X1 port map( A => n87, B => n94, CI => n38, CO => n37, S => n_1107)
                           ;
   U39 : FA_X1 port map( A => n95, B => n104, CI => n39, CO => n38, S => n_1108
                           );
   U40 : FA_X1 port map( A => n105, B => n114, CI => n40, CO => n39, S => 
                           n_1109);
   U41 : FA_X1 port map( A => n115, B => n126, CI => n41, CO => n40, S => 
                           n_1110);
   U42 : FA_X1 port map( A => n127, B => n138, CI => n42, CO => n41, S => 
                           n_1111);
   U43 : FA_X1 port map( A => n139, B => n150, CI => n43, CO => n42, S => 
                           n_1112);
   U44 : FA_X1 port map( A => n151, B => n162, CI => n44, CO => n43, S => 
                           n_1113);
   U45 : FA_X1 port map( A => n163, B => n172, CI => n45, CO => n44, S => 
                           n_1114);
   U46 : FA_X1 port map( A => n173, B => n182, CI => n46, CO => n45, S => 
                           n_1115);
   U47 : FA_X1 port map( A => n183, B => n190, CI => n47, CO => n46, S => 
                           n_1116);
   U48 : FA_X1 port map( A => n191, B => n198, CI => n48, CO => n47, S => 
                           n_1117);
   U49 : FA_X1 port map( A => n199, B => n204, CI => n49, CO => n48, S => 
                           n_1118);
   U50 : FA_X1 port map( A => n205, B => n210, CI => n50, CO => n49, S => 
                           n_1119);
   U51 : FA_X1 port map( A => n211, B => n214, CI => n51, CO => n50, S => 
                           n_1120);
   U52 : FA_X1 port map( A => n215, B => n218, CI => n52, CO => n51, S => 
                           n_1121);
   U53 : FA_X1 port map( A => n219, B => n220, CI => n53, CO => n52, S => 
                           n_1122);
   U54 : FA_X1 port map( A => n221, B => n246, CI => n54, CO => n53, S => 
                           n_1123);
   U55 : FA_X1 port map( A => n350, B => n336, CI => n55, CO => n54, S => 
                           n_1124);
   U56 : HA_X1 port map( A => n351, B => n247, CO => n55, S => n_1125);
   U57 : XOR2_X1 port map( A => n60, B => n56, Z => n57);
   U58 : XOR2_X1 port map( A => n262, B => n248, Z => n56);
   U59 : FA_X1 port map( A => n61, B => n249, CI => n64, CO => n58, S => n59);
   U60 : INV_X1 port map( A => n60, ZN => n61);
   U61 : FA_X1 port map( A => n68, B => n250, CI => n65, CO => n62, S => n63);
   U62 : FA_X1 port map( A => n263, B => n70, CI => n277, CO => n64, S => n65);
   U63 : FA_X1 port map( A => n69, B => n76, CI => n74, CO => n66, S => n67);
   U64 : FA_X1 port map( A => n251, B => n264, CI => n71, CO => n68, S => n69);
   U65 : INV_X1 port map( A => n70, ZN => n71);
   U66 : FA_X1 port map( A => n80, B => n77, CI => n75, CO => n72, S => n73);
   U67 : FA_X1 port map( A => n84, B => n278, CI => n82, CO => n74, S => n75);
   U68 : FA_X1 port map( A => n265, B => n252, CI => n292, CO => n76, S => n77)
                           ;
   U69 : FA_X1 port map( A => n81, B => n83, CI => n88, CO => n78, S => n79);
   U70 : FA_X1 port map( A => n92, B => n85, CI => n90, CO => n80, S => n81);
   U71 : FA_X1 port map( A => n253, B => n266, CI => n279, CO => n82, S => n83)
                           ;
   U72 : INV_X1 port map( A => n84, ZN => n85);
   U73 : FA_X1 port map( A => n96, B => n98, CI => n89, CO => n86, S => n87);
   U74 : FA_X1 port map( A => n91, B => n100, CI => n93, CO => n88, S => n89);
   U75 : FA_X1 port map( A => n267, B => n102, CI => n280, CO => n90, S => n91)
                           ;
   U76 : FA_X1 port map( A => n293, B => n254, CI => n307, CO => n92, S => n93)
                           ;
   U77 : FA_X1 port map( A => n106, B => n99, CI => n97, CO => n94, S => n95);
   U78 : FA_X1 port map( A => n101, B => n110, CI => n108, CO => n96, S => n97)
                           ;
   U79 : FA_X1 port map( A => n103, B => n281, CI => n112, CO => n98, S => n99)
                           ;
   U80 : FA_X1 port map( A => n294, B => n268, CI => n255, CO => n100, S => 
                           n101);
   U81 : INV_X1 port map( A => n102, ZN => n103);
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
   U90 : FA_X1 port map( A => n257, B => n283, CI => n125, CO => n120, S => 
                           n121);
   U91 : FA_X1 port map( A => n309, B => n270, CI => n296, CO => n122, S => 
                           n123);
   U92 : INV_X1 port map( A => n124, ZN => n125);
   U93 : FA_X1 port map( A => n140, B => n131, CI => n129, CO => n126, S => 
                           n127);
   U94 : FA_X1 port map( A => n133, B => n135, CI => n142, CO => n128, S => 
                           n129);
   U95 : FA_X1 port map( A => n146, B => n137, CI => n144, CO => n130, S => 
                           n131);
   U96 : FA_X1 port map( A => n297, B => n323, CI => n148, CO => n132, S => 
                           n133);
   U97 : FA_X1 port map( A => n258, B => n284, CI => n337, CO => n134, S => 
                           n135);
   U98 : XNOR2_X1 port map( A => n310, B => n271, ZN => n137);
   U99 : OR2_X1 port map( A1 => n310, A2 => n271, ZN => n136);
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
   U142 : OAI22_X1 port map( A1 => n556, A2 => n499, B1 => n366, B2 => n28, ZN 
                           => n241);
   U143 : OAI22_X1 port map( A1 => n556, A2 => n353, B1 => n28, B2 => n352, ZN 
                           => n248);
   U144 : OAI22_X1 port map( A1 => n556, A2 => n354, B1 => n28, B2 => n353, ZN 
                           => n249);
   U145 : OAI22_X1 port map( A1 => n556, A2 => n355, B1 => n28, B2 => n354, ZN 
                           => n250);
   U146 : OAI22_X1 port map( A1 => n556, A2 => n356, B1 => n28, B2 => n355, ZN 
                           => n251);
   U147 : OAI22_X1 port map( A1 => n556, A2 => n357, B1 => n28, B2 => n356, ZN 
                           => n252);
   U148 : OAI22_X1 port map( A1 => n556, A2 => n358, B1 => n28, B2 => n357, ZN 
                           => n253);
   U149 : OAI22_X1 port map( A1 => n556, A2 => n359, B1 => n27, B2 => n358, ZN 
                           => n254);
   U150 : OAI22_X1 port map( A1 => n556, A2 => n360, B1 => n27, B2 => n359, ZN 
                           => n255);
   U151 : OAI22_X1 port map( A1 => n556, A2 => n361, B1 => n27, B2 => n360, ZN 
                           => n256);
   U152 : OAI22_X1 port map( A1 => n556, A2 => n362, B1 => n27, B2 => n361, ZN 
                           => n257);
   U153 : OAI22_X1 port map( A1 => n556, A2 => n363, B1 => n27, B2 => n362, ZN 
                           => n258);
   U154 : OAI22_X1 port map( A1 => n556, A2 => n364, B1 => n27, B2 => n363, ZN 
                           => n259);
   U155 : OAI22_X1 port map( A1 => n556, A2 => n365, B1 => n27, B2 => n364, ZN 
                           => n260);
   U156 : AND2_X1 port map( A1 => n29, A2 => n222, ZN => n261);
   U157 : INV_X1 port map( A => n27, ZN => n222);
   U158 : XNOR2_X1 port map( A => n25, B => n464, ZN => n352);
   U159 : XNOR2_X1 port map( A => n25, B => n465, ZN => n353);
   U160 : XNOR2_X1 port map( A => n25, B => n466, ZN => n354);
   U161 : XNOR2_X1 port map( A => n25, B => n467, ZN => n355);
   U162 : XNOR2_X1 port map( A => n25, B => n468, ZN => n356);
   U163 : XNOR2_X1 port map( A => n25, B => n469, ZN => n357);
   U164 : XNOR2_X1 port map( A => n25, B => n470, ZN => n358);
   U165 : XNOR2_X1 port map( A => n25, B => n471, ZN => n359);
   U166 : XNOR2_X1 port map( A => n25, B => n472, ZN => n360);
   U167 : XNOR2_X1 port map( A => n25, B => n473, ZN => n361);
   U168 : XNOR2_X1 port map( A => n25, B => n474, ZN => n362);
   U169 : XNOR2_X1 port map( A => n25, B => n475, ZN => n363);
   U170 : XNOR2_X1 port map( A => n25, B => n476, ZN => n364);
   U171 : XNOR2_X1 port map( A => n25, B => n29, ZN => n365);
   U172 : OR2_X1 port map( A1 => n29, A2 => n499, ZN => n366);
   U174 : OAI22_X1 port map( A1 => n555, A2 => n500, B1 => n382, B2 => n24, ZN 
                           => n242);
   U175 : INV_X1 port map( A => n224, ZN => n262);
   U176 : AOI21_X1 port map( B1 => n555, B2 => n24, A => n367, ZN => n224);
   U177 : OAI22_X1 port map( A1 => n555, A2 => n368, B1 => n24, B2 => n367, ZN 
                           => n60);
   U178 : OAI22_X1 port map( A1 => n555, A2 => n369, B1 => n24, B2 => n368, ZN 
                           => n263);
   U179 : OAI22_X1 port map( A1 => n555, A2 => n370, B1 => n24, B2 => n369, ZN 
                           => n264);
   U180 : OAI22_X1 port map( A1 => n555, A2 => n371, B1 => n24, B2 => n370, ZN 
                           => n265);
   U181 : OAI22_X1 port map( A1 => n555, A2 => n372, B1 => n24, B2 => n371, ZN 
                           => n266);
   U182 : OAI22_X1 port map( A1 => n555, A2 => n373, B1 => n24, B2 => n372, ZN 
                           => n267);
   U183 : OAI22_X1 port map( A1 => n555, A2 => n374, B1 => n24, B2 => n373, ZN 
                           => n268);
   U184 : OAI22_X1 port map( A1 => n555, A2 => n375, B1 => n23, B2 => n374, ZN 
                           => n269);
   U185 : OAI22_X1 port map( A1 => n555, A2 => n376, B1 => n23, B2 => n375, ZN 
                           => n270);
   U186 : OAI22_X1 port map( A1 => n555, A2 => n377, B1 => n23, B2 => n376, ZN 
                           => n271);
   U187 : OAI22_X1 port map( A1 => n555, A2 => n378, B1 => n23, B2 => n377, ZN 
                           => n272);
   U188 : OAI22_X1 port map( A1 => n555, A2 => n379, B1 => n23, B2 => n378, ZN 
                           => n273);
   U189 : OAI22_X1 port map( A1 => n555, A2 => n380, B1 => n23, B2 => n379, ZN 
                           => n274);
   U190 : OAI22_X1 port map( A1 => n555, A2 => n381, B1 => n23, B2 => n380, ZN 
                           => n275);
   U191 : AND2_X1 port map( A1 => n29, A2 => n225, ZN => n276);
   U192 : INV_X1 port map( A => n23, ZN => n225);
   U193 : XNOR2_X1 port map( A => n21, B => n463, ZN => n367);
   U194 : XNOR2_X1 port map( A => n21, B => n464, ZN => n368);
   U195 : XNOR2_X1 port map( A => n21, B => n465, ZN => n369);
   U196 : XNOR2_X1 port map( A => n21, B => n466, ZN => n370);
   U197 : XNOR2_X1 port map( A => n21, B => n467, ZN => n371);
   U198 : XNOR2_X1 port map( A => n21, B => n468, ZN => n372);
   U199 : XNOR2_X1 port map( A => n21, B => n469, ZN => n373);
   U200 : XNOR2_X1 port map( A => n21, B => n470, ZN => n374);
   U201 : XNOR2_X1 port map( A => n21, B => n471, ZN => n375);
   U202 : XNOR2_X1 port map( A => n21, B => n472, ZN => n376);
   U203 : XNOR2_X1 port map( A => n21, B => n473, ZN => n377);
   U204 : XNOR2_X1 port map( A => n21, B => n474, ZN => n378);
   U205 : XNOR2_X1 port map( A => n21, B => n475, ZN => n379);
   U206 : XNOR2_X1 port map( A => n21, B => n476, ZN => n380);
   U207 : XNOR2_X1 port map( A => n21, B => n29, ZN => n381);
   U208 : OR2_X1 port map( A1 => n29, A2 => n500, ZN => n382);
   U210 : OAI22_X1 port map( A1 => n554, A2 => n501, B1 => n398, B2 => n20, ZN 
                           => n243);
   U211 : INV_X1 port map( A => n227, ZN => n277);
   U212 : AOI21_X1 port map( B1 => n554, B2 => n20, A => n383, ZN => n227);
   U213 : OAI22_X1 port map( A1 => n554, A2 => n384, B1 => n20, B2 => n383, ZN 
                           => n70);
   U214 : OAI22_X1 port map( A1 => n554, A2 => n385, B1 => n20, B2 => n384, ZN 
                           => n278);
   U215 : OAI22_X1 port map( A1 => n554, A2 => n386, B1 => n20, B2 => n385, ZN 
                           => n279);
   U216 : OAI22_X1 port map( A1 => n554, A2 => n387, B1 => n20, B2 => n386, ZN 
                           => n280);
   U217 : OAI22_X1 port map( A1 => n554, A2 => n388, B1 => n20, B2 => n387, ZN 
                           => n281);
   U218 : OAI22_X1 port map( A1 => n554, A2 => n389, B1 => n20, B2 => n388, ZN 
                           => n282);
   U219 : OAI22_X1 port map( A1 => n554, A2 => n390, B1 => n20, B2 => n389, ZN 
                           => n283);
   U220 : OAI22_X1 port map( A1 => n554, A2 => n391, B1 => n19, B2 => n390, ZN 
                           => n284);
   U221 : OAI22_X1 port map( A1 => n554, A2 => n392, B1 => n19, B2 => n391, ZN 
                           => n285);
   U222 : OAI22_X1 port map( A1 => n554, A2 => n393, B1 => n19, B2 => n392, ZN 
                           => n286);
   U223 : OAI22_X1 port map( A1 => n554, A2 => n394, B1 => n19, B2 => n393, ZN 
                           => n287);
   U224 : OAI22_X1 port map( A1 => n554, A2 => n395, B1 => n19, B2 => n394, ZN 
                           => n288);
   U225 : OAI22_X1 port map( A1 => n554, A2 => n396, B1 => n19, B2 => n395, ZN 
                           => n289);
   U226 : OAI22_X1 port map( A1 => n554, A2 => n397, B1 => n19, B2 => n396, ZN 
                           => n290);
   U227 : AND2_X1 port map( A1 => n29, A2 => n228, ZN => n291);
   U228 : INV_X1 port map( A => n19, ZN => n228);
   U229 : XNOR2_X1 port map( A => n17, B => n463, ZN => n383);
   U230 : XNOR2_X1 port map( A => n17, B => n464, ZN => n384);
   U231 : XNOR2_X1 port map( A => n17, B => n465, ZN => n385);
   U232 : XNOR2_X1 port map( A => n17, B => n466, ZN => n386);
   U233 : XNOR2_X1 port map( A => n17, B => n467, ZN => n387);
   U234 : XNOR2_X1 port map( A => n17, B => n468, ZN => n388);
   U235 : XNOR2_X1 port map( A => n17, B => n469, ZN => n389);
   U236 : XNOR2_X1 port map( A => n17, B => n470, ZN => n390);
   U237 : XNOR2_X1 port map( A => n17, B => n471, ZN => n391);
   U238 : XNOR2_X1 port map( A => n17, B => n472, ZN => n392);
   U239 : XNOR2_X1 port map( A => n17, B => n473, ZN => n393);
   U240 : XNOR2_X1 port map( A => n17, B => n474, ZN => n394);
   U241 : XNOR2_X1 port map( A => n17, B => n475, ZN => n395);
   U242 : XNOR2_X1 port map( A => n17, B => n476, ZN => n396);
   U243 : XNOR2_X1 port map( A => n17, B => n29, ZN => n397);
   U244 : OR2_X1 port map( A1 => n29, A2 => n501, ZN => n398);
   U246 : OAI22_X1 port map( A1 => n553, A2 => n502, B1 => n414, B2 => n16, ZN 
                           => n244);
   U247 : INV_X1 port map( A => n230, ZN => n292);
   U248 : AOI21_X1 port map( B1 => n553, B2 => n16, A => n399, ZN => n230);
   U249 : OAI22_X1 port map( A1 => n553, A2 => n400, B1 => n16, B2 => n399, ZN 
                           => n84);
   U250 : OAI22_X1 port map( A1 => n553, A2 => n401, B1 => n16, B2 => n400, ZN 
                           => n293);
   U251 : OAI22_X1 port map( A1 => n553, A2 => n402, B1 => n16, B2 => n401, ZN 
                           => n294);
   U252 : OAI22_X1 port map( A1 => n553, A2 => n403, B1 => n16, B2 => n402, ZN 
                           => n295);
   U253 : OAI22_X1 port map( A1 => n553, A2 => n404, B1 => n16, B2 => n403, ZN 
                           => n296);
   U254 : OAI22_X1 port map( A1 => n553, A2 => n405, B1 => n16, B2 => n404, ZN 
                           => n297);
   U255 : OAI22_X1 port map( A1 => n553, A2 => n406, B1 => n16, B2 => n405, ZN 
                           => n298);
   U256 : OAI22_X1 port map( A1 => n553, A2 => n407, B1 => n15, B2 => n406, ZN 
                           => n299);
   U257 : OAI22_X1 port map( A1 => n553, A2 => n408, B1 => n15, B2 => n407, ZN 
                           => n300);
   U258 : OAI22_X1 port map( A1 => n553, A2 => n409, B1 => n15, B2 => n408, ZN 
                           => n301);
   U259 : OAI22_X1 port map( A1 => n553, A2 => n410, B1 => n15, B2 => n409, ZN 
                           => n302);
   U260 : OAI22_X1 port map( A1 => n553, A2 => n411, B1 => n15, B2 => n410, ZN 
                           => n303);
   U261 : OAI22_X1 port map( A1 => n553, A2 => n412, B1 => n15, B2 => n411, ZN 
                           => n304);
   U262 : OAI22_X1 port map( A1 => n553, A2 => n413, B1 => n15, B2 => n412, ZN 
                           => n305);
   U263 : AND2_X1 port map( A1 => n29, A2 => n231, ZN => n306);
   U264 : INV_X1 port map( A => n15, ZN => n231);
   U265 : XNOR2_X1 port map( A => n13, B => n463, ZN => n399);
   U266 : XNOR2_X1 port map( A => n13, B => n464, ZN => n400);
   U267 : XNOR2_X1 port map( A => n13, B => n465, ZN => n401);
   U268 : XNOR2_X1 port map( A => n13, B => n466, ZN => n402);
   U269 : XNOR2_X1 port map( A => n13, B => n467, ZN => n403);
   U270 : XNOR2_X1 port map( A => n13, B => n468, ZN => n404);
   U271 : XNOR2_X1 port map( A => n13, B => n469, ZN => n405);
   U272 : XNOR2_X1 port map( A => n13, B => n470, ZN => n406);
   U273 : XNOR2_X1 port map( A => n13, B => n471, ZN => n407);
   U274 : XNOR2_X1 port map( A => n13, B => n472, ZN => n408);
   U275 : XNOR2_X1 port map( A => n13, B => n473, ZN => n409);
   U276 : XNOR2_X1 port map( A => n13, B => n474, ZN => n410);
   U277 : XNOR2_X1 port map( A => n13, B => n475, ZN => n411);
   U278 : XNOR2_X1 port map( A => n13, B => n476, ZN => n412);
   U279 : XNOR2_X1 port map( A => n13, B => n29, ZN => n413);
   U280 : OR2_X1 port map( A1 => n29, A2 => n502, ZN => n414);
   U282 : OAI22_X1 port map( A1 => n552, A2 => n503, B1 => n430, B2 => n12, ZN 
                           => n245);
   U283 : INV_X1 port map( A => n233, ZN => n307);
   U284 : AOI21_X1 port map( B1 => n552, B2 => n12, A => n415, ZN => n233);
   U285 : OAI22_X1 port map( A1 => n552, A2 => n416, B1 => n12, B2 => n415, ZN 
                           => n102);
   U286 : OAI22_X1 port map( A1 => n552, A2 => n417, B1 => n12, B2 => n416, ZN 
                           => n308);
   U287 : OAI22_X1 port map( A1 => n552, A2 => n418, B1 => n12, B2 => n417, ZN 
                           => n309);
   U288 : OAI22_X1 port map( A1 => n552, A2 => n419, B1 => n12, B2 => n418, ZN 
                           => n310);
   U289 : OAI22_X1 port map( A1 => n552, A2 => n420, B1 => n12, B2 => n419, ZN 
                           => n311);
   U290 : OAI22_X1 port map( A1 => n552, A2 => n421, B1 => n12, B2 => n420, ZN 
                           => n312);
   U291 : OAI22_X1 port map( A1 => n552, A2 => n422, B1 => n12, B2 => n421, ZN 
                           => n313);
   U292 : OAI22_X1 port map( A1 => n552, A2 => n423, B1 => n11, B2 => n422, ZN 
                           => n314);
   U293 : OAI22_X1 port map( A1 => n552, A2 => n424, B1 => n11, B2 => n423, ZN 
                           => n315);
   U294 : OAI22_X1 port map( A1 => n552, A2 => n425, B1 => n11, B2 => n424, ZN 
                           => n316);
   U295 : OAI22_X1 port map( A1 => n552, A2 => n426, B1 => n11, B2 => n425, ZN 
                           => n317);
   U296 : OAI22_X1 port map( A1 => n552, A2 => n427, B1 => n11, B2 => n426, ZN 
                           => n318);
   U297 : OAI22_X1 port map( A1 => n552, A2 => n428, B1 => n11, B2 => n427, ZN 
                           => n319);
   U298 : OAI22_X1 port map( A1 => n552, A2 => n429, B1 => n11, B2 => n428, ZN 
                           => n320);
   U299 : AND2_X1 port map( A1 => n29, A2 => n234, ZN => n321);
   U300 : INV_X1 port map( A => n11, ZN => n234);
   U301 : XNOR2_X1 port map( A => n9, B => n463, ZN => n415);
   U302 : XNOR2_X1 port map( A => n9, B => n464, ZN => n416);
   U303 : XNOR2_X1 port map( A => n9, B => n465, ZN => n417);
   U304 : XNOR2_X1 port map( A => n9, B => n466, ZN => n418);
   U305 : XNOR2_X1 port map( A => n9, B => n467, ZN => n419);
   U306 : XNOR2_X1 port map( A => n9, B => n468, ZN => n420);
   U307 : XNOR2_X1 port map( A => n9, B => n469, ZN => n421);
   U308 : XNOR2_X1 port map( A => n9, B => n470, ZN => n422);
   U309 : XNOR2_X1 port map( A => n9, B => n471, ZN => n423);
   U310 : XNOR2_X1 port map( A => n9, B => n472, ZN => n424);
   U311 : XNOR2_X1 port map( A => n9, B => n473, ZN => n425);
   U312 : XNOR2_X1 port map( A => n9, B => n474, ZN => n426);
   U313 : XNOR2_X1 port map( A => n9, B => n475, ZN => n427);
   U314 : XNOR2_X1 port map( A => n9, B => n476, ZN => n428);
   U315 : XNOR2_X1 port map( A => n9, B => n29, ZN => n429);
   U316 : OR2_X1 port map( A1 => n29, A2 => n503, ZN => n430);
   U318 : OAI22_X1 port map( A1 => n551, A2 => n504, B1 => n446, B2 => n8, ZN 
                           => n246);
   U319 : INV_X1 port map( A => n236, ZN => n322);
   U320 : AOI21_X1 port map( B1 => n551, B2 => n8, A => n431, ZN => n236);
   U321 : OAI22_X1 port map( A1 => n551, A2 => n432, B1 => n8, B2 => n431, ZN 
                           => n124);
   U322 : OAI22_X1 port map( A1 => n551, A2 => n433, B1 => n8, B2 => n432, ZN 
                           => n323);
   U323 : OAI22_X1 port map( A1 => n551, A2 => n434, B1 => n8, B2 => n433, ZN 
                           => n324);
   U324 : OAI22_X1 port map( A1 => n551, A2 => n435, B1 => n8, B2 => n434, ZN 
                           => n325);
   U325 : OAI22_X1 port map( A1 => n551, A2 => n436, B1 => n8, B2 => n435, ZN 
                           => n326);
   U326 : OAI22_X1 port map( A1 => n551, A2 => n437, B1 => n8, B2 => n436, ZN 
                           => n327);
   U327 : OAI22_X1 port map( A1 => n551, A2 => n438, B1 => n8, B2 => n437, ZN 
                           => n328);
   U328 : OAI22_X1 port map( A1 => n551, A2 => n439, B1 => n7, B2 => n438, ZN 
                           => n329);
   U329 : OAI22_X1 port map( A1 => n551, A2 => n440, B1 => n7, B2 => n439, ZN 
                           => n330);
   U330 : OAI22_X1 port map( A1 => n551, A2 => n441, B1 => n7, B2 => n440, ZN 
                           => n331);
   U331 : OAI22_X1 port map( A1 => n551, A2 => n442, B1 => n7, B2 => n441, ZN 
                           => n332);
   U332 : OAI22_X1 port map( A1 => n551, A2 => n443, B1 => n7, B2 => n442, ZN 
                           => n333);
   U333 : OAI22_X1 port map( A1 => n551, A2 => n444, B1 => n7, B2 => n443, ZN 
                           => n334);
   U334 : OAI22_X1 port map( A1 => n551, A2 => n445, B1 => n7, B2 => n444, ZN 
                           => n335);
   U335 : AND2_X1 port map( A1 => n29, A2 => n237, ZN => n336);
   U336 : INV_X1 port map( A => n7, ZN => n237);
   U337 : XNOR2_X1 port map( A => n5, B => n463, ZN => n431);
   U338 : XNOR2_X1 port map( A => n5, B => n464, ZN => n432);
   U339 : XNOR2_X1 port map( A => n5, B => n465, ZN => n433);
   U340 : XNOR2_X1 port map( A => n5, B => n466, ZN => n434);
   U341 : XNOR2_X1 port map( A => n5, B => n467, ZN => n435);
   U342 : XNOR2_X1 port map( A => n5, B => n468, ZN => n436);
   U343 : XNOR2_X1 port map( A => n5, B => n469, ZN => n437);
   U344 : XNOR2_X1 port map( A => n5, B => n470, ZN => n438);
   U345 : XNOR2_X1 port map( A => n5, B => n471, ZN => n439);
   U346 : XNOR2_X1 port map( A => n5, B => n472, ZN => n440);
   U347 : XNOR2_X1 port map( A => n5, B => n473, ZN => n441);
   U348 : XNOR2_X1 port map( A => n5, B => n474, ZN => n442);
   U349 : XNOR2_X1 port map( A => n5, B => n475, ZN => n443);
   U350 : XNOR2_X1 port map( A => n5, B => n476, ZN => n444);
   U351 : XNOR2_X1 port map( A => n5, B => n29, ZN => n445);
   U352 : OR2_X1 port map( A1 => n29, A2 => n504, ZN => n446);
   U354 : OAI22_X1 port map( A1 => n491, A2 => n505, B1 => n462, B2 => n4, ZN 
                           => n247);
   U355 : INV_X1 port map( A => n239, ZN => n337);
   U356 : AOI21_X1 port map( B1 => n491, B2 => n4, A => n447, ZN => n239);
   U357 : OAI22_X1 port map( A1 => n491, A2 => n448, B1 => n447, B2 => n4, ZN 
                           => n338);
   U358 : OAI22_X1 port map( A1 => n491, A2 => n449, B1 => n448, B2 => n4, ZN 
                           => n339);
   U359 : OAI22_X1 port map( A1 => n491, A2 => n450, B1 => n449, B2 => n4, ZN 
                           => n340);
   U360 : OAI22_X1 port map( A1 => n491, A2 => n451, B1 => n450, B2 => n4, ZN 
                           => n341);
   U361 : OAI22_X1 port map( A1 => n491, A2 => n452, B1 => n451, B2 => n4, ZN 
                           => n342);
   U362 : OAI22_X1 port map( A1 => n491, A2 => n453, B1 => n452, B2 => n4, ZN 
                           => n343);
   U363 : OAI22_X1 port map( A1 => n491, A2 => n454, B1 => n453, B2 => n4, ZN 
                           => n344);
   U364 : OAI22_X1 port map( A1 => n491, A2 => n455, B1 => n454, B2 => n3, ZN 
                           => n345);
   U365 : OAI22_X1 port map( A1 => n491, A2 => n456, B1 => n455, B2 => n3, ZN 
                           => n346);
   U366 : OAI22_X1 port map( A1 => n491, A2 => n457, B1 => n456, B2 => n3, ZN 
                           => n347);
   U367 : OAI22_X1 port map( A1 => n491, A2 => n458, B1 => n457, B2 => n3, ZN 
                           => n348);
   U368 : OAI22_X1 port map( A1 => n491, A2 => n459, B1 => n458, B2 => n3, ZN 
                           => n349);
   U369 : OAI22_X1 port map( A1 => n491, A2 => n460, B1 => n459, B2 => n3, ZN 
                           => n350);
   U370 : OAI22_X1 port map( A1 => n491, A2 => n461, B1 => n460, B2 => n3, ZN 
                           => n351);
   U371 : XNOR2_X1 port map( A => n1, B => n463, ZN => n447);
   U372 : XNOR2_X1 port map( A => n1, B => n464, ZN => n448);
   U373 : XNOR2_X1 port map( A => n1, B => n465, ZN => n449);
   U374 : XNOR2_X1 port map( A => n1, B => n466, ZN => n450);
   U375 : XNOR2_X1 port map( A => n1, B => n467, ZN => n451);
   U376 : XNOR2_X1 port map( A => n1, B => n468, ZN => n452);
   U377 : XNOR2_X1 port map( A => n1, B => n469, ZN => n453);
   U378 : XNOR2_X1 port map( A => n1, B => n470, ZN => n454);
   U379 : XNOR2_X1 port map( A => n1, B => n471, ZN => n455);
   U380 : XNOR2_X1 port map( A => n1, B => n472, ZN => n456);
   U381 : XNOR2_X1 port map( A => n1, B => n473, ZN => n457);
   U382 : XNOR2_X1 port map( A => n1, B => n474, ZN => n458);
   U383 : XNOR2_X1 port map( A => n1, B => n475, ZN => n459);
   U384 : XNOR2_X1 port map( A => n1, B => n476, ZN => n460);
   U385 : XNOR2_X1 port map( A => n1, B => n29, ZN => n461);
   U386 : OR2_X1 port map( A1 => n29, A2 => n505, ZN => n462);
   U403 : INV_X1 port map( A => n25, ZN => n499);
   U405 : INV_X1 port map( A => n21, ZN => n500);
   U407 : INV_X1 port map( A => n17, ZN => n501);
   U409 : INV_X1 port map( A => n13, ZN => n502);
   U411 : INV_X1 port map( A => n9, ZN => n503);
   U413 : INV_X1 port map( A => n5, ZN => n504);
   U415 : INV_X1 port map( A => n1, ZN => n505);
   U417 : XOR2_X1 port map( A => b(12), B => b(13), Z => n478);
   U418 : XNOR2_X1 port map( A => b(12), B => b(11), ZN => n492);
   U420 : XOR2_X1 port map( A => b(10), B => b(11), Z => n479);
   U421 : XNOR2_X1 port map( A => b(10), B => b(9), ZN => n493);
   U423 : XOR2_X1 port map( A => b(8), B => b(9), Z => n480);
   U424 : XNOR2_X1 port map( A => b(8), B => b(7), ZN => n494);
   U426 : XOR2_X1 port map( A => b(6), B => b(7), Z => n481);
   U427 : XNOR2_X1 port map( A => b(6), B => b(5), ZN => n495);
   U429 : XOR2_X1 port map( A => b(4), B => b(5), Z => n482);
   U430 : XNOR2_X1 port map( A => b(4), B => b(3), ZN => n496);
   U432 : XOR2_X1 port map( A => b(2), B => b(3), Z => n483);
   U433 : XNOR2_X1 port map( A => b(2), B => b(1), ZN => n497);
   U434 : NAND2_X1 port map( A1 => n484, A2 => n498, ZN => n519);
   U435 : XOR2_X1 port map( A => b(0), B => b(1), Z => n484);
   U436 : INV_X1 port map( A => b(0), ZN => n498);
   U439 : NAND2_X1 port map( A1 => n483, A2 => n497, ZN => n551);
   U440 : NAND2_X1 port map( A1 => n482, A2 => n496, ZN => n552);
   U441 : NAND2_X1 port map( A1 => n481, A2 => n495, ZN => n553);
   U442 : NAND2_X1 port map( A1 => n480, A2 => n494, ZN => n554);
   U443 : NAND2_X1 port map( A1 => n479, A2 => n493, ZN => n555);
   U444 : NAND2_X1 port map( A1 => n478, A2 => n492, ZN => n556);
   U445 : BUF_X1 port map( A => n497, Z => n8);
   U446 : BUF_X1 port map( A => n496, Z => n12);
   U447 : BUF_X1 port map( A => n495, Z => n16);
   U448 : BUF_X1 port map( A => n494, Z => n20);
   U449 : BUF_X1 port map( A => n493, Z => n24);
   U450 : CLKBUF_X1 port map( A => n497, Z => n7);
   U451 : CLKBUF_X1 port map( A => n496, Z => n11);
   U452 : CLKBUF_X1 port map( A => n495, Z => n15);
   U453 : CLKBUF_X1 port map( A => n494, Z => n19);
   U454 : CLKBUF_X1 port map( A => n493, Z => n23);
   U455 : BUF_X1 port map( A => n492, Z => n27);
   U456 : CLKBUF_X1 port map( A => n492, Z => n28);
   U457 : BUF_X1 port map( A => n498, Z => n4);
   U458 : BUF_X1 port map( A => n498, Z => n3);
   U459 : BUF_X1 port map( A => n519, Z => n491);
   U460 : BUF_X1 port map( A => a(1), Z => n476);
   U461 : BUF_X1 port map( A => a(3), Z => n474);
   U462 : BUF_X1 port map( A => a(2), Z => n475);
   U463 : BUF_X1 port map( A => a(4), Z => n473);
   U464 : BUF_X1 port map( A => a(5), Z => n472);
   U465 : BUF_X1 port map( A => a(6), Z => n471);
   U466 : BUF_X1 port map( A => a(8), Z => n469);
   U467 : BUF_X1 port map( A => a(7), Z => n470);
   U468 : BUF_X1 port map( A => a(9), Z => n468);
   U469 : BUF_X1 port map( A => a(10), Z => n467);
   U470 : BUF_X1 port map( A => a(11), Z => n466);
   U471 : BUF_X1 port map( A => a(13), Z => n464);
   U472 : BUF_X1 port map( A => a(12), Z => n465);
   U473 : BUF_X1 port map( A => a(14), Z => n463);
   U474 : BUF_X1 port map( A => a(0), Z => n29);
   U475 : BUF_X1 port map( A => b(1), Z => n1);
   U476 : BUF_X1 port map( A => b(3), Z => n5);
   U477 : BUF_X1 port map( A => b(5), Z => n9);
   U478 : BUF_X1 port map( A => b(7), Z => n13);
   U479 : BUF_X1 port map( A => b(9), Z => n17);
   U480 : BUF_X1 port map( A => b(11), Z => n21);
   U481 : BUF_X1 port map( A => b(13), Z => n25);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_IIR_FILTER.all;

entity IIR_FILTER_DW01_add_0 is

   port( A, B : in std_logic_vector (5 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (5 downto 0);  CO : out std_logic);

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
   
   signal carry_5_port, carry_4_port, carry_3_port, carry_2_port, n1, n_1128 : 
      std_logic;

begin
   
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           n_1128, S => SUM(5));
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

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component IIR_FILTER_DW_mult_tc_5
      port( a : in std_logic_vector (13 downto 0);  b : in std_logic_vector (14
            downto 0);  product : out std_logic_vector (28 downto 0));
   end component;
   
   component IIR_FILTER_DW_mult_tc_4
      port( a : in std_logic_vector (13 downto 0);  b : in std_logic_vector (14
            downto 0);  product : out std_logic_vector (28 downto 0));
   end component;
   
   component IIR_FILTER_DW_mult_tc_3
      port( a : in std_logic_vector (14 downto 0);  b : in std_logic_vector (13
            downto 0);  product : out std_logic_vector (28 downto 0));
   end component;
   
   component IIR_FILTER_DW01_add_0
      port( A, B : in std_logic_vector (5 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (5 downto 0);  CO : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal w_past_14_port, w_past_13_port, w_past_12_port, w_past_11_port, 
      w_past_10_port, w_past_9_port, w_past_8_port, w_past_7_port, 
      w_past_6_port, w_past_5_port, w_past_4_port, w_past_3_port, w_past_2_port
      , w_past_1_port, w_past_0_port, N4, N5, N6, N7, N8, N9, w_14_port, 
      w_13_port, w_12_port, w_11_port, w_10_port, w_9_port, w_8_port, w_7_port,
      w_6_port, w_5_port, w_4_port, w_3_port, w_2_port, w_1_port, w_0_port, N25
      , N26, N27, N28, N29, N30, ff_tmp_0_25_port, ff_tmp_0_24_port, 
      ff_tmp_0_23_port, ff_tmp_0_22_port, ff_tmp_0_21_port, ff_tmp_0_20_port, 
      N31, N32, N33, N34, N35, N36, ff_tmp_1_25_port, ff_tmp_1_24_port, 
      ff_tmp_1_23_port, ff_tmp_1_22_port, ff_tmp_1_21_port, ff_tmp_1_20_port, 
      N37, N38, N39, N40, N41, N42, n1, n112, n113, n114, n115, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, 
      n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, 
      n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, 
      n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, 
      n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, 
      n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, 
      n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, 
      n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, 
      n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, 
      n226, n227, n228, n229, n230, n_1129, n_1130, n_1131, n_1132, n_1133, 
      n_1134, n_1135, n_1136, n_1137, n_1138, n_1139, n_1140, n_1141, n_1142, 
      n_1143, n_1144, n_1145, n_1146, n_1147, n_1148, n_1149, n_1150, n_1151, 
      n_1152, n_1153, n_1154, n_1155, n_1156, n_1157, n_1158, n_1159, n_1160, 
      n_1161, n_1162, n_1163, n_1164, n_1165, n_1166, n_1167, n_1168, n_1169, 
      n_1170, n_1171, n_1172, n_1173, n_1174, n_1175, n_1176, n_1177, n_1178, 
      n_1179, n_1180, n_1181, n_1182, n_1183, n_1184, n_1185, n_1186, n_1187, 
      n_1188, n_1189, n_1190, n_1191, n_1192, n_1193, n_1194, n_1195, n_1196, 
      n_1197, n_1198, n_1199, n_1200, n_1201, n_1202, n_1203, n_1204, n_1205, 
      n_1206, n_1207, n_1208, n_1209, n_1210, n_1211, n_1212, n_1213, n_1214 : 
      std_logic;

begin
   
   n1 <= '0';
   w_past_reg_0_inst : DFF_X1 port map( D => n230, CK => CLK, Q => 
                           w_past_0_port, QN => n_1129);
   w_past_reg_1_inst : DFF_X1 port map( D => n229, CK => CLK, Q => 
                           w_past_1_port, QN => n_1130);
   w_past_reg_2_inst : DFF_X1 port map( D => n228, CK => CLK, Q => 
                           w_past_2_port, QN => n_1131);
   w_past_reg_3_inst : DFF_X1 port map( D => n227, CK => CLK, Q => 
                           w_past_3_port, QN => n_1132);
   w_past_reg_4_inst : DFF_X1 port map( D => n226, CK => CLK, Q => 
                           w_past_4_port, QN => n_1133);
   w_past_reg_5_inst : DFF_X1 port map( D => n225, CK => CLK, Q => 
                           w_past_5_port, QN => n_1134);
   w_past_reg_6_inst : DFF_X1 port map( D => n224, CK => CLK, Q => 
                           w_past_6_port, QN => n_1135);
   w_past_reg_7_inst : DFF_X1 port map( D => n223, CK => CLK, Q => 
                           w_past_7_port, QN => n_1136);
   w_past_reg_8_inst : DFF_X1 port map( D => n222, CK => CLK, Q => 
                           w_past_8_port, QN => n_1137);
   w_past_reg_9_inst : DFF_X1 port map( D => n221, CK => CLK, Q => 
                           w_past_9_port, QN => n_1138);
   w_past_reg_10_inst : DFF_X1 port map( D => n220, CK => CLK, Q => 
                           w_past_10_port, QN => n_1139);
   w_past_reg_11_inst : DFF_X1 port map( D => n219, CK => CLK, Q => 
                           w_past_11_port, QN => n_1140);
   w_past_reg_12_inst : DFF_X1 port map( D => n218, CK => CLK, Q => 
                           w_past_12_port, QN => n_1141);
   w_past_reg_13_inst : DFF_X1 port map( D => n217, CK => CLK, Q => 
                           w_past_13_port, QN => n_1142);
   w_past_reg_14_inst : DFF_X1 port map( D => n216, CK => CLK, Q => 
                           w_past_14_port, QN => n_1143);
   VOUT_reg : DFF_X1 port map( D => n114, CK => CLK, Q => VOUT, QN => n_1144);
   DOUT_reg_13_inst : DFF_X1 port map( D => n113, CK => CLK, Q => DOUT(13), QN 
                           => n210);
   DOUT_reg_12_inst : DFF_X1 port map( D => n112, CK => CLK, Q => DOUT(12), QN 
                           => n209);
   DOUT_reg_11_inst : DFF_X1 port map( D => n211, CK => CLK, Q => DOUT(11), QN 
                           => n208);
   DOUT_reg_10_inst : DFF_X1 port map( D => n212, CK => CLK, Q => DOUT(10), QN 
                           => n207);
   DOUT_reg_9_inst : DFF_X1 port map( D => n213, CK => CLK, Q => DOUT(9), QN =>
                           n206);
   DOUT_reg_8_inst : DFF_X1 port map( D => n214, CK => CLK, Q => DOUT(8), QN =>
                           n205);
   DOUT_reg_7_inst : DFF_X1 port map( D => n215, CK => CLK, Q => DOUT(7), QN =>
                           n204);
   DOUT(0) <= '0';
   DOUT(1) <= '0';
   DOUT(2) <= '0';
   DOUT(3) <= '0';
   DOUT(4) <= '0';
   DOUT(5) <= '0';
   DOUT(6) <= '0';
   add_39 : IIR_FILTER_DW01_add_0 port map( A(5) => ff_tmp_0_25_port, A(4) => 
                           ff_tmp_0_24_port, A(3) => ff_tmp_0_23_port, A(2) => 
                           ff_tmp_0_22_port, A(1) => ff_tmp_0_21_port, A(0) => 
                           ff_tmp_0_20_port, B(5) => ff_tmp_1_25_port, B(4) => 
                           ff_tmp_1_24_port, B(3) => ff_tmp_1_23_port, B(2) => 
                           ff_tmp_1_22_port, B(1) => ff_tmp_1_21_port, B(0) => 
                           ff_tmp_1_20_port, CI => n1, SUM(5) => N42, SUM(4) =>
                           N41, SUM(3) => N40, SUM(2) => N39, SUM(1) => N38, 
                           SUM(0) => N37, CO => n_1145);
   mult_34 : IIR_FILTER_DW_mult_tc_3 port map( a(14) => w_past_14_port, a(13) 
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
                           product(28) => n_1146, product(27) => n_1147, 
                           product(26) => n_1148, product(25) => N9, 
                           product(24) => N8, product(23) => N7, product(22) =>
                           N6, product(21) => N5, product(20) => N4, 
                           product(19) => n_1149, product(18) => n_1150, 
                           product(17) => n_1151, product(16) => n_1152, 
                           product(15) => n_1153, product(14) => n_1154, 
                           product(13) => n_1155, product(12) => n_1156, 
                           product(11) => n_1157, product(10) => n_1158, 
                           product(9) => n_1159, product(8) => n_1160, 
                           product(7) => n_1161, product(6) => n_1162, 
                           product(5) => n_1163, product(4) => n_1164, 
                           product(3) => n_1165, product(2) => n_1166, 
                           product(1) => n_1167, product(0) => n_1168);
   mult_37 : IIR_FILTER_DW_mult_tc_4 port map( a(13) => b0(13), a(12) => b0(12)
                           , a(11) => b0(11), a(10) => b0(10), a(9) => b0(9), 
                           a(8) => b0(8), a(7) => b0(7), a(6) => b0(6), a(5) =>
                           b0(5), a(4) => b0(4), a(3) => b0(3), a(2) => b0(2), 
                           a(1) => b0(1), a(0) => b0(0), b(14) => w_14_port, 
                           b(13) => w_13_port, b(12) => w_12_port, b(11) => 
                           w_11_port, b(10) => w_10_port, b(9) => w_9_port, 
                           b(8) => w_8_port, b(7) => w_7_port, b(6) => w_6_port
                           , b(5) => w_5_port, b(4) => w_4_port, b(3) => 
                           w_3_port, b(2) => w_2_port, b(1) => w_1_port, b(0) 
                           => w_0_port, product(28) => n_1169, product(27) => 
                           n_1170, product(26) => n_1171, product(25) => N30, 
                           product(24) => N29, product(23) => N28, product(22) 
                           => N27, product(21) => N26, product(20) => N25, 
                           product(19) => n_1172, product(18) => n_1173, 
                           product(17) => n_1174, product(16) => n_1175, 
                           product(15) => n_1176, product(14) => n_1177, 
                           product(13) => n_1178, product(12) => n_1179, 
                           product(11) => n_1180, product(10) => n_1181, 
                           product(9) => n_1182, product(8) => n_1183, 
                           product(7) => n_1184, product(6) => n_1185, 
                           product(5) => n_1186, product(4) => n_1187, 
                           product(3) => n_1188, product(2) => n_1189, 
                           product(1) => n_1190, product(0) => n_1191);
   mult_38 : IIR_FILTER_DW_mult_tc_5 port map( a(13) => b1(13), a(12) => b1(12)
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
                           w_past_0_port, product(28) => n_1192, product(27) =>
                           n_1193, product(26) => n_1194, product(25) => N36, 
                           product(24) => N35, product(23) => N34, product(22) 
                           => N33, product(21) => N32, product(20) => N31, 
                           product(19) => n_1195, product(18) => n_1196, 
                           product(17) => n_1197, product(16) => n_1198, 
                           product(15) => n_1199, product(14) => n_1200, 
                           product(13) => n_1201, product(12) => n_1202, 
                           product(11) => n_1203, product(10) => n_1204, 
                           product(9) => n_1205, product(8) => n_1206, 
                           product(7) => n_1207, product(6) => n_1208, 
                           product(5) => n_1209, product(4) => n_1210, 
                           product(3) => n_1211, product(2) => n_1212, 
                           product(1) => n_1213, product(0) => n_1214);
   U95 : OAI22_X1 port map( A1 => n208, A2 => n115, B1 => n116, B2 => n117, ZN 
                           => n211);
   U96 : INV_X1 port map( A => N41, ZN => n117);
   U97 : OAI22_X1 port map( A1 => n207, A2 => n115, B1 => n116, B2 => n118, ZN 
                           => n212);
   U98 : INV_X1 port map( A => N40, ZN => n118);
   U99 : OAI22_X1 port map( A1 => n206, A2 => n115, B1 => n116, B2 => n119, ZN 
                           => n213);
   U100 : INV_X1 port map( A => N39, ZN => n119);
   U101 : OAI22_X1 port map( A1 => n205, A2 => n115, B1 => n116, B2 => n120, ZN
                           => n214);
   U102 : INV_X1 port map( A => N38, ZN => n120);
   U103 : OAI22_X1 port map( A1 => n204, A2 => n115, B1 => n116, B2 => n121, ZN
                           => n215);
   U104 : INV_X1 port map( A => N37, ZN => n121);
   U105 : MUX2_X1 port map( A => w_past_14_port, B => w_14_port, S => n115, Z 
                           => n216);
   U106 : INV_X1 port map( A => n122, ZN => w_14_port);
   U107 : MUX2_X1 port map( A => n123, B => n124, S => n125, Z => n122);
   U108 : AOI22_X1 port map( A1 => DIN(13), A2 => n126, B1 => n127, B2 => n128,
                           ZN => n125);
   U109 : OR2_X1 port map( A1 => n128, A2 => n127, ZN => n126);
   U110 : MUX2_X1 port map( A => w_past_13_port, B => w_13_port, S => n115, Z 
                           => n217);
   U111 : INV_X1 port map( A => n129, ZN => w_13_port);
   U112 : MUX2_X1 port map( A => n124, B => n123, S => n128, Z => n129);
   U113 : OAI21_X1 port map( B1 => n130, B2 => n131, A => n132, ZN => n128);
   U114 : OAI21_X1 port map( B1 => n127, B2 => n133, A => DIN(12), ZN => n132);
   U115 : MUX2_X1 port map( A => n134, B => n131, S => DIN(13), Z => n123);
   U116 : MUX2_X1 port map( A => n131, B => n134, S => DIN(13), Z => n124);
   U117 : MUX2_X1 port map( A => w_past_12_port, B => w_12_port, S => n115, Z 
                           => n218);
   U118 : INV_X1 port map( A => n135, ZN => w_12_port);
   U119 : MUX2_X1 port map( A => n136, B => n137, S => DIN(12), Z => n135);
   U120 : MUX2_X1 port map( A => n131, B => n134, S => n130, Z => n137);
   U121 : MUX2_X1 port map( A => n134, B => n131, S => n130, Z => n136);
   U122 : INV_X1 port map( A => n133, ZN => n130);
   U123 : OAI21_X1 port map( B1 => n138, B2 => n131, A => n139, ZN => n133);
   U124 : OAI21_X1 port map( B1 => n127, B2 => n140, A => DIN(11), ZN => n139);
   U125 : MUX2_X1 port map( A => w_past_11_port, B => w_11_port, S => n115, Z 
                           => n219);
   U126 : INV_X1 port map( A => n141, ZN => w_11_port);
   U127 : MUX2_X1 port map( A => n142, B => n143, S => DIN(11), Z => n141);
   U128 : MUX2_X1 port map( A => n131, B => n134, S => n138, Z => n143);
   U129 : MUX2_X1 port map( A => n134, B => n131, S => n138, Z => n142);
   U130 : INV_X1 port map( A => n140, ZN => n138);
   U131 : OAI21_X1 port map( B1 => n144, B2 => n131, A => n145, ZN => n140);
   U132 : OAI21_X1 port map( B1 => n127, B2 => n146, A => DIN(10), ZN => n145);
   U133 : MUX2_X1 port map( A => w_past_10_port, B => w_10_port, S => n115, Z 
                           => n220);
   U134 : INV_X1 port map( A => n147, ZN => w_10_port);
   U135 : MUX2_X1 port map( A => n148, B => n149, S => DIN(10), Z => n147);
   U136 : MUX2_X1 port map( A => n131, B => n134, S => n144, Z => n149);
   U137 : MUX2_X1 port map( A => n134, B => n131, S => n144, Z => n148);
   U138 : INV_X1 port map( A => n146, ZN => n144);
   U139 : OAI21_X1 port map( B1 => n150, B2 => n131, A => n151, ZN => n146);
   U140 : OAI21_X1 port map( B1 => n127, B2 => n152, A => DIN(9), ZN => n151);
   U141 : MUX2_X1 port map( A => w_past_9_port, B => w_9_port, S => n115, Z => 
                           n221);
   U142 : INV_X1 port map( A => n153, ZN => w_9_port);
   U143 : MUX2_X1 port map( A => n154, B => n155, S => DIN(9), Z => n153);
   U144 : MUX2_X1 port map( A => n131, B => n134, S => n150, Z => n155);
   U145 : MUX2_X1 port map( A => n134, B => n131, S => n150, Z => n154);
   U146 : INV_X1 port map( A => n152, ZN => n150);
   U147 : OAI21_X1 port map( B1 => n156, B2 => n131, A => n157, ZN => n152);
   U148 : OAI21_X1 port map( B1 => n127, B2 => n158, A => DIN(8), ZN => n157);
   U149 : MUX2_X1 port map( A => w_past_8_port, B => w_8_port, S => n115, Z => 
                           n222);
   U150 : INV_X1 port map( A => n159, ZN => w_8_port);
   U151 : MUX2_X1 port map( A => n160, B => n161, S => DIN(8), Z => n159);
   U152 : MUX2_X1 port map( A => n131, B => n134, S => n156, Z => n161);
   U153 : MUX2_X1 port map( A => n134, B => n131, S => n156, Z => n160);
   U154 : INV_X1 port map( A => n158, ZN => n156);
   U155 : OAI21_X1 port map( B1 => n162, B2 => n131, A => n163, ZN => n158);
   U156 : OAI21_X1 port map( B1 => n127, B2 => n164, A => DIN(7), ZN => n163);
   U157 : MUX2_X1 port map( A => w_past_7_port, B => w_7_port, S => n115, Z => 
                           n223);
   U158 : INV_X1 port map( A => n165, ZN => w_7_port);
   U159 : MUX2_X1 port map( A => n166, B => n167, S => DIN(7), Z => n165);
   U160 : MUX2_X1 port map( A => n134, B => n131, S => n164, Z => n167);
   U161 : MUX2_X1 port map( A => n131, B => n134, S => n164, Z => n166);
   U162 : INV_X1 port map( A => n162, ZN => n164);
   U163 : AOI22_X1 port map( A1 => n168, A2 => n127, B1 => n169, B2 => DIN(6), 
                           ZN => n162);
   U164 : OR2_X1 port map( A1 => n127, A2 => n168, ZN => n169);
   U165 : INV_X1 port map( A => n131, ZN => n127);
   U166 : MUX2_X1 port map( A => w_past_6_port, B => w_6_port, S => n115, Z => 
                           n224);
   U167 : INV_X1 port map( A => n170, ZN => w_6_port);
   U168 : MUX2_X1 port map( A => n171, B => n172, S => DIN(6), Z => n170);
   U169 : MUX2_X1 port map( A => n134, B => n131, S => n168, Z => n172);
   U170 : MUX2_X1 port map( A => n131, B => n134, S => n168, Z => n171);
   U171 : OAI22_X1 port map( A1 => n173, A2 => n131, B1 => n174, B2 => n175, ZN
                           => n168);
   U172 : AND2_X1 port map( A1 => n131, A2 => n173, ZN => n174);
   U173 : MUX2_X1 port map( A => w_past_5_port, B => w_5_port, S => n115, Z => 
                           n225);
   U174 : INV_X1 port map( A => n176, ZN => w_5_port);
   U175 : MUX2_X1 port map( A => n177, B => n178, S => n175, Z => n176);
   U176 : INV_X1 port map( A => DIN(5), ZN => n175);
   U177 : MUX2_X1 port map( A => n134, B => n131, S => n173, Z => n178);
   U178 : MUX2_X1 port map( A => n131, B => n134, S => n173, Z => n177);
   U179 : AOI21_X1 port map( B1 => n179, B2 => N8, A => n180, ZN => n173);
   U180 : INV_X1 port map( A => n181, ZN => n180);
   U181 : OAI21_X1 port map( B1 => N8, B2 => n179, A => DIN(4), ZN => n181);
   U182 : NAND2_X1 port map( A1 => RST_n, A2 => n131, ZN => n134);
   U183 : NAND2_X1 port map( A1 => RST_n, A2 => N9, ZN => n131);
   U184 : MUX2_X1 port map( A => w_past_4_port, B => w_4_port, S => n115, Z => 
                           n226);
   U185 : AND2_X1 port map( A1 => n182, A2 => RST_n, ZN => w_4_port);
   U186 : XOR2_X1 port map( A => n179, B => n183, Z => n182);
   U187 : XOR2_X1 port map( A => N8, B => DIN(4), Z => n183);
   U188 : OAI22_X1 port map( A1 => n184, A2 => n185, B1 => n186, B2 => n187, ZN
                           => n179);
   U189 : INV_X1 port map( A => DIN(3), ZN => n187);
   U190 : AND2_X1 port map( A1 => n185, A2 => n184, ZN => n186);
   U191 : INV_X1 port map( A => N7, ZN => n185);
   U192 : MUX2_X1 port map( A => w_past_3_port, B => w_3_port, S => n115, Z => 
                           n227);
   U193 : AND2_X1 port map( A1 => n188, A2 => RST_n, ZN => w_3_port);
   U194 : XOR2_X1 port map( A => n189, B => n184, Z => n188);
   U195 : AOI21_X1 port map( B1 => n190, B2 => N6, A => n191, ZN => n184);
   U196 : INV_X1 port map( A => n192, ZN => n191);
   U197 : OAI21_X1 port map( B1 => N6, B2 => n190, A => DIN(2), ZN => n192);
   U198 : XNOR2_X1 port map( A => DIN(3), B => N7, ZN => n189);
   U199 : MUX2_X1 port map( A => w_past_2_port, B => w_2_port, S => n115, Z => 
                           n228);
   U200 : AND2_X1 port map( A1 => n193, A2 => RST_n, ZN => w_2_port);
   U201 : XNOR2_X1 port map( A => n194, B => n190, ZN => n193);
   U202 : OAI21_X1 port map( B1 => n195, B2 => n196, A => n197, ZN => n190);
   U203 : OAI21_X1 port map( B1 => N5, B2 => n198, A => DIN(1), ZN => n197);
   U204 : INV_X1 port map( A => n195, ZN => n198);
   U205 : INV_X1 port map( A => N5, ZN => n196);
   U206 : XNOR2_X1 port map( A => DIN(2), B => N6, ZN => n194);
   U207 : MUX2_X1 port map( A => w_past_1_port, B => w_1_port, S => n115, Z => 
                           n229);
   U208 : AND2_X1 port map( A1 => RST_n, A2 => n199, ZN => w_1_port);
   U209 : XNOR2_X1 port map( A => n195, B => n200, ZN => n199);
   U210 : XOR2_X1 port map( A => N5, B => DIN(1), Z => n200);
   U211 : NAND2_X1 port map( A1 => N4, A2 => DIN(0), ZN => n195);
   U212 : MUX2_X1 port map( A => w_past_0_port, B => w_0_port, S => n115, Z => 
                           n230);
   U213 : AND2_X1 port map( A1 => RST_n, A2 => n201, ZN => w_0_port);
   U214 : XOR2_X1 port map( A => N4, B => DIN(0), Z => n201);
   U215 : AND2_X1 port map( A1 => RST_n, A2 => VIN, ZN => n114);
   U216 : OAI22_X1 port map( A1 => n210, A2 => n115, B1 => n116, B2 => n202, ZN
                           => n113);
   U217 : OAI22_X1 port map( A1 => n209, A2 => n115, B1 => n116, B2 => n202, ZN
                           => n112);
   U218 : INV_X1 port map( A => N42, ZN => n202);
   U219 : NAND2_X1 port map( A1 => RST_n, A2 => n115, ZN => n116);
   U220 : NAND2_X1 port map( A1 => RST_n, A2 => n203, ZN => n115);
   U221 : INV_X1 port map( A => VIN, ZN => n203);
   U222 : AND2_X1 port map( A1 => N36, A2 => RST_n, ZN => ff_tmp_1_25_port);
   U223 : AND2_X1 port map( A1 => N35, A2 => RST_n, ZN => ff_tmp_1_24_port);
   U224 : AND2_X1 port map( A1 => N34, A2 => RST_n, ZN => ff_tmp_1_23_port);
   U225 : AND2_X1 port map( A1 => N33, A2 => RST_n, ZN => ff_tmp_1_22_port);
   U226 : AND2_X1 port map( A1 => N32, A2 => RST_n, ZN => ff_tmp_1_21_port);
   U227 : AND2_X1 port map( A1 => N31, A2 => RST_n, ZN => ff_tmp_1_20_port);
   U228 : AND2_X1 port map( A1 => N30, A2 => RST_n, ZN => ff_tmp_0_25_port);
   U229 : AND2_X1 port map( A1 => N29, A2 => RST_n, ZN => ff_tmp_0_24_port);
   U230 : AND2_X1 port map( A1 => N28, A2 => RST_n, ZN => ff_tmp_0_23_port);
   U231 : AND2_X1 port map( A1 => N27, A2 => RST_n, ZN => ff_tmp_0_22_port);
   U232 : AND2_X1 port map( A1 => N26, A2 => RST_n, ZN => ff_tmp_0_21_port);
   U233 : AND2_X1 port map( A1 => N25, A2 => RST_n, ZN => ff_tmp_0_20_port);

end SYN_BEHAVIORAL;
