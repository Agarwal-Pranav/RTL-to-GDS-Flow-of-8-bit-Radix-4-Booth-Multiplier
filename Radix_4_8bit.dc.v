/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Sat Sep  6 00:02:21 2025
/////////////////////////////////////////////////////////////


module Radix_4_8bit_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n2;
  wire   [7:1] carry;

  ADFM2RA U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADFM2RA U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADFM2RA U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADFM2RA U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADFM2RA U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3M2RA U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Z(SUM[7]) );
  OR2M2R U1 ( .A(B[1]), .B(A[1]), .Z(carry[2]) );
  INVM2R U2 ( .A(A[1]), .Z(n2) );
  BUFM2R U3 ( .A(A[0]), .Z(SUM[0]) );
  XOR2M2RA U4 ( .A(n2), .B(B[1]), .Z(SUM[1]) );
endmodule


module Radix_4_8bit_DW01_add_1 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  ADFM2RA U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADFM2RA U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADFM2RA U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADFM2RA U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADFM2RA U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  XOR3M2RA U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Z(SUM[7]) );
  AN2M2R U1 ( .A(B[1]), .B(A[1]), .Z(n1) );
  BUFM2R U2 ( .A(A[0]), .Z(SUM[0]) );
  XOR2M2RA U3 ( .A(B[1]), .B(A[1]), .Z(SUM[1]) );
endmodule


module Radix_4_8bit_DW01_add_2 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  ADFM2RA U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADFM2RA U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADFM2RA U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADFM2RA U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADFM2RA U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADFM2RA U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3M2RA U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Z(SUM[7]) );
  AN2M2R U1 ( .A(B[0]), .B(A[0]), .Z(n1) );
  XOR2M2RA U2 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Radix_4_8bit_DW01_add_3 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  ADFM2RA U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .S(SUM[7]) );
  ADFM2RA U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADFM2RA U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADFM2RA U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADFM2RA U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADFM2RA U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADFM2RA U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AN2M2R U1 ( .A(B[0]), .B(A[0]), .Z(n1) );
  XOR2M2RA U2 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Radix_4_8bit ( clk, rst_n, A, Q, P, done );
  input [7:0] A;
  input [7:0] Q;
  output [15:0] P;
  input clk, rst_n;
  output done;
  wire   N50, N51, N52, N53, N54, N55, N56, N57, N66, N67, N68, N69, N70, N71,
         N72, N73, N89, N90, N91, N92, N93, N94, N95, N96, N113, N114, N115,
         N116, N117, N118, N119, N120, N195, N220, N246, N247, N248, N249, n43,
         n44, n54, n55, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n146, n147, n148, n149,
         \sub_2_root_r427/DIFF[1] , \sub_2_root_r427/DIFF[2] ,
         \sub_2_root_r427/DIFF[3] , \sub_2_root_r427/DIFF[4] ,
         \sub_2_root_r427/DIFF[5] , \sub_2_root_r427/DIFF[6] ,
         \sub_2_root_r427/DIFF[7] , n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181;
  wire   [3:0] CS;
  wire   [3:0] NS;
  wire   [16:0] A_ext;
  wire   [3:0] i;
  wire   [2:0] group;

  LAQM2RA \NS_reg[0]  ( .G(N249), .D(N246), .Q(NS[0]) );
  LAQM2RA \NS_reg[2]  ( .G(N249), .D(N248), .Q(NS[2]) );
  LAQM2RA \NS_reg[1]  ( .G(N249), .D(N247), .Q(NS[1]) );
  XOR2M2RA U91 ( .A(group[1]), .B(group[0]), .Z(n96) );
  OAI211M2R U106 ( .A1(n105), .A2(n108), .B(n107), .C(n109), .Z(N248) );
  AOI21B20M1R U150 ( .NA1(n168), .NA2(n104), .B(n98), .Z(n106) );
  Radix_4_8bit_DW01_add_0 add_1_root_add_96_2 ( .A(A_ext[16:9]), .B({n164, 
        n163, n162, n161, n160, n159, n158, 1'b1}), .CI(1'b1), .SUM({N96, N95, 
        N94, N93, N92, N91, N90, N89}) );
  Radix_4_8bit_DW01_add_1 add_93 ( .A(A_ext[16:9]), .B({Q[6:0], 1'b0}), .CI(
        1'b0), .SUM({N73, N72, N71, N70, N69, N68, N67, N66}) );
  Radix_4_8bit_DW01_add_2 r424 ( .A(A_ext[16:9]), .B(Q), .CI(1'b0), .SUM({N57, 
        N56, N55, N54, N53, N52, N51, N50}) );
  Radix_4_8bit_DW01_add_3 add_0_root_r427 ( .A(A_ext[16:9]), .B({
        \sub_2_root_r427/DIFF[7] , \sub_2_root_r427/DIFF[6] , 
        \sub_2_root_r427/DIFF[5] , \sub_2_root_r427/DIFF[4] , 
        \sub_2_root_r427/DIFF[3] , \sub_2_root_r427/DIFF[2] , 
        \sub_2_root_r427/DIFF[1] , Q[0]}), .CI(1'b0), .SUM({N120, N119, N118, 
        N117, N116, N115, N114, N113}) );
  DFQM2RA \P_reg[15]  ( .D(n110), .CK(clk), .Q(P[15]) );
  DFQM2RA \P_reg[13]  ( .D(n114), .CK(clk), .Q(P[13]) );
  DFQM2RA \P_reg[11]  ( .D(n118), .CK(clk), .Q(P[11]) );
  DFQM2RA \P_reg[9]  ( .D(n122), .CK(clk), .Q(P[9]) );
  DFQM2RA \P_reg[7]  ( .D(n126), .CK(clk), .Q(P[7]) );
  DFQM2RA \P_reg[5]  ( .D(n130), .CK(clk), .Q(P[5]) );
  DFQM2RA \P_reg[3]  ( .D(n134), .CK(clk), .Q(P[3]) );
  DFQM2RA \P_reg[1]  ( .D(n138), .CK(clk), .Q(P[1]) );
  DFQM2RA \P_reg[14]  ( .D(n112), .CK(clk), .Q(P[14]) );
  DFQM2RA \P_reg[12]  ( .D(n116), .CK(clk), .Q(P[12]) );
  DFQM2RA \P_reg[10]  ( .D(n120), .CK(clk), .Q(P[10]) );
  DFQM2RA \P_reg[8]  ( .D(n124), .CK(clk), .Q(P[8]) );
  DFQM2RA \P_reg[6]  ( .D(n128), .CK(clk), .Q(P[6]) );
  DFQM2RA \P_reg[4]  ( .D(n132), .CK(clk), .Q(P[4]) );
  DFQM2RA \P_reg[2]  ( .D(n136), .CK(clk), .Q(P[2]) );
  DFQM2RA \P_reg[0]  ( .D(n143), .CK(clk), .Q(P[0]) );
  DFQM2RA \A_ext_reg[0]  ( .D(n141), .CK(clk), .Q(A_ext[0]) );
  DFQM2RA \A_ext_reg[1]  ( .D(n144), .CK(clk), .Q(A_ext[1]) );
  DFQM2RA \A_ext_reg[8]  ( .D(n127), .CK(clk), .Q(A_ext[8]) );
  DFQM2RA \A_ext_reg[6]  ( .D(n131), .CK(clk), .Q(A_ext[6]) );
  DFQM2RA \A_ext_reg[4]  ( .D(n135), .CK(clk), .Q(A_ext[4]) );
  DFQM2RA \A_ext_reg[7]  ( .D(n129), .CK(clk), .Q(A_ext[7]) );
  DFQM2RA \A_ext_reg[5]  ( .D(n133), .CK(clk), .Q(A_ext[5]) );
  DFQM2RA \A_ext_reg[3]  ( .D(n137), .CK(clk), .Q(A_ext[3]) );
  DFQM2RA \A_ext_reg[2]  ( .D(n139), .CK(clk), .Q(A_ext[2]) );
  DFQBM2RA \i_reg[3]  ( .D(n149), .CK(clk), .QB(n43) );
  DFQM2RA \i_reg[2]  ( .D(n147), .CK(clk), .Q(i[2]) );
  DFQBM2RA \i_reg[1]  ( .D(n146), .CK(clk), .QB(n44) );
  DFQM2RA \i_reg[0]  ( .D(n148), .CK(clk), .Q(i[0]) );
  DFQM2RA \A_ext_reg[16]  ( .D(n111), .CK(clk), .Q(A_ext[16]) );
  DFQRM2RA \CS_reg[2]  ( .D(NS[2]), .CK(clk), .RB(rst_n), .Q(CS[2]) );
  DFQM2RA \A_ext_reg[15]  ( .D(n113), .CK(clk), .Q(A_ext[15]) );
  DFQRM2RA \CS_reg[0]  ( .D(NS[0]), .CK(clk), .RB(rst_n), .Q(CS[0]) );
  DFQRM2RA \CS_reg[1]  ( .D(NS[1]), .CK(clk), .RB(rst_n), .Q(CS[1]) );
  DFQM2RA \A_ext_reg[14]  ( .D(n115), .CK(clk), .Q(A_ext[14]) );
  DFQM2RA \group_reg[1]  ( .D(n142), .CK(clk), .Q(group[1]) );
  DFQM2RA \group_reg[0]  ( .D(n140), .CK(clk), .Q(group[0]) );
  DFQM2RA \A_ext_reg[13]  ( .D(n117), .CK(clk), .Q(A_ext[13]) );
  DFQM2RA \A_ext_reg[12]  ( .D(n119), .CK(clk), .Q(A_ext[12]) );
  DFQM2RA \A_ext_reg[11]  ( .D(n121), .CK(clk), .Q(A_ext[11]) );
  DFQM2RA \A_ext_reg[9]  ( .D(n125), .CK(clk), .Q(A_ext[9]) );
  DFQM2RA \A_ext_reg[10]  ( .D(n123), .CK(clk), .Q(A_ext[10]) );
  DFEM1RA \group_reg[2]  ( .D(A_ext[2]), .E(n93), .CK(clk), .Q(group[2]), .QB(
        n181) );
  INVM1R U152 ( .A(1'b0), .Z(done) );
  OAI22B10M2R U154 ( .NA2(A_ext[11]), .A1(n57), .B1(n81), .B2(n67), .Z(n121)
         );
  OAI22B10M2R U155 ( .NA2(A_ext[12]), .A1(n57), .B1(n78), .B2(n67), .Z(n119)
         );
  OAI22B10M2R U156 ( .NA2(A_ext[13]), .A1(n57), .B1(n75), .B2(n67), .Z(n117)
         );
  OAI22B10M2R U157 ( .NA2(A_ext[14]), .A1(n57), .B1(n72), .B2(n67), .Z(n115)
         );
  NR2M2R U158 ( .A(Q[1]), .B(Q[0]), .Z(n152) );
  OAI22B10M2R U159 ( .NA2(A_ext[15]), .A1(n57), .B1(n66), .B2(n67), .Z(n113)
         );
  NR3M2R U160 ( .A(CS[0]), .B(CS[2]), .C(n177), .Z(n70) );
  INVM2R U161 ( .A(n101), .Z(n168) );
  INVM2R U162 ( .A(n93), .Z(n166) );
  INVM2R U163 ( .A(N220), .Z(n167) );
  ND2M2R U164 ( .A(n172), .B(n173), .Z(N247) );
  AO22M1RA U165 ( .A1(N72), .A2(n64), .B1(N95), .B2(n65), .Z(n71) );
  AO22M1RA U166 ( .A1(N71), .A2(n64), .B1(N94), .B2(n65), .Z(n74) );
  AN2M2R U167 ( .A(n160), .B(n152), .Z(n153) );
  NR3M2R U168 ( .A(n173), .B(n169), .C(n92), .Z(n90) );
  OAI21M2R U169 ( .A1(n169), .A2(n172), .B(n57), .Z(n92) );
  NR2B1M2R U170 ( .NA(n96), .B(n181), .Z(n61) );
  AN2M2R U171 ( .A(n161), .B(n153), .Z(n154) );
  AO22M1RA U172 ( .A1(N70), .A2(n64), .B1(N93), .B2(n65), .Z(n77) );
  NR2B1M2R U173 ( .NA(n60), .B(n92), .Z(n91) );
  AN2M2R U174 ( .A(n162), .B(n154), .Z(n155) );
  AN2M2R U175 ( .A(n163), .B(n155), .Z(n156) );
  AO22M1RA U176 ( .A1(N69), .A2(n64), .B1(N92), .B2(n65), .Z(n80) );
  ND2M2R U177 ( .A(n164), .B(n156), .Z(n157) );
  AO22M1RA U178 ( .A1(N68), .A2(n64), .B1(N91), .B2(n65), .Z(n83) );
  INVM2R U179 ( .A(n59), .Z(n172) );
  INVM2R U180 ( .A(n70), .Z(n173) );
  INVM2R U181 ( .A(n68), .Z(n170) );
  NR2M2R U182 ( .A(n107), .B(n169), .Z(n101) );
  NR4M1R U183 ( .A(n97), .B(n176), .C(n169), .D(n175), .Z(n93) );
  NR3M4R U184 ( .A(n109), .B(n169), .C(n176), .Z(N220) );
  INVM2R U185 ( .A(n105), .Z(n175) );
  MOAI22M2RA U186 ( .A1(n54), .A2(n55), .B1(n55), .B2(A_ext[16]), .Z(n111) );
  OAI21M2R U187 ( .A1(n169), .A2(n173), .B(n57), .Z(n55) );
  ND3M2R U188 ( .A(rst_n), .B(n59), .C(n58), .Z(n54) );
  AO221M1RA U189 ( .A1(N120), .A2(n61), .B1(N57), .B2(n62), .C(n63), .Z(n58)
         );
  AO22M1RA U190 ( .A1(N73), .A2(n64), .B1(N96), .B2(n65), .Z(n63) );
  XOR2M2RA U191 ( .A(Q[7]), .B(n157), .Z(\sub_2_root_r427/DIFF[7] ) );
  AOI22M2R U192 ( .A1(n59), .A2(n69), .B1(n70), .B2(A_ext[16]), .Z(n66) );
  AO221M1RA U193 ( .A1(N119), .A2(n61), .B1(N56), .B2(n62), .C(n71), .Z(n69)
         );
  INVM2R U194 ( .A(Q[0]), .Z(n158) );
  INVM2R U195 ( .A(Q[1]), .Z(n159) );
  AOI22M2R U196 ( .A1(n59), .A2(n73), .B1(n70), .B2(A_ext[16]), .Z(n72) );
  AO221M1RA U197 ( .A1(N118), .A2(n61), .B1(N55), .B2(n62), .C(n74), .Z(n73)
         );
  INVM2R U198 ( .A(Q[2]), .Z(n160) );
  ND2M2R U199 ( .A(n94), .B(rst_n), .Z(n57) );
  AOI211M2R U200 ( .A1(n59), .A2(n95), .B(n68), .C(n70), .Z(n94) );
  OR4M2R U201 ( .A(n65), .B(n64), .C(n61), .D(n62), .Z(n95) );
  AO222M2RA U202 ( .A1(A_ext[5]), .A2(n90), .B1(A[2]), .B2(n91), .C1(A_ext[3]), 
        .C2(n92), .Z(n137) );
  AO222M2RA U203 ( .A1(A_ext[7]), .A2(n90), .B1(A[4]), .B2(n91), .C1(A_ext[5]), 
        .C2(n92), .Z(n133) );
  AO222M2RA U204 ( .A1(A_ext[4]), .A2(n90), .B1(A[1]), .B2(n91), .C1(A_ext[2]), 
        .C2(n92), .Z(n139) );
  AO222M2RA U205 ( .A1(A_ext[6]), .A2(n90), .B1(A[3]), .B2(n91), .C1(A_ext[4]), 
        .C2(n92), .Z(n135) );
  AO222M2RA U206 ( .A1(A_ext[3]), .A2(n90), .B1(A[0]), .B2(n91), .C1(A_ext[1]), 
        .C2(n92), .Z(n144) );
  AO222M2RA U207 ( .A1(n90), .A2(A_ext[9]), .B1(A[6]), .B2(n91), .C1(A_ext[7]), 
        .C2(n92), .Z(n129) );
  AO222M2RA U208 ( .A1(n90), .A2(A_ext[8]), .B1(A[5]), .B2(n91), .C1(A_ext[6]), 
        .C2(n92), .Z(n131) );
  AO222M2RA U209 ( .A1(n90), .A2(A_ext[10]), .B1(A[7]), .B2(n91), .C1(A_ext[8]), .C2(n92), .Z(n127) );
  AOI22M2R U210 ( .A1(n59), .A2(n76), .B1(A_ext[15]), .B2(n70), .Z(n75) );
  AO221M1RA U211 ( .A1(N117), .A2(n61), .B1(N54), .B2(n62), .C(n77), .Z(n76)
         );
  NR2B1M2R U212 ( .NA(n96), .B(group[2]), .Z(n62) );
  AN3M2R U213 ( .A(group[1]), .B(n181), .C(group[0]), .Z(n64) );
  AO22M1RA U214 ( .A1(n92), .A2(A_ext[0]), .B1(n90), .B2(A_ext[2]), .Z(n141)
         );
  INVM2R U215 ( .A(Q[3]), .Z(n161) );
  NR3M2R U216 ( .A(group[0]), .B(group[1]), .C(n181), .Z(n65) );
  AOI22M2R U217 ( .A1(n59), .A2(n79), .B1(A_ext[14]), .B2(n70), .Z(n78) );
  AO221M1RA U218 ( .A1(N116), .A2(n61), .B1(N53), .B2(n62), .C(n80), .Z(n79)
         );
  ND2M2R U219 ( .A(CS[0]), .B(n177), .Z(n97) );
  NR2M2R U220 ( .A(n97), .B(CS[2]), .Z(n59) );
  INVM2R U221 ( .A(CS[1]), .Z(n177) );
  ND2M2R U222 ( .A(n57), .B(rst_n), .Z(n67) );
  AOI22M2R U223 ( .A1(n59), .A2(n82), .B1(A_ext[13]), .B2(n70), .Z(n81) );
  AO221M1RA U224 ( .A1(N115), .A2(n61), .B1(N52), .B2(n62), .C(n83), .Z(n82)
         );
  OAI22M2R U225 ( .A1(n84), .A2(n67), .B1(n57), .B2(n180), .Z(n123) );
  INVM2R U226 ( .A(A_ext[10]), .Z(n180) );
  AOI22M2R U227 ( .A1(n59), .A2(n85), .B1(A_ext[12]), .B2(n70), .Z(n84) );
  AO221M1RA U228 ( .A1(N114), .A2(n61), .B1(N51), .B2(n62), .C(n86), .Z(n85)
         );
  OAI22M2R U229 ( .A1(n87), .A2(n67), .B1(n57), .B2(n179), .Z(n125) );
  INVM2R U230 ( .A(A_ext[9]), .Z(n179) );
  AOI22M2R U231 ( .A1(n59), .A2(n88), .B1(A_ext[11]), .B2(n70), .Z(n87) );
  AO221M1RA U232 ( .A1(N113), .A2(n61), .B1(N50), .B2(n62), .C(n89), .Z(n88)
         );
  INVM2R U233 ( .A(Q[4]), .Z(n162) );
  NR2M2R U234 ( .A(n109), .B(CS[2]), .Z(n68) );
  OR2M2R U235 ( .A(CS[0]), .B(CS[1]), .Z(n109) );
  AO22M1RA U236 ( .A1(N67), .A2(n64), .B1(N90), .B2(n65), .Z(n86) );
  AO22M1RA U237 ( .A1(N66), .A2(n64), .B1(N89), .B2(n65), .Z(n89) );
  INVM2R U238 ( .A(Q[5]), .Z(n163) );
  NR2M2R U239 ( .A(N195), .B(n174), .Z(n98) );
  ND2M2R U240 ( .A(n170), .B(rst_n), .Z(N195) );
  INVM2R U241 ( .A(n107), .Z(n174) );
  ND3M2R U242 ( .A(CS[0]), .B(n176), .C(CS[1]), .Z(n107) );
  OAI32M2R U243 ( .A1(n105), .A2(n98), .A3(n168), .B1(n106), .B2(n43), .Z(n149) );
  INVM2R U244 ( .A(CS[2]), .Z(n176) );
  ND2M2R U245 ( .A(n170), .B(rst_n), .Z(n60) );
  OAI32M2R U246 ( .A1(n168), .A2(n98), .A3(n99), .B1(n100), .B2(n44), .Z(n146)
         );
  AOI21M2R U247 ( .A1(i[0]), .A2(n101), .B(n98), .Z(n100) );
  AO22M1RA U248 ( .A1(n166), .A2(group[0]), .B1(n93), .B2(A_ext[0]), .Z(n140)
         );
  AO22M1RA U249 ( .A1(n166), .A2(group[1]), .B1(n93), .B2(A_ext[1]), .Z(n142)
         );
  OAI32M2R U250 ( .A1(n168), .A2(i[0]), .A3(n98), .B1(n178), .B2(n165), .Z(
        n148) );
  INVM2R U251 ( .A(n98), .Z(n165) );
  INVM2R U252 ( .A(Q[6]), .Z(n164) );
  AO22M1RA U253 ( .A1(N220), .A2(A_ext[1]), .B1(P[0]), .B2(n167), .Z(n143) );
  AO22M1RA U254 ( .A1(N220), .A2(A_ext[3]), .B1(P[2]), .B2(n167), .Z(n136) );
  AO22M1RA U255 ( .A1(N220), .A2(A_ext[5]), .B1(P[4]), .B2(n167), .Z(n132) );
  AO22M1RA U256 ( .A1(N220), .A2(A_ext[7]), .B1(P[6]), .B2(n167), .Z(n128) );
  AO22M1RA U257 ( .A1(N220), .A2(A_ext[9]), .B1(P[8]), .B2(n167), .Z(n124) );
  AO22M1RA U258 ( .A1(N220), .A2(A_ext[11]), .B1(P[10]), .B2(n167), .Z(n120)
         );
  AO22M1RA U259 ( .A1(N220), .A2(A_ext[13]), .B1(P[12]), .B2(n167), .Z(n116)
         );
  AO22M1RA U260 ( .A1(N220), .A2(A_ext[15]), .B1(P[14]), .B2(n167), .Z(n112)
         );
  AO22M1RA U261 ( .A1(N220), .A2(A_ext[2]), .B1(P[1]), .B2(n167), .Z(n138) );
  AO22M1RA U262 ( .A1(N220), .A2(A_ext[4]), .B1(P[3]), .B2(n167), .Z(n134) );
  AO22M1RA U263 ( .A1(N220), .A2(A_ext[6]), .B1(P[5]), .B2(n167), .Z(n130) );
  AO22M1RA U264 ( .A1(N220), .A2(A_ext[8]), .B1(P[7]), .B2(n167), .Z(n126) );
  AO22M1RA U265 ( .A1(N220), .A2(A_ext[10]), .B1(P[9]), .B2(n167), .Z(n122) );
  AO22M1RA U266 ( .A1(N220), .A2(A_ext[12]), .B1(P[11]), .B2(n167), .Z(n118)
         );
  AO22M1RA U267 ( .A1(N220), .A2(A_ext[14]), .B1(P[13]), .B2(n167), .Z(n114)
         );
  AO22M1RA U268 ( .A1(N220), .A2(A_ext[16]), .B1(P[15]), .B2(n167), .Z(n110)
         );
  OAI22B10M2R U269 ( .NA2(i[2]), .A1(n102), .B1(n98), .B2(n103), .Z(n147) );
  NR2M2R U270 ( .A(n104), .B(n60), .Z(n103) );
  NR2M2R U271 ( .A(n98), .B(n99), .Z(n102) );
  NR2M2R U272 ( .A(n99), .B(i[2]), .Z(n104) );
  ND2M2R U273 ( .A(n44), .B(n178), .Z(n99) );
  ND2M2R U274 ( .A(n104), .B(n43), .Z(n105) );
  INVM2R U275 ( .A(i[0]), .Z(n178) );
  INVM2R U276 ( .A(rst_n), .Z(n169) );
  OAI32M2R U277 ( .A1(n97), .A2(n175), .A3(n176), .B1(CS[2]), .B2(n171), .Z(
        N246) );
  INVM2R U278 ( .A(n97), .Z(n171) );
  ND2M2R U279 ( .A(CS[2]), .B(n177), .Z(n108) );
  ND2M2R U280 ( .A(CS[1]), .B(CS[2]), .Z(N249) );
  XOR2M2RA U281 ( .A(n159), .B(n158), .Z(\sub_2_root_r427/DIFF[1] ) );
  XOR2M2RA U282 ( .A(n160), .B(n152), .Z(\sub_2_root_r427/DIFF[2] ) );
  XOR2M2RA U283 ( .A(n161), .B(n153), .Z(\sub_2_root_r427/DIFF[3] ) );
  XOR2M2RA U284 ( .A(n162), .B(n154), .Z(\sub_2_root_r427/DIFF[4] ) );
  XOR2M2RA U285 ( .A(n163), .B(n155), .Z(\sub_2_root_r427/DIFF[5] ) );
  XOR2M2RA U286 ( .A(n164), .B(n156), .Z(\sub_2_root_r427/DIFF[6] ) );
endmodule

