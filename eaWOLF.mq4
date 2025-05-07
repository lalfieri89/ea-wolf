//+------------------------------------------------------------------+
//|                                          ea WOLF.mq4 |

#property copyright "EA WOLF";
#property link " ";
#property version "";
#property strict

#import "stdlib.ex4"
string ErrorDescription(int);
#import

string expirytime = "4022.3.27"; // " Year.Month.Date " 
int Account_Number = 0; // Accountnumber for accountlock: PUT 0 FOR BEING UNLOCKED (NOT LOCKED) !! 

int PotenzaSell;
int PotenzaBuy;
int ProfitTarget = 10;
extern double LotSize = 0.01;
int UltraSell;
int UltraBuy;
int MaxOrders = 5;
bool PowerRisk;
int SwapMinimo = -100;

extern bool lotSizeAutomatic;
sinput string __________sizeTarget__________="0.01 every 'size target', ex: 0.01/1000 ";
extern int sizeTarget = 1000;
sinput string __________PowerTrade__________="1.Low  2.Medium  3.High";
extern int PowerTrade = 3;
extern bool PowerExtra;
extern int StopLossBalance = 25;

int I_i_0;
int I_i_1;
int I_i_2;
int I_i_3;
int I_i_4;
int I_i_5;
int I_i_6;
int I_i_7;
int I_i_8;
int I_i_9;
int I_i_10;
int I_i_11;
int I_i_12;
int I_i_13;
int I_i_14;
double I_d_0;
double I_d_1;
double I_d_2;
double I_d_3;
double I_d_4;
double I_d_5;
double G_d_6;
bool I_b_1;
double I_d_7;
int I_i_15;
int I_i_16;
int I_i_17;
int I_i_18;
int G_i_19;
int G_i_20;
double G_d_8;
int G_i_21;
int G_i_22;
bool G_b_2;
int G_i_23;
int G_i_24;
int G_i_25;
double G_d_9;
double G_d_10;
int G_i_26;
double G_d_11;
int G_i_27;
double G_d_12;
double G_d_13;
int G_i_28;
double G_d_14;
int G_i_29;
double G_d_15;
int G_i_30;
double G_d_16;
double G_d_17;
int G_i_31;
double G_d_18;
double G_d_19;
int G_i_32;
double G_d_20;
int G_i_33;
double G_d_21;
int G_i_34;
double G_d_22;
double G_d_23;
int G_i_35;
double G_d_24;
double G_d_25;
int G_i_36;
double G_d_26;
int G_i_37;
double G_d_27;
int G_i_38;
double G_d_28;
double G_d_29;
int G_i_39;
double G_d_30;
double G_d_31;
int G_i_40;
double G_d_32;
int G_i_41;
double G_d_33;
int G_i_42;
double G_d_34;
double G_d_35;
int G_i_43;
double G_d_36;
double G_d_37;
int G_i_44;
double G_d_38;
int G_i_45;
double G_d_39;
int G_i_46;
double G_d_40;
double G_d_41;
int G_i_47;
double G_d_42;
double G_d_43;
int G_i_48;
double G_d_44;
int G_i_49;
double G_d_45;
int G_i_50;
double G_d_46;
double G_d_47;
int G_i_51;
double G_d_48;
double G_d_49;
int G_i_52;
double G_d_50;
bool G_b_3;
int G_i_53;
int G_i_54;
int G_i_55;
double G_d_51;
double G_d_52;
int G_i_56;
double G_d_53;
int G_i_57;
double G_d_54;
double G_d_55;
int G_i_58;
double G_d_56;
int G_i_59;
double G_d_57;
int G_i_60;
double G_d_58;
double G_d_59;
int G_i_61;
double G_d_60;
double G_d_61;
int G_i_62;
double G_d_62;
int G_i_63;
double G_d_63;
int G_i_64;
double G_d_64;
double G_d_65;
int G_i_65;
double G_d_66;
double G_d_67;
int G_i_66;
double G_d_68;
int G_i_67;
double G_d_69;
int G_i_68;
double G_d_70;
double G_d_71;
int G_i_69;
double G_d_72;
double G_d_73;
int G_i_70;
double G_d_74;
int G_i_71;
double G_d_75;
int G_i_72;
double G_d_76;
double G_d_77;
int G_i_73;
double G_d_78;
double G_d_79;
int G_i_74;
double G_d_80;
int G_i_75;
double G_d_81;
int G_i_76;
double G_d_82;
double G_d_83;
int G_i_77;
double G_d_84;
double G_d_85;
int G_i_78;
double G_d_86;
int G_i_79;
double G_d_87;
int G_i_80;
double G_d_88;
double G_d_89;
int G_i_81;
double G_d_90;
double G_d_91;
int G_i_82;
double G_d_92;
double G_d_93;
int G_i_83;
double G_d_94;
int G_i_84;
int G_i_85;
double G_d_95;
int G_i_86;
double G_d_96;
int G_i_87;
double G_d_97;
int G_i_88;
int G_i_89;
double G_d_98;
int G_i_90;
double G_d_99;
int G_i_91;
double G_d_100;
int G_i_92;
double G_d_101;
int G_i_93;
double G_d_102;
int G_i_94;
int G_i_95;
double G_d_103;
int G_i_96;
int G_i_97;
double G_d_104;
int G_i_98;
double G_d_105;
int G_i_99;
double G_d_106;
int G_i_100;
int G_i_101;
double G_d_107;
int G_i_102;
double G_d_108;
int G_i_103;
double G_d_109;
int G_i_104;
int G_i_105;
double G_d_110;
int G_i_106;
double G_d_111;
int G_i_107;
double G_d_112;
int G_i_108;
double G_d_113;
int G_i_109;
double G_d_114;
int G_i_110;
int G_i_111;
double G_d_115;
int G_i_112;
int G_i_113;
double G_d_116;
int G_i_114;
bool I_b_4;
int G_i_115;
long G_l_1;
int G_i_116;
long G_l_2;
int G_i_117;
long G_l_3;
string I_s_0;
bool I_b_5;
int G_i_118;
int G_i_119;
bool I_b_6;
double G_d_117;
int G_i_120;
bool G_b_7;
long G_l_4;
long I_l_5;
int G_i_121;
long G_l_6;
double I_d_119;
double I_d_120;
double I_d_121;
double I_d_122;
double I_d_123;
int G_i_122;
double I_d_125;
double G_d_126;
double I_d_127;
int G_i_123;
int G_i_124;
bool G_b_8;
long G_l_7;
int G_i_125;
long G_l_8;
int G_i_126;
double G_d_130;
int G_i_127;
bool G_b_9;
double G_d_131;
double G_d_132;
bool G_b_10;
int G_i_129;
int G_i_130;
double G_d_133;
int G_i_131;
double G_d_134;
int G_i_132;
double G_d_135;
int G_i_133;
double G_d_136;
int G_i_134;
double G_d_137;
int G_i_135;
double G_d_138;
int G_i_136;
long G_l_9;
int G_i_137;
long G_l_10;
double I_d_139;
int I_i_138;
int I_i_139;
bool I_b_13;
int I_i_140;
int I_i_141;
string I_s_1;
string I_s_2;
int I_i_142;
int I_i_143;
double G_d_140;
int G_i_144;
int G_i_145;
double G_d_141;
int G_i_146;
int G_i_147;
int G_i_148;
double G_d_142;
int G_i_149;
long G_l_11;
int G_i_150;
int G_i_151;
double G_d_143;
int G_i_152;
int G_i_153;
int G_i_154;
int G_i_155;
double G_d_144;
int G_i_156;
int G_i_157;
int G_i_158;
long G_l_12;
int G_i_159;
int G_i_160;
int G_i_161;
int G_i_162;
int G_i_163;
int G_i_164;
int G_i_165;
int G_i_166;
long G_l_13;
int G_i_167;
int G_i_168;
int G_i_169;
double G_d_145;
int G_i_170;
int G_i_171;
int G_i_172;
int G_i_173;
int G_i_174;
int G_i_175;
double G_d_146;
int G_i_176;
long G_l_14;
int G_i_177;
int G_i_178;
int G_i_179;
int G_i_180;
int G_i_181;
int G_i_182;
int G_i_183;
double G_d_147;
int G_i_184;
long G_l_15;
int G_i_185;
int G_i_186;
int G_i_187;
double G_d_148;
int G_i_188;
int G_i_189;
int G_i_190;
int G_i_191;
int G_i_192;
int G_i_193;
long G_l_16;
int G_i_194;
int G_i_195;
int G_i_196;
int G_i_197;
int G_i_198;
double G_d_149;
int G_i_199;
int G_i_200;
int G_i_201;
int G_i_202;
long G_l_17;
int G_i_203;
int G_i_204;
int G_i_205;
int G_i_206;
int G_i_207;
int G_i_208;
int G_i_209;
int G_i_210;
double G_d_150;
int G_i_211;
long G_l_18;
int G_i_212;
int G_i_213;
int G_i_214;
int G_i_215;
double G_d_151;
int G_i_216;
int G_i_217;
long G_l_19;
int G_i_218;
int G_i_219;
double G_d_152;
int G_i_220;
int G_i_221;
double G_d_153;
int G_i_222;
int G_i_223;
long G_l_20;
int G_i_224;
int G_i_225;
int G_i_226;
int G_i_227;
int G_i_228;
double G_d_154;
long G_l_21;
double G_d_155;
long G_l_22;
int G_i_229;
int G_i_230;
int G_i_231;
int G_i_232;
int G_i_233;
double G_d_156;
int G_i_234;
int G_i_235;
int G_i_236;
int G_i_237;
int G_i_238;
double G_d_157;
int G_i_239;
long G_l_23;
int G_i_240;
int G_i_241;
int G_i_242;
int G_i_243;
double G_d_158;
int G_i_244;
int G_i_245;
int G_i_246;
int G_i_247;
int G_i_248;
double G_d_159;
int G_i_249;
int G_i_250;
int G_i_251;
int G_i_252;
int G_i_253;
double G_d_160;
int G_i_254;
long G_l_24;
int G_i_255;
int G_i_256;
int G_i_257;
int G_i_259;
int G_i_261;
int G_i_262;
int G_i_263;
int G_i_265;
int G_i_267;
int G_i_268;
int G_i_269;
int G_i_271;
int G_i_273;
int G_i_274;
int G_i_275;
int G_i_277;
int G_i_279;
int G_i_280;
int G_i_281;
int G_i_283;
int G_i_285;
int G_i_286;
int G_i_287;
int G_i_289;
int G_i_291;
int G_i_292;
int G_i_293;
int G_i_295;
int G_i_297;
int G_i_298;
int G_i_299;
int G_i_301;
int G_i_303;
int G_i_304;
int G_i_305;
int G_i_307;
int G_i_309;
int G_i_310;
int G_i_311;
int G_i_313;
int G_i_315;
int G_i_316;
int G_i_317;
int G_i_319;
int G_i_321;
int G_i_322;
int G_i_323;
int G_i_325;
int G_i_327;
int G_i_328;
int G_i_329;
int G_i_331;
int G_i_333;
int G_i_334;
int G_i_335;
int G_i_337;
int G_i_339;
int G_i_340;
int G_i_341;
int G_i_342;
int G_i_343;
int G_i_344;
int G_i_345;
int G_i_346;
int G_i_347;
int G_i_348;
int G_i_349;
int G_i_350;
int G_i_351;
int G_i_352;
int G_i_353;
int G_i_354;
int G_i_355;
long G_l_123;
double G_d_301;
long G_l_124;
long G_l_125;
long G_l_126;
long G_l_127;
int G_i_356;
int G_i_357;
double G_d_302;
long G_l_128;
int G_i_358;
double G_d_303;
long G_l_129;
double G_d_304;
int G_i_359;
long G_l_130;
long G_l_131;
long G_l_132;
int G_i_360;
long G_l_133;
int G_i_361;
double G_d_305;
long G_l_134;
int G_i_362;
long G_l_135;
long G_l_136;
int G_i_363;
int G_i_364;
int G_i_365;
bool G_b_99;
bool G_b_100;
bool G_b_101;
int G_i_366;
double G_d_307;
long G_l_154;
double I_d_311[1000];
double returned_double;
bool order_check;
int init() {

   Print("Account number : ",AccountNumber());
   if(AccountNumber()!=Account_Number && Account_Number!=0)
     {
      Alert("Invalid account Number please contact support ");
      ExpertRemove();
     }

   checkDataExpired();
   
   if(PowerTrade == 1){
      PotenzaSell = 69;
      PotenzaBuy = 31;
   }else if(PowerTrade == 2){
      PotenzaSell = 68;
      PotenzaBuy = 32;
   }if(PowerTrade == 3){
      PotenzaSell = 67;
      PotenzaBuy = 33;
   }
   
   if(PowerExtra){
      UltraSell = 90;
      UltraBuy = 10;
   }else{
      UltraSell = 100;
      UltraBuy = 0;
   }

   
     
   I_i_1 = 1;
   I_i_2 = 2;
   I_i_3 = 3;
   I_i_4 = 4;
   I_i_5 = 5;
   I_i_6 = 6;
   I_i_7 = 7;
   I_i_8 = 8;
   I_i_9 = 9;
   I_i_10 = 10;
   I_i_11 = 11;
   I_i_12 = 12;
   I_i_13 = 13;
   I_i_14 = 14;
   I_d_139 = 0.2;
   I_d_119 = 1;
   I_d_120 = 1;
   I_d_121 = 1;
   I_d_122 = 1;
   I_d_123 = 1;
   I_d_127 = 1;
   I_d_125 = 1.7;
   I_i_138 = 3;
   I_i_139 = 0;
   I_b_13 = true;
   I_b_1 = true;
   I_b_4 = false;
   I_d_2 = 0;
   I_d_4 = 0;
   I_i_140 = 0;
   I_i_141 = 0;
   I_s_1 = "";
   I_s_2 = "";
   I_d_5 = 0;
   I_b_5 = false;
   I_i_142 = 0;
   I_i_15 = 1;
   I_i_17 = 5;
   I_i_16 = 20;
   I_i_18 = 16777215;
   I_i_143 = 0;
   string S_s_2639;
   string S_s_2640;
   string S_s_2641;
   string S_s_2642;
   string S_s_2643;
   string S_s_2644;
   string S_s_2645;
   string S_s_2646;
   string S_s_2647;
   string S_s_2648;
   string S_s_2649;
   string S_s_2650;
   string S_s_2651;
   string S_s_2652;
   string S_s_2653;
   string S_s_2654;
   string S_s_2655;
   string S_s_2656;
   string S_s_2657;
   string S_s_2658;
   string S_s_2659;
   string S_s_2660;
   string S_s_2661;
   string S_s_2662;
   string S_s_2663;
   string S_s_2664;
   string S_s_2665;
   string S_s_2625;
   string S_s_2626;
   string S_s_2627;
   string S_s_2628;
   string S_s_2629;
   string S_s_2630;
   string S_s_2631;
   string S_s_2632;
   string S_s_2633;
   string S_s_2634;
   string S_s_2635;
   string S_s_2567;
   string S_s_2568;
   string S_s_2569;
   string S_s_2570;
   string S_s_2571;
   string S_s_2572;
   string S_s_2573;
   string S_s_2574;
   string S_s_2575;
   string S_s_2576;
   int L_i_13;
   int L_i_17;
   int L_i_15;
   double L_d_37;
   L_i_13 = 0;
   L_i_17 = 0;
   L_i_15 = 0;
   L_d_37 = 0;
   if (_Symbol == "AUDCADm" || _Symbol == "AUDCAD") {
      I_i_1 = 20;
      I_i_2 = 21;
      I_i_3 = 22;
      I_i_4 = 23;
      I_i_5 = 24;
      I_i_6 = 25;
      I_i_7 = 26;
      I_i_8 = 27;
      I_i_9 = 28;
      I_i_10 = 29;
      I_i_11 = 30;
      I_i_12 = 31;
      I_i_13 = 32;
      I_i_14 = 33;
   }
   if (_Symbol == "AUDJPYm" || _Symbol == "AUDJPY") {
      I_i_1 = 40;
      I_i_2 = 41;
      I_i_3 = 42;
      I_i_4 = 43;
      I_i_5 = 44;
      I_i_6 = 45;
      I_i_7 = 46;
      I_i_8 = 47;
      I_i_9 = 48;
      I_i_10 = 49;
      I_i_11 = 50;
      I_i_12 = 51;
      I_i_13 = 52;
      I_i_14 = 53;
   }
   if (_Symbol == "AUDNZDm" || _Symbol == "AUDNZD") {
      I_i_1 = 60;
      I_i_2 = 61;
      I_i_3 = 62;
      I_i_4 = 63;
      I_i_5 = 64;
      I_i_6 = 65;
      I_i_7 = 66;
      I_i_8 = 67;
      I_i_9 = 68;
      I_i_10 = 69;
      I_i_11 = 70;
      I_i_12 = 71;
      I_i_13 = 72;
      I_i_14 = 73;
   }
   if (_Symbol == "AUDUSDm" || _Symbol == "AUDUSD") {
      I_i_1 = 80;
      I_i_2 = 81;
      I_i_3 = 82;
      I_i_4 = 83;
      I_i_5 = 84;
      I_i_6 = 85;
      I_i_7 = 86;
      I_i_8 = 87;
      I_i_9 = 88;
      I_i_10 = 89;
      I_i_11 = 90;
      I_i_12 = 91;
      I_i_13 = 92;
      I_i_14 = 93;
   }
   if (_Symbol == "CHFJPYm" || _Symbol == "CHFJPY") {
      I_i_1 = 100;
      I_i_2 = 101;
      I_i_3 = 102;
      I_i_4 = 103;
      I_i_5 = 104;
      I_i_6 = 105;
      I_i_7 = 106;
      I_i_8 = 107;
      I_i_9 = 108;
      I_i_10 = 109;
      I_i_11 = 110;
      I_i_12 = 111;
      I_i_13 = 112;
      I_i_14 = 113;
   }
   if (_Symbol == "EURAUDm" || _Symbol == "EURAUD") {
      I_i_1 = 120;
      I_i_2 = 121;
      I_i_3 = 122;
      I_i_4 = 123;
      I_i_5 = 124;
      I_i_6 = 125;
      I_i_7 = 126;
      I_i_8 = 127;
      I_i_9 = 128;
      I_i_10 = 129;
      I_i_11 = 130;
      I_i_12 = 131;
      I_i_13 = 132;
      I_i_14 = 133;
   }
   if (_Symbol == "EURCADm" || _Symbol == "EURCAD") {
      I_i_1 = 140;
      I_i_2 = 141;
      I_i_3 = 142;
      I_i_4 = 143;
      I_i_5 = 144;
      I_i_6 = 145;
      I_i_7 = 146;
      I_i_8 = 147;
      I_i_9 = 148;
      I_i_10 = 149;
      I_i_11 = 150;
      I_i_12 = 151;
      I_i_13 = 152;
      I_i_14 = 153;
   }
   if (_Symbol == "EURCHFm" || _Symbol == "EURCHF") {
      I_i_1 = 160;
      I_i_2 = 161;
      I_i_3 = 162;
      I_i_4 = 163;
      I_i_5 = 164;
      I_i_6 = 165;
      I_i_7 = 166;
      I_i_8 = 167;
      I_i_9 = 168;
      I_i_10 = 169;
      I_i_11 = 170;
      I_i_12 = 171;
      I_i_13 = 172;
      I_i_14 = 173;
   }
   if (_Symbol == "EURGBPm" || _Symbol == "EURGBP") {
      I_i_1 = 180;
      I_i_2 = 181;
      I_i_3 = 182;
      I_i_4 = 183;
      I_i_5 = 184;
      I_i_6 = 185;
      I_i_7 = 186;
      I_i_8 = 187;
      I_i_9 = 188;
      I_i_10 = 189;
      I_i_11 = 190;
      I_i_12 = 191;
      I_i_13 = 192;
      I_i_14 = 193;
   }
   if (_Symbol == "EURJPYm" || _Symbol == "EURJPY") {
      I_i_1 = 200;
      I_i_2 = 201;
      I_i_3 = 202;
      I_i_4 = 203;
      I_i_5 = 204;
      I_i_6 = 205;
      I_i_7 = 206;
      I_i_8 = 207;
      I_i_9 = 208;
      I_i_10 = 209;
      I_i_11 = 210;
      I_i_12 = 211;
      I_i_13 = 212;
      I_i_14 = 213;
   }
   if (_Symbol == "EURUSDm" || _Symbol == "EURUSD") {
      I_i_1 = 220;
      I_i_2 = 221;
      I_i_3 = 222;
      I_i_4 = 223;
      I_i_5 = 224;
      I_i_6 = 225;
      I_i_7 = 226;
      I_i_8 = 227;
      I_i_9 = 228;
      I_i_10 = 229;
      I_i_11 = 230;
      I_i_12 = 231;
      I_i_13 = 232;
      I_i_14 = 233;
   }
   if (_Symbol == "GBPCHFm" || _Symbol == "GBPCHF") {
      I_i_1 = 240;
      I_i_2 = 241;
      I_i_3 = 242;
      I_i_4 = 243;
      I_i_5 = 244;
      I_i_6 = 245;
      I_i_7 = 246;
      I_i_8 = 247;
      I_i_9 = 248;
      I_i_10 = 249;
      I_i_11 = 250;
      I_i_12 = 251;
      I_i_13 = 252;
      I_i_14 = 253;
   }
   if (_Symbol == "GBPJPYm" || _Symbol == "GBPJPY") {
      I_i_1 = 260;
      I_i_2 = 261;
      I_i_3 = 262;
      I_i_4 = 263;
      I_i_5 = 264;
      I_i_6 = 265;
      I_i_7 = 266;
      I_i_8 = 267;
      I_i_9 = 268;
      I_i_10 = 269;
      I_i_11 = 270;
      I_i_12 = 271;
      I_i_13 = 272;
      I_i_14 = 273;
   }
   if (_Symbol == "GBPUSDm" || _Symbol == "GBPUSD") {
      I_i_1 = 280;
      I_i_2 = 281;
      I_i_3 = 282;
      I_i_4 = 283;
      I_i_5 = 284;
      I_i_6 = 285;
      I_i_7 = 286;
      I_i_8 = 287;
      I_i_9 = 288;
      I_i_10 = 289;
      I_i_11 = 290;
      I_i_12 = 291;
      I_i_13 = 292;
      I_i_14 = 293;
   }
   if (_Symbol == "NZDJPYm" || _Symbol == "NZDJPY") {
      I_i_1 = 300;
      I_i_2 = 301;
      I_i_3 = 302;
      I_i_4 = 303;
      I_i_5 = 304;
      I_i_6 = 305;
      I_i_7 = 306;
      I_i_8 = 307;
      I_i_9 = 308;
      I_i_10 = 309;
      I_i_11 = 310;
      I_i_12 = 311;
      I_i_13 = 312;
      I_i_14 = 313;
   }
   if (_Symbol == "NZDUSDm" || _Symbol == "NZDUSD") {
      I_i_1 = 320;
      I_i_2 = 321;
      I_i_3 = 322;
      I_i_4 = 323;
      I_i_5 = 324;
      I_i_6 = 325;
      I_i_7 = 326;
      I_i_8 = 327;
      I_i_9 = 328;
      I_i_10 = 329;
      I_i_11 = 330;
      I_i_12 = 331;
      I_i_13 = 332;
      I_i_14 = 333;
   }
   if (_Symbol == "USDCHFm" || _Symbol == "USDCHF") {
      I_i_1 = 340;
      I_i_2 = 341;
      I_i_3 = 342;
      I_i_4 = 343;
      I_i_5 = 344;
      I_i_6 = 345;
      I_i_7 = 346;
      I_i_8 = 347;
      I_i_9 = 348;
      I_i_10 = 349;
      I_i_11 = 350;
      I_i_12 = 351;
      I_i_13 = 352;
      I_i_14 = 353;
   }
   if (_Symbol == "USDJPYm" || _Symbol == "USDJPY") {
      I_i_1 = 360;
      I_i_2 = 361;
      I_i_3 = 362;
      I_i_4 = 363;
      I_i_5 = 364;
      I_i_6 = 365;
      I_i_7 = 366;
      I_i_8 = 367;
      I_i_9 = 368;
      I_i_10 = 369;
      I_i_11 = 370;
      I_i_12 = 371;
      I_i_13 = 372;
      I_i_14 = 373;
   }
   if (_Symbol == "USDCADm" || _Symbol == "USDCAD") {
      I_i_1 = 380;
      I_i_2 = 381;
      I_i_3 = 382;
      I_i_4 = 383;
      I_i_5 = 384;
      I_i_6 = 385;
      I_i_7 = 386;
      I_i_8 = 387;
      I_i_9 = 388;
      I_i_10 = 389;
      I_i_11 = 390;
      I_i_12 = 391;
      I_i_13 = 392;
      I_i_14 = 393;
   }
   if (_Symbol == "AUDCHFm" || _Symbol == "AUDCHF") {
      I_i_1 = 400;
      I_i_2 = 401;
      I_i_3 = 402;
      I_i_4 = 403;
      I_i_5 = 404;
      I_i_6 = 405;
      I_i_7 = 406;
      I_i_8 = 407;
      I_i_9 = 408;
      I_i_10 = 409;
      I_i_11 = 410;
      I_i_12 = 411;
      I_i_13 = 412;
      I_i_14 = 413;
   }
   if (_Symbol == "AUDSGDm" || _Symbol == "AUDSGD") {
      I_i_1 = 420;
      I_i_2 = 421;
      I_i_3 = 422;
      I_i_4 = 423;
      I_i_5 = 424;
      I_i_6 = 425;
      I_i_7 = 426;
      I_i_8 = 427;
      I_i_9 = 428;
      I_i_10 = 429;
      I_i_11 = 430;
      I_i_12 = 431;
      I_i_13 = 432;
      I_i_14 = 433;
   }
   if (_Symbol == "CHFSGDm" || _Symbol == "CHFSGD") {
      I_i_1 = 440;
      I_i_2 = 441;
      I_i_3 = 442;
      I_i_4 = 443;
      I_i_5 = 444;
      I_i_6 = 445;
      I_i_7 = 446;
      I_i_8 = 447;
      I_i_9 = 448;
      I_i_10 = 449;
      I_i_11 = 450;
      I_i_12 = 451;
      I_i_13 = 452;
      I_i_14 = 453;
   }
   if (_Symbol == "CADCHFm" || _Symbol == "CADCHF") {
      I_i_1 = 460;
      I_i_2 = 461;
      I_i_3 = 462;
      I_i_4 = 463;
      I_i_5 = 464;
      I_i_6 = 465;
      I_i_7 = 466;
      I_i_8 = 467;
      I_i_9 = 468;
      I_i_10 = 469;
      I_i_11 = 470;
      I_i_12 = 471;
      I_i_13 = 472;
      I_i_14 = 473;
   }
   if (_Symbol == "CADJPYm" || _Symbol == "CADJPY") {
      I_i_1 = 480;
      I_i_2 = 481;
      I_i_3 = 482;
      I_i_4 = 483;
      I_i_5 = 484;
      I_i_6 = 485;
      I_i_7 = 486;
      I_i_8 = 487;
      I_i_9 = 488;
      I_i_10 = 489;
      I_i_11 = 490;
      I_i_12 = 491;
      I_i_13 = 492;
      I_i_14 = 493;
   }
   if (_Symbol == "EURNZDm" || _Symbol == "EURNZD") {
      I_i_1 = 500;
      I_i_2 = 501;
      I_i_3 = 502;
      I_i_4 = 503;
      I_i_5 = 504;
      I_i_6 = 505;
      I_i_7 = 506;
      I_i_8 = 507;
      I_i_9 = 508;
      I_i_10 = 509;
      I_i_11 = 510;
      I_i_12 = 511;
      I_i_13 = 512;
      I_i_14 = 513;
   }
   if (_Symbol == "EURSGDm" || _Symbol == "EURSGD") {
      I_i_1 = 520;
      I_i_2 = 521;
      I_i_3 = 522;
      I_i_4 = 523;
      I_i_5 = 524;
      I_i_6 = 525;
      I_i_7 = 526;
      I_i_8 = 527;
      I_i_9 = 528;
      I_i_10 = 529;
      I_i_11 = 530;
      I_i_12 = 531;
      I_i_13 = 532;
      I_i_14 = 533;
   }
   if (_Symbol == "EURDKKm" || _Symbol == "EURDKK") {
      I_i_1 = 540;
      I_i_2 = 541;
      I_i_3 = 542;
      I_i_4 = 543;
      I_i_5 = 544;
      I_i_6 = 545;
      I_i_7 = 546;
      I_i_8 = 547;
      I_i_9 = 548;
      I_i_10 = 549;
      I_i_11 = 550;
      I_i_12 = 551;
      I_i_13 = 552;
      I_i_14 = 553;
   }
   if (_Symbol == "EURHKDm" || _Symbol == "EURHKD") {
      I_i_1 = 560;
      I_i_2 = 561;
      I_i_3 = 562;
      I_i_4 = 563;
      I_i_5 = 564;
      I_i_6 = 565;
      I_i_7 = 566;
      I_i_8 = 567;
      I_i_9 = 568;
      I_i_10 = 569;
      I_i_11 = 570;
      I_i_12 = 571;
      I_i_13 = 572;
      I_i_14 = 573;
   }
   if (_Symbol == "GBPAUDm" || _Symbol == "GBPAUD") {
      I_i_1 = 580;
      I_i_2 = 581;
      I_i_3 = 582;
      I_i_4 = 583;
      I_i_5 = 584;
      I_i_6 = 585;
      I_i_7 = 586;
      I_i_8 = 587;
      I_i_9 = 588;
      I_i_10 = 589;
      I_i_11 = 590;
      I_i_12 = 591;
      I_i_13 = 592;
      I_i_14 = 593;
   }
   if (_Symbol == "GBPCADm" || _Symbol == "GBPCAD") {
      I_i_1 = 600;
      I_i_2 = 601;
      I_i_3 = 602;
      I_i_4 = 603;
      I_i_5 = 604;
      I_i_6 = 605;
      I_i_7 = 606;
      I_i_8 = 607;
      I_i_9 = 608;
      I_i_10 = 609;
      I_i_11 = 610;
      I_i_12 = 611;
      I_i_13 = 612;
      I_i_14 = 613;
   }
   if (_Symbol == "GBPNZDm" || _Symbol == "GBPNZD") {
      I_i_1 = 620;
      I_i_2 = 621;
      I_i_3 = 622;
      I_i_4 = 623;
      I_i_5 = 624;
      I_i_6 = 625;
      I_i_7 = 626;
      I_i_8 = 627;
      I_i_9 = 628;
      I_i_10 = 629;
      I_i_11 = 630;
      I_i_12 = 631;
      I_i_13 = 632;
      I_i_14 = 633;
   }
   if (_Symbol == "GBPSGDm" || _Symbol == "GBPSGD") {
      I_i_1 = 640;
      I_i_2 = 641;
      I_i_3 = 642;
      I_i_4 = 643;
      I_i_5 = 644;
      I_i_6 = 645;
      I_i_7 = 646;
      I_i_8 = 647;
      I_i_9 = 648;
      I_i_10 = 649;
      I_i_11 = 650;
      I_i_12 = 651;
      I_i_13 = 652;
      I_i_14 = 653;
   }
   if (_Symbol == "NZDCADm" || _Symbol == "NZDCHF") {
      I_i_1 = 660;
      I_i_2 = 661;
      I_i_3 = 662;
      I_i_4 = 663;
      I_i_5 = 664;
      I_i_6 = 665;
      I_i_7 = 666;
      I_i_8 = 667;
      I_i_9 = 668;
      I_i_10 = 669;
      I_i_11 = 670;
      I_i_12 = 671;
      I_i_13 = 672;
      I_i_14 = 673;
   }
   if (_Symbol == "NZDCHFm" || _Symbol == "NZDCHF") {
      I_i_1 = 680;
      I_i_2 = 681;
      I_i_3 = 682;
      I_i_4 = 683;
      I_i_5 = 684;
      I_i_6 = 685;
      I_i_7 = 686;
      I_i_8 = 687;
      I_i_9 = 688;
      I_i_10 = 689;
      I_i_11 = 690;
      I_i_12 = 691;
      I_i_13 = 692;
      I_i_14 = 693;
   }
   if (_Symbol == "SGDJPYm" || _Symbol == "SGDJPY") {
      I_i_1 = 700;
      I_i_2 = 701;
      I_i_3 = 702;
      I_i_4 = 703;
      I_i_5 = 704;
      I_i_6 = 705;
      I_i_7 = 706;
      I_i_8 = 707;
      I_i_9 = 708;
      I_i_10 = 709;
      I_i_11 = 710;
      I_i_12 = 711;
      I_i_13 = 712;
      I_i_14 = 713;
   }
   if (_Symbol == "USDSGDm" || _Symbol == "USDSGD") {
      I_i_1 = 720;
      I_i_2 = 721;
      I_i_3 = 722;
      I_i_4 = 723;
      I_i_5 = 724;
      I_i_6 = 725;
      I_i_7 = 726;
      I_i_8 = 727;
      I_i_9 = 728;
      I_i_10 = 729;
      I_i_11 = 730;
      I_i_12 = 731;
      I_i_13 = 732;
      I_i_14 = 733;
   }
   if (_Symbol == "USDDKKm" || _Symbol == "USDDKK") {
      I_i_1 = 740;
      I_i_2 = 741;
      I_i_3 = 742;
      I_i_4 = 743;
      I_i_5 = 744;
      I_i_6 = 745;
      I_i_7 = 746;
      I_i_8 = 747;
      I_i_9 = 748;
      I_i_10 = 749;
      I_i_11 = 750;
      I_i_12 = 751;
      I_i_13 = 752;
      I_i_14 = 753;
   }
   if (_Symbol == "USDHKDm" || _Symbol == "USDHKD") {
      I_i_1 = 760;
      I_i_2 = 761;
      I_i_3 = 762;
      I_i_4 = 763;
      I_i_5 = 764;
      I_i_6 = 765;
      I_i_7 = 766;
      I_i_8 = 767;
      I_i_9 = 768;
      I_i_10 = 769;
      I_i_11 = 770;
      I_i_12 = 771;
      I_i_13 = 772;
      I_i_14 = 773;
   }
   S_s_2639 = "";
   S_s_2640 = "";
   S_s_2641 = "";
   S_s_2642 = "";
   S_s_2643 = "";
   S_s_2644 = "";
   S_s_2645 = "";
   S_s_2646 = "";
   S_s_2647 = "";
   S_s_2648 = "";
   S_s_2649 = "";
   S_s_2650 = "--------------------------------------------------------";
   VerboseLog(S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641, S_s_2640, S_s_2639);
   S_s_2651 = "";
   S_s_2652 = "";
   S_s_2653 = "";
   S_s_2654 = "";
   S_s_2655 = "";
   S_s_2656 = "";
   S_s_2657 = "";
   S_s_2658 = "";
   S_s_2659 = "";
   S_s_2660 = "";
   S_s_2661 = "";
   S_s_2662 = "Starting the EA";
   VerboseLog(S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655, S_s_2654, S_s_2653, S_s_2652, S_s_2651);
   L_d_37 = _Digits;
   if ((L_d_37 > 0) && (L_d_37 != 2) && (L_d_37 != 4)) {
      L_d_37 = (L_d_37 - 1);
   }
   returned_double = MathPow(10, L_d_37);
   I_d_2 = returned_double;
   I_d_4 = (1 / returned_double);
   S_s_2663 = "";
   S_s_2664 = "";
   S_s_2665 = "";
   S_s_2625 = "";
   S_s_2626 = "";
   S_s_2627 = "";
   S_s_2628 = "";
   S_s_2629 = "";
   S_s_2630 = "";
   S_s_2631 = "";
   S_s_2632 = DoubleToString((I_d_5 * I_d_2), 2);
   S_s_2633 = "Broker Stop Difference: ";
   VerboseLog(S_s_2633, S_s_2632, S_s_2631, S_s_2630, S_s_2629, S_s_2628, S_s_2627, S_s_2626, S_s_2625, S_s_2665, S_s_2664, S_s_2663);
   S_s_2634 = "";
   S_s_2635 = "";
   S_s_2567 = "";
   S_s_2568 = "";
   S_s_2569 = "";
   S_s_2570 = "";
   S_s_2571 = "";
   S_s_2572 = "";
   S_s_2573 = "";
   S_s_2574 = "";
   S_s_2575 = "";
   S_s_2576 = "--------------------------------------------------------";
   VerboseLog(S_s_2576, S_s_2575, S_s_2574, S_s_2573, S_s_2572, S_s_2571, S_s_2570, S_s_2569, S_s_2568, S_s_2567, S_s_2635, S_s_2634);
   if (I_b_1 == false) return 0;
   ObjectCreate(0, "line1", OBJ_LABEL, 0, 0, 0, 0, 0, 0, 0);
   ObjectSet("line1", OBJPROP_CORNER, I_i_15);
   ObjectSet("line1", OBJPROP_YDISTANCE, I_i_16);
   ObjectSet("line1", OBJPROP_XDISTANCE, I_i_17);
   ObjectSetText("line1", "EA WOLF", 9, "Tahoma", I_i_18);
   L_i_13 = 0;
   return L_i_13;
}


void checkDataExpired(){
  datetime expirytime1= StringToTime(expirytime);
  if(TimeCurrent()>=expirytime1){
    Alert("Your copy for testing to "+expirytime+" please contact support  ");
    ExpertRemove();
  }
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int start(){
   
   if(TimeHour(TimeLocal()) == 00 && (TimeMinute(TimeLocal()) >= 00 && TimeMinute(TimeLocal()) < 01)){
      checkDataExpired();
   }  
   
   double totalBalance = AccountBalance() + AccountCredit();
           
   double lotSizeCalculated;
   if(lotSizeAutomatic){
      lotSizeCalculated = totalBalance/sizeTarget;
      LotSize = NormalizeDouble(lotSizeCalculated * 0.01,2);
   }
    
   string S_s_2639;
   string S_s_2640;
   string S_s_2641;
   string S_s_2642;
   string S_s_2643;
   string S_s_2644;
   string S_s_2645;
   string S_s_2646;
   string S_s_2647;
   string S_s_2648;
   string S_s_2649;
   string S_s_2650;
   string S_s_2651;
   string S_s_2652;
   string S_s_2653;
   string S_s_2654;
   string S_s_2655;
   string S_s_2656;
   string S_s_2657;
   string S_s_2658;
   string S_s_2659;
   string S_s_2660;
   string S_s_2661;
   string S_s_2662;
   string S_s_2663;
   string S_s_2664;
   string S_s_2665;
   string S_s_2625;
   string S_s_2626;
   string S_s_2627;
   string S_s_2628;
   string S_s_2629;
   string S_s_2630;
   string S_s_2631;
   string S_s_2632;
   string S_s_2633;
   string S_s_2634;
   string S_s_2635;
   string S_s_2567;
   string S_s_2568;
   string S_s_2569;
   string S_s_2570;
   string S_s_2571;
   string S_s_2572;
   string S_s_2573;
   string S_s_2574;
   string S_s_2575;
   string S_s_2576;
   string S_s_2577;
   string S_s_2578;
   string S_s_2579;
   string S_s_2580;
   string S_s_2581;
   string S_s_2582;
   string S_s_2583;
   string S_s_2584;
   string S_s_2585;
   string S_s_2586;
   string S_s_2587;
   string S_s_2588;
   string S_s_2589;
   string S_s_2590;
   string S_s_2591;
   string S_s_2592;
   string S_s_2593;
   string S_s_2594;
   string S_s_2595;
   string S_s_2596;
   string S_s_2597;
   string S_s_2410;
   string S_s_2411;
   string S_s_2412;
   string S_s_2413;
   string S_s_2414;
   string S_s_2415;
   int L_i_13;
   string L_s_0;
   L_i_13 = 0;
   G_i_19 = 0;
   G_i_20 = 0;
   G_d_8 = 0;
   G_i_21 = 0;
   G_i_22 = 0;
   G_b_2 = false;
   G_i_23 = 0;
   G_i_24 = 0;
   G_i_25 = 0;
   G_d_9 = 0;
   G_d_10 = 0;
   G_i_26 = 0;
   G_d_11 = 0;
   G_i_27 = 0;
   G_d_12 = 0;
   G_d_13 = 0;
   G_i_28 = 0;
   G_d_14 = 0;
   G_i_29 = 0;
   G_d_15 = 0;
   G_i_30 = 0;
   G_d_16 = 0;
   G_d_17 = 0;
   G_i_31 = 0;
   G_d_18 = 0;
   G_d_19 = 0;
   G_i_32 = 0;
   G_d_20 = 0;
   G_i_33 = 0;
   G_d_21 = 0;
   G_i_34 = 0;
   G_d_22 = 0;
   G_d_23 = 0;
   G_i_35 = 0;
   G_d_24 = 0;
   G_d_25 = 0;
   G_i_36 = 0;
   G_d_26 = 0;
   G_i_37 = 0;
   G_d_27 = 0;
   G_i_38 = 0;
   G_d_28 = 0;
   G_d_29 = 0;
   G_i_39 = 0;
   G_d_30 = 0;
   G_d_31 = 0;
   G_i_40 = 0;
   G_d_32 = 0;
   G_i_41 = 0;
   G_d_33 = 0;
   G_i_42 = 0;
   G_d_34 = 0;
   G_d_35 = 0;
   G_i_43 = 0;
   G_d_36 = 0;
   G_d_37 = 0;
   G_i_44 = 0;
   G_d_38 = 0;
   G_i_45 = 0;
   G_d_39 = 0;
   G_i_46 = 0;
   G_d_40 = 0;
   G_d_41 = 0;
   G_i_47 = 0;
   G_d_42 = 0;
   G_d_43 = 0;
   G_i_48 = 0;
   G_d_44 = 0;
   G_i_49 = 0;
   G_d_45 = 0;
   G_i_50 = 0;
   G_d_46 = 0;
   G_d_47 = 0;
   G_i_51 = 0;
   G_d_48 = 0;
   G_d_49 = 0;
   G_i_52 = 0;
   G_d_50 = 0;
   G_b_3 = false;
   G_i_53 = 0;
   G_i_54 = 0;
   G_i_55 = 0;
   G_d_51 = 0;
   G_d_52 = 0;
   G_i_56 = 0;
   G_d_53 = 0;
   G_i_57 = 0;
   G_d_54 = 0;
   G_d_55 = 0;
   G_i_58 = 0;
   G_d_56 = 0;
   G_i_59 = 0;
   G_d_57 = 0;
   G_i_60 = 0;
   G_d_58 = 0;
   G_d_59 = 0;
   G_i_61 = 0;
   G_d_60 = 0;
   G_d_61 = 0;
   G_i_62 = 0;
   G_d_62 = 0;
   G_i_63 = 0;
   G_d_63 = 0;
   G_i_64 = 0;
   G_d_64 = 0;
   G_d_65 = 0;
   G_i_65 = 0;
   G_d_66 = 0;
   G_d_67 = 0;
   G_i_66 = 0;
   G_d_68 = 0;
   G_i_67 = 0;
   G_d_69 = 0;
   G_i_68 = 0;
   G_d_70 = 0;
   G_d_71 = 0;
   G_i_69 = 0;
   G_d_72 = 0;
   G_d_73 = 0;
   G_i_70 = 0;
   G_d_74 = 0;
   G_i_71 = 0;
   G_d_75 = 0;
   G_i_72 = 0;
   G_d_76 = 0;
   G_d_77 = 0;
   G_i_73 = 0;
   G_d_78 = 0;
   G_d_79 = 0;
   G_i_74 = 0;
   G_d_80 = 0;
   G_i_75 = 0;
   G_d_81 = 0;
   G_i_76 = 0;
   G_d_82 = 0;
   G_d_83 = 0;
   G_i_77 = 0;
   G_d_84 = 0;
   G_d_85 = 0;
   G_i_78 = 0;
   G_d_86 = 0;
   G_i_79 = 0;
   G_d_87 = 0;
   G_i_80 = 0;
   G_d_88 = 0;
   G_d_89 = 0;
   G_i_81 = 0;
   G_d_90 = 0;
   G_d_91 = 0;
   G_i_82 = 0;
   G_d_92 = 0;
   G_d_93 = 0;
   G_i_83 = 0;
   G_d_94 = 0;
   G_i_84 = 0;
   G_i_85 = 0;
   G_d_95 = 0;
   G_i_86 = 0;
   G_d_96 = 0;
   G_i_87 = 0;
   G_d_97 = 0;
   G_i_88 = 0;
   G_i_89 = 0;
   G_d_98 = 0;
   G_i_90 = 0;
   G_d_99 = 0;
   G_i_91 = 0;
   G_d_100 = 0;
   G_i_92 = 0;
   G_d_101 = 0;
   G_i_93 = 0;
   G_d_102 = 0;
   G_i_94 = 0;
   G_i_95 = 0;
   G_d_103 = 0;
   G_i_96 = 0;
   G_i_97 = 0;
   G_d_104 = 0;
   G_i_98 = 0;
   G_d_105 = 0;
   G_i_99 = 0;
   G_d_106 = 0;
   G_i_100 = 0;
   G_i_101 = 0;
   G_d_107 = 0;
   G_i_102 = 0;
   G_d_108 = 0;
   G_i_103 = 0;
   G_d_109 = 0;
   G_i_104 = 0;
   G_i_105 = 0;
   G_d_110 = 0;
   G_i_106 = 0;
   G_d_111 = 0;
   G_i_107 = 0;
   G_d_112 = 0;
   G_i_108 = 0;
   G_d_113 = 0;
   G_i_109 = 0;
   G_d_114 = 0;
   G_i_110 = 0;
   G_i_111 = 0;
   G_d_115 = 0;
   G_i_112 = 0;
   G_i_113 = 0;
   G_d_116 = 0;
   G_i_114 = 0;
   if (Bars < 30) {
      if (I_b_4) {
         Print("NOT ENOUGH DATA: Less Bars than 30");
      }
      L_i_13 = 0;
      return L_i_13;
   }
   S_s_2639 = TimeToString(Time[0], 1);
   G_i_19 = _Period;
   if (G_i_19 == 240 || _Period == 60) {
      S_s_2640 = (string)TimeHour(Time[0]);
      S_s_2640 = S_s_2639 + S_s_2640;
      S_s_2639 = S_s_2640;
   }
   if (G_i_19 == 30 || G_i_19 == 15 || G_i_19 == 5 || G_i_19 == 1) {
      S_s_2640 = S_s_2639 + " ";
      S_s_2640 = S_s_2640 + TimeToString(Time[0], 2);
      S_s_2639 = S_s_2640;
   }
   L_s_0 = S_s_2639;
   if (S_s_2639 == I_s_0) {
      I_b_5 = false;
   } else {
      I_s_0 = L_s_0;
      I_b_5 = true;
   }
   G_i_118 = I_i_18;
   G_i_20 = 0;
   G_d_8 = 0;
   G_i_119 = OrdersTotal() - 1;
   G_i_21 = G_i_119;
   if (G_i_119 >= 0) {
      do {
         if (OrderSelect(G_i_21, 0, 0)) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               if (OrderSymbol() == _Symbol) {
                  if (G_i_20 == 0 || OrderMagicNumber() == G_i_20) {
                     G_d_8 = (G_d_8 + OrderProfit());
                  }
               }
            }
         }
         G_i_21 = G_i_21 - 1;
      } while (G_i_21 >= 0);
   }
   S_s_2640 = "Open P/L: " + DoubleToString(G_d_8, 2);
   ObjectSetText("lineopl", S_s_2640, 8, "Tahoma", G_i_118);
   S_s_2641 = "Account Balance: " + DoubleToString(totalBalance, 2);
   ObjectSetText("linea", S_s_2641, 8, "Tahoma", I_i_18);
   if (I_b_5) {
      sqTextFillTotals();
   }
   G_i_119 = OrdersTotal() - 1;
   G_i_22 = G_i_119;
   if (G_i_119 >= 0) {
      do {
         if (OrderSelect(G_i_22, 0, 0) == true) {
            manageOrder(OrderMagicNumber());
            if (I_b_5) {
               manageOrderExpiration(OrderMagicNumber());
            }
         }
         if (OrdersTotal() <= 0) break;
         G_i_22 = G_i_22 - 1;
      } while (G_i_22 >= 0);
   }
   G_d_117 = iMA(NULL, 0, 200, 0, 1, 0, 1);
   if ((G_d_117 < Close[1]) && PowerRisk == 0 && OrdersTotal() < MaxOrders) {
      G_i_23 = I_i_1;
      G_i_24 = 0;
      if (OrdersTotal() > 0) {
         do {
            if (OrderSelect(G_i_24, 0, 0) == true && OrderSymbol() == _Symbol) {
               if (G_i_23 == 0 || OrderMagicNumber() == G_i_23) {
                  G_l_4 = OrderOpenTime();
                  if (G_l_4 > Time[1]) {
                     G_b_2 = true;
                     break;
                  }
               }
            }
            G_i_24 = G_i_24 + 1;
         } while (G_i_24 < OrdersTotal());
      }
      G_i_24 = HistoryTotal();
      if (G_i_24 >= 0) {
         do {
            if (OrderSelect(G_i_24, 0, 1) == true && OrderSymbol() == _Symbol) {
               if (G_i_23 == 0 || OrderMagicNumber() == G_i_23) {
                  G_l_4 = OrderOpenTime();
                  if (G_l_4 > Time[1]) {
                     G_b_2 = true;
                     break;
                  }
               }
            }
            G_i_24 = G_i_24 - 1;
         } while (G_i_24 >= 0);
      } else G_b_2 = false;
      if (G_b_2 == 0 && (MarketInfo(_Symbol, MODE_SWAPLONG) >= SwapMinimo)) {
         if ((iRSI(NULL, 0, 14, 0, 1) <= PotenzaBuy) || (iStochastic(NULL, 0, 50, 3, 3, 0, 0, 0, 1) <= UltraBuy)) {
            S_s_2642 = "Go long 1";
            S_s_2643 = "EAWOLF";
            G_i_26 = I_i_1;
            G_d_11 = 0;
            if (I_i_1 == I_i_1) {
               G_d_11 = Ask;
            }
            if (G_i_26 == I_i_2) {
               G_d_11 = Ask;
            }
            if (G_i_26 == I_i_3) {
               G_d_11 = Ask;
            }
            if (G_i_26 == I_i_4) {
               G_d_11 = Ask;
            }
            if (G_i_26 == I_i_5) {
               G_d_11 = Ask;
            }
            if (G_i_26 == I_i_6) {
               G_d_11 = Ask;
            }
            if (G_i_26 == I_i_7) {
               G_d_11 = Ask;
            }
            if (G_i_26 == I_i_8) {
               G_d_11 = Bid;
            }
            if (G_i_26 == I_i_9) {
               G_d_11 = Bid;
            }
            if (G_i_26 == I_i_10) {
               G_d_11 = Bid;
            }
            if (G_i_26 == I_i_11) {
               G_d_11 = Bid;
            }
            if (G_i_26 == I_i_12) {
               G_d_11 = Bid;
            }
            if (G_i_26 == I_i_13) {
               G_d_11 = Bid;
            }
            if (G_i_26 == I_i_14) {
               G_d_11 = Bid;
            }
            G_d_10 = NormalizeDouble(G_d_11, _Digits);
            G_i_25 = I_i_1;
            G_d_9 = 0;
            if (I_i_1 == I_i_1) {
               G_d_9 = LotSize;
            }
            if (G_i_25 == I_i_2) {
               G_d_9 = I_d_119;
            }
            if (G_i_25 == I_i_3) {
               G_d_9 = I_d_120;
            }
            if (G_i_25 == I_i_4) {
               G_d_9 = I_d_121;
            }
            if (G_i_25 == I_i_5) {
               G_d_9 = I_d_122;
            }
            if (G_i_25 == I_i_6) {
               G_d_9 = I_d_123;
            }
            if (G_i_25 == I_i_7) {
               G_d_9 = I_d_123;
            }
            if (G_i_25 == I_i_8) {
               G_d_9 = LotSize;
            }
            if (G_i_25 == I_i_9) {
               G_d_9 = I_d_119;
            }
            if (G_i_25 == I_i_10) {
               G_d_9 = I_d_120;
            }
            if (G_i_25 == I_i_11) {
               G_d_9 = I_d_121;
            }
            if (G_i_25 == I_i_12) {
               G_d_9 = I_d_122;
            }
            if (G_i_25 == I_i_13) {
               G_d_9 = I_d_123;
            }
            if (G_i_25 == I_i_14) {
               G_d_9 = I_d_123;
            }
            S_s_2644 = "NULL";
            sqOpenOrder(S_s_2644, 0, G_d_9, NormalizeDouble(G_d_11, _Digits), S_s_2643, I_i_1, S_s_2642);
         }
      }
   }
   G_d_117 = iMA(NULL, 0, 200, 0, 1, 0, 1);
   if ((G_d_117 < Close[1]) && PowerRisk == true && OrdersTotal() < MaxOrders && (MarketInfo(_Symbol, MODE_SWAPLONG) >= SwapMinimo)) {
      if ((iRSI(NULL, 0, 14, 0, 1) <= PotenzaBuy) || (iStochastic(NULL, 0, 50, 3, 3, 0, 0, 0, 1) <= UltraBuy)) {
         S_s_2645 = "Go long 1";
         S_s_2646 = "EAWOLF";
         G_i_28 = I_i_1;
         G_d_14 = 0;
         if (I_i_1 == I_i_1) {
            G_d_14 = Ask;
         }
         if (G_i_28 == I_i_2) {
            G_d_14 = Ask;
         }
         if (G_i_28 == I_i_3) {
            G_d_14 = Ask;
         }
         if (G_i_28 == I_i_4) {
            G_d_14 = Ask;
         }
         if (G_i_28 == I_i_5) {
            G_d_14 = Ask;
         }
         if (G_i_28 == I_i_6) {
            G_d_14 = Ask;
         }
         if (G_i_28 == I_i_7) {
            G_d_14 = Ask;
         }
         if (G_i_28 == I_i_8) {
            G_d_14 = Bid;
         }
         if (G_i_28 == I_i_9) {
            G_d_14 = Bid;
         }
         if (G_i_28 == I_i_10) {
            G_d_14 = Bid;
         }
         if (G_i_28 == I_i_11) {
            G_d_14 = Bid;
         }
         if (G_i_28 == I_i_12) {
            G_d_14 = Bid;
         }
         if (G_i_28 == I_i_13) {
            G_d_14 = Bid;
         }
         if (G_i_28 == I_i_14) {
            G_d_14 = Bid;
         }
         G_d_13 = NormalizeDouble(G_d_14, _Digits);
         G_i_27 = I_i_1;
         G_d_12 = 0;
         if (I_i_1 == I_i_1) {
            G_d_12 = LotSize;
         }
         if (G_i_27 == I_i_2) {
            G_d_12 = I_d_119;
         }
         if (G_i_27 == I_i_3) {
            G_d_12 = I_d_120;
         }
         if (G_i_27 == I_i_4) {
            G_d_12 = I_d_121;
         }
         if (G_i_27 == I_i_5) {
            G_d_12 = I_d_122;
         }
         if (G_i_27 == I_i_6) {
            G_d_12 = I_d_123;
         }
         if (G_i_27 == I_i_7) {
            G_d_12 = I_d_123;
         }
         if (G_i_27 == I_i_8) {
            G_d_12 = LotSize;
         }
         if (G_i_27 == I_i_9) {
            G_d_12 = I_d_119;
         }
         if (G_i_27 == I_i_10) {
            G_d_12 = I_d_120;
         }
         if (G_i_27 == I_i_11) {
            G_d_12 = I_d_121;
         }
         if (G_i_27 == I_i_12) {
            G_d_12 = I_d_122;
         }
         if (G_i_27 == I_i_13) {
            G_d_12 = I_d_123;
         }
         if (G_i_27 == I_i_14) {
            G_d_12 = I_d_123;
         }
         S_s_2647 = "NULL";
         sqOpenOrder(S_s_2647, 0, G_d_12, NormalizeDouble(G_d_14, _Digits), S_s_2646, I_i_1, S_s_2645);
      }
   }
   if ((iRSI(NULL, 0, 14, 0, 1) <= 30)) {
      G_i_29 = I_i_1;
      G_d_15 = 0;
      G_i_119 = OrdersTotal() - 1;
      G_i_30 = G_i_119;
      if (G_i_119 >= 0) {
         do {
            if (OrderSelect(G_i_30, 0, 0)) {
               if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
                  if (OrderSymbol() == _Symbol) {
                     if (G_i_29 == 0 || OrderMagicNumber() == G_i_29) {
                        if (OrderType() == OP_BUY) {
                           S_s_2648 = OrderSymbol();
                           if (S_s_2648 == "NULL") {
                              G_d_16 = Bid;
                           } else {
                              G_d_16 = MarketInfo(S_s_2648, MODE_BID);
                           }
                           G_d_15 = ((G_d_16 - OrderOpenPrice()) + G_d_15);
                        } else {
                           G_d_117 = OrderOpenPrice();
                           S_s_2649 = OrderSymbol();
                           if (S_s_2649 == "NULL") {
                              G_d_17 = Ask;
                           } else {
                              G_d_17 = MarketInfo(S_s_2649, MODE_ASK);
                           }
                           G_d_15 = ((G_d_117 - G_d_17) + G_d_15);
                        }
                     }
                  }
               }
            }
            G_i_30 = G_i_30 - 1;
         } while (G_i_30 >= 0);
      }
      if (((G_d_15 * I_d_2) <= -70)) {
         I_d_119 = ((LotSize + 0.0018) * I_d_125);
         S_s_2650 = "Go long 2";
         S_s_2651 = "EAWOLF";
         G_i_32 = I_i_2;
         G_d_20 = 0;
         if (I_i_2 == I_i_1) {
            G_d_20 = Ask;
         }
         if (G_i_32 == I_i_2) {
            G_d_20 = Ask;
         }
         if (G_i_32 == I_i_3) {
            G_d_20 = Ask;
         }
         if (G_i_32 == I_i_4) {
            G_d_20 = Ask;
         }
         if (G_i_32 == I_i_5) {
            G_d_20 = Ask;
         }
         if (G_i_32 == I_i_6) {
            G_d_20 = Ask;
         }
         if (G_i_32 == I_i_7) {
            G_d_20 = Ask;
         }
         if (G_i_32 == I_i_8) {
            G_d_20 = Bid;
         }
         if (G_i_32 == I_i_9) {
            G_d_20 = Bid;
         }
         if (G_i_32 == I_i_10) {
            G_d_20 = Bid;
         }
         if (G_i_32 == I_i_11) {
            G_d_20 = Bid;
         }
         if (G_i_32 == I_i_12) {
            G_d_20 = Bid;
         }
         if (G_i_32 == I_i_13) {
            G_d_20 = Bid;
         }
         if (G_i_32 == I_i_14) {
            G_d_20 = Bid;
         }
         G_d_19 = NormalizeDouble(G_d_20, _Digits);
         G_i_31 = I_i_2;
         G_d_18 = 0;
         if (I_i_2 == I_i_1) {
            G_d_18 = LotSize;
         }
         if (G_i_31 == I_i_2) {
            G_d_18 = I_d_119;
         }
         if (G_i_31 == I_i_3) {
            G_d_18 = I_d_120;
         }
         if (G_i_31 == I_i_4) {
            G_d_18 = I_d_121;
         }
         if (G_i_31 == I_i_5) {
            G_d_18 = I_d_122;
         }
         if (G_i_31 == I_i_6) {
            G_d_18 = I_d_123;
         }
         if (G_i_31 == I_i_7) {
            G_d_18 = I_d_123;
         }
         if (G_i_31 == I_i_8) {
            G_d_18 = LotSize;
         }
         if (G_i_31 == I_i_9) {
            G_d_18 = I_d_119;
         }
         if (G_i_31 == I_i_10) {
            G_d_18 = I_d_120;
         }
         if (G_i_31 == I_i_11) {
            G_d_18 = I_d_121;
         }
         if (G_i_31 == I_i_12) {
            G_d_18 = I_d_122;
         }
         if (G_i_31 == I_i_13) {
            G_d_18 = I_d_123;
         }
         if (G_i_31 == I_i_14) {
            G_d_18 = I_d_123;
         }
         S_s_2652 = "NULL";
         sqOpenOrder(S_s_2652, 0, G_d_18, NormalizeDouble(G_d_20, _Digits), S_s_2651, I_i_2, S_s_2650);
      }
   }
   if ((iRSI(NULL, 0, 14, 0, 1) <= 30)) {
      G_i_33 = I_i_2;
      G_d_21 = 0;
      G_i_119 = OrdersTotal() - 1;
      G_i_34 = G_i_119;
      if (G_i_119 >= 0) {
         do {
            if (OrderSelect(G_i_34, 0, 0)) {
               if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
                  if (OrderSymbol() == _Symbol) {
                     if (G_i_33 == 0 || OrderMagicNumber() == G_i_33) {
                        if (OrderType() == OP_BUY) {
                           S_s_2653 = OrderSymbol();
                           if (S_s_2653 == "NULL") {
                              G_d_22 = Bid;
                           } else {
                              G_d_22 = MarketInfo(S_s_2653, MODE_BID);
                           }
                           G_d_21 = ((G_d_22 - OrderOpenPrice()) + G_d_21);
                        } else {
                           G_d_117 = OrderOpenPrice();
                           S_s_2654 = OrderSymbol();
                           if (S_s_2654 == "NULL") {
                              G_d_23 = Ask;
                           } else {
                              G_d_23 = MarketInfo(S_s_2654, MODE_ASK);
                           }
                           G_d_21 = ((G_d_117 - G_d_23) + G_d_21);
                        }
                     }
                  }
               }
            }
            G_i_34 = G_i_34 - 1;
         } while (G_i_34 >= 0);
      }
      if (((G_d_21 * I_d_2) <= -120)) {
         G_d_117 = (LotSize + 0.0018);
         I_d_120 = ((I_d_125 * I_d_125) * G_d_117);
         S_s_2655 = "Go long 3";
         S_s_2656 = "EAWOLF";
         G_i_36 = I_i_3;
         G_d_26 = 0;
         if (I_i_3 == I_i_1) {
            G_d_26 = Ask;
         }
         if (G_i_36 == I_i_2) {
            G_d_26 = Ask;
         }
         if (G_i_36 == I_i_3) {
            G_d_26 = Ask;
         }
         if (G_i_36 == I_i_4) {
            G_d_26 = Ask;
         }
         if (G_i_36 == I_i_5) {
            G_d_26 = Ask;
         }
         if (G_i_36 == I_i_6) {
            G_d_26 = Ask;
         }
         if (G_i_36 == I_i_7) {
            G_d_26 = Ask;
         }
         if (G_i_36 == I_i_8) {
            G_d_26 = Bid;
         }
         if (G_i_36 == I_i_9) {
            G_d_26 = Bid;
         }
         if (G_i_36 == I_i_10) {
            G_d_26 = Bid;
         }
         if (G_i_36 == I_i_11) {
            G_d_26 = Bid;
         }
         if (G_i_36 == I_i_12) {
            G_d_26 = Bid;
         }
         if (G_i_36 == I_i_13) {
            G_d_26 = Bid;
         }
         if (G_i_36 == I_i_14) {
            G_d_26 = Bid;
         }
         G_i_35 = I_i_3;
         G_d_24 = 0;
         if (I_i_3 == I_i_1) {
            G_d_24 = LotSize;
         }
         if (G_i_35 == I_i_2) {
            G_d_24 = I_d_119;
         }
         if (G_i_35 == I_i_3) {
            G_d_24 = I_d_120;
         }
         if (G_i_35 == I_i_4) {
            G_d_24 = I_d_121;
         }
         if (G_i_35 == I_i_5) {
            G_d_24 = I_d_122;
         }
         if (G_i_35 == I_i_6) {
            G_d_24 = I_d_123;
         }
         if (G_i_35 == I_i_7) {
            G_d_24 = I_d_123;
         }
         if (G_i_35 == I_i_8) {
            G_d_24 = LotSize;
         }
         if (G_i_35 == I_i_9) {
            G_d_24 = I_d_119;
         }
         if (G_i_35 == I_i_10) {
            G_d_24 = I_d_120;
         }
         if (G_i_35 == I_i_11) {
            G_d_24 = I_d_121;
         }
         if (G_i_35 == I_i_12) {
            G_d_24 = I_d_122;
         }
         if (G_i_35 == I_i_13) {
            G_d_24 = I_d_123;
         }
         if (G_i_35 == I_i_14) {
            G_d_24 = I_d_123;
         }
         S_s_2657 = "NULL";
         sqOpenOrder(S_s_2657, 0, G_d_24, NormalizeDouble(G_d_26, _Digits), S_s_2656, I_i_3, S_s_2655);
      }
   }
   if ((iRSI(NULL, 0, 14, 0, 1) <= 30)) {
      G_i_37 = I_i_3;
      G_d_27 = 0;
      G_i_119 = OrdersTotal() - 1;
      G_i_38 = G_i_119;
      if (G_i_119 >= 0) {
         do {
            if (OrderSelect(G_i_38, 0, 0)) {
               if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
                  if (OrderSymbol() == _Symbol) {
                     if (G_i_37 == 0 || OrderMagicNumber() == G_i_37) {
                        if (OrderType() == OP_BUY) {
                           S_s_2658 = OrderSymbol();
                           if (S_s_2658 == "NULL") {
                              G_d_28 = Bid;
                           } else {
                              G_d_28 = MarketInfo(S_s_2658, MODE_BID);
                           }
                           G_d_27 = ((G_d_28 - OrderOpenPrice()) + G_d_27);
                        } else {
                           G_d_117 = OrderOpenPrice();
                           S_s_2659 = OrderSymbol();
                           if (S_s_2659 == "NULL") {
                              G_d_29 = Ask;
                           } else {
                              G_d_29 = MarketInfo(S_s_2659, MODE_ASK);
                           }
                           G_d_27 = ((G_d_117 - G_d_29) + G_d_27);
                        }
                     }
                  }
               }
            }
            G_i_38 = G_i_38 - 1;
         } while (G_i_38 >= 0);
      }
      if (((G_d_27 * I_d_2) <= -150)) {
         G_d_117 = (LotSize + 0.0018);
         I_d_121 = (((I_d_125 * I_d_125) * I_d_125) * G_d_117);
         S_s_2660 = "Go long 4";
         S_s_2661 = "EAWOLF";
         G_i_40 = I_i_4;
         G_d_32 = 0;
         if (I_i_4 == I_i_1) {
            G_d_32 = Ask;
         }
         if (G_i_40 == I_i_2) {
            G_d_32 = Ask;
         }
         if (G_i_40 == I_i_3) {
            G_d_32 = Ask;
         }
         if (G_i_40 == I_i_4) {
            G_d_32 = Ask;
         }
         if (G_i_40 == I_i_5) {
            G_d_32 = Ask;
         }
         if (G_i_40 == I_i_6) {
            G_d_32 = Ask;
         }
         if (G_i_40 == I_i_7) {
            G_d_32 = Ask;
         }
         if (G_i_40 == I_i_8) {
            G_d_32 = Bid;
         }
         if (G_i_40 == I_i_9) {
            G_d_32 = Bid;
         }
         if (G_i_40 == I_i_10) {
            G_d_32 = Bid;
         }
         if (G_i_40 == I_i_11) {
            G_d_32 = Bid;
         }
         if (G_i_40 == I_i_12) {
            G_d_32 = Bid;
         }
         if (G_i_40 == I_i_13) {
            G_d_32 = Bid;
         }
         if (G_i_40 == I_i_14) {
            G_d_32 = Bid;
         }
         G_i_39 = I_i_4;
         G_d_30 = 0;
         if (I_i_4 == I_i_1) {
            G_d_30 = LotSize;
         }
         if (G_i_39 == I_i_2) {
            G_d_30 = I_d_119;
         }
         if (G_i_39 == I_i_3) {
            G_d_30 = I_d_120;
         }
         if (G_i_39 == I_i_4) {
            G_d_30 = I_d_121;
         }
         if (G_i_39 == I_i_5) {
            G_d_30 = I_d_122;
         }
         if (G_i_39 == I_i_6) {
            G_d_30 = I_d_123;
         }
         if (G_i_39 == I_i_7) {
            G_d_30 = I_d_123;
         }
         if (G_i_39 == I_i_8) {
            G_d_30 = LotSize;
         }
         if (G_i_39 == I_i_9) {
            G_d_30 = I_d_119;
         }
         if (G_i_39 == I_i_10) {
            G_d_30 = I_d_120;
         }
         if (G_i_39 == I_i_11) {
            G_d_30 = I_d_121;
         }
         if (G_i_39 == I_i_12) {
            G_d_30 = I_d_122;
         }
         if (G_i_39 == I_i_13) {
            G_d_30 = I_d_123;
         }
         if (G_i_39 == I_i_14) {
            G_d_30 = I_d_123;
         }
         S_s_2662 = "NULL";
         sqOpenOrder(S_s_2662, 0, G_d_30, NormalizeDouble(G_d_32, _Digits), S_s_2661, I_i_4, S_s_2660);
      }
   }
   if ((iRSI(NULL, 0, 14, 0, 1) <= 30)) {
      G_i_41 = I_i_4;
      G_d_33 = 0;
      G_i_119 = OrdersTotal() - 1;
      G_i_42 = G_i_119;
      if (G_i_119 >= 0) {
         do {
            if (OrderSelect(G_i_42, 0, 0)) {
               if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
                  if (OrderSymbol() == _Symbol) {
                     if (G_i_41 == 0 || OrderMagicNumber() == G_i_41) {
                        if (OrderType() == OP_BUY) {
                           S_s_2663 = OrderSymbol();
                           if (S_s_2663 == "NULL") {
                              G_d_34 = Bid;
                           } else {
                              G_d_34 = MarketInfo(S_s_2663, MODE_BID);
                           }
                           G_d_33 = ((G_d_34 - OrderOpenPrice()) + G_d_33);
                        } else {
                           G_d_117 = OrderOpenPrice();
                           S_s_2664 = OrderSymbol();
                           if (S_s_2664 == "NULL") {
                              G_d_35 = Ask;
                           } else {
                              G_d_35 = MarketInfo(S_s_2664, MODE_ASK);
                           }
                           G_d_33 = ((G_d_117 - G_d_35) + G_d_33);
                        }
                     }
                  }
               }
            }
            G_i_42 = G_i_42 - 1;
         } while (G_i_42 >= 0);
      }
      if (((G_d_33 * I_d_2) <= -200)) {
         G_d_117 = ((LotSize + 0.0018) * I_d_125);
         I_d_122 = (((I_d_125 * I_d_125) * I_d_125) * G_d_117);
         S_s_2665 = "Go long 5";
         S_s_2625 = "EAWOLF";
         G_i_44 = I_i_5;
         G_d_38 = 0;
         if (I_i_5 == I_i_1) {
            G_d_38 = Ask;
         }
         if (G_i_44 == I_i_2) {
            G_d_38 = Ask;
         }
         if (G_i_44 == I_i_3) {
            G_d_38 = Ask;
         }
         if (G_i_44 == I_i_4) {
            G_d_38 = Ask;
         }
         if (G_i_44 == I_i_5) {
            G_d_38 = Ask;
         }
         if (G_i_44 == I_i_6) {
            G_d_38 = Ask;
         }
         if (G_i_44 == I_i_7) {
            G_d_38 = Ask;
         }
         if (G_i_44 == I_i_8) {
            G_d_38 = Bid;
         }
         if (G_i_44 == I_i_9) {
            G_d_38 = Bid;
         }
         if (G_i_44 == I_i_10) {
            G_d_38 = Bid;
         }
         if (G_i_44 == I_i_11) {
            G_d_38 = Bid;
         }
         if (G_i_44 == I_i_12) {
            G_d_38 = Bid;
         }
         if (G_i_44 == I_i_13) {
            G_d_38 = Bid;
         }
         if (G_i_44 == I_i_14) {
            G_d_38 = Bid;
         }
         G_i_43 = I_i_5;
         G_d_36 = 0;
         if (I_i_5 == I_i_1) {
            G_d_36 = LotSize;
         }
         if (G_i_43 == I_i_2) {
            G_d_36 = I_d_119;
         }
         if (G_i_43 == I_i_3) {
            G_d_36 = I_d_120;
         }
         if (G_i_43 == I_i_4) {
            G_d_36 = I_d_121;
         }
         if (G_i_43 == I_i_5) {
            G_d_36 = I_d_122;
         }
         if (G_i_43 == I_i_6) {
            G_d_36 = I_d_123;
         }
         if (G_i_43 == I_i_7) {
            G_d_36 = I_d_123;
         }
         if (G_i_43 == I_i_8) {
            G_d_36 = LotSize;
         }
         if (G_i_43 == I_i_9) {
            G_d_36 = I_d_119;
         }
         if (G_i_43 == I_i_10) {
            G_d_36 = I_d_120;
         }
         if (G_i_43 == I_i_11) {
            G_d_36 = I_d_121;
         }
         if (G_i_43 == I_i_12) {
            G_d_36 = I_d_122;
         }
         if (G_i_43 == I_i_13) {
            G_d_36 = I_d_123;
         }
         if (G_i_43 == I_i_14) {
            G_d_36 = I_d_123;
         }
         S_s_2626 = "NULL";
         sqOpenOrder(S_s_2626, 0, G_d_36, NormalizeDouble(G_d_38, _Digits), S_s_2625, I_i_5, S_s_2665);
      }
   }
   if ((iRSI(NULL, 0, 14, 0, 1) <= 30)) {
      G_i_45 = I_i_5;
      G_d_39 = 0;
      G_i_119 = OrdersTotal() - 1;
      G_i_46 = G_i_119;
      if (G_i_119 >= 0) {
         do {
            if (OrderSelect(G_i_46, 0, 0)) {
               if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
                  if (OrderSymbol() == _Symbol) {
                     if (G_i_45 == 0 || OrderMagicNumber() == G_i_45) {
                        if (OrderType() == OP_BUY) {
                           S_s_2627 = OrderSymbol();
                           if (S_s_2627 == "NULL") {
                              G_d_40 = Bid;
                           } else {
                              G_d_40 = MarketInfo(S_s_2627, MODE_BID);
                           }
                           G_d_39 = ((G_d_40 - OrderOpenPrice()) + G_d_39);
                        } else {
                           G_d_117 = OrderOpenPrice();
                           S_s_2628 = OrderSymbol();
                           if (S_s_2628 == "NULL") {
                              G_d_41 = Ask;
                           } else {
                              G_d_41 = MarketInfo(S_s_2628, MODE_ASK);
                           }
                           G_d_39 = ((G_d_117 - G_d_41) + G_d_39);
                        }
                     }
                  }
               }
            }
            G_i_46 = G_i_46 - 1;
         } while (G_i_46 >= 0);
      }
      if (((G_d_39 * I_d_2) <= -200)) {
         G_d_117 = ((LotSize + 0.0018) * I_d_125);
         I_d_123 = ((((I_d_125 * I_d_125) * I_d_125) * I_d_125) * G_d_117);
         S_s_2629 = "Go long 6";
         S_s_2630 = "EAWOLF";
         G_i_48 = I_i_6;
         G_d_44 = 0;
         if (I_i_6 == I_i_1) {
            G_d_44 = Ask;
         }
         if (G_i_48 == I_i_2) {
            G_d_44 = Ask;
         }
         if (G_i_48 == I_i_3) {
            G_d_44 = Ask;
         }
         if (G_i_48 == I_i_4) {
            G_d_44 = Ask;
         }
         if (G_i_48 == I_i_5) {
            G_d_44 = Ask;
         }
         if (G_i_48 == I_i_6) {
            G_d_44 = Ask;
         }
         if (G_i_48 == I_i_7) {
            G_d_44 = Ask;
         }
         if (G_i_48 == I_i_8) {
            G_d_44 = Bid;
         }
         if (G_i_48 == I_i_9) {
            G_d_44 = Bid;
         }
         if (G_i_48 == I_i_10) {
            G_d_44 = Bid;
         }
         if (G_i_48 == I_i_11) {
            G_d_44 = Bid;
         }
         if (G_i_48 == I_i_12) {
            G_d_44 = Bid;
         }
         if (G_i_48 == I_i_13) {
            G_d_44 = Bid;
         }
         if (G_i_48 == I_i_14) {
            G_d_44 = Bid;
         }
         G_i_47 = I_i_6;
         G_d_42 = 0;
         if (I_i_6 == I_i_1) {
            G_d_42 = LotSize;
         }
         if (G_i_47 == I_i_2) {
            G_d_42 = I_d_119;
         }
         if (G_i_47 == I_i_3) {
            G_d_42 = I_d_120;
         }
         if (G_i_47 == I_i_4) {
            G_d_42 = I_d_121;
         }
         if (G_i_47 == I_i_5) {
            G_d_42 = I_d_122;
         }
         if (G_i_47 == I_i_6) {
            G_d_42 = I_d_123;
         }
         if (G_i_47 == I_i_7) {
            G_d_42 = I_d_123;
         }
         if (G_i_47 == I_i_8) {
            G_d_42 = LotSize;
         }
         if (G_i_47 == I_i_9) {
            G_d_42 = I_d_119;
         }
         if (G_i_47 == I_i_10) {
            G_d_42 = I_d_120;
         }
         if (G_i_47 == I_i_11) {
            G_d_42 = I_d_121;
         }
         if (G_i_47 == I_i_12) {
            G_d_42 = I_d_122;
         }
         if (G_i_47 == I_i_13) {
            G_d_42 = I_d_123;
         }
         if (G_i_47 == I_i_14) {
            G_d_42 = I_d_123;
         }
         S_s_2631 = "NULL";
         sqOpenOrder(S_s_2631, 0, G_d_42, NormalizeDouble(G_d_44, _Digits), S_s_2630, I_i_6, S_s_2629);
      }
   }
   if ((iRSI(NULL, 0, 14, 0, 1) <= 30)) {
      G_i_49 = I_i_6;
      G_d_45 = 0;
      G_i_119 = OrdersTotal() - 1;
      G_i_50 = G_i_119;
      if (G_i_119 >= 0) {
         do {
            if (OrderSelect(G_i_50, 0, 0)) {
               if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
                  if (OrderSymbol() == _Symbol) {
                     if (G_i_49 == 0 || OrderMagicNumber() == G_i_49) {
                        if (OrderType() == OP_BUY) {
                           S_s_2632 = OrderSymbol();
                           if (S_s_2632 == "NULL") {
                              G_d_46 = Bid;
                           } else {
                              G_d_46 = MarketInfo(S_s_2632, MODE_BID);
                           }
                           G_d_45 = ((G_d_46 - OrderOpenPrice()) + G_d_45);
                        } else {
                           G_d_117 = OrderOpenPrice();
                           S_s_2633 = OrderSymbol();
                           if (S_s_2633 == "NULL") {
                              G_d_47 = Ask;
                           } else {
                              G_d_47 = MarketInfo(S_s_2633, MODE_ASK);
                           }
                           G_d_45 = ((G_d_117 - G_d_47) + G_d_45);
                        }
                     }
                  }
               }
            }
            G_i_50 = G_i_50 - 1;
         } while (G_i_50 >= 0);
      }
      if (((G_d_45 * I_d_2) <= -200)) {
         G_d_117 = ((LotSize + 0.0018) * I_d_125);
         G_d_126 = (I_d_125 * I_d_125);
         I_d_127 = (((G_d_126 * I_d_125) * G_d_126) * G_d_117);
         S_s_2634 = "Go long 7";
         S_s_2635 = "EAWOLF";
         G_i_52 = I_i_7;
         G_d_50 = 0;
         if (I_i_7 == I_i_1) {
            G_d_50 = Ask;
         }
         if (G_i_52 == I_i_2) {
            G_d_50 = Ask;
         }
         if (G_i_52 == I_i_3) {
            G_d_50 = Ask;
         }
         if (G_i_52 == I_i_4) {
            G_d_50 = Ask;
         }
         if (G_i_52 == I_i_5) {
            G_d_50 = Ask;
         }
         if (G_i_52 == I_i_6) {
            G_d_50 = Ask;
         }
         if (G_i_52 == I_i_7) {
            G_d_50 = Ask;
         }
         if (G_i_52 == I_i_8) {
            G_d_50 = Bid;
         }
         if (G_i_52 == I_i_9) {
            G_d_50 = Bid;
         }
         if (G_i_52 == I_i_10) {
            G_d_50 = Bid;
         }
         if (G_i_52 == I_i_11) {
            G_d_50 = Bid;
         }
         if (G_i_52 == I_i_12) {
            G_d_50 = Bid;
         }
         if (G_i_52 == I_i_13) {
            G_d_50 = Bid;
         }
         if (G_i_52 == I_i_14) {
            G_d_50 = Bid;
         }
         G_i_51 = I_i_7;
         G_d_48 = 0;
         if (I_i_7 == I_i_1) {
            G_d_48 = LotSize;
         }
         if (G_i_51 == I_i_2) {
            G_d_48 = I_d_119;
         }
         if (G_i_51 == I_i_3) {
            G_d_48 = I_d_120;
         }
         if (G_i_51 == I_i_4) {
            G_d_48 = I_d_121;
         }
         if (G_i_51 == I_i_5) {
            G_d_48 = I_d_122;
         }
         if (G_i_51 == I_i_6) {
            G_d_48 = I_d_123;
         }
         if (G_i_51 == I_i_7) {
            G_d_48 = I_d_123;
         }
         if (G_i_51 == I_i_8) {
            G_d_48 = LotSize;
         }
         if (G_i_51 == I_i_9) {
            G_d_48 = I_d_119;
         }
         if (G_i_51 == I_i_10) {
            G_d_48 = I_d_120;
         }
         if (G_i_51 == I_i_11) {
            G_d_48 = I_d_121;
         }
         if (G_i_51 == I_i_12) {
            G_d_48 = I_d_122;
         }
         if (G_i_51 == I_i_13) {
            G_d_48 = I_d_123;
         }
         if (G_i_51 == I_i_14) {
            G_d_48 = I_d_123;
         }
         S_s_2567 = "NULL";
         sqOpenOrder(S_s_2567, 0, G_d_48, NormalizeDouble(G_d_50, _Digits), S_s_2635, I_i_7, S_s_2634);
      }
   }
   G_d_126 = iMA(NULL, 0, 200, 0, 1, 0, 1);
   if ((G_d_126 > Close[1]) && PowerRisk == 0 && OrdersTotal() < MaxOrders) {
      G_i_53 = I_i_8;
      G_i_54 = 0;
      if (OrdersTotal() > 0) {
         do {
            if (OrderSelect(G_i_54, 0, 0) == true && OrderSymbol() == _Symbol) {
               if (G_i_53 == 0 || OrderMagicNumber() == G_i_53) {
                  G_l_7 = OrderOpenTime();
                  if (G_l_7 > Time[1]) {
                     G_b_3 = true;
                     break;
                  }
               }
            }
            G_i_54 = G_i_54 + 1;
         } while (G_i_54 < OrdersTotal());
      } else G_i_54 = HistoryTotal();
      if (G_i_54 >= 0) {
         do {
            if (OrderSelect(G_i_54, 0, 1) == true && OrderSymbol() == _Symbol) {
               if (G_i_53 == 0 || OrderMagicNumber() == G_i_53) {
                  G_l_7 = OrderOpenTime();
                  if (G_l_7 > Time[1]) {
                     G_b_3 = true;
                     break;
                  }
               }
            }
            G_i_54 = G_i_54 - 1;
         } while (G_i_54 >= 0);
      } else G_b_3 = false;
      if (G_b_3 == 0 && (MarketInfo(_Symbol, MODE_SWAPSHORT) >= SwapMinimo)) {
         if ((iRSI(NULL, 0, 14, 0, 1) >= PotenzaSell) || (iStochastic(NULL, 0, 50, 3, 3, 0, 0, 0, 1) >= UltraSell)) {
            S_s_2568 = "Go short 1";
            S_s_2569 = "EAWOLF";
            G_i_56 = I_i_8;
            G_d_53 = 0;
            if (I_i_8 == I_i_1) {
               G_d_53 = Ask;
            }
            if (G_i_56 == I_i_2) {
               G_d_53 = Ask;
            }
            if (G_i_56 == I_i_3) {
               G_d_53 = Ask;
            }
            if (G_i_56 == I_i_4) {
               G_d_53 = Ask;
            }
            if (G_i_56 == I_i_5) {
               G_d_53 = Ask;
            }
            if (G_i_56 == I_i_6) {
               G_d_53 = Ask;
            }
            if (G_i_56 == I_i_7) {
               G_d_53 = Ask;
            }
            if (G_i_56 == I_i_8) {
               G_d_53 = Bid;
            }
            if (G_i_56 == I_i_9) {
               G_d_53 = Bid;
            }
            if (G_i_56 == I_i_10) {
               G_d_53 = Bid;
            }
            if (G_i_56 == I_i_11) {
               G_d_53 = Bid;
            }
            if (G_i_56 == I_i_12) {
               G_d_53 = Bid;
            }
            if (G_i_56 == I_i_13) {
               G_d_53 = Bid;
            }
            if (G_i_56 == I_i_14) {
               G_d_53 = Bid;
            }
            G_i_55 = I_i_8;
            G_d_51 = 0;
            if (I_i_8 == I_i_1) {
               G_d_51 = LotSize;
            }
            if (G_i_55 == I_i_2) {
               G_d_51 = I_d_119;
            }
            if (G_i_55 == I_i_3) {
               G_d_51 = I_d_120;
            }
            if (G_i_55 == I_i_4) {
               G_d_51 = I_d_121;
            }
            if (G_i_55 == I_i_5) {
               G_d_51 = I_d_122;
            }
            if (G_i_55 == I_i_6) {
               G_d_51 = I_d_123;
            }
            if (G_i_55 == I_i_7) {
               G_d_51 = I_d_123;
            }
            if (G_i_55 == I_i_8) {
               G_d_51 = LotSize;
            }
            if (G_i_55 == I_i_9) {
               G_d_51 = I_d_119;
            }
            if (G_i_55 == I_i_10) {
               G_d_51 = I_d_120;
            }
            if (G_i_55 == I_i_11) {
               G_d_51 = I_d_121;
            }
            if (G_i_55 == I_i_12) {
               G_d_51 = I_d_122;
            }
            if (G_i_55 == I_i_13) {
               G_d_51 = I_d_123;
            }
            if (G_i_55 == I_i_14) {
               G_d_51 = I_d_123;
            }
            S_s_2570 = "NULL";
            sqOpenOrder(S_s_2570, 1, G_d_51, NormalizeDouble(G_d_53, _Digits), S_s_2569, I_i_8, S_s_2568);
         }
      }
   }
   G_d_126 = iMA(NULL, 0, 200, 0, 1, 0, 1);
   if ((G_d_126 > Close[1]) && PowerRisk == true && OrdersTotal() < MaxOrders && (MarketInfo(_Symbol, MODE_SWAPSHORT) >= SwapMinimo)) {
      if ((iRSI(NULL, 0, 14, 0, 1) >= PotenzaSell) || (iStochastic(NULL, 0, 50, 3, 3, 0, 0, 0, 1) >= UltraSell)) {
         S_s_2571 = "Go short 1";
         S_s_2572 = "EAWOLF";
         G_i_58 = I_i_8;
         G_d_56 = 0;
         if (I_i_8 == I_i_1) {
            G_d_56 = Ask;
         }
         if (G_i_58 == I_i_2) {
            G_d_56 = Ask;
         }
         if (G_i_58 == I_i_3) {
            G_d_56 = Ask;
         }
         if (G_i_58 == I_i_4) {
            G_d_56 = Ask;
         }
         if (G_i_58 == I_i_5) {
            G_d_56 = Ask;
         }
         if (G_i_58 == I_i_6) {
            G_d_56 = Ask;
         }
         if (G_i_58 == I_i_7) {
            G_d_56 = Ask;
         }
         if (G_i_58 == I_i_8) {
            G_d_56 = Bid;
         }
         if (G_i_58 == I_i_9) {
            G_d_56 = Bid;
         }
         if (G_i_58 == I_i_10) {
            G_d_56 = Bid;
         }
         if (G_i_58 == I_i_11) {
            G_d_56 = Bid;
         }
         if (G_i_58 == I_i_12) {
            G_d_56 = Bid;
         }
         if (G_i_58 == I_i_13) {
            G_d_56 = Bid;
         }
         if (G_i_58 == I_i_14) {
            G_d_56 = Bid;
         }
         G_i_57 = I_i_8;
         G_d_54 = 0;
         if (I_i_8 == I_i_1) {
            G_d_54 = LotSize;
         }
         if (G_i_57 == I_i_2) {
            G_d_54 = I_d_119;
         }
         if (G_i_57 == I_i_3) {
            G_d_54 = I_d_120;
         }
         if (G_i_57 == I_i_4) {
            G_d_54 = I_d_121;
         }
         if (G_i_57 == I_i_5) {
            G_d_54 = I_d_122;
         }
         if (G_i_57 == I_i_6) {
            G_d_54 = I_d_123;
         }
         if (G_i_57 == I_i_7) {
            G_d_54 = I_d_123;
         }
         if (G_i_57 == I_i_8) {
            G_d_54 = LotSize;
         }
         if (G_i_57 == I_i_9) {
            G_d_54 = I_d_119;
         }
         if (G_i_57 == I_i_10) {
            G_d_54 = I_d_120;
         }
         if (G_i_57 == I_i_11) {
            G_d_54 = I_d_121;
         }
         if (G_i_57 == I_i_12) {
            G_d_54 = I_d_122;
         }
         if (G_i_57 == I_i_13) {
            G_d_54 = I_d_123;
         }
         if (G_i_57 == I_i_14) {
            G_d_54 = I_d_123;
         }
         S_s_2573 = "NULL";
         sqOpenOrder(S_s_2573, 1, G_d_54, NormalizeDouble(G_d_56, _Digits), S_s_2572, I_i_8, S_s_2571);
      }
   }
   if ((iRSI(NULL, 0, 14, 0, 1) >= 70)) {
      G_i_59 = I_i_8;
      G_d_57 = 0;
      G_i_123 = OrdersTotal() - 1;
      G_i_60 = G_i_123;
      if (G_i_123 >= 0) {
         do {
            if (OrderSelect(G_i_60, 0, 0)) {
               if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
                  if (OrderSymbol() == _Symbol) {
                     if (G_i_59 == 0 || OrderMagicNumber() == G_i_59) {
                        if (OrderType() == OP_BUY) {
                           S_s_2574 = OrderSymbol();
                           if (S_s_2574 == "NULL") {
                              G_d_58 = Bid;
                           } else {
                              G_d_58 = MarketInfo(S_s_2574, MODE_BID);
                           }
                           G_d_57 = ((G_d_58 - OrderOpenPrice()) + G_d_57);
                        } else {
                           G_d_126 = OrderOpenPrice();
                           S_s_2575 = OrderSymbol();
                           if (S_s_2575 == "NULL") {
                              G_d_59 = Ask;
                           } else {
                              G_d_59 = MarketInfo(S_s_2575, MODE_ASK);
                           }
                           G_d_57 = ((G_d_126 - G_d_59) + G_d_57);
                        }
                     }
                  }
               }
            }
            G_i_60 = G_i_60 - 1;
         } while (G_i_60 >= 0);
      }
      if (((G_d_57 * I_d_2) <= -70)) {
         I_d_119 = ((LotSize + 0.0018) * I_d_125);
         S_s_2576 = "Go short 2";
         S_s_2577 = "EAWOLF";
         G_i_62 = I_i_9;
         G_d_62 = 0;
         if (I_i_9 == I_i_1) {
            G_d_62 = Ask;
         }
         if (G_i_62 == I_i_2) {
            G_d_62 = Ask;
         }
         if (G_i_62 == I_i_3) {
            G_d_62 = Ask;
         }
         if (G_i_62 == I_i_4) {
            G_d_62 = Ask;
         }
         if (G_i_62 == I_i_5) {
            G_d_62 = Ask;
         }
         if (G_i_62 == I_i_6) {
            G_d_62 = Ask;
         }
         if (G_i_62 == I_i_7) {
            G_d_62 = Ask;
         }
         if (G_i_62 == I_i_8) {
            G_d_62 = Bid;
         }
         if (G_i_62 == I_i_9) {
            G_d_62 = Bid;
         }
         if (G_i_62 == I_i_10) {
            G_d_62 = Bid;
         }
         if (G_i_62 == I_i_11) {
            G_d_62 = Bid;
         }
         if (G_i_62 == I_i_12) {
            G_d_62 = Bid;
         }
         if (G_i_62 == I_i_13) {
            G_d_62 = Bid;
         }
         if (G_i_62 == I_i_14) {
            G_d_62 = Bid;
         }
         G_i_61 = I_i_9;
         G_d_60 = 0;
         if (I_i_9 == I_i_1) {
            G_d_60 = LotSize;
         }
         if (G_i_61 == I_i_2) {
            G_d_60 = I_d_119;
         }
         if (G_i_61 == I_i_3) {
            G_d_60 = I_d_120;
         }
         if (G_i_61 == I_i_4) {
            G_d_60 = I_d_121;
         }
         if (G_i_61 == I_i_5) {
            G_d_60 = I_d_122;
         }
         if (G_i_61 == I_i_6) {
            G_d_60 = I_d_123;
         }
         if (G_i_61 == I_i_7) {
            G_d_60 = I_d_123;
         }
         if (G_i_61 == I_i_8) {
            G_d_60 = LotSize;
         }
         if (G_i_61 == I_i_9) {
            G_d_60 = I_d_119;
         }
         if (G_i_61 == I_i_10) {
            G_d_60 = I_d_120;
         }
         if (G_i_61 == I_i_11) {
            G_d_60 = I_d_121;
         }
         if (G_i_61 == I_i_12) {
            G_d_60 = I_d_122;
         }
         if (G_i_61 == I_i_13) {
            G_d_60 = I_d_123;
         }
         if (G_i_61 == I_i_14) {
            G_d_60 = I_d_123;
         }
         S_s_2578 = "NULL";
         sqOpenOrder(S_s_2578, 1, G_d_60, NormalizeDouble(G_d_62, _Digits), S_s_2577, I_i_9, S_s_2576);
      }
   }
   if ((iRSI(NULL, 0, 14, 0, 1) >= 70)) {
      G_i_63 = I_i_9;
      G_d_63 = 0;
      G_i_123 = OrdersTotal() - 1;
      G_i_64 = G_i_123;
      if (G_i_123 >= 0) {
         do {
            if (OrderSelect(G_i_64, 0, 0)) {
               if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
                  if (OrderSymbol() == _Symbol) {
                     if (G_i_63 == 0 || OrderMagicNumber() == G_i_63) {
                        if (OrderType() == OP_BUY) {
                           S_s_2579 = OrderSymbol();
                           if (S_s_2579 == "NULL") {
                              G_d_64 = Bid;
                           } else {
                              G_d_64 = MarketInfo(S_s_2579, MODE_BID);
                           }
                           G_d_63 = ((G_d_64 - OrderOpenPrice()) + G_d_63);
                        } else {
                           G_d_126 = OrderOpenPrice();
                           S_s_2580 = OrderSymbol();
                           if (S_s_2580 == "NULL") {
                              G_d_65 = Ask;
                           } else {
                              G_d_65 = MarketInfo(S_s_2580, MODE_ASK);
                           }
                           G_d_63 = ((G_d_126 - G_d_65) + G_d_63);
                        }
                     }
                  }
               }
            }
            G_i_64 = G_i_64 - 1;
         } while (G_i_64 >= 0);
      }
      if (((G_d_63 * I_d_2) <= -120)) {
         G_d_126 = (LotSize + 0.0018);
         I_d_120 = ((I_d_125 * I_d_125) * G_d_126);
         S_s_2581 = "Go short 3";
         S_s_2582 = "EAWOLF";
         G_i_66 = I_i_10;
         G_d_68 = 0;
         if (I_i_10 == I_i_1) {
            G_d_68 = Ask;
         }
         if (G_i_66 == I_i_2) {
            G_d_68 = Ask;
         }
         if (G_i_66 == I_i_3) {
            G_d_68 = Ask;
         }
         if (G_i_66 == I_i_4) {
            G_d_68 = Ask;
         }
         if (G_i_66 == I_i_5) {
            G_d_68 = Ask;
         }
         if (G_i_66 == I_i_6) {
            G_d_68 = Ask;
         }
         if (G_i_66 == I_i_7) {
            G_d_68 = Ask;
         }
         if (G_i_66 == I_i_8) {
            G_d_68 = Bid;
         }
         if (G_i_66 == I_i_9) {
            G_d_68 = Bid;
         }
         if (G_i_66 == I_i_10) {
            G_d_68 = Bid;
         }
         if (G_i_66 == I_i_11) {
            G_d_68 = Bid;
         }
         if (G_i_66 == I_i_12) {
            G_d_68 = Bid;
         }
         if (G_i_66 == I_i_13) {
            G_d_68 = Bid;
         }
         if (G_i_66 == I_i_14) {
            G_d_68 = Bid;
         }
         G_i_65 = I_i_10;
         G_d_66 = 0;
         if (I_i_10 == I_i_1) {
            G_d_66 = LotSize;
         }
         if (G_i_65 == I_i_2) {
            G_d_66 = I_d_119;
         }
         if (G_i_65 == I_i_3) {
            G_d_66 = I_d_120;
         }
         if (G_i_65 == I_i_4) {
            G_d_66 = I_d_121;
         }
         if (G_i_65 == I_i_5) {
            G_d_66 = I_d_122;
         }
         if (G_i_65 == I_i_6) {
            G_d_66 = I_d_123;
         }
         if (G_i_65 == I_i_7) {
            G_d_66 = I_d_123;
         }
         if (G_i_65 == I_i_8) {
            G_d_66 = LotSize;
         }
         if (G_i_65 == I_i_9) {
            G_d_66 = I_d_119;
         }
         if (G_i_65 == I_i_10) {
            G_d_66 = I_d_120;
         }
         if (G_i_65 == I_i_11) {
            G_d_66 = I_d_121;
         }
         if (G_i_65 == I_i_12) {
            G_d_66 = I_d_122;
         }
         if (G_i_65 == I_i_13) {
            G_d_66 = I_d_123;
         }
         if (G_i_65 == I_i_14) {
            G_d_66 = I_d_123;
         }
         S_s_2583 = "NULL";
         sqOpenOrder(S_s_2583, 1, G_d_66, NormalizeDouble(G_d_68, _Digits), S_s_2582, I_i_10, S_s_2581);
      }
   }
   if ((iRSI(NULL, 0, 14, 0, 1) >= 70)) {
      G_i_67 = I_i_10;
      G_d_69 = 0;
      G_i_123 = OrdersTotal() - 1;
      G_i_68 = G_i_123;
      if (G_i_123 >= 0) {
         do {
            if (OrderSelect(G_i_68, 0, 0)) {
               if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
                  if (OrderSymbol() == _Symbol) {
                     if (G_i_67 == 0 || OrderMagicNumber() == G_i_67) {
                        if (OrderType() == OP_BUY) {
                           S_s_2584 = OrderSymbol();
                           if (S_s_2584 == "NULL") {
                              G_d_70 = Bid;
                           } else {
                              G_d_70 = MarketInfo(S_s_2584, MODE_BID);
                           }
                           G_d_69 = ((G_d_70 - OrderOpenPrice()) + G_d_69);
                        } else {
                           G_d_126 = OrderOpenPrice();
                           S_s_2585 = OrderSymbol();
                           if (S_s_2585 == "NULL") {
                              G_d_71 = Ask;
                           } else {
                              G_d_71 = MarketInfo(S_s_2585, MODE_ASK);
                           }
                           G_d_69 = ((G_d_126 - G_d_71) + G_d_69);
                        }
                     }
                  }
               }
            }
            G_i_68 = G_i_68 - 1;
         } while (G_i_68 >= 0);
      }
      if (((G_d_69 * I_d_2) <= -150)) {
         G_d_126 = (LotSize + 0.0018);
         I_d_121 = (((I_d_125 * I_d_125) * I_d_125) * G_d_126);
         S_s_2586 = "go short 4";
         S_s_2587 = "EAWOLF";
         G_i_70 = I_i_11;
         G_d_74 = 0;
         if (I_i_11 == I_i_1) {
            G_d_74 = Ask;
         }
         if (G_i_70 == I_i_2) {
            G_d_74 = Ask;
         }
         if (G_i_70 == I_i_3) {
            G_d_74 = Ask;
         }
         if (G_i_70 == I_i_4) {
            G_d_74 = Ask;
         }
         if (G_i_70 == I_i_5) {
            G_d_74 = Ask;
         }
         if (G_i_70 == I_i_6) {
            G_d_74 = Ask;
         }
         if (G_i_70 == I_i_7) {
            G_d_74 = Ask;
         }
         if (G_i_70 == I_i_8) {
            G_d_74 = Bid;
         }
         if (G_i_70 == I_i_9) {
            G_d_74 = Bid;
         }
         if (G_i_70 == I_i_10) {
            G_d_74 = Bid;
         }
         if (G_i_70 == I_i_11) {
            G_d_74 = Bid;
         }
         if (G_i_70 == I_i_12) {
            G_d_74 = Bid;
         }
         if (G_i_70 == I_i_13) {
            G_d_74 = Bid;
         }
         if (G_i_70 == I_i_14) {
            G_d_74 = Bid;
         }
         G_i_69 = I_i_11;
         G_d_72 = 0;
         if (I_i_11 == I_i_1) {
            G_d_72 = LotSize;
         }
         if (G_i_69 == I_i_2) {
            G_d_72 = I_d_119;
         }
         if (G_i_69 == I_i_3) {
            G_d_72 = I_d_120;
         }
         if (G_i_69 == I_i_4) {
            G_d_72 = I_d_121;
         }
         if (G_i_69 == I_i_5) {
            G_d_72 = I_d_122;
         }
         if (G_i_69 == I_i_6) {
            G_d_72 = I_d_123;
         }
         if (G_i_69 == I_i_7) {
            G_d_72 = I_d_123;
         }
         if (G_i_69 == I_i_8) {
            G_d_72 = LotSize;
         }
         if (G_i_69 == I_i_9) {
            G_d_72 = I_d_119;
         }
         if (G_i_69 == I_i_10) {
            G_d_72 = I_d_120;
         }
         if (G_i_69 == I_i_11) {
            G_d_72 = I_d_121;
         }
         if (G_i_69 == I_i_12) {
            G_d_72 = I_d_122;
         }
         if (G_i_69 == I_i_13) {
            G_d_72 = I_d_123;
         }
         if (G_i_69 == I_i_14) {
            G_d_72 = I_d_123;
         }
         S_s_2588 = "NULL";
         sqOpenOrder(S_s_2588, 1, G_d_72, NormalizeDouble(G_d_74, _Digits), S_s_2587, I_i_11, S_s_2586);
      }
   }
   if ((iRSI(NULL, 0, 14, 0, 1) >= 70)) {
      G_i_71 = I_i_11;
      G_d_75 = 0;
      G_i_123 = OrdersTotal() - 1;
      G_i_72 = G_i_123;
      if (G_i_123 >= 0) {
         do {
            if (OrderSelect(G_i_72, 0, 0)) {
               if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
                  if (OrderSymbol() == _Symbol) {
                     if (G_i_71 == 0 || OrderMagicNumber() == G_i_71) {
                        if (OrderType() == OP_BUY) {
                           S_s_2589 = OrderSymbol();
                           if (S_s_2589 == "NULL") {
                              G_d_76 = Bid;
                           } else {
                              G_d_76 = MarketInfo(S_s_2589, MODE_BID);
                           }
                           G_d_75 = ((G_d_76 - OrderOpenPrice()) + G_d_75);
                        } else {
                           G_d_126 = OrderOpenPrice();
                           S_s_2590 = OrderSymbol();
                           if (S_s_2590 == "NULL") {
                              G_d_77 = Ask;
                           } else {
                              G_d_77 = MarketInfo(S_s_2590, MODE_ASK);
                           }
                           G_d_75 = ((G_d_126 - G_d_77) + G_d_75);
                        }
                     }
                  }
               }
            }
            G_i_72 = G_i_72 - 1;
         } while (G_i_72 >= 0);
      }
      if (((G_d_75 * I_d_2) <= -200)) {
         G_d_126 = (LotSize + 0.0018);
         I_d_122 = (((I_d_125 * I_d_125) * (I_d_125 * I_d_125)) * G_d_126);
         S_s_2591 = "go short 5";
         S_s_2592 = "EAWOLF";
         G_i_74 = I_i_12;
         G_d_80 = 0;
         if (I_i_12 == I_i_1) {
            G_d_80 = Ask;
         }
         if (G_i_74 == I_i_2) {
            G_d_80 = Ask;
         }
         if (G_i_74 == I_i_3) {
            G_d_80 = Ask;
         }
         if (G_i_74 == I_i_4) {
            G_d_80 = Ask;
         }
         if (G_i_74 == I_i_5) {
            G_d_80 = Ask;
         }
         if (G_i_74 == I_i_6) {
            G_d_80 = Ask;
         }
         if (G_i_74 == I_i_7) {
            G_d_80 = Ask;
         }
         if (G_i_74 == I_i_8) {
            G_d_80 = Bid;
         }
         if (G_i_74 == I_i_9) {
            G_d_80 = Bid;
         }
         if (G_i_74 == I_i_10) {
            G_d_80 = Bid;
         }
         if (G_i_74 == I_i_11) {
            G_d_80 = Bid;
         }
         if (G_i_74 == I_i_12) {
            G_d_80 = Bid;
         }
         if (G_i_74 == I_i_13) {
            G_d_80 = Bid;
         }
         if (G_i_74 == I_i_14) {
            G_d_80 = Bid;
         }
         G_i_73 = I_i_12;
         G_d_78 = 0;
         if (I_i_12 == I_i_1) {
            G_d_78 = LotSize;
         }
         if (G_i_73 == I_i_2) {
            G_d_78 = I_d_119;
         }
         if (G_i_73 == I_i_3) {
            G_d_78 = I_d_120;
         }
         if (G_i_73 == I_i_4) {
            G_d_78 = I_d_121;
         }
         if (G_i_73 == I_i_5) {
            G_d_78 = I_d_122;
         }
         if (G_i_73 == I_i_6) {
            G_d_78 = I_d_123;
         }
         if (G_i_73 == I_i_7) {
            G_d_78 = I_d_123;
         }
         if (G_i_73 == I_i_8) {
            G_d_78 = LotSize;
         }
         if (G_i_73 == I_i_9) {
            G_d_78 = I_d_119;
         }
         if (G_i_73 == I_i_10) {
            G_d_78 = I_d_120;
         }
         if (G_i_73 == I_i_11) {
            G_d_78 = I_d_121;
         }
         if (G_i_73 == I_i_12) {
            G_d_78 = I_d_122;
         }
         if (G_i_73 == I_i_13) {
            G_d_78 = I_d_123;
         }
         if (G_i_73 == I_i_14) {
            G_d_78 = I_d_123;
         }
         S_s_2593 = "NULL";
         sqOpenOrder(S_s_2593, 1, G_d_78, NormalizeDouble(G_d_80, _Digits), S_s_2592, I_i_12, S_s_2591);
      }
   }
   if ((iRSI(NULL, 0, 14, 0, 1) >= 70)) {
      G_i_75 = I_i_12;
      G_d_81 = 0;
      G_i_123 = OrdersTotal() - 1;
      G_i_76 = G_i_123;
      if (G_i_123 >= 0) {
         do {
            if (OrderSelect(G_i_76, 0, 0)) {
               if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
                  if (OrderSymbol() == _Symbol) {
                     if (G_i_75 == 0 || OrderMagicNumber() == G_i_75) {
                        if (OrderType() == OP_BUY) {
                           S_s_2594 = OrderSymbol();
                           if (S_s_2594 == "NULL") {
                              G_d_82 = Bid;
                           } else {
                              G_d_82 = MarketInfo(S_s_2594, MODE_BID);
                           }
                           G_d_81 = ((G_d_82 - OrderOpenPrice()) + G_d_81);
                        } else {
                           G_d_126 = OrderOpenPrice();
                           S_s_2595 = OrderSymbol();
                           if (S_s_2595 == "NULL") {
                              G_d_83 = Ask;
                           } else {
                              G_d_83 = MarketInfo(S_s_2595, MODE_ASK);
                           }
                           G_d_81 = ((G_d_126 - G_d_83) + G_d_81);
                        }
                     }
                  }
               }
            }
            G_i_76 = G_i_76 - 1;
         } while (G_i_76 >= 0);
      }
      if (((G_d_81 * I_d_2) <= -200)) {
         G_d_126 = (LotSize + 0.0018);
         G_d_130 = (I_d_125 * I_d_125);
         I_d_123 = (((G_d_130 * I_d_125) * G_d_130) * G_d_126);
         S_s_2596 = "go short 6";
         S_s_2597 = "EAWOLF";
         G_i_78 = I_i_13;
         G_d_86 = 0;
         if (I_i_13 == I_i_1) {
            G_d_86 = Ask;
         }
         if (G_i_78 == I_i_2) {
            G_d_86 = Ask;
         }
         if (G_i_78 == I_i_3) {
            G_d_86 = Ask;
         }
         if (G_i_78 == I_i_4) {
            G_d_86 = Ask;
         }
         if (G_i_78 == I_i_5) {
            G_d_86 = Ask;
         }
         if (G_i_78 == I_i_6) {
            G_d_86 = Ask;
         }
         if (G_i_78 == I_i_7) {
            G_d_86 = Ask;
         }
         if (G_i_78 == I_i_8) {
            G_d_86 = Bid;
         }
         if (G_i_78 == I_i_9) {
            G_d_86 = Bid;
         }
         if (G_i_78 == I_i_10) {
            G_d_86 = Bid;
         }
         if (G_i_78 == I_i_11) {
            G_d_86 = Bid;
         }
         if (G_i_78 == I_i_12) {
            G_d_86 = Bid;
         }
         if (G_i_78 == I_i_13) {
            G_d_86 = Bid;
         }
         if (G_i_78 == I_i_14) {
            G_d_86 = Bid;
         }
         G_i_77 = I_i_13;
         G_d_84 = 0;
         if (I_i_13 == I_i_1) {
            G_d_84 = LotSize;
         }
         if (G_i_77 == I_i_2) {
            G_d_84 = I_d_119;
         }
         if (G_i_77 == I_i_3) {
            G_d_84 = I_d_120;
         }
         if (G_i_77 == I_i_4) {
            G_d_84 = I_d_121;
         }
         if (G_i_77 == I_i_5) {
            G_d_84 = I_d_122;
         }
         if (G_i_77 == I_i_6) {
            G_d_84 = I_d_123;
         }
         if (G_i_77 == I_i_7) {
            G_d_84 = I_d_123;
         }
         if (G_i_77 == I_i_8) {
            G_d_84 = LotSize;
         }
         if (G_i_77 == I_i_9) {
            G_d_84 = I_d_119;
         }
         if (G_i_77 == I_i_10) {
            G_d_84 = I_d_120;
         }
         if (G_i_77 == I_i_11) {
            G_d_84 = I_d_121;
         }
         if (G_i_77 == I_i_12) {
            G_d_84 = I_d_122;
         }
         if (G_i_77 == I_i_13) {
            G_d_84 = I_d_123;
         }
         if (G_i_77 == I_i_14) {
            G_d_84 = I_d_123;
         }
         S_s_2410 = "NULL";
         sqOpenOrder(S_s_2410, 1, G_d_84, NormalizeDouble(G_d_86, _Digits), S_s_2597, I_i_13, S_s_2596);
      }
   }
   if ((iRSI(NULL, 0, 14, 0, 1) >= 70)) {
      G_i_79 = I_i_13;
      G_d_87 = 0;
      G_i_127 = OrdersTotal() - 1;
      G_i_80 = G_i_127;
      if (G_i_127 >= 0) {
         do {
            if (OrderSelect(G_i_80, 0, 0)) {
               if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
                  if (OrderSymbol() == _Symbol) {
                     if (G_i_79 == 0 || OrderMagicNumber() == G_i_79) {
                        if (OrderType() == OP_BUY) {
                           S_s_2411 = OrderSymbol();
                           if (S_s_2411 == "NULL") {
                              G_d_88 = Bid;
                           } else {
                              G_d_88 = MarketInfo(S_s_2411, MODE_BID);
                           }
                           G_d_87 = ((G_d_88 - OrderOpenPrice()) + G_d_87);
                        } else {
                           G_d_130 = OrderOpenPrice();
                           S_s_2412 = OrderSymbol();
                           if (S_s_2412 == "NULL") {
                              G_d_89 = Ask;
                           } else {
                              G_d_89 = MarketInfo(S_s_2412, MODE_ASK);
                           }
                           G_d_87 = ((G_d_130 - G_d_89) + G_d_87);
                        }
                     }
                  }
               }
            }
            G_i_80 = G_i_80 - 1;
         } while (G_i_80 >= 0);
      }
      if (((G_d_87 * I_d_2) <= -200)) {
         G_d_130 = (LotSize + 0.0018);
         G_d_131 = (I_d_125 * I_d_125);
         I_d_127 = (((G_d_131 * G_d_131) * G_d_131) * G_d_130);
         S_s_2413 = "go short 7";
         S_s_2414 = "EAWOLF";
         G_i_82 = I_i_14;
         G_d_92 = 0;
         if (I_i_14 == I_i_1) {
            G_d_92 = Ask;
         }
         if (G_i_82 == I_i_2) {
            G_d_92 = Ask;
         }
         if (G_i_82 == I_i_3) {
            G_d_92 = Ask;
         }
         if (G_i_82 == I_i_4) {
            G_d_92 = Ask;
         }
         if (G_i_82 == I_i_5) {
            G_d_92 = Ask;
         }
         if (G_i_82 == I_i_6) {
            G_d_92 = Ask;
         }
         if (G_i_82 == I_i_7) {
            G_d_92 = Ask;
         }
         if (G_i_82 == I_i_8) {
            G_d_92 = Bid;
         }
         if (G_i_82 == I_i_9) {
            G_d_92 = Bid;
         }
         if (G_i_82 == I_i_10) {
            G_d_92 = Bid;
         }
         if (G_i_82 == I_i_11) {
            G_d_92 = Bid;
         }
         if (G_i_82 == I_i_12) {
            G_d_92 = Bid;
         }
         if (G_i_82 == I_i_13) {
            G_d_92 = Bid;
         }
         if (G_i_82 == I_i_14) {
            G_d_92 = Bid;
         }
         G_i_81 = I_i_14;
         G_d_90 = 0;
         if (I_i_14 == I_i_1) {
            G_d_90 = LotSize;
         }
         if (G_i_81 == I_i_2) {
            G_d_90 = I_d_119;
         }
         if (G_i_81 == I_i_3) {
            G_d_90 = I_d_120;
         }
         if (G_i_81 == I_i_4) {
            G_d_90 = I_d_121;
         }
         if (G_i_81 == I_i_5) {
            G_d_90 = I_d_122;
         }
         if (G_i_81 == I_i_6) {
            G_d_90 = I_d_123;
         }
         if (G_i_81 == I_i_7) {
            G_d_90 = I_d_123;
         }
         if (G_i_81 == I_i_8) {
            G_d_90 = LotSize;
         }
         if (G_i_81 == I_i_9) {
            G_d_90 = I_d_119;
         }
         if (G_i_81 == I_i_10) {
            G_d_90 = I_d_120;
         }
         if (G_i_81 == I_i_11) {
            G_d_90 = I_d_121;
         }
         if (G_i_81 == I_i_12) {
            G_d_90 = I_d_122;
         }
         if (G_i_81 == I_i_13) {
            G_d_90 = I_d_123;
         }
         if (G_i_81 == I_i_14) {
            G_d_90 = I_d_123;
         }
         S_s_2415 = "NULL";
         sqOpenOrder(S_s_2415, 1, G_d_90, NormalizeDouble(G_d_92, _Digits), S_s_2414, I_i_14, S_s_2413);
      }
   }
   G_d_131 = totalBalance;
   G_d_131 = (G_d_131 - AccountEquity());
   G_d_132 = (totalBalance * StopLossBalance);
   if ((G_d_131 >= (G_d_132 / 100))) {
      sqCloseOrder(I_i_1);
      sqCloseOrder(I_i_2);
      sqCloseOrder(I_i_3);
      sqCloseOrder(I_i_4);
      sqCloseOrder(I_i_5);
      sqCloseOrder(I_i_6);
      sqCloseOrder(I_i_7);
      sqCloseOrder(I_i_8);
      sqCloseOrder(I_i_9);
      sqCloseOrder(I_i_10);
      sqCloseOrder(I_i_11);
      sqCloseOrder(I_i_12);
      sqCloseOrder(I_i_13);
      sqCloseOrder(I_i_14);
   }
   G_i_83 = I_i_1;
   G_d_94 = 0;
   G_i_129 = OrdersTotal() - 1;
   G_i_84 = G_i_129;
   if (G_i_129 >= 0) {
      do {
         if (OrderSelect(G_i_84, 0, 0)) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               if (OrderSymbol() == _Symbol) {
                  if (G_i_83 == 0 || OrderMagicNumber() == G_i_83) {
                     G_d_94 = (G_d_94 + OrderProfit());
                  }
               }
            }
         }
         G_i_84 = G_i_84 - 1;
      } while (G_i_84 >= 0);
   }
   G_d_93 = G_d_94;
   G_i_85 = I_i_2;
   G_d_95 = 0;
   G_i_129 = OrdersTotal() - 1;
   G_i_86 = G_i_129;
   if (G_i_129 >= 0) {
      do {
         if (OrderSelect(G_i_86, 0, 0)) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               if (OrderSymbol() == _Symbol) {
                  if (G_i_85 == 0 || OrderMagicNumber() == G_i_85) {
                     G_d_95 = (G_d_95 + OrderProfit());
                  }
               }
            }
         }
         G_i_86 = G_i_86 - 1;
      } while (G_i_86 >= 0);
   }
   G_d_132 = (G_d_93 + G_d_95);
   G_i_87 = I_i_3;
   G_d_97 = 0;
   G_i_130 = OrdersTotal() - 1;
   G_i_88 = G_i_130;
   if (G_i_130 >= 0) {
      do {
         if (OrderSelect(G_i_88, 0, 0)) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               if (OrderSymbol() == _Symbol) {
                  if (G_i_87 == 0 || OrderMagicNumber() == G_i_87) {
                     G_d_97 = (G_d_97 + OrderProfit());
                  }
               }
            }
         }
         G_i_88 = G_i_88 - 1;
      } while (G_i_88 >= 0);
   }
   G_d_96 = G_d_97;
   G_i_89 = I_i_4;
   G_d_98 = 0;
   G_i_130 = OrdersTotal() - 1;
   G_i_90 = G_i_130;
   if (G_i_130 >= 0) {
      do {
         if (OrderSelect(G_i_90, 0, 0)) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               if (OrderSymbol() == _Symbol) {
                  if (G_i_89 == 0 || OrderMagicNumber() == G_i_89) {
                     G_d_98 = (G_d_98 + OrderProfit());
                  }
               }
            }
         }
         G_i_90 = G_i_90 - 1;
      } while (G_i_90 >= 0);
   }
   G_d_133 = ((G_d_96 + G_d_98) + G_d_132);
   G_i_91 = I_i_5;
   G_d_100 = 0;
   G_i_131 = OrdersTotal() - 1;
   G_i_92 = G_i_131;
   if (G_i_131 >= 0) {
      do {
         if (OrderSelect(G_i_92, 0, 0)) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               if (OrderSymbol() == _Symbol) {
                  if (G_i_91 == 0 || OrderMagicNumber() == G_i_91) {
                     G_d_100 = (G_d_100 + OrderProfit());
                  }
               }
            }
         }
         G_i_92 = G_i_92 - 1;
      } while (G_i_92 >= 0);
   }
   G_d_99 = G_d_100;
   G_i_93 = I_i_6;
   G_d_102 = 0;
   G_i_131 = OrdersTotal() - 1;
   G_i_94 = G_i_131;
   if (G_i_131 >= 0) {
      do {
         if (OrderSelect(G_i_94, 0, 0)) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               if (OrderSymbol() == _Symbol) {
                  if (G_i_93 == 0 || OrderMagicNumber() == G_i_93) {
                     G_d_102 = (G_d_102 + OrderProfit());
                  }
               }
            }
         }
         G_i_94 = G_i_94 - 1;
      } while (G_i_94 >= 0);
   }
   G_d_101 = G_d_102;
   G_i_95 = I_i_7;
   G_d_103 = 0;
   G_i_131 = OrdersTotal() - 1;
   G_i_96 = G_i_131;
   if (G_i_131 >= 0) {
      do {
         if (OrderSelect(G_i_96, 0, 0)) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               if (OrderSymbol() == _Symbol) {
                  if (G_i_95 == 0 || OrderMagicNumber() == G_i_95) {
                     G_d_103 = (G_d_103 + OrderProfit());
                  }
               }
            }
         }
         G_i_96 = G_i_96 - 1;
      } while (G_i_96 >= 0);
   }
   G_d_134 = (((G_d_101 + G_d_103) + G_d_99) + G_d_133);
   G_i_132 = ProfitTarget * 1000;
   G_d_135 = (G_i_132 * LotSize);
   if ((G_d_134 > (G_d_135 / 100))) {
      G_i_97 = I_i_1;
      G_d_104 = 0;
      G_i_132 = OrdersTotal() - 1;
      G_i_98 = G_i_132;
      if (G_i_132 >= 0) {
         do {
            if (OrderSelect(G_i_98, 0, 0)) {
               if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
                  if (OrderSymbol() == _Symbol) {
                     if (G_i_97 == 0 || OrderMagicNumber() == G_i_97) {
                        G_d_104 = (G_d_104 + OrderProfit());
                     }
                  }
               }
            }
            G_i_98 = G_i_98 - 1;
         } while (G_i_98 >= 0);
      }
      if ((G_d_104 < 0)) {
         sqCloseOrder(I_i_1);
         sqCloseOrder(I_i_2);
         sqCloseOrder(I_i_3);
         sqCloseOrder(I_i_4);
         sqCloseOrder(I_i_5);
         sqCloseOrder(I_i_6);
         sqCloseOrder(I_i_7);
      }
   }
   G_i_99 = I_i_8;
   G_d_106 = 0;
   G_i_132 = OrdersTotal() - 1;
   G_i_100 = G_i_132;
   if (G_i_132 >= 0) {
      do {
         if (OrderSelect(G_i_100, 0, 0)) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               if (OrderSymbol() == _Symbol) {
                  if (G_i_99 == 0 || OrderMagicNumber() == G_i_99) {
                     G_d_106 = (G_d_106 + OrderProfit());
                  }
               }
            }
         }
         G_i_100 = G_i_100 - 1;
      } while (G_i_100 >= 0);
   }
   G_d_105 = G_d_106;
   G_i_101 = I_i_9;
   G_d_107 = 0;
   G_i_132 = OrdersTotal() - 1;
   G_i_102 = G_i_132;
   if (G_i_132 >= 0) {
      do {
         if (OrderSelect(G_i_102, 0, 0)) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               if (OrderSymbol() == _Symbol) {
                  if (G_i_101 == 0 || OrderMagicNumber() == G_i_101) {
                     G_d_107 = (G_d_107 + OrderProfit());
                  }
               }
            }
         }
         G_i_102 = G_i_102 - 1;
      } while (G_i_102 >= 0);
   }
   G_d_135 = (G_d_105 + G_d_107);
   G_i_103 = I_i_10;
   G_d_109 = 0;
   G_i_133 = OrdersTotal() - 1;
   G_i_104 = G_i_133;
   if (G_i_133 >= 0) {
      do {
         if (OrderSelect(G_i_104, 0, 0)) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               if (OrderSymbol() == _Symbol) {
                  if (G_i_103 == 0 || OrderMagicNumber() == G_i_103) {
                     G_d_109 = (G_d_109 + OrderProfit());
                  }
               }
            }
         }
         G_i_104 = G_i_104 - 1;
      } while (G_i_104 >= 0);
   }
   G_d_108 = G_d_109;
   G_i_105 = I_i_11;
   G_d_110 = 0;
   G_i_133 = OrdersTotal() - 1;
   G_i_106 = G_i_133;
   if (G_i_133 >= 0) {
      do {
         if (OrderSelect(G_i_106, 0, 0)) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               if (OrderSymbol() == _Symbol) {
                  if (G_i_105 == 0 || OrderMagicNumber() == G_i_105) {
                     G_d_110 = (G_d_110 + OrderProfit());
                  }
               }
            }
         }
         G_i_106 = G_i_106 - 1;
      } while (G_i_106 >= 0);
   }
   G_d_136 = ((G_d_108 + G_d_110) + G_d_135);
   G_i_107 = I_i_12;
   G_d_112 = 0;
   G_i_134 = OrdersTotal() - 1;
   G_i_108 = G_i_134;
   if (G_i_134 >= 0) {
      do {
         if (OrderSelect(G_i_108, 0, 0)) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               if (OrderSymbol() == _Symbol) {
                  if (G_i_107 == 0 || OrderMagicNumber() == G_i_107) {
                     G_d_112 = (G_d_112 + OrderProfit());
                  }
               }
            }
         }
         G_i_108 = G_i_108 - 1;
      } while (G_i_108 >= 0);
   }
   G_d_111 = G_d_112;
   G_i_109 = I_i_13;
   G_d_114 = 0;
   G_i_134 = OrdersTotal() - 1;
   G_i_110 = G_i_134;
   if (G_i_134 >= 0) {
      do {
         if (OrderSelect(G_i_110, 0, 0)) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               if (OrderSymbol() == _Symbol) {
                  if (G_i_109 == 0 || OrderMagicNumber() == G_i_109) {
                     G_d_114 = (G_d_114 + OrderProfit());
                  }
               }
            }
         }
         G_i_110 = G_i_110 - 1;
      } while (G_i_110 >= 0);
   }
   G_d_113 = G_d_114;
   G_i_111 = I_i_14;
   G_d_115 = 0;
   G_i_134 = OrdersTotal() - 1;
   G_i_112 = G_i_134;
   if (G_i_134 >= 0) {
      do {
         if (OrderSelect(G_i_112, 0, 0)) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               if (OrderSymbol() == _Symbol) {
                  if (G_i_111 == 0 || OrderMagicNumber() == G_i_111) {
                     G_d_115 = (G_d_115 + OrderProfit());
                  }
               }
            }
         }
         G_i_112 = G_i_112 - 1;
      } while (G_i_112 >= 0);
   }
   G_d_137 = (((G_d_113 + G_d_115) + G_d_111) + G_d_136);
   G_i_135 = ProfitTarget * 1000;
   G_d_138 = (G_i_135 * LotSize);
   if ((G_d_137 <= (G_d_138 / 100))) return 0;
   G_i_113 = I_i_8;
   G_d_116 = 0;
   G_i_135 = OrdersTotal() - 1;
   G_i_114 = G_i_135;
   if (G_i_135 >= 0) {
      do {
         if (OrderSelect(G_i_114, 0, 0)) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               if (OrderSymbol() == _Symbol) {
                  if (G_i_113 == 0 || OrderMagicNumber() == G_i_113) {
                     G_d_116 = (G_d_116 + OrderProfit());
                  }
               }
            }
         }
         G_i_114 = G_i_114 - 1;
      } while (G_i_114 >= 0);
   }
   if ((G_d_116 >= 0)) return 0;
   sqCloseOrder(I_i_8);
   sqCloseOrder(I_i_9);
   sqCloseOrder(I_i_10);
   sqCloseOrder(I_i_11);
   sqCloseOrder(I_i_12);
   sqCloseOrder(I_i_13);
   sqCloseOrder(I_i_14);
   L_i_13 = 0;
   return L_i_13;
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int deinit() {
   int L_i_13;
   L_i_13 = 0;
   ObjectDelete("line1");
   ObjectDelete("linec");
   ObjectDelete("line2");
   ObjectDelete("lines");
   ObjectDelete("lineopl");
   ObjectDelete("linea");
   ObjectDelete("lineto");
   ObjectDelete("linetp");
   L_i_13 = 0;
   return 0;
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void manageOrder(int Fa_i_00) {
   string S_s_2639;
   string S_s_2640;
   string S_s_2641;
   string S_s_2642;
   string S_s_2643;
   string S_s_2644;
   string S_s_2645;
   string S_s_2646;
   string S_s_2647;
   string S_s_2648;
   string S_s_2649;
   string S_s_2650;
   string S_s_2651;
   string S_s_2652;
   string S_s_2653;
   string S_s_2654;
   string S_s_2655;
   string S_s_2656;
   string S_s_2657;
   string S_s_2658;
   string S_s_2659;
   string S_s_2660;
   string S_s_2661;
   string S_s_2662;
   string S_s_2663;
   string S_s_2664;
   string S_s_2665;
   string S_s_2625;
   string S_s_2626;
   string S_s_2627;
   string S_s_2628;
   string S_s_2629;
   string S_s_2630;
   string S_s_2631;
   string S_s_2632;
   string S_s_2633;
   string S_s_2634;
   string S_s_2635;
   string S_s_2567;
   string S_s_2568;
   string S_s_2569;
   string S_s_2570;
   string S_s_2571;
   string S_s_2572;
   string S_s_2573;
   string S_s_2574;
   string S_s_2575;
   string S_s_2576;
   string S_s_2577;
   string S_s_2578;
   string S_s_2579;
   string S_s_2580;
   string S_s_2581;
   string S_s_2582;
   string S_s_2583;
   string S_s_2584;
   string S_s_2585;
   string S_s_2586;
   string S_s_2587;
   string S_s_2588;
   string S_s_2589;
   string S_s_2590;
   string S_s_2591;
   string S_s_2592;
   string S_s_2593;
   string S_s_2594;
   string S_s_2595;
   string S_s_2596;
   string S_s_2597;
   string S_s_2410;
   string S_s_2411;
   string S_s_2412;
   string S_s_2413;
   string S_s_2414;
   string S_s_2415;
   string S_s_2416;
   string S_s_2417;
   string S_s_2418;
   string S_s_2419;
   string S_s_2420;
   string S_s_2421;
   string S_s_2422;
   string S_s_2423;
   string S_s_2424;
   string S_s_2425;
   string S_s_2426;
   string S_s_2427;
   string S_s_2428;
   string S_s_2429;
   string S_s_2430;
   string S_s_2431;
   string S_s_2432;
   string S_s_2433;
   string S_s_2434;
   string S_s_2435;
   string S_s_2436;
   string S_s_2437;
   string S_s_2438;
   string S_s_2439;
   string S_s_2440;
   string S_s_2441;
   string S_s_2442;
   string S_s_2443;
   string S_s_2444;
   string S_s_2445;
   string S_s_2446;
   string S_s_2447;
   string S_s_2448;
   string S_s_2449;
   string S_s_2450;
   string S_s_2451;
   string S_s_2452;
   string S_s_2453;
   string S_s_2454;
   string S_s_2455;
   string S_s_2456;
   string S_s_2457;
   string S_s_2458;
   string S_s_2459;
   string S_s_2460;
   string S_s_2461;
   string S_s_2462;
   string S_s_2463;
   string S_s_2464;
   string S_s_2465;
   string S_s_2466;
   string S_s_2467;
   string S_s_2468;
   string S_s_2469;
   string S_s_2470;
   string S_s_2471;
   string S_s_2472;
   string S_s_2473;
   string S_s_2474;
   string S_s_2475;
   string S_s_2476;
   string S_s_2477;
   string S_s_2478;
   string S_s_2479;
   string S_s_2480;
   string S_s_2481;
   string S_s_2482;
   string S_s_2483;
   string S_s_2484;
   string S_s_2485;
   string S_s_2486;
   string S_s_2487;
   string S_s_2488;
   string S_s_2489;
   string S_s_2490;
   string S_s_2491;
   string S_s_2492;
   string S_s_2493;
   string S_s_2494;
   string S_s_2495;
   string S_s_2496;
   string S_s_2497;
   string S_s_2498;
   string S_s_2499;
   string S_s_2500;
   string S_s_2501;
   string S_s_2502;
   string S_s_2503;
   string S_s_2504;
   string S_s_2505;
   string S_s_2506;
   string S_s_2507;
   string S_s_2508;
   string S_s_2509;
   string S_s_2510;
   string S_s_2511;
   string S_s_2512;
   string S_s_2513;
   string S_s_2514;
   string S_s_2515;
   string S_s_2516;
   string S_s_2517;
   string S_s_2518;
   string S_s_2519;
   string S_s_2520;
   string S_s_2521;
   string S_s_2522;
   string S_s_2523;
   string S_s_2524;
   string S_s_2525;
   string S_s_2526;
   string S_s_2527;
   string S_s_2528;
   string S_s_2190;
   string S_s_2191;
   string S_s_2192;
   string S_s_2193;
   string S_s_2194;
   string S_s_2195;
   string S_s_2196;
   string S_s_2197;
   string S_s_322;
   string S_s_323;
   string S_s_324;
   string S_s_325;
   string S_s_326;
   string S_s_327;
   string S_s_328;
   string S_s_329;
   string S_s_330;
   string S_s_331;
   string S_s_332;
   string S_s_333;
   string S_s_334;
   string S_s_335;
   string S_s_336;
   string S_s_337;
   string S_s_338;
   string S_s_339;
   string S_s_340;
   string S_s_341;
   string S_s_342;
   string S_s_343;
   string S_s_344;
   string S_s_345;
   string S_s_346;
   string S_s_347;
   string S_s_348;
   string S_s_349;
   string S_s_350;
   string S_s_351;
   string S_s_352;
   string S_s_353;
   string S_s_354;
   string S_s_355;
   string S_s_356;
   string S_s_357;
   string S_s_358;
   string S_s_359;
   string S_s_360;
   string S_s_361;
   string S_s_362;
   string S_s_363;
   string S_s_364;
   string S_s_365;
   string S_s_366;
   string S_s_367;
   string S_s_368;
   string S_s_369;
   string S_s_370;
   string S_s_371;
   string S_s_372;
   string S_s_373;
   string S_s_374;
   string S_s_375;
   string S_s_376;
   string S_s_377;
   string S_s_378;
   string S_s_379;
   string S_s_380;
   string S_s_381;
   string S_s_382;
   string S_s_383;
   string S_s_384;
   string S_s_385;
   string S_s_386;
   string S_s_387;
   string S_s_388;
   string S_s_389;
   string S_s_390;
   string S_s_391;
   string S_s_392;
   string S_s_393;
   string S_s_394;
   string S_s_395;
   string S_s_396;
   string S_s_397;
   string S_s_398;
   string S_s_399;
   string S_s_400;
   string S_s_401;
   string S_s_402;
   string S_s_403;
   string S_s_404;
   string S_s_405;
   string S_s_406;
   string S_s_407;
   string S_s_408;
   string S_s_409;
   string S_s_410;
   string S_s_411;
   string S_s_412;
   string S_s_413;
   string S_s_414;
   string S_s_415;
   string S_s_416;
   string S_s_417;
   string S_s_418;
   string S_s_419;
   string S_s_420;
   string S_s_421;
   string S_s_422;
   string S_s_423;
   string S_s_424;
   string S_s_425;
   string S_s_426;
   string S_s_427;
   string S_s_428;
   string S_s_429;
   string S_s_430;
   string S_s_431;
   string S_s_432;
   string S_s_433;
   string S_s_434;
   string S_s_435;
   string S_s_436;
   string S_s_437;
   string S_s_438;
   string S_s_439;
   string S_s_440;
   string S_s_441;
   string S_s_442;
   string S_s_443;
   string S_s_444;
   string S_s_445;
   string S_s_446;
   string S_s_447;
   string S_s_448;
   string S_s_449;
   string S_s_450;
   string S_s_451;
   string S_s_452;
   string S_s_453;
   string S_s_454;
   string S_s_455;
   string S_s_456;
   string S_s_457;
   string S_s_458;
   string S_s_459;
   string S_s_460;
   string S_s_461;
   string S_s_462;
   string S_s_463;
   string S_s_464;
   string S_s_465;
   string S_s_466;
   string S_s_467;
   string S_s_468;
   string S_s_469;
   string S_s_470;
   string S_s_471;
   string S_s_472;
   string S_s_473;
   string S_s_474;
   string S_s_475;
   string S_s_476;
   string S_s_477;
   string S_s_478;
   string S_s_479;
   string S_s_480;
   string S_s_481;
   string S_s_482;
   string S_s_483;
   string S_s_484;
   string S_s_485;
   string S_s_486;
   string S_s_487;
   string S_s_488;
   string S_s_489;
   string S_s_490;
   string S_s_491;
   string S_s_492;
   string S_s_493;
   string S_s_494;
   string S_s_495;
   string S_s_496;
   string S_s_497;
   string S_s_498;
   string S_s_499;
   string S_s_500;
   string S_s_501;
   string S_s_502;
   string S_s_503;
   string S_s_504;
   string S_s_505;
   string S_s_506;
   string S_s_507;
   string S_s_508;
   string S_s_509;
   string S_s_510;
   string S_s_511;
   string S_s_512;
   string S_s_513;
   string S_s_514;
   string S_s_515;
   string S_s_516;
   string S_s_517;
   string S_s_518;
   string S_s_519;
   string S_s_520;
   string S_s_521;
   string S_s_522;
   string S_s_523;
   string S_s_524;
   string S_s_525;
   string S_s_526;
   string S_s_527;
   string S_s_528;
   string S_s_529;
   string S_s_530;
   string S_s_531;
   string S_s_532;
   string S_s_533;
   string S_s_534;
   string S_s_535;
   string S_s_536;
   string S_s_537;
   string S_s_538;
   string S_s_539;
   string S_s_540;
   string S_s_541;
   string S_s_542;
   string S_s_543;
   string S_s_544;
   string S_s_545;
   string S_s_546;
   string S_s_547;
   string S_s_548;
   string S_s_549;
   string S_s_550;
   string S_s_551;
   string S_s_552;
   string S_s_553;
   string S_s_554;
   string S_s_555;
   string S_s_556;
   string S_s_557;
   string S_s_558;
   string S_s_559;
   string S_s_560;
   string S_s_561;
   string S_s_562;
   string S_s_563;
   string S_s_564;
   string S_s_565;
   string S_s_566;
   string S_s_567;
   string S_s_568;
   string S_s_569;
   string S_s_570;
   string S_s_571;
   string S_s_572;
   string S_s_573;
   string S_s_574;
   string S_s_575;
   string S_s_576;
   string S_s_577;
   string S_s_578;
   string S_s_579;
   string S_s_580;
   string S_s_581;
   string S_s_582;
   string S_s_583;
   string S_s_584;
   string S_s_585;
   string S_s_586;
   string S_s_587;
   string S_s_588;
   string S_s_589;
   string S_s_590;
   string S_s_591;
   string S_s_592;
   string S_s_593;
   string S_s_594;
   string S_s_595;
   string S_s_596;
   string S_s_597;
   string S_s_598;
   string S_s_599;
   string S_s_600;
   string S_s_601;
   string S_s_602;
   string S_s_603;
   string S_s_604;
   string S_s_605;
   string S_s_606;
   string S_s_607;
   string S_s_608;
   string S_s_609;
   string S_s_610;
   string S_s_611;
   string S_s_612;
   string S_s_613;
   string S_s_614;
   string S_s_615;
   string S_s_616;
   string S_s_617;
   string S_s_618;
   string S_s_619;
   string S_s_620;
   string S_s_621;
   string S_s_622;
   string S_s_623;
   string S_s_624;
   string S_s_625;
   string S_s_626;
   string S_s_627;
   string S_s_628;
   string S_s_629;
   string S_s_630;
   string S_s_631;
   string S_s_632;
   string S_s_633;
   string S_s_634;
   string S_s_635;
   string S_s_636;
   string S_s_637;
   string S_s_638;
   string S_s_639;
   string S_s_640;
   string S_s_641;
   string S_s_642;
   string S_s_643;
   string S_s_644;
   string S_s_645;
   string S_s_646;
   string S_s_647;
   string S_s_648;
   string S_s_649;
   string S_s_650;
   string S_s_651;
   string S_s_652;
   string S_s_653;
   string S_s_654;
   string S_s_655;
   string S_s_656;
   string S_s_657;
   string S_s_658;
   string S_s_659;
   string S_s_660;
   string S_s_661;
   string S_s_662;
   string S_s_663;
   string S_s_664;
   string S_s_665;
   string S_s_666;
   string S_s_667;
   string S_s_668;
   string S_s_669;
   string S_s_670;
   string S_s_671;
   string S_s_672;
   string S_s_673;
   string S_s_674;
   string S_s_675;
   string S_s_676;
   string S_s_677;
   string S_s_678;
   string S_s_679;
   string S_s_680;
   string S_s_681;
   string S_s_682;
   string S_s_683;
   string S_s_684;
   string S_s_685;
   string S_s_686;
   string S_s_687;
   string S_s_688;
   string S_s_689;
   string S_s_690;
   string S_s_691;
   string S_s_692;
   string S_s_693;
   string S_s_694;
   string S_s_695;
   string S_s_696;
   string S_s_697;
   string S_s_698;
   string S_s_699;
   string S_s_700;
   string S_s_701;
   string S_s_702;
   string S_s_703;
   string S_s_704;
   string S_s_705;
   string S_s_706;
   string S_s_707;
   string S_s_708;
   string S_s_709;
   string S_s_710;
   string S_s_711;
   string S_s_712;
   string S_s_713;
   string S_s_714;
   string S_s_715;
   string S_s_716;
   string S_s_717;
   string S_s_718;
   string S_s_719;
   string S_s_720;
   string S_s_721;
   string S_s_722;
   string S_s_723;
   string S_s_724;
   string S_s_725;
   string S_s_726;
   string S_s_727;
   string S_s_728;
   string S_s_729;
   string S_s_730;
   string S_s_731;
   string S_s_732;
   string S_s_733;
   string S_s_734;
   string S_s_735;
   string S_s_736;
   string S_s_737;
   string S_s_738;
   string S_s_739;
   string S_s_740;
   string S_s_741;
   string S_s_742;
   string S_s_743;
   string S_s_744;
   string S_s_745;
   string S_s_746;
   string S_s_747;
   string S_s_748;
   string S_s_749;
   string S_s_750;
   string S_s_751;
   string S_s_752;
   string S_s_753;
   string S_s_754;
   string S_s_755;
   string S_s_756;
   string S_s_757;
   string S_s_758;
   string S_s_759;
   string S_s_760;
   string S_s_761;
   string S_s_762;
   string S_s_763;
   string S_s_764;
   string S_s_765;
   string S_s_766;
   string S_s_767;
   string S_s_768;
   string S_s_769;
   string S_s_770;
   string S_s_771;
   string S_s_772;
   string S_s_773;
   string S_s_774;
   string S_s_775;
   string S_s_776;
   string S_s_777;
   string S_s_778;
   string S_s_779;
   string S_s_780;
   string S_s_781;
   string S_s_782;
   string S_s_783;
   string S_s_784;
   string S_s_785;
   string S_s_786;
   string S_s_787;
   string S_s_788;
   string S_s_789;
   string S_s_790;
   string S_s_791;
   string S_s_792;
   string S_s_793;
   string S_s_794;
   string S_s_795;
   string S_s_796;
   string S_s_797;
   string S_s_798;
   string S_s_799;
   string S_s_800;
   string S_s_801;
   string S_s_802;
   string S_s_803;
   string S_s_804;
   string S_s_805;
   string S_s_806;
   string S_s_807;
   string S_s_808;
   string S_s_809;
   string S_s_810;
   string S_s_811;
   string S_s_812;
   string S_s_813;
   string S_s_814;
   string S_s_815;
   string S_s_816;
   string S_s_817;
   string S_s_818;
   string S_s_819;
   string S_s_820;
   string S_s_821;
   string S_s_822;
   string S_s_823;
   string S_s_824;
   string S_s_825;
   string S_s_826;
   string S_s_827;
   string S_s_828;
   string S_s_829;
   string S_s_830;
   string S_s_831;
   string S_s_832;
   string S_s_833;
   string S_s_834;
   string S_s_835;
   string S_s_836;
   string S_s_837;
   string S_s_838;
   string S_s_839;
   string S_s_840;
   string S_s_841;
   string S_s_842;
   string S_s_843;
   string S_s_844;
   string S_s_845;
   string S_s_846;
   string S_s_847;
   string S_s_848;
   string S_s_849;
   string S_s_850;
   string S_s_851;
   string S_s_852;
   string S_s_853;
   string S_s_854;
   string S_s_855;
   string S_s_856;
   string S_s_857;
   string S_s_858;
   string S_s_859;
   string S_s_860;
   string S_s_861;
   string S_s_862;
   string S_s_863;
   string S_s_864;
   string S_s_865;
   string S_s_866;
   string S_s_867;
   string S_s_868;
   string S_s_869;
   string S_s_870;
   string S_s_871;
   string S_s_872;
   string S_s_873;
   string S_s_874;
   string S_s_875;
   string S_s_876;
   string S_s_877;
   string S_s_878;
   string S_s_879;
   string S_s_880;
   string S_s_881;
   string S_s_882;
   string S_s_883;
   string S_s_884;
   string S_s_885;
   string S_s_886;
   string S_s_887;
   string S_s_888;
   string S_s_889;
   string S_s_890;
   string S_s_891;
   string S_s_892;
   string S_s_893;
   string S_s_894;
   string S_s_895;
   string S_s_896;
   string S_s_897;
   string S_s_898;
   string S_s_899;
   string S_s_900;
   string S_s_901;
   string S_s_902;
   string S_s_903;
   string S_s_904;
   string S_s_905;
   string S_s_906;
   string S_s_907;
   string S_s_908;
   string S_s_909;
   string S_s_910;
   string S_s_911;
   string S_s_912;
   string S_s_913;
   string S_s_914;
   string S_s_915;
   string S_s_916;
   string S_s_917;
   string S_s_918;
   string S_s_919;
   string S_s_920;
   string S_s_921;
   string S_s_922;
   string S_s_923;
   string S_s_924;
   string S_s_925;
   string S_s_926;
   string S_s_927;
   string S_s_928;
   string S_s_929;
   string S_s_930;
   string S_s_931;
   string S_s_932;
   string S_s_933;
   string S_s_934;
   string S_s_935;
   string S_s_936;
   string S_s_937;
   string S_s_938;
   string S_s_939;
   string S_s_940;
   string S_s_941;
   string S_s_942;
   string S_s_943;
   string S_s_944;
   string S_s_945;
   string S_s_946;
   string S_s_947;
   string S_s_948;
   string S_s_949;
   string S_s_950;
   string S_s_951;
   string S_s_952;
   string S_s_953;
   string S_s_954;
   string S_s_955;
   string S_s_956;
   string S_s_957;
   string S_s_958;
   string S_s_959;
   string S_s_960;
   string S_s_961;
   string S_s_962;
   string S_s_963;
   string S_s_964;
   string S_s_965;
   string S_s_966;
   string S_s_967;
   string S_s_968;
   string S_s_969;
   string S_s_970;
   string S_s_971;
   string S_s_972;
   string S_s_973;
   string S_s_974;
   string S_s_975;
   string S_s_976;
   string S_s_977;
   string S_s_978;
   string S_s_979;
   string S_s_980;
   string S_s_981;
   string S_s_982;
   string S_s_983;
   string S_s_984;
   string S_s_985;
   string S_s_986;
   string S_s_987;
   string S_s_988;
   string S_s_989;
   string S_s_990;
   string S_s_991;
   string S_s_992;
   string S_s_993;
   string S_s_994;
   string S_s_995;
   string S_s_996;
   string S_s_997;
   string S_s_998;
   string S_s_999;
   string S_s_1000;
   string S_s_1001;
   string S_s_1002;
   string S_s_1003;
   string S_s_1004;
   string S_s_1005;
   string S_s_1006;
   string S_s_1007;
   string S_s_1008;
   string S_s_1009;
   string S_s_1010;
   string S_s_1011;
   string S_s_1012;
   string S_s_1013;
   string S_s_1014;
   string S_s_1015;
   string S_s_1016;
   string S_s_1017;
   string S_s_1018;
   string S_s_1019;
   string S_s_1020;
   string S_s_1021;
   string S_s_1022;
   string S_s_1023;
   string S_s_1024;
   string S_s_1025;
   string S_s_1026;
   string S_s_1027;
   string S_s_1028;
   string S_s_1029;
   string S_s_1030;
   string S_s_1031;
   string S_s_1032;
   string S_s_1033;
   string S_s_1034;
   string S_s_1035;
   string S_s_1036;
   string S_s_1037;
   string S_s_1038;
   string S_s_1039;
   string S_s_1040;
   string S_s_1041;
   string S_s_1042;
   string S_s_1043;
   string S_s_1044;
   string S_s_1045;
   string S_s_1046;
   string S_s_1047;
   string S_s_1048;
   string S_s_1049;
   string S_s_1050;
   string S_s_1051;
   string S_s_1052;
   string S_s_1053;
   string S_s_1054;
   string S_s_1055;
   string S_s_1056;
   string S_s_1057;
   string S_s_1058;
   string S_s_1059;
   string S_s_1060;
   string S_s_1061;
   string S_s_1062;
   string S_s_1063;
   string S_s_1064;
   string S_s_1065;
   string S_s_1066;
   string S_s_1067;
   string S_s_1068;
   string S_s_1069;
   string S_s_1070;
   string S_s_1071;
   string S_s_1072;
   string S_s_1073;
   string S_s_1074;
   string S_s_1075;
   string S_s_1076;
   string S_s_1077;
   string S_s_1078;
   string S_s_1079;
   string S_s_1080;
   string S_s_1081;
   string S_s_1082;
   string S_s_1083;
   string S_s_1084;
   string S_s_1085;
   string S_s_1086;
   string S_s_1087;
   string S_s_1088;
   string S_s_1089;
   string S_s_1090;
   string S_s_1091;
   string S_s_1092;
   string S_s_1093;
   string S_s_1094;
   string S_s_1095;
   string S_s_1096;
   string S_s_1097;
   string S_s_1098;
   string S_s_1099;
   string S_s_1100;
   string S_s_1101;
   string S_s_1102;
   string S_s_1103;
   string S_s_1104;
   string S_s_1105;
   string S_s_1106;
   string S_s_1107;
   string S_s_1108;
   string S_s_1109;
   string S_s_1110;
   string S_s_1111;
   string S_s_1112;
   string S_s_1113;
   string S_s_1114;
   string S_s_1115;
   string S_s_1116;
   string S_s_1117;
   string S_s_1118;
   string S_s_1119;
   string S_s_1120;
   string S_s_1121;
   string S_s_1122;
   string S_s_1123;
   string S_s_1124;
   string S_s_1125;
   string S_s_1126;
   string S_s_1127;
   string S_s_1128;
   string S_s_1129;
   string S_s_1130;
   string S_s_1131;
   string S_s_1132;
   string S_s_1133;
   string S_s_1134;
   string S_s_1135;
   string S_s_1136;
   string S_s_1137;
   string S_s_1138;
   string S_s_1139;
   string S_s_1140;
   string S_s_1141;
   string S_s_1142;
   string S_s_1143;
   string S_s_1144;
   string S_s_1145;
   string S_s_1146;
   string S_s_1147;
   string S_s_1148;
   string S_s_1149;
   string S_s_1150;
   string S_s_1151;
   string S_s_1152;
   string S_s_1153;
   string S_s_1154;
   string S_s_1155;
   string S_s_1156;
   string S_s_1157;
   string S_s_1158;
   string S_s_1159;
   string S_s_1160;
   string S_s_1161;
   string S_s_1162;
   string S_s_1163;
   string S_s_1164;
   string S_s_1165;
   string S_s_1166;
   string S_s_1167;
   string S_s_1168;
   string S_s_1169;
   string S_s_1170;
   string S_s_1171;
   string S_s_1172;
   string S_s_1173;
   string S_s_1174;
   string S_s_1175;
   string S_s_1176;
   string S_s_1177;
   string S_s_1178;
   string S_s_1179;
   string S_s_1180;
   string S_s_1181;
   string S_s_1182;
   string S_s_1183;
   string S_s_1184;
   string S_s_1185;
   string S_s_1186;
   string S_s_1187;
   string S_s_1188;
   string S_s_1189;
   string S_s_1190;
   string S_s_1191;
   string S_s_1192;
   string S_s_1193;
   string S_s_1194;
   string S_s_1195;
   string S_s_1196;
   string S_s_1197;
   string S_s_1198;
   string S_s_1199;
   string S_s_1200;
   string S_s_1201;
   string S_s_1202;
   string S_s_1203;
   string S_s_1204;
   string S_s_1205;
   string S_s_1206;
   string S_s_1207;
   string S_s_1208;
   string S_s_1209;
   string S_s_1210;
   string S_s_1211;
   string S_s_1212;
   string S_s_1213;
   string S_s_1214;
   string S_s_1215;
   string S_s_1216;
   string S_s_1217;
   string S_s_1218;
   string S_s_1219;
   string S_s_1220;
   string S_s_1221;
   string S_s_1222;
   string S_s_1223;
   string S_s_1224;
   string S_s_1225;
   string S_s_1226;
   string S_s_1227;
   string S_s_1228;
   string S_s_1229;
   string S_s_1230;
   string S_s_1231;
   string S_s_1232;
   string S_s_1233;
   string S_s_1234;
   string S_s_1235;
   string S_s_1236;
   string S_s_1237;
   string S_s_1238;
   string S_s_1239;
   string S_s_1240;
   string S_s_1241;
   string S_s_1242;
   string S_s_1243;
   string S_s_1244;
   string S_s_1245;
   string S_s_1246;
   string S_s_1247;
   string S_s_1248;
   string S_s_1249;
   string S_s_1250;
   string S_s_1251;
   string S_s_1252;
   string S_s_1253;
   string S_s_1254;
   string S_s_1255;
   string S_s_1256;
   string S_s_1257;
   string S_s_1258;
   string S_s_1259;
   string S_s_1260;
   string S_s_1261;
   string S_s_1262;
   string S_s_1263;
   string S_s_1264;
   string S_s_1265;
   string S_s_1266;
   string S_s_1267;
   string S_s_1268;
   string S_s_1269;
   string S_s_1270;
   string S_s_1271;
   string S_s_1272;
   string S_s_1273;
   string S_s_1274;
   string S_s_1275;
   string S_s_1276;
   string S_s_1277;
   string S_s_1278;
   string S_s_1279;
   string S_s_1280;
   string S_s_1281;
   string S_s_1282;
   string S_s_1283;
   string S_s_1284;
   string S_s_1285;
   string S_s_1286;
   string S_s_1287;
   string S_s_1288;
   string S_s_1289;
   string S_s_1290;
   string S_s_1291;
   string S_s_1292;
   string S_s_1293;
   string S_s_1294;
   string S_s_1295;
   string S_s_1296;
   string S_s_1297;
   string S_s_1298;
   string S_s_1299;
   string S_s_1300;
   string S_s_1301;
   string S_s_1302;
   string S_s_1303;
   string S_s_1304;
   string S_s_1305;
   string S_s_1306;
   string S_s_1307;
   string S_s_1308;
   string S_s_1309;
   string S_s_1310;
   string S_s_1311;
   string S_s_1312;
   string S_s_1313;
   string S_s_1314;
   string S_s_1315;
   string S_s_1316;
   string S_s_1317;
   string S_s_1318;
   string S_s_1319;
   string S_s_1320;
   string S_s_1321;
   string S_s_1322;
   string S_s_1323;
   string S_s_1324;
   string S_s_1325;
   string S_s_1326;
   string S_s_1327;
   string S_s_1328;
   string S_s_1329;
   string S_s_1330;
   string S_s_1331;
   string S_s_1332;
   string S_s_1333;
   string S_s_1334;
   string S_s_1335;
   string S_s_1336;
   string S_s_1337;
   string S_s_1338;
   string S_s_1339;
   string S_s_1340;
   string S_s_1341;
   string S_s_1342;
   string S_s_1343;
   string S_s_1344;
   string S_s_1345;
   string S_s_1346;
   string S_s_1347;
   string S_s_1348;
   string S_s_1349;
   string S_s_1350;
   string S_s_1351;
   string S_s_1352;
   string S_s_1353;
   string S_s_1354;
   string S_s_1355;
   string S_s_1356;
   string S_s_1357;
   string S_s_1358;
   string S_s_1359;
   string S_s_1360;
   string S_s_1361;
   string S_s_1362;
   string S_s_1363;
   string S_s_1364;
   string S_s_1365;
   string S_s_1366;
   string S_s_1367;
   string S_s_1368;
   string S_s_1369;
   string S_s_1370;
   string S_s_1371;
   string S_s_1372;
   string S_s_1373;
   string S_s_1374;
   string S_s_1375;
   string S_s_1376;
   string S_s_1377;
   string S_s_1378;
   string S_s_1379;
   string S_s_1380;
   string S_s_1381;
   string S_s_1382;
   string S_s_1383;
   string S_s_1384;
   string S_s_1385;
   string S_s_1386;
   string S_s_1387;
   string S_s_1388;
   string S_s_1389;
   string S_s_1390;
   string S_s_1391;
   string S_s_1392;
   string S_s_1393;
   string S_s_1394;
   string S_s_1395;
   string S_s_1396;
   string S_s_1397;
   string S_s_1398;
   string S_s_1399;
   string S_s_1400;
   string S_s_1401;
   string S_s_1402;
   string S_s_1403;
   string S_s_1404;
   string S_s_1405;
   string S_s_1406;
   string S_s_1407;
   string S_s_1408;
   string S_s_1409;
   string S_s_1410;
   string S_s_1411;
   string S_s_1412;
   string S_s_1413;
   string S_s_1414;
   string S_s_1415;
   string S_s_1416;
   string S_s_1417;
   string S_s_1418;
   string S_s_1419;
   string S_s_1420;
   string S_s_1421;
   string S_s_1422;
   string S_s_1423;
   string S_s_1424;
   string S_s_1425;
   string S_s_1426;
   string S_s_1427;
   string S_s_1428;
   string S_s_1429;
   string S_s_1430;
   string S_s_1431;
   string S_s_1432;
   string S_s_1433;
   string S_s_1434;
   string S_s_1435;
   string S_s_1436;
   string S_s_1437;
   string S_s_1438;
   string S_s_1439;
   string S_s_1440;
   string S_s_1441;
   string S_s_1442;
   string S_s_1443;
   string S_s_1444;
   string S_s_1445;
   string S_s_1446;
   string S_s_1447;
   string S_s_1448;
   string S_s_1449;
   string S_s_1450;
   string S_s_1451;
   string S_s_1452;
   string S_s_1453;
   string S_s_1454;
   string S_s_1455;
   string S_s_1456;
   string S_s_1457;
   string S_s_1458;
   string S_s_1459;
   string S_s_1460;
   string S_s_1461;
   string S_s_1462;
   string S_s_1463;
   string S_s_1464;
   string S_s_1465;
   string S_s_1466;
   string S_s_1467;
   string S_s_1468;
   string S_s_1469;
   string S_s_1470;
   string S_s_1471;
   string S_s_1472;
   string S_s_1473;
   string S_s_1474;
   string S_s_1475;
   string S_s_1476;
   string S_s_1477;
   string S_s_1478;
   string S_s_1479;
   string S_s_1480;
   string S_s_1481;
   string S_s_1482;
   string S_s_1483;
   string S_s_1484;
   string S_s_1485;
   string S_s_1486;
   string S_s_1487;
   string S_s_1488;
   string S_s_1489;
   string S_s_1490;
   string S_s_1491;
   string S_s_1492;
   string S_s_1493;
   string S_s_1494;
   string S_s_1495;
   string S_s_1496;
   string S_s_1497;
   string S_s_1498;
   string S_s_1499;
   string S_s_1500;
   string S_s_1501;
   string S_s_1502;
   string S_s_1503;
   string S_s_1504;
   string S_s_1505;
   string S_s_1506;
   string S_s_1507;
   string S_s_1508;
   string S_s_1509;
   string S_s_1510;
   string S_s_1511;
   string S_s_1512;
   string S_s_1513;
   string S_s_1514;
   string S_s_1515;
   string S_s_1516;
   string S_s_1517;
   string S_s_1518;
   string S_s_1519;
   string S_s_1520;
   string S_s_1521;
   string S_s_1522;
   string S_s_1523;
   string S_s_1524;
   string S_s_1525;
   string S_s_1526;
   string S_s_1527;
   string S_s_1528;
   string S_s_1529;
   string S_s_1530;
   string S_s_1531;
   string S_s_1532;
   string S_s_1533;
   string S_s_1534;
   string S_s_1535;
   string S_s_1536;
   string S_s_1537;
   string S_s_1538;
   string S_s_1539;
   string S_s_1540;
   string S_s_1541;
   string S_s_1542;
   string S_s_1543;
   string S_s_1544;
   string S_s_1545;
   string S_s_1546;
   string S_s_1547;
   string S_s_1548;
   string S_s_1549;
   string S_s_1550;
   string S_s_1551;
   string S_s_1552;
   string S_s_1553;
   string S_s_1554;
   string S_s_1555;
   string S_s_1556;
   string S_s_1557;
   string S_s_1558;
   string S_s_1559;
   string S_s_1560;
   string S_s_1561;
   string S_s_1562;
   string S_s_1563;
   string S_s_1564;
   string S_s_1565;
   string S_s_1566;
   string S_s_1567;
   string S_s_1568;
   string S_s_1569;
   string S_s_1570;
   string S_s_1571;
   string S_s_1572;
   string S_s_1573;
   string S_s_1574;
   string S_s_1575;
   string S_s_1576;
   string S_s_1577;
   string S_s_1578;
   string S_s_1579;
   string S_s_1580;
   string S_s_1581;
   string S_s_1582;
   string S_s_1583;
   string S_s_1584;
   string S_s_1585;
   string S_s_1586;
   string S_s_1587;
   string S_s_1588;
   string S_s_1589;
   string S_s_1590;
   string S_s_1591;
   string S_s_1592;
   string S_s_1593;
   string S_s_1594;
   string S_s_1595;
   string S_s_1596;
   string S_s_1597;
   string S_s_1598;
   string S_s_1599;
   string S_s_1600;
   string S_s_1601;
   string S_s_1602;
   string S_s_1603;
   string S_s_1604;
   string S_s_1605;
   string S_s_1606;
   string S_s_1607;
   string S_s_1608;
   string S_s_1609;
   string S_s_1610;
   string S_s_1611;
   string S_s_1612;
   string S_s_1613;
   string S_s_1614;
   string S_s_1615;
   string S_s_1616;
   string S_s_1617;
   string S_s_1618;
   string S_s_1619;
   string S_s_1620;
   string S_s_1621;
   string S_s_1622;
   string S_s_1623;
   string S_s_1624;
   string S_s_1625;
   string S_s_1626;
   string S_s_1627;
   string S_s_1628;
   string S_s_1629;
   string S_s_1630;
   string S_s_1631;
   string S_s_1632;
   string S_s_1633;
   string S_s_1634;
   string S_s_1635;
   string S_s_1636;
   string S_s_1637;
   string S_s_1638;
   string S_s_1639;
   string S_s_1640;
   string S_s_1641;
   string S_s_1642;
   string S_s_1643;
   string S_s_1644;
   string S_s_1645;
   string S_s_1646;
   string S_s_1647;
   string S_s_1648;
   string S_s_1649;
   string S_s_1650;
   string S_s_1651;
   string S_s_1652;
   string S_s_1653;
   string S_s_1654;
   string S_s_1655;
   string S_s_1656;
   string S_s_1657;
   string S_s_1658;
   string S_s_1659;
   string S_s_1660;
   string S_s_1661;
   string S_s_1662;
   string S_s_1663;
   string S_s_1664;
   string S_s_1665;
   string S_s_1666;
   string S_s_1667;
   string S_s_1668;
   string S_s_1669;
   string S_s_1670;
   string S_s_1671;
   string S_s_1672;
   string S_s_1673;
   string S_s_1674;
   string S_s_1675;
   string S_s_1676;
   string S_s_1677;
   string S_s_1678;
   string S_s_1679;
   string S_s_1680;
   string S_s_1681;
   string S_s_1682;
   string S_s_1683;
   string S_s_1684;
   string S_s_1685;
   string S_s_1686;
   string S_s_1687;
   string S_s_1688;
   string S_s_1689;
   string S_s_1690;
   string S_s_1691;
   string S_s_1692;
   string S_s_1693;
   string S_s_1694;
   string S_s_1695;
   string S_s_1696;
   string S_s_1697;
   string S_s_1698;
   string S_s_1699;
   string S_s_1700;
   string S_s_1701;
   string S_s_1702;
   string S_s_1703;
   string S_s_1704;
   string S_s_1705;
   string S_s_1706;
   string S_s_1707;
   string S_s_1708;
   string S_s_1709;
   string S_s_1710;
   string S_s_1711;
   string S_s_1712;
   string S_s_1713;
   string S_s_1714;
   string S_s_1715;
   string S_s_1716;
   string S_s_1717;
   string S_s_1718;
   string S_s_1719;
   string S_s_1720;
   string S_s_1721;
   string S_s_1722;
   string S_s_1723;
   string S_s_1724;
   string S_s_1725;
   string S_s_1726;
   string S_s_1727;
   string S_s_1728;
   string S_s_1729;
   string S_s_1730;
   string S_s_1731;
   string S_s_1732;
   string S_s_1733;
   string S_s_1734;
   string S_s_1735;
   string S_s_1736;
   string S_s_1737;
   string S_s_1738;
   string S_s_1739;
   string S_s_1740;
   string S_s_1741;
   string S_s_1742;
   string S_s_1743;
   string S_s_1744;
   string S_s_1745;
   string S_s_1746;
   string S_s_1747;
   string S_s_1748;
   string S_s_1749;
   string S_s_1750;
   string S_s_1751;
   string S_s_1752;
   string S_s_1753;
   string S_s_1754;
   string S_s_1755;
   string S_s_1756;
   string S_s_1757;
   string S_s_1758;
   string S_s_1759;
   string S_s_1760;
   string S_s_1761;
   string S_s_1762;
   string S_s_1763;
   string S_s_1764;
   string S_s_1765;
   string S_s_1766;
   string S_s_1767;
   string S_s_1768;
   string S_s_1769;
   string S_s_1770;
   string S_s_1771;
   string S_s_1772;
   string S_s_1773;
   string S_s_1774;
   string S_s_1775;
   string S_s_1776;
   string S_s_1777;
   string S_s_1778;
   string S_s_1779;
   string S_s_1780;
   string S_s_1781;
   string S_s_1782;
   string S_s_1783;
   string S_s_1784;
   string S_s_1785;
   string S_s_1786;
   string S_s_1787;
   string S_s_1788;
   string S_s_1789;
   string S_s_1790;
   string S_s_1791;
   string S_s_1792;
   string S_s_1793;
   string S_s_1794;
   string S_s_1795;
   string S_s_1796;
   string S_s_1797;
   string S_s_1798;
   string S_s_1799;
   string S_s_1800;
   string S_s_1801;
   string S_s_1802;
   string S_s_1803;
   string S_s_1804;
   string S_s_1805;
   string S_s_1806;
   string S_s_1807;
   string S_s_1808;
   string S_s_1809;
   string S_s_1810;
   string S_s_1811;
   string S_s_1812;
   string S_s_1813;
   string S_s_1814;
   string S_s_1815;
   string S_s_1816;
   string S_s_1817;
   string S_s_1818;
   string S_s_1819;
   string S_s_1820;
   string S_s_1821;
   string S_s_1822;
   string S_s_1823;
   string S_s_1824;
   string S_s_1825;
   string S_s_1826;
   string S_s_1827;
   string S_s_1828;
   string S_s_1829;
   string S_s_1830;
   string S_s_1831;
   string S_s_1832;
   string S_s_1833;
   string S_s_1834;
   string S_s_1835;
   string S_s_1836;
   string S_s_1837;
   string S_s_1838;
   string S_s_1839;
   string S_s_1840;
   string S_s_1841;
   string S_s_1842;
   string S_s_1843;
   string S_s_1844;
   string S_s_1845;
   string S_s_1846;
   string S_s_1847;
   string S_s_1848;
   string S_s_1849;
   string S_s_1850;
   string S_s_1851;
   string S_s_1852;
   string S_s_1853;
   string S_s_1854;
   string S_s_1855;
   string S_s_1856;
   string S_s_1857;
   string S_s_1858;
   string S_s_1859;
   string S_s_1860;
   string S_s_1861;
   string S_s_1862;
   string S_s_1863;
   string S_s_1864;
   string S_s_1865;
   string S_s_1866;
   string S_s_1867;
   string S_s_1868;
   string S_s_1869;
   string S_s_1870;
   string S_s_1871;
   string S_s_1872;
   string S_s_1873;
   string S_s_1874;
   string S_s_1875;
   string S_s_1876;
   string S_s_1877;
   string S_s_1878;
   string S_s_1879;
   string S_s_1880;
   string S_s_1881;
   string S_s_1882;
   string S_s_1883;
   string S_s_1884;
   string S_s_1885;
   string S_s_1886;
   string S_s_1887;
   string S_s_1888;
   string S_s_1889;
   string S_s_1890;
   string S_s_1891;
   string S_s_1892;
   string S_s_1893;
   string S_s_1894;
   string S_s_1895;
   string S_s_1896;
   string S_s_1897;
   string S_s_1898;
   string S_s_1899;
   string S_s_1900;
   string S_s_1901;
   string S_s_1902;
   string S_s_1903;
   string S_s_1904;
   string S_s_1905;
   string S_s_1906;
   string S_s_1907;
   string S_s_1908;
   string S_s_1909;
   string S_s_1910;
   string S_s_1911;
   string S_s_1912;
   string S_s_1913;
   string S_s_1914;
   string S_s_1915;
   string S_s_1916;
   string S_s_1917;
   string S_s_1918;
   string S_s_1919;
   string S_s_1920;
   string S_s_1921;
   string S_s_1922;
   string S_s_1923;
   string S_s_1924;
   string S_s_1925;
   string S_s_1926;
   string S_s_1927;
   string S_s_1928;
   string S_s_1929;
   string S_s_1930;
   string S_s_1931;
   string S_s_1932;
   string S_s_1933;
   string S_s_1934;
   string S_s_1935;
   string S_s_1936;
   string S_s_1937;
   string S_s_1938;
   string S_s_1939;
   string S_s_1940;
   string S_s_1941;
   string S_s_1942;
   string S_s_1943;
   string S_s_1944;
   string S_s_1945;
   string S_s_1946;
   string S_s_1947;
   string S_s_1948;
   string S_s_1949;
   string S_s_1950;
   string S_s_1951;
   string S_s_1952;
   string S_s_1953;
   string S_s_1954;
   string S_s_1955;
   string S_s_1956;
   string S_s_1957;
   string S_s_1958;
   string S_s_1959;
   string S_s_1960;
   string S_s_1961;
   string S_s_1962;
   string S_s_1963;
   string S_s_1964;
   string S_s_1965;
   string S_s_1966;
   string S_s_1967;
   string S_s_1968;
   string S_s_1969;
   string S_s_1970;
   string S_s_1971;
   string S_s_1972;
   string S_s_1973;
   string S_s_1974;
   string S_s_1975;
   string S_s_1976;
   string S_s_1977;
   string S_s_1978;
   string S_s_1979;
   string S_s_1980;
   string S_s_1981;
   string S_s_1982;
   string S_s_1983;
   string S_s_1984;
   string S_s_1985;
   string S_s_1986;
   string S_s_1987;
   string S_s_1988;
   string S_s_1989;
   string S_s_1990;
   string S_s_1991;
   string S_s_1992;
   string S_s_1993;
   string S_s_1994;
   string S_s_1995;
   string S_s_1996;
   string S_s_1997;
   string S_s_1998;
   string S_s_1999;
   string S_s_2000;
   string S_s_2001;
   double L_d_11;
   double L_d_36;
   double L_d_37;
   double L_d_38;
   int L_i_16;
   L_d_11 = 0;
   L_d_36 = 0;
   L_d_37 = 0;
   L_d_38 = 0;
   L_i_16 = 0;
   G_i_19 = 0;
   G_d_140 = 0;
   G_i_144 = 0;
   G_i_21 = 0;
   G_i_22 = 0;
   G_i_145 = 0;
   G_i_23 = 0;
   G_d_141 = 0;
   G_i_25 = 0;
   G_i_146 = 0;
   G_i_147 = 0;
   G_i_26 = 0;
   G_i_148 = 0;
   G_d_142 = 0;
   G_i_149 = 0;
   G_l_11 = 0;
   G_i_28 = 0;
   G_i_150 = 0;
   G_i_29 = 0;
   G_i_151 = 0;
   G_d_143 = 0;
   G_i_152 = 0;
   G_i_153 = 0;
   G_i_31 = 0;
   G_i_154 = 0;
   G_i_155 = 0;
   G_d_144 = 0;
   G_i_156 = 0;
   G_i_33 = 0;
   G_i_157 = 0;
   G_i_34 = 0;
   G_i_158 = 0;
   G_d_23 = 0;
   G_i_35 = 0;
   G_l_12 = 0;
   G_i_159 = 0;
   G_i_36 = 0;
   G_i_160 = 0;
   G_i_37 = 0;
   G_d_27 = 0;
   G_i_38 = 0;
   G_i_161 = 0;
   G_i_162 = 0;
   G_i_39 = 0;
   G_i_163 = 0;
   G_d_31 = 0;
   G_i_40 = 0;
   G_i_164 = 0;
   G_i_41 = 0;
   G_i_165 = 0;
   G_i_42 = 0;
   G_d_34 = 0;
   G_i_166 = 0;
   G_l_13 = 0;
   G_i_167 = 0;
   G_i_168 = 0;
   G_i_44 = 0;
   G_i_169 = 0;
   G_d_145 = 0;
   G_i_170 = 0;
   G_i_46 = 0;
   G_i_171 = 0;
   G_i_172 = 0;
   G_i_47 = 0;
   G_d_42 = 0;
   G_i_173 = 0;
   G_i_48 = 0;
   G_i_174 = 0;
   G_i_49 = 0;
   G_i_175 = 0;
   G_d_146 = 0;
   G_i_176 = 0;
   G_l_14 = 0;
   G_i_51 = 0;
   G_i_177 = 0;
   G_i_178 = 0;
   G_i_52 = 0;
   G_d_50 = 0;
   G_i_179 = 0;
   G_i_53 = 0;
   G_i_54 = 0;
   G_i_55 = 0;
   G_i_180 = 0;
   G_d_52 = 0;
   G_i_56 = 0;
   G_i_181 = 0;
   G_i_57 = 0;
   G_i_182 = 0;
   G_i_183 = 0;
   G_d_147 = 0;
   G_i_184 = 0;
   G_l_15 = 0;
   G_i_185 = 0;
   G_i_60 = 0;
   G_i_186 = 0;
   G_i_187 = 0;
   G_d_148 = 0;
   G_i_188 = 0;
   G_i_189 = 0;
   G_i_62 = 0;
   G_i_190 = 0;
   G_i_63 = 0;
   G_d_63 = 0;
   G_i_64 = 0;
   G_i_191 = 0;
   G_i_192 = 0;
   G_i_65 = 0;
   G_i_193 = 0;
   G_d_67 = 0;
   G_i_66 = 0;
   G_l_16 = 0;
   G_i_67 = 0;
   G_i_194 = 0;
   G_i_68 = 0;
   G_i_195 = 0;
   G_d_71 = 0;
   G_i_69 = 0;
   G_i_196 = 0;
   G_i_197 = 0;
   G_i_70 = 0;
   G_i_198 = 0;
   G_d_149 = 0;
   G_i_199 = 0;
   G_i_72 = 0;
   G_i_200 = 0;
   G_i_201 = 0;
   G_i_73 = 0;
   G_d_78 = 0;
   G_i_202 = 0;
   G_l_17 = 0;
   G_i_203 = 0;
   G_i_75 = 0;
   G_i_204 = 0;
   G_i_76 = 0;
   G_d_82 = 0;
   G_i_205 = 0;
   G_i_77 = 0;
   G_i_206 = 0;
   G_i_207 = 0;
   G_i_78 = 0;
   G_d_86 = 0;
   G_i_79 = 0;
   G_i_208 = 0;
   G_i_80 = 0;
   G_i_209 = 0;
   G_i_210 = 0;
   G_d_150 = 0;
   G_i_211 = 0;
   G_l_18 = 0;
   G_i_82 = 0;
   G_i_212 = 0;
   G_i_213 = 0;
   G_i_83 = 0;
   G_d_94 = 0;
   G_i_84 = 0;
   G_i_85 = 0;
   G_i_214 = 0;
   G_i_86 = 0;
   G_i_215 = 0;
   G_d_151 = 0;
   G_i_216 = 0;
   G_i_88 = 0;
   G_i_89 = 0;
   G_i_217 = 0;
   G_i_90 = 0;
   G_d_99 = 0;
   G_i_91 = 0;
   G_l_19 = 0;
   G_i_92 = 0;
   G_i_218 = 0;
   G_i_93 = 0;
   G_i_219 = 0;
   G_d_152 = 0;
   G_i_95 = 0;
   G_i_220 = 0;
   G_i_96 = 0;
   G_i_97 = 0;
   G_i_221 = 0;
   G_d_153 = 0;
   G_i_222 = 0;
   G_i_99 = 0;
   G_i_223 = 0;
   G_i_100 = 0;
   G_i_101 = 0;
   G_d_107 = 0;
   G_i_102 = 0;
   G_l_20 = 0;
   G_i_103 = 0;
   G_i_224 = 0;
   G_i_104 = 0;
   G_i_105 = 0;
   G_d_110 = 0;
   G_i_106 = 0;
   G_i_225 = 0;
   G_i_107 = 0;
   G_i_226 = 0;
   G_i_108 = 0;
   G_d_113 = 0;
   G_i_109 = 0;
   G_i_227 = 0;
   G_i_110 = 0;
   G_i_111 = 0;
   G_i_228 = 0;
   G_d_154 = 0;
   G_i_113 = 0;
   G_l_21 = 0;
   G_i_114 = 0;
   G_i_115 = 0;
   G_i_116 = 0;
   G_i_117 = 0;
   G_d_155 = 0;
   G_i_119 = 0;
   G_i_120 = 0;
   G_i_121 = 0;
   G_i_137 = 0;
   G_i_122 = 0;
   G_d_126 = 0;
   G_i_124 = 0;
   G_i_125 = 0;
   G_i_136 = 0;
   G_i_126 = 0;
   G_i_127 = 0;
   G_d_131 = 0;
   G_i_129 = 0;
   G_l_22 = 0;
   G_i_131 = 0;
   G_i_132 = 0;
   G_i_133 = 0;
   G_i_134 = 0;
   G_d_138 = 0;
   G_i_229 = 0;
   G_i_230 = 0;
   G_i_231 = 0;
   G_i_232 = 0;
   G_i_233 = 0;
   G_d_156 = 0;
   G_i_234 = 0;
   G_i_235 = 0;
   G_i_236 = 0;
   G_i_237 = 0;
   G_i_238 = 0;
   G_d_157 = 0;
   G_i_239 = 0;
   G_l_23 = 0;
   G_i_240 = 0;
   G_i_241 = 0;
   G_i_242 = 0;
   G_i_243 = 0;
   G_d_158 = 0;
   G_i_244 = 0;
   G_i_245 = 0;
   G_i_246 = 0;
   G_i_247 = 0;
   G_i_248 = 0;
   G_d_159 = 0;
   G_i_249 = 0;
   G_i_250 = 0;
   G_i_251 = 0;
   G_i_252 = 0;
   G_i_253 = 0;
   G_d_160 = 0;
   G_i_254 = 0;
   G_l_24 = 0;
   G_i_255 = 0;
   G_i_256 = 0;
   G_i_257 = 0;
   L_d_11 = 0;
   L_d_36 = 0;
   L_d_37 = 0;
   L_d_38 = 0;
   L_i_16 = 0;
   if (Fa_i_00 == I_i_1) {
      if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
         L_d_11 = getOrderTrailingStop(I_i_1, OrderType(), OrderOpenPrice());
         if ((L_d_11 > 0)) {
            G_i_19 = I_i_1;
            G_d_140 = 0;
            if (I_i_1 == I_i_1) {
               G_d_140 = (I_d_4 * 0);
            }
            if (G_i_19 == I_i_2) {
               G_d_140 = (I_d_4 * 0);
            }
            if (G_i_19 == I_i_3) {
               G_d_140 = (I_d_4 * 0);
            }
            if (G_i_19 == I_i_4) {
               G_d_140 = (I_d_4 * 0);
            }
            if (G_i_19 == I_i_5) {
               G_d_140 = (I_d_4 * 0);
            }
            if (G_i_19 == I_i_6) {
               G_d_140 = (I_d_4 * 0);
            }
            if (G_i_19 == I_i_7) {
               G_d_140 = (I_d_4 * 0);
            }
            if (G_i_19 == I_i_8) {
               G_d_140 = (I_d_4 * 0);
            }
            if (G_i_19 == I_i_9) {
               G_d_140 = (I_d_4 * 0);
            }
            if (G_i_19 == I_i_10) {
               G_d_140 = (I_d_4 * 0);
            }
            if (G_i_19 == I_i_11) {
               G_d_140 = (I_d_4 * 0);
            }
            if (G_i_19 == I_i_12) {
               G_d_140 = (I_d_4 * 0);
            }
            if (G_i_19 == I_i_13) {
               G_d_140 = (I_d_4 * 0);
            }
            if (G_i_19 == I_i_14) {
               G_d_140 = (I_d_4 * 0);
            }
            L_d_36 = NormalizeDouble(G_d_140, _Digits);
            if (OrderType() == OP_BUY) {
               L_d_38 = (Bid - OrderOpenPrice());
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_11)) {
                     S_s_2639 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_2639 != DoubleToString(L_d_37, _Digits)) {
                        S_s_2641 = "";
                        S_s_2642 = "";
                        S_s_2643 = "";
                        S_s_2644 = "";
                        S_s_2645 = "";
                        S_s_2646 = "";
                        S_s_2647 = (string)L_d_37;
                        S_s_2648 = " to :";
                        S_s_2649 = (string)Fa_i_00;
                        S_s_2650 = ", Magic Number: ";
                        S_s_2651 = (string)OrderTicket();
                        S_s_2652 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_2653 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_2653, " ", S_s_2652, S_s_2651, S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_144 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_144 > 0) {
                                 FileSeek(G_i_144, 0, 2);
                                 S_s_2654 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_144, S_s_2654, " VERBOSE: ", S_s_2652, S_s_2651, S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641);
                                 FileClose(G_i_144);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_259 = GetLastError();
                           L_i_16 = G_i_259;
                           S_s_2655 = "";
                           S_s_2656 = "";
                           S_s_2657 = "";
                           S_s_2658 = "";
                           S_s_2659 = "";
                           S_s_2660 = "";
                           S_s_2661 = "";
                           S_s_2662 = "";
                           S_s_2663 = ErrorDescription(G_i_259);
                           S_s_2664 = " - ";
                           S_s_2665 = (string)G_i_259;
                           S_s_2625 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_2626 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_2626, " ", S_s_2625, S_s_2665, S_s_2664, S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_21 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_21 > 0) {
                                    FileSeek(G_i_21, 0, 2);
                                    S_s_2627 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_21, S_s_2627, " VERBOSE: ", S_s_2625, S_s_2665, S_s_2664, S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655);
                                    FileClose(G_i_21);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_38 = (OrderOpenPrice() - Ask);
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_11)) {
                     S_s_2628 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_2628 != DoubleToString(L_d_37, _Digits)) {
                        S_s_2630 = "";
                        S_s_2631 = "";
                        S_s_2632 = "";
                        S_s_2633 = "";
                        S_s_2634 = "";
                        S_s_2635 = "";
                        S_s_2567 = (string)L_d_37;
                        S_s_2568 = " to :";
                        S_s_2569 = (string)Fa_i_00;
                        S_s_2570 = ", Magic Number: ";
                        S_s_2571 = (string)OrderTicket();
                        S_s_2572 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_2573 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_2573, " ", S_s_2572, S_s_2571, S_s_2570, S_s_2569, S_s_2568, S_s_2567, S_s_2635, S_s_2634, S_s_2633, S_s_2632, S_s_2631, S_s_2630);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_22 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_22 > 0) {
                                 FileSeek(G_i_22, 0, 2);
                                 S_s_2574 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_22, S_s_2574, " VERBOSE: ", S_s_2572, S_s_2571, S_s_2570, S_s_2569, S_s_2568, S_s_2567, S_s_2635, S_s_2634, S_s_2633, S_s_2632, S_s_2631, S_s_2630);
                                 FileClose(G_i_22);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_355 = GetLastError();
                           L_i_16 = G_i_355;
                           S_s_2575 = "";
                           S_s_2576 = "";
                           S_s_2577 = (string)OrderStopLoss();
                           S_s_2578 = " Current SL: ";
                           S_s_2579 = (string)Bid;
                           S_s_2580 = ", Bid: ";
                           S_s_2581 = (string)Ask;
                           S_s_2582 = ", Ask: ";
                           S_s_2583 = ErrorDescription(G_i_355);
                           S_s_2584 = " - ";
                           S_s_2585 = (string)G_i_355;
                           S_s_2586 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_2587 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_2587, " ", S_s_2586, S_s_2585, S_s_2584, S_s_2583, S_s_2582, S_s_2581, S_s_2580, S_s_2579, S_s_2578, S_s_2577, S_s_2576, S_s_2575);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_145 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_145 > 0) {
                                    FileSeek(G_i_145, 0, 2);
                                    S_s_2588 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_145, S_s_2588, " VERBOSE: ", S_s_2586, S_s_2585, S_s_2584, S_s_2583, S_s_2582, S_s_2581, S_s_2580, S_s_2579, S_s_2578, S_s_2577, S_s_2576, S_s_2575);
                                    FileClose(G_i_145);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         L_d_11 = getOrderBreakEven(I_i_1, OrderType(), OrderOpenPrice());
         G_i_23 = I_i_1;
         G_d_141 = 0;
         if (I_i_1 == I_i_1) {
            G_d_141 = (I_d_4 * 0);
         }
         if (G_i_23 == I_i_2) {
            G_d_141 = (I_d_4 * 0);
         }
         if (G_i_23 == I_i_3) {
            G_d_141 = (I_d_4 * 0);
         }
         if (G_i_23 == I_i_4) {
            G_d_141 = (I_d_4 * 0);
         }
         if (G_i_23 == I_i_5) {
            G_d_141 = (I_d_4 * 0);
         }
         if (G_i_23 == I_i_6) {
            G_d_141 = (I_d_4 * 0);
         }
         if (G_i_23 == I_i_7) {
            G_d_141 = (I_d_4 * 0);
         }
         if (G_i_23 == I_i_8) {
            G_d_141 = (I_d_4 * 0);
         }
         if (G_i_23 == I_i_9) {
            G_d_141 = (I_d_4 * 0);
         }
         if (G_i_23 == I_i_10) {
            G_d_141 = (I_d_4 * 0);
         }
         if (G_i_23 == I_i_11) {
            G_d_141 = (I_d_4 * 0);
         }
         if (G_i_23 == I_i_12) {
            G_d_141 = (I_d_4 * 0);
         }
         if (G_i_23 == I_i_13) {
            G_d_141 = (I_d_4 * 0);
         }
         if (G_i_23 == I_i_14) {
            G_d_141 = (I_d_4 * 0);
         }
         L_d_36 = NormalizeDouble(G_d_141, _Digits);
         if ((L_d_11 > 0)) {
            if (OrderType() == OP_BUY) {
               L_d_37 = (OrderOpenPrice() + L_d_36);
               if ((OrderOpenPrice() <= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_37)) {
                     S_s_2589 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_2589 != DoubleToString(L_d_37, _Digits)) {
                        S_s_2591 = "";
                        S_s_2592 = "";
                        S_s_2593 = "";
                        S_s_2594 = "";
                        S_s_2595 = "";
                        S_s_2596 = "";
                        S_s_2597 = (string)L_d_37;
                        S_s_2410 = " to :";
                        S_s_2411 = (string)Fa_i_00;
                        S_s_2412 = ", Magic Number: ";
                        S_s_2413 = (string)OrderTicket();
                        S_s_2414 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_2415 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_2415, " ", S_s_2414, S_s_2413, S_s_2412, S_s_2411, S_s_2410, S_s_2597, S_s_2596, S_s_2595, S_s_2594, S_s_2593, S_s_2592, S_s_2591);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_25 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_25 > 0) {
                                 FileSeek(G_i_25, 0, 2);
                                 S_s_2416 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_25, S_s_2416, " VERBOSE: ", S_s_2414, S_s_2413, S_s_2412, S_s_2411, S_s_2410, S_s_2597, S_s_2596, S_s_2595, S_s_2594, S_s_2593, S_s_2592, S_s_2591);
                                 FileClose(G_i_25);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_261 = GetLastError();
                           L_i_16 = G_i_261;
                           S_s_2417 = "";
                           S_s_2418 = "";
                           S_s_2419 = (string)OrderStopLoss();
                           S_s_2420 = " Current SL: ";
                           S_s_2421 = (string)Bid;
                           S_s_2422 = ", Bid: ";
                           S_s_2423 = (string)Ask;
                           S_s_2424 = ", Ask: ";
                           S_s_2425 = ErrorDescription(G_i_261);
                           S_s_2426 = " - ";
                           S_s_2427 = (string)G_i_261;
                           S_s_2428 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_2429 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_2429, " ", S_s_2428, S_s_2427, S_s_2426, S_s_2425, S_s_2424, S_s_2423, S_s_2422, S_s_2421, S_s_2420, S_s_2419, S_s_2418, S_s_2417);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_146 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_146 > 0) {
                                    FileSeek(G_i_146, 0, 2);
                                    S_s_2430 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_146, S_s_2430, " VERBOSE: ", S_s_2428, S_s_2427, S_s_2426, S_s_2425, S_s_2424, S_s_2423, S_s_2422, S_s_2421, S_s_2420, S_s_2419, S_s_2418, S_s_2417);
                                    FileClose(G_i_146);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_37 = (OrderOpenPrice() - L_d_36);
               if ((OrderOpenPrice() >= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_37)) {
                     S_s_2431 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_2431 != DoubleToString(L_d_37, _Digits)) {
                        S_s_2433 = "";
                        S_s_2434 = "";
                        S_s_2435 = "";
                        S_s_2436 = "";
                        S_s_2437 = "";
                        S_s_2438 = "";
                        S_s_2439 = (string)L_d_37;
                        S_s_2440 = " to :";
                        S_s_2441 = (string)Fa_i_00;
                        S_s_2442 = ", Magic Number: ";
                        S_s_2443 = (string)OrderTicket();
                        S_s_2444 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_2445 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_2445, " ", S_s_2444, S_s_2443, S_s_2442, S_s_2441, S_s_2440, S_s_2439, S_s_2438, S_s_2437, S_s_2436, S_s_2435, S_s_2434, S_s_2433);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_147 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_147 > 0) {
                                 FileSeek(G_i_147, 0, 2);
                                 S_s_2446 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_147, S_s_2446, " VERBOSE: ", S_s_2444, S_s_2443, S_s_2442, S_s_2441, S_s_2440, S_s_2439, S_s_2438, S_s_2437, S_s_2436, S_s_2435, S_s_2434, S_s_2433);
                                 FileClose(G_i_147);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_262 = GetLastError();
                           L_i_16 = G_i_262;
                           S_s_2447 = "";
                           S_s_2448 = "";
                           S_s_2449 = (string)OrderStopLoss();
                           S_s_2450 = " Current SL: ";
                           S_s_2451 = (string)Bid;
                           S_s_2452 = ", Bid: ";
                           S_s_2453 = (string)Ask;
                           S_s_2454 = ", Ask: ";
                           S_s_2455 = ErrorDescription(G_i_262);
                           S_s_2456 = " - ";
                           S_s_2457 = (string)G_i_262;
                           S_s_2458 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_2459 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_2459, " ", S_s_2458, S_s_2457, S_s_2456, S_s_2455, S_s_2454, S_s_2453, S_s_2452, S_s_2451, S_s_2450, S_s_2449, S_s_2448, S_s_2447);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_26 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_26 > 0) {
                                    FileSeek(G_i_26, 0, 2);
                                    S_s_2460 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_26, S_s_2460, " VERBOSE: ", S_s_2458, S_s_2457, S_s_2456, S_s_2455, S_s_2454, S_s_2453, S_s_2452, S_s_2451, S_s_2450, S_s_2449, S_s_2448, S_s_2447);
                                    FileClose(G_i_26);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         G_i_148 = I_i_1;
         G_d_142 = 0;
         if (I_i_1 == I_i_1) {
            G_d_142 = 0;
         }
         if (G_i_148 == I_i_2) {
            G_d_142 = 0;
         }
         if (G_i_148 == I_i_3) {
            G_d_142 = 0;
         }
         if (G_i_148 == I_i_4) {
            G_d_142 = 0;
         }
         if (G_i_148 == I_i_5) {
            G_d_142 = 0;
         }
         if (G_i_148 == I_i_6) {
            G_d_142 = 0;
         }
         if (G_i_148 == I_i_7) {
            G_d_142 = 0;
         }
         if (G_i_148 == I_i_8) {
            G_d_142 = 0;
         }
         if (G_i_148 == I_i_9) {
            G_d_142 = 0;
         }
         if (G_i_148 == I_i_10) {
            G_d_142 = 0;
         }
         if (G_i_148 == I_i_11) {
            G_d_142 = 0;
         }
         if (G_i_148 == I_i_12) {
            G_d_142 = 0;
         }
         if (G_i_148 == I_i_13) {
            G_d_142 = 0;
         }
         if (G_i_148 == I_i_14) {
            G_d_142 = 0;
         }
         returned_double = NormalizeDouble(G_d_142, _Digits);
         L_d_11 = returned_double;
         if ((L_d_11 > 0)) {
            G_i_149 = (int)(returned_double + 10);
            G_l_11 = OrderOpenTime();
            G_i_28 = 0;
            G_i_150 = 0;
            G_i_262 = G_i_149 + 10;
            if (G_i_262 > 0) {
               do {
                  if (G_l_11 < Time[G_i_150]) {
                     G_i_28 = G_i_28 + 1;
                  }
                  G_i_150 = G_i_150 + 1;
                  G_i_263 = G_i_149 + 10;
               } while (G_i_150 < G_i_263);
            }
            if ((G_i_28 >= L_d_11)) {
               S_s_2461 = "";
               S_s_2462 = "";
               S_s_2463 = "";
               S_s_2464 = "";
               S_s_2465 = "";
               S_s_2466 = "";
               S_s_2467 = (string)Fa_i_00;
               S_s_2468 = ", Magic Number: ";
               S_s_2469 = (string)OrderTicket();
               S_s_2470 = "bars - closing order with ticket: ";
               S_s_2471 = (string)L_d_11;
               S_s_2472 = "Exit After ";
               if (I_i_139 == 1) {
                  S_s_2473 = TimeToString(TimeCurrent(), 3);
                  Print("---VERBOSE--- ", S_s_2473, " ", S_s_2472, S_s_2471, S_s_2470, S_s_2469, S_s_2468, S_s_2467, S_s_2466, S_s_2465, S_s_2464, S_s_2463, S_s_2462, S_s_2461);
               } else {
                  if (I_i_139 == 2) {
                     G_i_29 = FileOpen("EAW_VerboseLog.txt", 3);
                     if (G_i_29 > 0) {
                        FileSeek(G_i_29, 0, 2);
                        S_s_2474 = TimeToString(TimeCurrent(), 3);
                        FileWrite(G_i_29, S_s_2474, " VERBOSE: ", S_s_2472, S_s_2471, S_s_2470, S_s_2469, S_s_2468, S_s_2467, S_s_2466, S_s_2465, S_s_2464, S_s_2463, S_s_2462, S_s_2461);
                        FileClose(G_i_29);
                     }
                  }
               }
               sqClosePositionAtMarket(-1);
            }
         }
      }
   }
   if (Fa_i_00 == I_i_2) {
      if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
         L_d_11 = getOrderTrailingStop(I_i_2, OrderType(), OrderOpenPrice());
         if ((L_d_11 > 0)) {
            G_i_151 = I_i_2;
            G_d_143 = 0;
            if (I_i_2 == I_i_1) {
               G_d_143 = (I_d_4 * 0);
            }
            if (G_i_151 == I_i_2) {
               G_d_143 = (I_d_4 * 0);
            }
            if (G_i_151 == I_i_3) {
               G_d_143 = (I_d_4 * 0);
            }
            if (G_i_151 == I_i_4) {
               G_d_143 = (I_d_4 * 0);
            }
            if (G_i_151 == I_i_5) {
               G_d_143 = (I_d_4 * 0);
            }
            if (G_i_151 == I_i_6) {
               G_d_143 = (I_d_4 * 0);
            }
            if (G_i_151 == I_i_7) {
               G_d_143 = (I_d_4 * 0);
            }
            if (G_i_151 == I_i_8) {
               G_d_143 = (I_d_4 * 0);
            }
            if (G_i_151 == I_i_9) {
               G_d_143 = (I_d_4 * 0);
            }
            if (G_i_151 == I_i_10) {
               G_d_143 = (I_d_4 * 0);
            }
            if (G_i_151 == I_i_11) {
               G_d_143 = (I_d_4 * 0);
            }
            if (G_i_151 == I_i_12) {
               G_d_143 = (I_d_4 * 0);
            }
            if (G_i_151 == I_i_13) {
               G_d_143 = (I_d_4 * 0);
            }
            if (G_i_151 == I_i_14) {
               G_d_143 = (I_d_4 * 0);
            }
            L_d_36 = NormalizeDouble(G_d_143, _Digits);
            if (OrderType() == OP_BUY) {
               L_d_38 = (Bid - OrderOpenPrice());
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_11)) {
                     S_s_2475 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_2475 != DoubleToString(L_d_37, _Digits)) {
                        S_s_2477 = "";
                        S_s_2478 = "";
                        S_s_2479 = "";
                        S_s_2480 = "";
                        S_s_2481 = "";
                        S_s_2482 = "";
                        S_s_2483 = (string)L_d_37;
                        S_s_2484 = " to :";
                        S_s_2485 = (string)Fa_i_00;
                        S_s_2486 = ", Magic Number: ";
                        S_s_2487 = (string)OrderTicket();
                        S_s_2488 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_2489 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_2489, " ", S_s_2488, S_s_2487, S_s_2486, S_s_2485, S_s_2484, S_s_2483, S_s_2482, S_s_2481, S_s_2480, S_s_2479, S_s_2478, S_s_2477);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_152 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_152 > 0) {
                                 FileSeek(G_i_152, 0, 2);
                                 S_s_2490 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_152, S_s_2490, " VERBOSE: ", S_s_2488, S_s_2487, S_s_2486, S_s_2485, S_s_2484, S_s_2483, S_s_2482, S_s_2481, S_s_2480, S_s_2479, S_s_2478, S_s_2477);
                                 FileClose(G_i_152);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_265 = GetLastError();
                           L_i_16 = G_i_265;
                           S_s_2491 = "";
                           S_s_2492 = "";
                           S_s_2493 = "";
                           S_s_2494 = "";
                           S_s_2495 = "";
                           S_s_2496 = "";
                           S_s_2497 = "";
                           S_s_2498 = "";
                           S_s_2499 = ErrorDescription(G_i_265);
                           S_s_2500 = " - ";
                           S_s_2501 = (string)G_i_265;
                           S_s_2502 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_2503 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_2503, " ", S_s_2502, S_s_2501, S_s_2500, S_s_2499, S_s_2498, S_s_2497, S_s_2496, S_s_2495, S_s_2494, S_s_2493, S_s_2492, S_s_2491);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_153 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_153 > 0) {
                                    FileSeek(G_i_153, 0, 2);
                                    S_s_2504 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_153, S_s_2504, " VERBOSE: ", S_s_2502, S_s_2501, S_s_2500, S_s_2499, S_s_2498, S_s_2497, S_s_2496, S_s_2495, S_s_2494, S_s_2493, S_s_2492, S_s_2491);
                                    FileClose(G_i_153);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_38 = (OrderOpenPrice() - Ask);
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_11)) {
                     S_s_2505 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_2505 != DoubleToString(L_d_37, _Digits)) {
                        S_s_2507 = "";
                        S_s_2508 = "";
                        S_s_2509 = "";
                        S_s_2510 = "";
                        S_s_2511 = "";
                        S_s_2512 = "";
                        S_s_2513 = (string)L_d_37;
                        S_s_2514 = " to :";
                        S_s_2515 = (string)Fa_i_00;
                        S_s_2516 = ", Magic Number: ";
                        S_s_2517 = (string)OrderTicket();
                        S_s_2518 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_2519 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_2519, " ", S_s_2518, S_s_2517, S_s_2516, S_s_2515, S_s_2514, S_s_2513, S_s_2512, S_s_2511, S_s_2510, S_s_2509, S_s_2508, S_s_2507);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_31 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_31 > 0) {
                                 FileSeek(G_i_31, 0, 2);
                                 S_s_2520 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_31, S_s_2520, " VERBOSE: ", S_s_2518, S_s_2517, S_s_2516, S_s_2515, S_s_2514, S_s_2513, S_s_2512, S_s_2511, S_s_2510, S_s_2509, S_s_2508, S_s_2507);
                                 FileClose(G_i_31);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_354 = GetLastError();
                           L_i_16 = G_i_354;
                           S_s_2521 = "";
                           S_s_2522 = "";
                           S_s_2523 = (string)OrderStopLoss();
                           S_s_2524 = " Current SL: ";
                           S_s_2525 = (string)Bid;
                           S_s_2526 = ", Bid: ";
                           S_s_2527 = (string)Ask;
                           S_s_2528 = ", Ask: ";
                           S_s_2190 = ErrorDescription(G_i_354);
                           S_s_2191 = " - ";
                           S_s_2192 = (string)G_i_354;
                           S_s_2193 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_2194 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_2194, " ", S_s_2193, S_s_2192, S_s_2191, S_s_2190, S_s_2528, S_s_2527, S_s_2526, S_s_2525, S_s_2524, S_s_2523, S_s_2522, S_s_2521);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_154 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_154 > 0) {
                                    FileSeek(G_i_154, 0, 2);
                                    S_s_2195 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_154, S_s_2195, " VERBOSE: ", S_s_2193, S_s_2192, S_s_2191, S_s_2190, S_s_2528, S_s_2527, S_s_2526, S_s_2525, S_s_2524, S_s_2523, S_s_2522, S_s_2521);
                                    FileClose(G_i_154);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         L_d_11 = getOrderBreakEven(I_i_2, OrderType(), OrderOpenPrice());
         G_i_155 = I_i_2;
         G_d_144 = 0;
         if (I_i_2 == I_i_1) {
            G_d_144 = (I_d_4 * 0);
         }
         if (G_i_155 == I_i_2) {
            G_d_144 = (I_d_4 * 0);
         }
         if (G_i_155 == I_i_3) {
            G_d_144 = (I_d_4 * 0);
         }
         if (G_i_155 == I_i_4) {
            G_d_144 = (I_d_4 * 0);
         }
         if (G_i_155 == I_i_5) {
            G_d_144 = (I_d_4 * 0);
         }
         if (G_i_155 == I_i_6) {
            G_d_144 = (I_d_4 * 0);
         }
         if (G_i_155 == I_i_7) {
            G_d_144 = (I_d_4 * 0);
         }
         if (G_i_155 == I_i_8) {
            G_d_144 = (I_d_4 * 0);
         }
         if (G_i_155 == I_i_9) {
            G_d_144 = (I_d_4 * 0);
         }
         if (G_i_155 == I_i_10) {
            G_d_144 = (I_d_4 * 0);
         }
         if (G_i_155 == I_i_11) {
            G_d_144 = (I_d_4 * 0);
         }
         if (G_i_155 == I_i_12) {
            G_d_144 = (I_d_4 * 0);
         }
         if (G_i_155 == I_i_13) {
            G_d_144 = (I_d_4 * 0);
         }
         if (G_i_155 == I_i_14) {
            G_d_144 = (I_d_4 * 0);
         }
         L_d_36 = NormalizeDouble(G_d_144, _Digits);
         if ((L_d_11 > 0)) {
            if (OrderType() == OP_BUY) {
               L_d_37 = (OrderOpenPrice() + L_d_36);
               if ((OrderOpenPrice() <= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_37)) {
                     S_s_2196 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_2196 != DoubleToString(L_d_37, _Digits)) {
                        S_s_322 = "";
                        S_s_323 = "";
                        S_s_324 = "";
                        S_s_325 = "";
                        S_s_326 = "";
                        S_s_327 = "";
                        S_s_328 = (string)L_d_37;
                        S_s_329 = " to :";
                        S_s_330 = (string)Fa_i_00;
                        S_s_331 = ", Magic Number: ";
                        S_s_332 = (string)OrderTicket();
                        S_s_333 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_334 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_334, " ", S_s_333, S_s_332, S_s_331, S_s_330, S_s_329, S_s_328, S_s_327, S_s_326, S_s_325, S_s_324, S_s_323, S_s_322);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_156 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_156 > 0) {
                                 FileSeek(G_i_156, 0, 2);
                                 S_s_335 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_156, S_s_335, " VERBOSE: ", S_s_333, S_s_332, S_s_331, S_s_330, S_s_329, S_s_328, S_s_327, S_s_326, S_s_325, S_s_324, S_s_323, S_s_322);
                                 FileClose(G_i_156);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_267 = GetLastError();
                           L_i_16 = G_i_267;
                           S_s_336 = "";
                           S_s_337 = "";
                           S_s_338 = (string)OrderStopLoss();
                           S_s_339 = " Current SL: ";
                           S_s_340 = (string)Bid;
                           S_s_341 = ", Bid: ";
                           S_s_342 = (string)Ask;
                           S_s_343 = ", Ask: ";
                           S_s_344 = ErrorDescription(G_i_267);
                           S_s_345 = " - ";
                           S_s_346 = (string)G_i_267;
                           S_s_347 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_348 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_348, " ", S_s_347, S_s_346, S_s_345, S_s_344, S_s_343, S_s_342, S_s_341, S_s_340, S_s_339, S_s_338, S_s_337, S_s_336);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_33 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_33 > 0) {
                                    FileSeek(G_i_33, 0, 2);
                                    S_s_349 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_33, S_s_349, " VERBOSE: ", S_s_347, S_s_346, S_s_345, S_s_344, S_s_343, S_s_342, S_s_341, S_s_340, S_s_339, S_s_338, S_s_337, S_s_336);
                                    FileClose(G_i_33);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_37 = (OrderOpenPrice() - L_d_36);
               if ((OrderOpenPrice() >= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_37)) {
                     S_s_350 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_350 != DoubleToString(L_d_37, _Digits)) {
                        S_s_352 = "";
                        S_s_353 = "";
                        S_s_354 = "";
                        S_s_355 = "";
                        S_s_356 = "";
                        S_s_357 = "";
                        S_s_358 = (string)L_d_37;
                        S_s_359 = " to :";
                        S_s_360 = (string)Fa_i_00;
                        S_s_361 = ", Magic Number: ";
                        S_s_362 = (string)OrderTicket();
                        S_s_363 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_364 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_364, " ", S_s_363, S_s_362, S_s_361, S_s_360, S_s_359, S_s_358, S_s_357, S_s_356, S_s_355, S_s_354, S_s_353, S_s_352);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_157 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_157 > 0) {
                                 FileSeek(G_i_157, 0, 2);
                                 S_s_365 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_157, S_s_365, " VERBOSE: ", S_s_363, S_s_362, S_s_361, S_s_360, S_s_359, S_s_358, S_s_357, S_s_356, S_s_355, S_s_354, S_s_353, S_s_352);
                                 FileClose(G_i_157);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_268 = GetLastError();
                           L_i_16 = G_i_268;
                           S_s_366 = "";
                           S_s_367 = "";
                           S_s_368 = (string)OrderStopLoss();
                           S_s_369 = " Current SL: ";
                           S_s_370 = (string)Bid;
                           S_s_371 = ", Bid: ";
                           S_s_372 = (string)Ask;
                           S_s_373 = ", Ask: ";
                           S_s_374 = ErrorDescription(G_i_268);
                           S_s_375 = " - ";
                           S_s_376 = (string)G_i_268;
                           S_s_377 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_378 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_378, " ", S_s_377, S_s_376, S_s_375, S_s_374, S_s_373, S_s_372, S_s_371, S_s_370, S_s_369, S_s_368, S_s_367, S_s_366);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_34 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_34 > 0) {
                                    FileSeek(G_i_34, 0, 2);
                                    S_s_379 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_34, S_s_379, " VERBOSE: ", S_s_377, S_s_376, S_s_375, S_s_374, S_s_373, S_s_372, S_s_371, S_s_370, S_s_369, S_s_368, S_s_367, S_s_366);
                                    FileClose(G_i_34);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         G_i_158 = I_i_2;
         G_d_23 = 0;
         if (I_i_2 == I_i_1) {
            G_d_23 = 0;
         }
         if (G_i_158 == I_i_2) {
            G_d_23 = 0;
         }
         if (G_i_158 == I_i_3) {
            G_d_23 = 0;
         }
         if (G_i_158 == I_i_4) {
            G_d_23 = 0;
         }
         if (G_i_158 == I_i_5) {
            G_d_23 = 0;
         }
         if (G_i_158 == I_i_6) {
            G_d_23 = 0;
         }
         if (G_i_158 == I_i_7) {
            G_d_23 = 0;
         }
         if (G_i_158 == I_i_8) {
            G_d_23 = 0;
         }
         if (G_i_158 == I_i_9) {
            G_d_23 = 0;
         }
         if (G_i_158 == I_i_10) {
            G_d_23 = 0;
         }
         if (G_i_158 == I_i_11) {
            G_d_23 = 0;
         }
         if (G_i_158 == I_i_12) {
            G_d_23 = 0;
         }
         if (G_i_158 == I_i_13) {
            G_d_23 = 0;
         }
         if (G_i_158 == I_i_14) {
            G_d_23 = 0;
         }
         returned_double = NormalizeDouble(G_d_23, _Digits);
         L_d_11 = returned_double;
         if ((L_d_11 > 0)) {
            G_i_35 = (int)(returned_double + 10);
            G_l_12 = OrderOpenTime();
            G_i_159 = 0;
            G_i_36 = 0;
            G_i_268 = G_i_35 + 10;
            if (G_i_268 > 0) {
               do {
                  if (G_l_12 < Time[G_i_36]) {
                     G_i_159 = G_i_159 + 1;
                  }
                  G_i_36 = G_i_36 + 1;
                  G_i_269 = G_i_35 + 10;
               } while (G_i_36 < G_i_269);
            }
            if ((G_i_159 >= L_d_11)) {
               S_s_380 = "";
               S_s_381 = "";
               S_s_382 = "";
               S_s_383 = "";
               S_s_384 = "";
               S_s_385 = "";
               S_s_386 = (string)Fa_i_00;
               S_s_387 = ", Magic Number: ";
               S_s_388 = (string)OrderTicket();
               S_s_389 = "bars - closing order with ticket: ";
               S_s_390 = (string)L_d_11;
               S_s_391 = "Exit After ";
               if (I_i_139 == 1) {
                  S_s_392 = TimeToString(TimeCurrent(), 3);
                  Print("---VERBOSE--- ", S_s_392, " ", S_s_391, S_s_390, S_s_389, S_s_388, S_s_387, S_s_386, S_s_385, S_s_384, S_s_383, S_s_382, S_s_381, S_s_380);
               } else {
                  if (I_i_139 == 2) {
                     G_i_160 = FileOpen("EAW_VerboseLog.txt", 3);
                     if (G_i_160 > 0) {
                        FileSeek(G_i_160, 0, 2);
                        S_s_393 = TimeToString(TimeCurrent(), 3);
                        FileWrite(G_i_160, S_s_393, " VERBOSE: ", S_s_391, S_s_390, S_s_389, S_s_388, S_s_387, S_s_386, S_s_385, S_s_384, S_s_383, S_s_382, S_s_381, S_s_380);
                        FileClose(G_i_160);
                     }
                  }
               }
               sqClosePositionAtMarket(-1);
            }
         }
      }
   }
   if (Fa_i_00 == I_i_3) {
      if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
         L_d_11 = getOrderTrailingStop(I_i_3, OrderType(), OrderOpenPrice());
         if ((L_d_11 > 0)) {
            G_i_37 = I_i_3;
            G_d_27 = 0;
            if (I_i_3 == I_i_1) {
               G_d_27 = (I_d_4 * 0);
            }
            if (G_i_37 == I_i_2) {
               G_d_27 = (I_d_4 * 0);
            }
            if (G_i_37 == I_i_3) {
               G_d_27 = (I_d_4 * 0);
            }
            if (G_i_37 == I_i_4) {
               G_d_27 = (I_d_4 * 0);
            }
            if (G_i_37 == I_i_5) {
               G_d_27 = (I_d_4 * 0);
            }
            if (G_i_37 == I_i_6) {
               G_d_27 = (I_d_4 * 0);
            }
            if (G_i_37 == I_i_7) {
               G_d_27 = (I_d_4 * 0);
            }
            if (G_i_37 == I_i_8) {
               G_d_27 = (I_d_4 * 0);
            }
            if (G_i_37 == I_i_9) {
               G_d_27 = (I_d_4 * 0);
            }
            if (G_i_37 == I_i_10) {
               G_d_27 = (I_d_4 * 0);
            }
            if (G_i_37 == I_i_11) {
               G_d_27 = (I_d_4 * 0);
            }
            if (G_i_37 == I_i_12) {
               G_d_27 = (I_d_4 * 0);
            }
            if (G_i_37 == I_i_13) {
               G_d_27 = (I_d_4 * 0);
            }
            if (G_i_37 == I_i_14) {
               G_d_27 = (I_d_4 * 0);
            }
            L_d_36 = NormalizeDouble(G_d_27, _Digits);
            if (OrderType() == OP_BUY) {
               L_d_38 = (Bid - OrderOpenPrice());
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_11)) {
                     S_s_394 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_394 != DoubleToString(L_d_37, _Digits)) {
                        S_s_396 = "";
                        S_s_397 = "";
                        S_s_398 = "";
                        S_s_399 = "";
                        S_s_400 = "";
                        S_s_401 = "";
                        S_s_402 = (string)L_d_37;
                        S_s_403 = " to :";
                        S_s_404 = (string)Fa_i_00;
                        S_s_405 = ", Magic Number: ";
                        S_s_406 = (string)OrderTicket();
                        S_s_407 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_408 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_408, " ", S_s_407, S_s_406, S_s_405, S_s_404, S_s_403, S_s_402, S_s_401, S_s_400, S_s_399, S_s_398, S_s_397, S_s_396);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_38 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_38 > 0) {
                                 FileSeek(G_i_38, 0, 2);
                                 S_s_409 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_38, S_s_409, " VERBOSE: ", S_s_407, S_s_406, S_s_405, S_s_404, S_s_403, S_s_402, S_s_401, S_s_400, S_s_399, S_s_398, S_s_397, S_s_396);
                                 FileClose(G_i_38);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_271 = GetLastError();
                           L_i_16 = G_i_271;
                           S_s_410 = "";
                           S_s_411 = "";
                           S_s_412 = "";
                           S_s_413 = "";
                           S_s_414 = "";
                           S_s_415 = "";
                           S_s_416 = "";
                           S_s_417 = "";
                           S_s_418 = ErrorDescription(G_i_271);
                           S_s_419 = " - ";
                           S_s_420 = (string)G_i_271;
                           S_s_421 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_422 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_422, " ", S_s_421, S_s_420, S_s_419, S_s_418, S_s_417, S_s_416, S_s_415, S_s_414, S_s_413, S_s_412, S_s_411, S_s_410);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_161 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_161 > 0) {
                                    FileSeek(G_i_161, 0, 2);
                                    S_s_423 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_161, S_s_423, " VERBOSE: ", S_s_421, S_s_420, S_s_419, S_s_418, S_s_417, S_s_416, S_s_415, S_s_414, S_s_413, S_s_412, S_s_411, S_s_410);
                                    FileClose(G_i_161);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_38 = (OrderOpenPrice() - Ask);
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_11)) {
                     S_s_424 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_424 != DoubleToString(L_d_37, _Digits)) {
                        S_s_426 = "";
                        S_s_427 = "";
                        S_s_428 = "";
                        S_s_429 = "";
                        S_s_430 = "";
                        S_s_431 = "";
                        S_s_432 = (string)L_d_37;
                        S_s_433 = " to :";
                        S_s_434 = (string)Fa_i_00;
                        S_s_435 = ", Magic Number: ";
                        S_s_436 = (string)OrderTicket();
                        S_s_437 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_438 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_438, " ", S_s_437, S_s_436, S_s_435, S_s_434, S_s_433, S_s_432, S_s_431, S_s_430, S_s_429, S_s_428, S_s_427, S_s_426);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_162 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_162 > 0) {
                                 FileSeek(G_i_162, 0, 2);
                                 S_s_439 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_162, S_s_439, " VERBOSE: ", S_s_437, S_s_436, S_s_435, S_s_434, S_s_433, S_s_432, S_s_431, S_s_430, S_s_429, S_s_428, S_s_427, S_s_426);
                                 FileClose(G_i_162);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_353 = GetLastError();
                           L_i_16 = G_i_353;
                           S_s_440 = "";
                           S_s_441 = "";
                           S_s_442 = (string)OrderStopLoss();
                           S_s_443 = " Current SL: ";
                           S_s_444 = (string)Bid;
                           S_s_445 = ", Bid: ";
                           S_s_446 = (string)Ask;
                           S_s_447 = ", Ask: ";
                           S_s_448 = ErrorDescription(G_i_353);
                           S_s_449 = " - ";
                           S_s_450 = (string)G_i_353;
                           S_s_451 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_452 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_452, " ", S_s_451, S_s_450, S_s_449, S_s_448, S_s_447, S_s_446, S_s_445, S_s_444, S_s_443, S_s_442, S_s_441, S_s_440);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_39 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_39 > 0) {
                                    FileSeek(G_i_39, 0, 2);
                                    S_s_453 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_39, S_s_453, " VERBOSE: ", S_s_451, S_s_450, S_s_449, S_s_448, S_s_447, S_s_446, S_s_445, S_s_444, S_s_443, S_s_442, S_s_441, S_s_440);
                                    FileClose(G_i_39);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         L_d_11 = getOrderBreakEven(I_i_3, OrderType(), OrderOpenPrice());
         G_i_163 = I_i_3;
         G_d_31 = 0;
         if (I_i_3 == I_i_1) {
            G_d_31 = (I_d_4 * 0);
         }
         if (G_i_163 == I_i_2) {
            G_d_31 = (I_d_4 * 0);
         }
         if (G_i_163 == I_i_3) {
            G_d_31 = (I_d_4 * 0);
         }
         if (G_i_163 == I_i_4) {
            G_d_31 = (I_d_4 * 0);
         }
         if (G_i_163 == I_i_5) {
            G_d_31 = (I_d_4 * 0);
         }
         if (G_i_163 == I_i_6) {
            G_d_31 = (I_d_4 * 0);
         }
         if (G_i_163 == I_i_7) {
            G_d_31 = (I_d_4 * 0);
         }
         if (G_i_163 == I_i_8) {
            G_d_31 = (I_d_4 * 0);
         }
         if (G_i_163 == I_i_9) {
            G_d_31 = (I_d_4 * 0);
         }
         if (G_i_163 == I_i_10) {
            G_d_31 = (I_d_4 * 0);
         }
         if (G_i_163 == I_i_11) {
            G_d_31 = (I_d_4 * 0);
         }
         if (G_i_163 == I_i_12) {
            G_d_31 = (I_d_4 * 0);
         }
         if (G_i_163 == I_i_13) {
            G_d_31 = (I_d_4 * 0);
         }
         if (G_i_163 == I_i_14) {
            G_d_31 = (I_d_4 * 0);
         }
         L_d_36 = NormalizeDouble(G_d_31, _Digits);
         if ((L_d_11 > 0)) {
            if (OrderType() == OP_BUY) {
               L_d_37 = (OrderOpenPrice() + L_d_36);
               if ((OrderOpenPrice() <= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_37)) {
                     S_s_454 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_454 != DoubleToString(L_d_37, _Digits)) {
                        S_s_456 = "";
                        S_s_457 = "";
                        S_s_458 = "";
                        S_s_459 = "";
                        S_s_460 = "";
                        S_s_461 = "";
                        S_s_462 = (string)L_d_37;
                        S_s_463 = " to :";
                        S_s_464 = (string)Fa_i_00;
                        S_s_465 = ", Magic Number: ";
                        S_s_466 = (string)OrderTicket();
                        S_s_467 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_468 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_468, " ", S_s_467, S_s_466, S_s_465, S_s_464, S_s_463, S_s_462, S_s_461, S_s_460, S_s_459, S_s_458, S_s_457, S_s_456);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_40 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_40 > 0) {
                                 FileSeek(G_i_40, 0, 2);
                                 S_s_469 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_40, S_s_469, " VERBOSE: ", S_s_467, S_s_466, S_s_465, S_s_464, S_s_463, S_s_462, S_s_461, S_s_460, S_s_459, S_s_458, S_s_457, S_s_456);
                                 FileClose(G_i_40);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_273 = GetLastError();
                           L_i_16 = G_i_273;
                           S_s_470 = "";
                           S_s_471 = "";
                           S_s_472 = (string)OrderStopLoss();
                           S_s_473 = " Current SL: ";
                           S_s_474 = (string)Bid;
                           S_s_475 = ", Bid: ";
                           S_s_476 = (string)Ask;
                           S_s_477 = ", Ask: ";
                           S_s_478 = ErrorDescription(G_i_273);
                           S_s_479 = " - ";
                           S_s_480 = (string)G_i_273;
                           S_s_481 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_482 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_482, " ", S_s_481, S_s_480, S_s_479, S_s_478, S_s_477, S_s_476, S_s_475, S_s_474, S_s_473, S_s_472, S_s_471, S_s_470);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_164 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_164 > 0) {
                                    FileSeek(G_i_164, 0, 2);
                                    S_s_483 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_164, S_s_483, " VERBOSE: ", S_s_481, S_s_480, S_s_479, S_s_478, S_s_477, S_s_476, S_s_475, S_s_474, S_s_473, S_s_472, S_s_471, S_s_470);
                                    FileClose(G_i_164);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_37 = (OrderOpenPrice() - L_d_36);
               if ((OrderOpenPrice() >= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_37)) {
                     S_s_484 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_484 != DoubleToString(L_d_37, _Digits)) {
                        S_s_486 = "";
                        S_s_487 = "";
                        S_s_488 = "";
                        S_s_489 = "";
                        S_s_490 = "";
                        S_s_491 = "";
                        S_s_492 = (string)L_d_37;
                        S_s_493 = " to :";
                        S_s_494 = (string)Fa_i_00;
                        S_s_495 = ", Magic Number: ";
                        S_s_496 = (string)OrderTicket();
                        S_s_497 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_498 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_498, " ", S_s_497, S_s_496, S_s_495, S_s_494, S_s_493, S_s_492, S_s_491, S_s_490, S_s_489, S_s_488, S_s_487, S_s_486);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_41 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_41 > 0) {
                                 FileSeek(G_i_41, 0, 2);
                                 S_s_499 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_41, S_s_499, " VERBOSE: ", S_s_497, S_s_496, S_s_495, S_s_494, S_s_493, S_s_492, S_s_491, S_s_490, S_s_489, S_s_488, S_s_487, S_s_486);
                                 FileClose(G_i_41);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_274 = GetLastError();
                           L_i_16 = G_i_274;
                           S_s_500 = "";
                           S_s_501 = "";
                           S_s_502 = (string)OrderStopLoss();
                           S_s_503 = " Current SL: ";
                           S_s_504 = (string)Bid;
                           S_s_505 = ", Bid: ";
                           S_s_506 = (string)Ask;
                           S_s_507 = ", Ask: ";
                           S_s_508 = ErrorDescription(G_i_274);
                           S_s_509 = " - ";
                           S_s_510 = (string)G_i_274;
                           S_s_511 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_512 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_512, " ", S_s_511, S_s_510, S_s_509, S_s_508, S_s_507, S_s_506, S_s_505, S_s_504, S_s_503, S_s_502, S_s_501, S_s_500);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_165 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_165 > 0) {
                                    FileSeek(G_i_165, 0, 2);
                                    S_s_513 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_165, S_s_513, " VERBOSE: ", S_s_511, S_s_510, S_s_509, S_s_508, S_s_507, S_s_506, S_s_505, S_s_504, S_s_503, S_s_502, S_s_501, S_s_500);
                                    FileClose(G_i_165);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         G_i_42 = I_i_3;
         G_d_34 = 0;
         if (I_i_3 == I_i_1) {
            G_d_34 = 0;
         }
         if (G_i_42 == I_i_2) {
            G_d_34 = 0;
         }
         if (G_i_42 == I_i_3) {
            G_d_34 = 0;
         }
         if (G_i_42 == I_i_4) {
            G_d_34 = 0;
         }
         if (G_i_42 == I_i_5) {
            G_d_34 = 0;
         }
         if (G_i_42 == I_i_6) {
            G_d_34 = 0;
         }
         if (G_i_42 == I_i_7) {
            G_d_34 = 0;
         }
         if (G_i_42 == I_i_8) {
            G_d_34 = 0;
         }
         if (G_i_42 == I_i_9) {
            G_d_34 = 0;
         }
         if (G_i_42 == I_i_10) {
            G_d_34 = 0;
         }
         if (G_i_42 == I_i_11) {
            G_d_34 = 0;
         }
         if (G_i_42 == I_i_12) {
            G_d_34 = 0;
         }
         if (G_i_42 == I_i_13) {
            G_d_34 = 0;
         }
         if (G_i_42 == I_i_14) {
            G_d_34 = 0;
         }
         returned_double = NormalizeDouble(G_d_34, _Digits);
         L_d_11 = returned_double;
         if ((L_d_11 > 0)) {
            G_i_166 = (int)(returned_double + 10);
            G_l_13 = OrderOpenTime();
            G_i_167 = 0;
            G_i_168 = 0;
            G_i_274 = G_i_166 + 10;
            if (G_i_274 > 0) {
               do {
                  if (G_l_13 < Time[G_i_168]) {
                     G_i_167 = G_i_167 + 1;
                  }
                  G_i_168 = G_i_168 + 1;
                  G_i_275 = G_i_166 + 10;
               } while (G_i_168 < G_i_275);
            }
            if ((G_i_167 >= L_d_11)) {
               S_s_514 = "";
               S_s_515 = "";
               S_s_516 = "";
               S_s_517 = "";
               S_s_518 = "";
               S_s_519 = "";
               S_s_520 = (string)Fa_i_00;
               S_s_521 = ", Magic Number: ";
               S_s_522 = (string)OrderTicket();
               S_s_523 = "bars - closing order with ticket: ";
               S_s_524 = (string)L_d_11;
               S_s_525 = "Exit After ";
               if (I_i_139 == 1) {
                  S_s_526 = TimeToString(TimeCurrent(), 3);
                  Print("---VERBOSE--- ", S_s_526, " ", S_s_525, S_s_524, S_s_523, S_s_522, S_s_521, S_s_520, S_s_519, S_s_518, S_s_517, S_s_516, S_s_515, S_s_514);
               } else {
                  if (I_i_139 == 2) {
                     G_i_44 = FileOpen("EAW_VerboseLog.txt", 3);
                     if (G_i_44 > 0) {
                        FileSeek(G_i_44, 0, 2);
                        S_s_527 = TimeToString(TimeCurrent(), 3);
                        FileWrite(G_i_44, S_s_527, " VERBOSE: ", S_s_525, S_s_524, S_s_523, S_s_522, S_s_521, S_s_520, S_s_519, S_s_518, S_s_517, S_s_516, S_s_515, S_s_514);
                        FileClose(G_i_44);
                     }
                  }
               }
               sqClosePositionAtMarket(-1);
            }
         }
      }
   }
   if (Fa_i_00 == I_i_4) {
      if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
         L_d_11 = getOrderTrailingStop(I_i_4, OrderType(), OrderOpenPrice());
         if ((L_d_11 > 0)) {
            G_i_169 = I_i_4;
            G_d_145 = 0;
            if (I_i_4 == I_i_1) {
               G_d_145 = (I_d_4 * 0);
            }
            if (G_i_169 == I_i_2) {
               G_d_145 = (I_d_4 * 0);
            }
            if (G_i_169 == I_i_3) {
               G_d_145 = (I_d_4 * 0);
            }
            if (G_i_169 == I_i_4) {
               G_d_145 = (I_d_4 * 0);
            }
            if (G_i_169 == I_i_5) {
               G_d_145 = (I_d_4 * 0);
            }
            if (G_i_169 == I_i_6) {
               G_d_145 = (I_d_4 * 0);
            }
            if (G_i_169 == I_i_7) {
               G_d_145 = (I_d_4 * 0);
            }
            if (G_i_169 == I_i_8) {
               G_d_145 = (I_d_4 * 0);
            }
            if (G_i_169 == I_i_9) {
               G_d_145 = (I_d_4 * 0);
            }
            if (G_i_169 == I_i_10) {
               G_d_145 = (I_d_4 * 0);
            }
            if (G_i_169 == I_i_11) {
               G_d_145 = (I_d_4 * 0);
            }
            if (G_i_169 == I_i_12) {
               G_d_145 = (I_d_4 * 0);
            }
            if (G_i_169 == I_i_13) {
               G_d_145 = (I_d_4 * 0);
            }
            if (G_i_169 == I_i_14) {
               G_d_145 = (I_d_4 * 0);
            }
            L_d_36 = NormalizeDouble(G_d_145, _Digits);
            if (OrderType() == OP_BUY) {
               L_d_38 = (Bid - OrderOpenPrice());
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_11)) {
                     S_s_528 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_528 != DoubleToString(L_d_37, _Digits)) {
                        S_s_530 = "";
                        S_s_531 = "";
                        S_s_532 = "";
                        S_s_533 = "";
                        S_s_534 = "";
                        S_s_535 = "";
                        S_s_536 = (string)L_d_37;
                        S_s_537 = " to :";
                        S_s_538 = (string)Fa_i_00;
                        S_s_539 = ", Magic Number: ";
                        S_s_540 = (string)OrderTicket();
                        S_s_541 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_542 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_542, " ", S_s_541, S_s_540, S_s_539, S_s_538, S_s_537, S_s_536, S_s_535, S_s_534, S_s_533, S_s_532, S_s_531, S_s_530);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_170 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_170 > 0) {
                                 FileSeek(G_i_170, 0, 2);
                                 S_s_543 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_170, S_s_543, " VERBOSE: ", S_s_541, S_s_540, S_s_539, S_s_538, S_s_537, S_s_536, S_s_535, S_s_534, S_s_533, S_s_532, S_s_531, S_s_530);
                                 FileClose(G_i_170);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_277 = GetLastError();
                           L_i_16 = G_i_277;
                           S_s_544 = "";
                           S_s_545 = "";
                           S_s_546 = "";
                           S_s_547 = "";
                           S_s_548 = "";
                           S_s_549 = "";
                           S_s_550 = "";
                           S_s_551 = "";
                           S_s_552 = ErrorDescription(G_i_277);
                           S_s_553 = " - ";
                           S_s_554 = (string)G_i_277;
                           S_s_555 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_556 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_556, " ", S_s_555, S_s_554, S_s_553, S_s_552, S_s_551, S_s_550, S_s_549, S_s_548, S_s_547, S_s_546, S_s_545, S_s_544);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_46 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_46 > 0) {
                                    FileSeek(G_i_46, 0, 2);
                                    S_s_557 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_46, S_s_557, " VERBOSE: ", S_s_555, S_s_554, S_s_553, S_s_552, S_s_551, S_s_550, S_s_549, S_s_548, S_s_547, S_s_546, S_s_545, S_s_544);
                                    FileClose(G_i_46);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_38 = (OrderOpenPrice() - Ask);
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_11)) {
                     S_s_558 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_558 != DoubleToString(L_d_37, _Digits)) {
                        S_s_560 = "";
                        S_s_561 = "";
                        S_s_562 = "";
                        S_s_563 = "";
                        S_s_564 = "";
                        S_s_565 = "";
                        S_s_566 = (string)L_d_37;
                        S_s_567 = " to :";
                        S_s_568 = (string)Fa_i_00;
                        S_s_569 = ", Magic Number: ";
                        S_s_570 = (string)OrderTicket();
                        S_s_571 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_572 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_572, " ", S_s_571, S_s_570, S_s_569, S_s_568, S_s_567, S_s_566, S_s_565, S_s_564, S_s_563, S_s_562, S_s_561, S_s_560);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_171 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_171 > 0) {
                                 FileSeek(G_i_171, 0, 2);
                                 S_s_573 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_171, S_s_573, " VERBOSE: ", S_s_571, S_s_570, S_s_569, S_s_568, S_s_567, S_s_566, S_s_565, S_s_564, S_s_563, S_s_562, S_s_561, S_s_560);
                                 FileClose(G_i_171);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_352 = GetLastError();
                           L_i_16 = G_i_352;
                           S_s_574 = "";
                           S_s_575 = "";
                           S_s_576 = (string)OrderStopLoss();
                           S_s_577 = " Current SL: ";
                           S_s_578 = (string)Bid;
                           S_s_579 = ", Bid: ";
                           S_s_580 = (string)Ask;
                           S_s_581 = ", Ask: ";
                           S_s_582 = ErrorDescription(G_i_352);
                           S_s_583 = " - ";
                           S_s_584 = (string)G_i_352;
                           S_s_585 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_586 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_586, " ", S_s_585, S_s_584, S_s_583, S_s_582, S_s_581, S_s_580, S_s_579, S_s_578, S_s_577, S_s_576, S_s_575, S_s_574);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_172 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_172 > 0) {
                                    FileSeek(G_i_172, 0, 2);
                                    S_s_587 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_172, S_s_587, " VERBOSE: ", S_s_585, S_s_584, S_s_583, S_s_582, S_s_581, S_s_580, S_s_579, S_s_578, S_s_577, S_s_576, S_s_575, S_s_574);
                                    FileClose(G_i_172);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         L_d_11 = getOrderBreakEven(I_i_4, OrderType(), OrderOpenPrice());
         G_i_47 = I_i_4;
         G_d_42 = 0;
         if (I_i_4 == I_i_1) {
            G_d_42 = (I_d_4 * 0);
         }
         if (G_i_47 == I_i_2) {
            G_d_42 = (I_d_4 * 0);
         }
         if (G_i_47 == I_i_3) {
            G_d_42 = (I_d_4 * 0);
         }
         if (G_i_47 == I_i_4) {
            G_d_42 = (I_d_4 * 0);
         }
         if (G_i_47 == I_i_5) {
            G_d_42 = (I_d_4 * 0);
         }
         if (G_i_47 == I_i_6) {
            G_d_42 = (I_d_4 * 0);
         }
         if (G_i_47 == I_i_7) {
            G_d_42 = (I_d_4 * 0);
         }
         if (G_i_47 == I_i_8) {
            G_d_42 = (I_d_4 * 0);
         }
         if (G_i_47 == I_i_9) {
            G_d_42 = (I_d_4 * 0);
         }
         if (G_i_47 == I_i_10) {
            G_d_42 = (I_d_4 * 0);
         }
         if (G_i_47 == I_i_11) {
            G_d_42 = (I_d_4 * 0);
         }
         if (G_i_47 == I_i_12) {
            G_d_42 = (I_d_4 * 0);
         }
         if (G_i_47 == I_i_13) {
            G_d_42 = (I_d_4 * 0);
         }
         if (G_i_47 == I_i_14) {
            G_d_42 = (I_d_4 * 0);
         }
         L_d_36 = NormalizeDouble(G_d_42, _Digits);
         if ((L_d_11 > 0)) {
            if (OrderType() == OP_BUY) {
               L_d_37 = (OrderOpenPrice() + L_d_36);
               if ((OrderOpenPrice() <= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_37)) {
                     S_s_588 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_588 != DoubleToString(L_d_37, _Digits)) {
                        S_s_590 = "";
                        S_s_591 = "";
                        S_s_592 = "";
                        S_s_593 = "";
                        S_s_594 = "";
                        S_s_595 = "";
                        S_s_596 = (string)L_d_37;
                        S_s_597 = " to :";
                        S_s_598 = (string)Fa_i_00;
                        S_s_599 = ", Magic Number: ";
                        S_s_600 = (string)OrderTicket();
                        S_s_601 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_602 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_602, " ", S_s_601, S_s_600, S_s_599, S_s_598, S_s_597, S_s_596, S_s_595, S_s_594, S_s_593, S_s_592, S_s_591, S_s_590);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_173 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_173 > 0) {
                                 FileSeek(G_i_173, 0, 2);
                                 S_s_603 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_173, S_s_603, " VERBOSE: ", S_s_601, S_s_600, S_s_599, S_s_598, S_s_597, S_s_596, S_s_595, S_s_594, S_s_593, S_s_592, S_s_591, S_s_590);
                                 FileClose(G_i_173);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_279 = GetLastError();
                           L_i_16 = G_i_279;
                           S_s_604 = "";
                           S_s_605 = "";
                           S_s_606 = (string)OrderStopLoss();
                           S_s_607 = " Current SL: ";
                           S_s_608 = (string)Bid;
                           S_s_609 = ", Bid: ";
                           S_s_610 = (string)Ask;
                           S_s_611 = ", Ask: ";
                           S_s_612 = ErrorDescription(G_i_279);
                           S_s_613 = " - ";
                           S_s_614 = (string)G_i_279;
                           S_s_615 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_616 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_616, " ", S_s_615, S_s_614, S_s_613, S_s_612, S_s_611, S_s_610, S_s_609, S_s_608, S_s_607, S_s_606, S_s_605, S_s_604);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_48 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_48 > 0) {
                                    FileSeek(G_i_48, 0, 2);
                                    S_s_617 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_48, S_s_617, " VERBOSE: ", S_s_615, S_s_614, S_s_613, S_s_612, S_s_611, S_s_610, S_s_609, S_s_608, S_s_607, S_s_606, S_s_605, S_s_604);
                                    FileClose(G_i_48);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_37 = (OrderOpenPrice() - L_d_36);
               if ((OrderOpenPrice() >= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_37)) {
                     S_s_618 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_618 != DoubleToString(L_d_37, _Digits)) {
                        S_s_620 = "";
                        S_s_621 = "";
                        S_s_622 = "";
                        S_s_623 = "";
                        S_s_624 = "";
                        S_s_625 = "";
                        S_s_626 = (string)L_d_37;
                        S_s_627 = " to :";
                        S_s_628 = (string)Fa_i_00;
                        S_s_629 = ", Magic Number: ";
                        S_s_630 = (string)OrderTicket();
                        S_s_631 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_632 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_632, " ", S_s_631, S_s_630, S_s_629, S_s_628, S_s_627, S_s_626, S_s_625, S_s_624, S_s_623, S_s_622, S_s_621, S_s_620);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_174 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_174 > 0) {
                                 FileSeek(G_i_174, 0, 2);
                                 S_s_633 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_174, S_s_633, " VERBOSE: ", S_s_631, S_s_630, S_s_629, S_s_628, S_s_627, S_s_626, S_s_625, S_s_624, S_s_623, S_s_622, S_s_621, S_s_620);
                                 FileClose(G_i_174);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_280 = GetLastError();
                           L_i_16 = G_i_280;
                           S_s_634 = "";
                           S_s_635 = "";
                           S_s_636 = (string)OrderStopLoss();
                           S_s_637 = " Current SL: ";
                           S_s_638 = (string)Bid;
                           S_s_639 = ", Bid: ";
                           S_s_640 = (string)Ask;
                           S_s_641 = ", Ask: ";
                           S_s_642 = ErrorDescription(G_i_280);
                           S_s_643 = " - ";
                           S_s_644 = (string)G_i_280;
                           S_s_645 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_646 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_646, " ", S_s_645, S_s_644, S_s_643, S_s_642, S_s_641, S_s_640, S_s_639, S_s_638, S_s_637, S_s_636, S_s_635, S_s_634);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_49 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_49 > 0) {
                                    FileSeek(G_i_49, 0, 2);
                                    S_s_647 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_49, S_s_647, " VERBOSE: ", S_s_645, S_s_644, S_s_643, S_s_642, S_s_641, S_s_640, S_s_639, S_s_638, S_s_637, S_s_636, S_s_635, S_s_634);
                                    FileClose(G_i_49);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         G_i_175 = I_i_4;
         G_d_146 = 0;
         if (I_i_4 == I_i_1) {
            G_d_146 = 0;
         }
         if (G_i_175 == I_i_2) {
            G_d_146 = 0;
         }
         if (G_i_175 == I_i_3) {
            G_d_146 = 0;
         }
         if (G_i_175 == I_i_4) {
            G_d_146 = 0;
         }
         if (G_i_175 == I_i_5) {
            G_d_146 = 0;
         }
         if (G_i_175 == I_i_6) {
            G_d_146 = 0;
         }
         if (G_i_175 == I_i_7) {
            G_d_146 = 0;
         }
         if (G_i_175 == I_i_8) {
            G_d_146 = 0;
         }
         if (G_i_175 == I_i_9) {
            G_d_146 = 0;
         }
         if (G_i_175 == I_i_10) {
            G_d_146 = 0;
         }
         if (G_i_175 == I_i_11) {
            G_d_146 = 0;
         }
         if (G_i_175 == I_i_12) {
            G_d_146 = 0;
         }
         if (G_i_175 == I_i_13) {
            G_d_146 = 0;
         }
         if (G_i_175 == I_i_14) {
            G_d_146 = 0;
         }
         returned_double = NormalizeDouble(G_d_146, _Digits);
         L_d_11 = returned_double;
         if ((L_d_11 > 0)) {
            G_i_176 = (int)(returned_double + 10);
            G_l_14 = OrderOpenTime();
            G_i_51 = 0;
            G_i_177 = 0;
            G_i_280 = G_i_176 + 10;
            if (G_i_280 > 0) {
               do {
                  if (G_l_14 < Time[G_i_177]) {
                     G_i_51 = G_i_51 + 1;
                  }
                  G_i_177 = G_i_177 + 1;
                  G_i_281 = G_i_176 + 10;
               } while (G_i_177 < G_i_281);
            }
            if ((G_i_51 >= L_d_11)) {
               S_s_648 = "";
               S_s_649 = "";
               S_s_650 = "";
               S_s_651 = "";
               S_s_652 = "";
               S_s_653 = "";
               S_s_654 = (string)Fa_i_00;
               S_s_655 = ", Magic Number: ";
               S_s_656 = (string)OrderTicket();
               S_s_657 = "bars - closing order with ticket: ";
               S_s_658 = (string)L_d_11;
               S_s_659 = "Exit After ";
               if (I_i_139 == 1) {
                  S_s_660 = TimeToString(TimeCurrent(), 3);
                  Print("---VERBOSE--- ", S_s_660, " ", S_s_659, S_s_658, S_s_657, S_s_656, S_s_655, S_s_654, S_s_653, S_s_652, S_s_651, S_s_650, S_s_649, S_s_648);
               } else {
                  if (I_i_139 == 2) {
                     G_i_178 = FileOpen("EAW_VerboseLog.txt", 3);
                     if (G_i_178 > 0) {
                        FileSeek(G_i_178, 0, 2);
                        S_s_661 = TimeToString(TimeCurrent(), 3);
                        FileWrite(G_i_178, S_s_661, " VERBOSE: ", S_s_659, S_s_658, S_s_657, S_s_656, S_s_655, S_s_654, S_s_653, S_s_652, S_s_651, S_s_650, S_s_649, S_s_648);
                        FileClose(G_i_178);
                     }
                  }
               }
               sqClosePositionAtMarket(-1);
            }
         }
      }
   }
   if (Fa_i_00 == I_i_5) {
      if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
         L_d_11 = getOrderTrailingStop(I_i_5, OrderType(), OrderOpenPrice());
         if ((L_d_11 > 0)) {
            G_i_52 = I_i_5;
            G_d_50 = 0;
            if (I_i_5 == I_i_1) {
               G_d_50 = (I_d_4 * 0);
            }
            if (G_i_52 == I_i_2) {
               G_d_50 = (I_d_4 * 0);
            }
            if (G_i_52 == I_i_3) {
               G_d_50 = (I_d_4 * 0);
            }
            if (G_i_52 == I_i_4) {
               G_d_50 = (I_d_4 * 0);
            }
            if (G_i_52 == I_i_5) {
               G_d_50 = (I_d_4 * 0);
            }
            if (G_i_52 == I_i_6) {
               G_d_50 = (I_d_4 * 0);
            }
            if (G_i_52 == I_i_7) {
               G_d_50 = (I_d_4 * 0);
            }
            if (G_i_52 == I_i_8) {
               G_d_50 = (I_d_4 * 0);
            }
            if (G_i_52 == I_i_9) {
               G_d_50 = (I_d_4 * 0);
            }
            if (G_i_52 == I_i_10) {
               G_d_50 = (I_d_4 * 0);
            }
            if (G_i_52 == I_i_11) {
               G_d_50 = (I_d_4 * 0);
            }
            if (G_i_52 == I_i_12) {
               G_d_50 = (I_d_4 * 0);
            }
            if (G_i_52 == I_i_13) {
               G_d_50 = (I_d_4 * 0);
            }
            if (G_i_52 == I_i_14) {
               G_d_50 = (I_d_4 * 0);
            }
            L_d_36 = NormalizeDouble(G_d_50, _Digits);
            if (OrderType() == OP_BUY) {
               L_d_38 = (Bid - OrderOpenPrice());
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_11)) {
                     S_s_662 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_662 != DoubleToString(L_d_37, _Digits)) {
                        S_s_664 = "";
                        S_s_665 = "";
                        S_s_666 = "";
                        S_s_667 = "";
                        S_s_668 = "";
                        S_s_669 = "";
                        S_s_670 = (string)L_d_37;
                        S_s_671 = " to :";
                        S_s_672 = (string)Fa_i_00;
                        S_s_673 = ", Magic Number: ";
                        S_s_674 = (string)OrderTicket();
                        S_s_675 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_676 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_676, " ", S_s_675, S_s_674, S_s_673, S_s_672, S_s_671, S_s_670, S_s_669, S_s_668, S_s_667, S_s_666, S_s_665, S_s_664);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_179 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_179 > 0) {
                                 FileSeek(G_i_179, 0, 2);
                                 S_s_677 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_179, S_s_677, " VERBOSE: ", S_s_675, S_s_674, S_s_673, S_s_672, S_s_671, S_s_670, S_s_669, S_s_668, S_s_667, S_s_666, S_s_665, S_s_664);
                                 FileClose(G_i_179);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_283 = GetLastError();
                           L_i_16 = G_i_283;
                           S_s_678 = "";
                           S_s_679 = "";
                           S_s_680 = "";
                           S_s_681 = "";
                           S_s_682 = "";
                           S_s_683 = "";
                           S_s_684 = "";
                           S_s_685 = "";
                           S_s_686 = ErrorDescription(G_i_283);
                           S_s_687 = " - ";
                           S_s_688 = (string)G_i_283;
                           S_s_689 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_690 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_690, " ", S_s_689, S_s_688, S_s_687, S_s_686, S_s_685, S_s_684, S_s_683, S_s_682, S_s_681, S_s_680, S_s_679, S_s_678);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_53 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_53 > 0) {
                                    FileSeek(G_i_53, 0, 2);
                                    S_s_691 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_53, S_s_691, " VERBOSE: ", S_s_689, S_s_688, S_s_687, S_s_686, S_s_685, S_s_684, S_s_683, S_s_682, S_s_681, S_s_680, S_s_679, S_s_678);
                                    FileClose(G_i_53);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_38 = (OrderOpenPrice() - Ask);
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_11)) {
                     S_s_692 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_692 != DoubleToString(L_d_37, _Digits)) {
                        S_s_694 = "";
                        S_s_695 = "";
                        S_s_696 = "";
                        S_s_697 = "";
                        S_s_698 = "";
                        S_s_699 = "";
                        S_s_700 = (string)L_d_37;
                        S_s_701 = " to :";
                        S_s_702 = (string)Fa_i_00;
                        S_s_703 = ", Magic Number: ";
                        S_s_704 = (string)OrderTicket();
                        S_s_705 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_706 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_706, " ", S_s_705, S_s_704, S_s_703, S_s_702, S_s_701, S_s_700, S_s_699, S_s_698, S_s_697, S_s_696, S_s_695, S_s_694);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_54 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_54 > 0) {
                                 FileSeek(G_i_54, 0, 2);
                                 S_s_707 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_54, S_s_707, " VERBOSE: ", S_s_705, S_s_704, S_s_703, S_s_702, S_s_701, S_s_700, S_s_699, S_s_698, S_s_697, S_s_696, S_s_695, S_s_694);
                                 FileClose(G_i_54);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_351 = GetLastError();
                           L_i_16 = G_i_351;
                           S_s_708 = "";
                           S_s_709 = "";
                           S_s_710 = (string)OrderStopLoss();
                           S_s_711 = " Current SL: ";
                           S_s_712 = (string)Bid;
                           S_s_713 = ", Bid: ";
                           S_s_714 = (string)Ask;
                           S_s_715 = ", Ask: ";
                           S_s_716 = ErrorDescription(G_i_351);
                           S_s_717 = " - ";
                           S_s_718 = (string)G_i_351;
                           S_s_719 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_720 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_720, " ", S_s_719, S_s_718, S_s_717, S_s_716, S_s_715, S_s_714, S_s_713, S_s_712, S_s_711, S_s_710, S_s_709, S_s_708);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_55 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_55 > 0) {
                                    FileSeek(G_i_55, 0, 2);
                                    S_s_721 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_55, S_s_721, " VERBOSE: ", S_s_719, S_s_718, S_s_717, S_s_716, S_s_715, S_s_714, S_s_713, S_s_712, S_s_711, S_s_710, S_s_709, S_s_708);
                                    FileClose(G_i_55);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         L_d_11 = getOrderBreakEven(I_i_5, OrderType(), OrderOpenPrice());
         G_i_180 = I_i_5;
         G_d_52 = 0;
         if (I_i_5 == I_i_1) {
            G_d_52 = (I_d_4 * 0);
         }
         if (G_i_180 == I_i_2) {
            G_d_52 = (I_d_4 * 0);
         }
         if (G_i_180 == I_i_3) {
            G_d_52 = (I_d_4 * 0);
         }
         if (G_i_180 == I_i_4) {
            G_d_52 = (I_d_4 * 0);
         }
         if (G_i_180 == I_i_5) {
            G_d_52 = (I_d_4 * 0);
         }
         if (G_i_180 == I_i_6) {
            G_d_52 = (I_d_4 * 0);
         }
         if (G_i_180 == I_i_7) {
            G_d_52 = (I_d_4 * 0);
         }
         if (G_i_180 == I_i_8) {
            G_d_52 = (I_d_4 * 0);
         }
         if (G_i_180 == I_i_9) {
            G_d_52 = (I_d_4 * 0);
         }
         if (G_i_180 == I_i_10) {
            G_d_52 = (I_d_4 * 0);
         }
         if (G_i_180 == I_i_11) {
            G_d_52 = (I_d_4 * 0);
         }
         if (G_i_180 == I_i_12) {
            G_d_52 = (I_d_4 * 0);
         }
         if (G_i_180 == I_i_13) {
            G_d_52 = (I_d_4 * 0);
         }
         if (G_i_180 == I_i_14) {
            G_d_52 = (I_d_4 * 0);
         }
         L_d_36 = NormalizeDouble(G_d_52, _Digits);
         if ((L_d_11 > 0)) {
            if (OrderType() == OP_BUY) {
               L_d_37 = (OrderOpenPrice() + L_d_36);
               if ((OrderOpenPrice() <= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_37)) {
                     S_s_722 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_722 != DoubleToString(L_d_37, _Digits)) {
                        S_s_724 = "";
                        S_s_725 = "";
                        S_s_726 = "";
                        S_s_727 = "";
                        S_s_728 = "";
                        S_s_729 = "";
                        S_s_730 = (string)L_d_37;
                        S_s_731 = " to :";
                        S_s_732 = (string)Fa_i_00;
                        S_s_733 = ", Magic Number: ";
                        S_s_734 = (string)OrderTicket();
                        S_s_735 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_736 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_736, " ", S_s_735, S_s_734, S_s_733, S_s_732, S_s_731, S_s_730, S_s_729, S_s_728, S_s_727, S_s_726, S_s_725, S_s_724);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_56 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_56 > 0) {
                                 FileSeek(G_i_56, 0, 2);
                                 S_s_737 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_56, S_s_737, " VERBOSE: ", S_s_735, S_s_734, S_s_733, S_s_732, S_s_731, S_s_730, S_s_729, S_s_728, S_s_727, S_s_726, S_s_725, S_s_724);
                                 FileClose(G_i_56);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_285 = GetLastError();
                           L_i_16 = G_i_285;
                           S_s_738 = "";
                           S_s_739 = "";
                           S_s_740 = (string)OrderStopLoss();
                           S_s_741 = " Current SL: ";
                           S_s_742 = (string)Bid;
                           S_s_743 = ", Bid: ";
                           S_s_744 = (string)Ask;
                           S_s_745 = ", Ask: ";
                           S_s_746 = ErrorDescription(G_i_285);
                           S_s_747 = " - ";
                           S_s_748 = (string)G_i_285;
                           S_s_749 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_750 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_750, " ", S_s_749, S_s_748, S_s_747, S_s_746, S_s_745, S_s_744, S_s_743, S_s_742, S_s_741, S_s_740, S_s_739, S_s_738);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_181 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_181 > 0) {
                                    FileSeek(G_i_181, 0, 2);
                                    S_s_751 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_181, S_s_751, " VERBOSE: ", S_s_749, S_s_748, S_s_747, S_s_746, S_s_745, S_s_744, S_s_743, S_s_742, S_s_741, S_s_740, S_s_739, S_s_738);
                                    FileClose(G_i_181);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_37 = (OrderOpenPrice() - L_d_36);
               if ((OrderOpenPrice() >= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_37)) {
                     S_s_752 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_752 != DoubleToString(L_d_37, _Digits)) {
                        S_s_754 = "";
                        S_s_755 = "";
                        S_s_756 = "";
                        S_s_757 = "";
                        S_s_758 = "";
                        S_s_759 = "";
                        S_s_760 = (string)L_d_37;
                        S_s_761 = " to :";
                        S_s_762 = (string)Fa_i_00;
                        S_s_763 = ", Magic Number: ";
                        S_s_764 = (string)OrderTicket();
                        S_s_765 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_766 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_766, " ", S_s_765, S_s_764, S_s_763, S_s_762, S_s_761, S_s_760, S_s_759, S_s_758, S_s_757, S_s_756, S_s_755, S_s_754);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_57 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_57 > 0) {
                                 FileSeek(G_i_57, 0, 2);
                                 S_s_767 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_57, S_s_767, " VERBOSE: ", S_s_765, S_s_764, S_s_763, S_s_762, S_s_761, S_s_760, S_s_759, S_s_758, S_s_757, S_s_756, S_s_755, S_s_754);
                                 FileClose(G_i_57);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_286 = GetLastError();
                           L_i_16 = G_i_286;
                           S_s_768 = "";
                           S_s_769 = "";
                           S_s_770 = (string)OrderStopLoss();
                           S_s_771 = " Current SL: ";
                           S_s_772 = (string)Bid;
                           S_s_773 = ", Bid: ";
                           S_s_774 = (string)Ask;
                           S_s_775 = ", Ask: ";
                           S_s_776 = ErrorDescription(G_i_286);
                           S_s_777 = " - ";
                           S_s_778 = (string)G_i_286;
                           S_s_779 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_780 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_780, " ", S_s_779, S_s_778, S_s_777, S_s_776, S_s_775, S_s_774, S_s_773, S_s_772, S_s_771, S_s_770, S_s_769, S_s_768);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_182 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_182 > 0) {
                                    FileSeek(G_i_182, 0, 2);
                                    S_s_781 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_182, S_s_781, " VERBOSE: ", S_s_779, S_s_778, S_s_777, S_s_776, S_s_775, S_s_774, S_s_773, S_s_772, S_s_771, S_s_770, S_s_769, S_s_768);
                                    FileClose(G_i_182);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         G_i_183 = I_i_5;
         G_d_147 = 0;
         if (I_i_5 == I_i_1) {
            G_d_147 = 0;
         }
         if (G_i_183 == I_i_2) {
            G_d_147 = 0;
         }
         if (G_i_183 == I_i_3) {
            G_d_147 = 0;
         }
         if (G_i_183 == I_i_4) {
            G_d_147 = 0;
         }
         if (G_i_183 == I_i_5) {
            G_d_147 = 0;
         }
         if (G_i_183 == I_i_6) {
            G_d_147 = 0;
         }
         if (G_i_183 == I_i_7) {
            G_d_147 = 0;
         }
         if (G_i_183 == I_i_8) {
            G_d_147 = 0;
         }
         if (G_i_183 == I_i_9) {
            G_d_147 = 0;
         }
         if (G_i_183 == I_i_10) {
            G_d_147 = 0;
         }
         if (G_i_183 == I_i_11) {
            G_d_147 = 0;
         }
         if (G_i_183 == I_i_12) {
            G_d_147 = 0;
         }
         if (G_i_183 == I_i_13) {
            G_d_147 = 0;
         }
         if (G_i_183 == I_i_14) {
            G_d_147 = 0;
         }
         returned_double = NormalizeDouble(G_d_147, _Digits);
         L_d_11 = returned_double;
         if ((L_d_11 > 0)) {
            G_i_184 = (int)(returned_double + 10);
            G_l_15 = OrderOpenTime();
            G_i_185 = 0;
            G_i_60 = 0;
            G_i_286 = G_i_184 + 10;
            if (G_i_286 > 0) {
               do {
                  if (G_l_15 < Time[G_i_60]) {
                     G_i_185 = G_i_185 + 1;
                  }
                  G_i_60 = G_i_60 + 1;
                  G_i_287 = G_i_184 + 10;
               } while (G_i_60 < G_i_287);
            }
            if ((G_i_185 >= L_d_11)) {
               S_s_782 = "";
               S_s_783 = "";
               S_s_784 = "";
               S_s_785 = "";
               S_s_786 = "";
               S_s_787 = "";
               S_s_788 = (string)Fa_i_00;
               S_s_789 = ", Magic Number: ";
               S_s_790 = (string)OrderTicket();
               S_s_791 = "bars - closing order with ticket: ";
               S_s_792 = (string)L_d_11;
               S_s_793 = "Exit After ";
               if (I_i_139 == 1) {
                  S_s_794 = TimeToString(TimeCurrent(), 3);
                  Print("---VERBOSE--- ", S_s_794, " ", S_s_793, S_s_792, S_s_791, S_s_790, S_s_789, S_s_788, S_s_787, S_s_786, S_s_785, S_s_784, S_s_783, S_s_782);
               } else {
                  if (I_i_139 == 2) {
                     G_i_186 = FileOpen("EAW_VerboseLog.txt", 3);
                     if (G_i_186 > 0) {
                        FileSeek(G_i_186, 0, 2);
                        S_s_795 = TimeToString(TimeCurrent(), 3);
                        FileWrite(G_i_186, S_s_795, " VERBOSE: ", S_s_793, S_s_792, S_s_791, S_s_790, S_s_789, S_s_788, S_s_787, S_s_786, S_s_785, S_s_784, S_s_783, S_s_782);
                        FileClose(G_i_186);
                     }
                  }
               }
               sqClosePositionAtMarket(-1);
            }
         }
      }
   }
   if (Fa_i_00 == I_i_6) {
      if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
         L_d_11 = getOrderTrailingStop(I_i_6, OrderType(), OrderOpenPrice());
         if ((L_d_11 > 0)) {
            G_i_187 = I_i_6;
            G_d_148 = 0;
            if (I_i_6 == I_i_1) {
               G_d_148 = (I_d_4 * 0);
            }
            if (G_i_187 == I_i_2) {
               G_d_148 = (I_d_4 * 0);
            }
            if (G_i_187 == I_i_3) {
               G_d_148 = (I_d_4 * 0);
            }
            if (G_i_187 == I_i_4) {
               G_d_148 = (I_d_4 * 0);
            }
            if (G_i_187 == I_i_5) {
               G_d_148 = (I_d_4 * 0);
            }
            if (G_i_187 == I_i_6) {
               G_d_148 = (I_d_4 * 0);
            }
            if (G_i_187 == I_i_7) {
               G_d_148 = (I_d_4 * 0);
            }
            if (G_i_187 == I_i_8) {
               G_d_148 = (I_d_4 * 0);
            }
            if (G_i_187 == I_i_9) {
               G_d_148 = (I_d_4 * 0);
            }
            if (G_i_187 == I_i_10) {
               G_d_148 = (I_d_4 * 0);
            }
            if (G_i_187 == I_i_11) {
               G_d_148 = (I_d_4 * 0);
            }
            if (G_i_187 == I_i_12) {
               G_d_148 = (I_d_4 * 0);
            }
            if (G_i_187 == I_i_13) {
               G_d_148 = (I_d_4 * 0);
            }
            if (G_i_187 == I_i_14) {
               G_d_148 = (I_d_4 * 0);
            }
            L_d_36 = NormalizeDouble(G_d_148, _Digits);
            if (OrderType() == OP_BUY) {
               L_d_38 = (Bid - OrderOpenPrice());
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_11)) {
                     S_s_796 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_796 != DoubleToString(L_d_37, _Digits)) {
                        S_s_798 = "";
                        S_s_799 = "";
                        S_s_800 = "";
                        S_s_801 = "";
                        S_s_802 = "";
                        S_s_803 = "";
                        S_s_804 = (string)L_d_37;
                        S_s_805 = " to :";
                        S_s_806 = (string)Fa_i_00;
                        S_s_807 = ", Magic Number: ";
                        S_s_808 = (string)OrderTicket();
                        S_s_809 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_810 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_810, " ", S_s_809, S_s_808, S_s_807, S_s_806, S_s_805, S_s_804, S_s_803, S_s_802, S_s_801, S_s_800, S_s_799, S_s_798);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_188 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_188 > 0) {
                                 FileSeek(G_i_188, 0, 2);
                                 S_s_811 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_188, S_s_811, " VERBOSE: ", S_s_809, S_s_808, S_s_807, S_s_806, S_s_805, S_s_804, S_s_803, S_s_802, S_s_801, S_s_800, S_s_799, S_s_798);
                                 FileClose(G_i_188);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_289 = GetLastError();
                           L_i_16 = G_i_289;
                           S_s_812 = "";
                           S_s_813 = "";
                           S_s_814 = "";
                           S_s_815 = "";
                           S_s_816 = "";
                           S_s_817 = "";
                           S_s_818 = "";
                           S_s_819 = "";
                           S_s_820 = ErrorDescription(G_i_289);
                           S_s_821 = " - ";
                           S_s_822 = (string)G_i_289;
                           S_s_823 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_824 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_824, " ", S_s_823, S_s_822, S_s_821, S_s_820, S_s_819, S_s_818, S_s_817, S_s_816, S_s_815, S_s_814, S_s_813, S_s_812);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_189 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_189 > 0) {
                                    FileSeek(G_i_189, 0, 2);
                                    S_s_825 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_189, S_s_825, " VERBOSE: ", S_s_823, S_s_822, S_s_821, S_s_820, S_s_819, S_s_818, S_s_817, S_s_816, S_s_815, S_s_814, S_s_813, S_s_812);
                                    FileClose(G_i_189);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_38 = (OrderOpenPrice() - Ask);
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_11)) {
                     S_s_826 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_826 != DoubleToString(L_d_37, _Digits)) {
                        S_s_828 = "";
                        S_s_829 = "";
                        S_s_830 = "";
                        S_s_831 = "";
                        S_s_832 = "";
                        S_s_833 = "";
                        S_s_834 = (string)L_d_37;
                        S_s_835 = " to :";
                        S_s_836 = (string)Fa_i_00;
                        S_s_837 = ", Magic Number: ";
                        S_s_838 = (string)OrderTicket();
                        S_s_839 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_840 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_840, " ", S_s_839, S_s_838, S_s_837, S_s_836, S_s_835, S_s_834, S_s_833, S_s_832, S_s_831, S_s_830, S_s_829, S_s_828);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_62 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_62 > 0) {
                                 FileSeek(G_i_62, 0, 2);
                                 S_s_841 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_62, S_s_841, " VERBOSE: ", S_s_839, S_s_838, S_s_837, S_s_836, S_s_835, S_s_834, S_s_833, S_s_832, S_s_831, S_s_830, S_s_829, S_s_828);
                                 FileClose(G_i_62);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_350 = GetLastError();
                           L_i_16 = G_i_350;
                           S_s_842 = "";
                           S_s_843 = "";
                           S_s_844 = (string)OrderStopLoss();
                           S_s_845 = " Current SL: ";
                           S_s_846 = (string)Bid;
                           S_s_847 = ", Bid: ";
                           S_s_848 = (string)Ask;
                           S_s_849 = ", Ask: ";
                           S_s_850 = ErrorDescription(G_i_350);
                           S_s_851 = " - ";
                           S_s_852 = (string)G_i_350;
                           S_s_853 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_854 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_854, " ", S_s_853, S_s_852, S_s_851, S_s_850, S_s_849, S_s_848, S_s_847, S_s_846, S_s_845, S_s_844, S_s_843, S_s_842);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_190 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_190 > 0) {
                                    FileSeek(G_i_190, 0, 2);
                                    S_s_855 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_190, S_s_855, " VERBOSE: ", S_s_853, S_s_852, S_s_851, S_s_850, S_s_849, S_s_848, S_s_847, S_s_846, S_s_845, S_s_844, S_s_843, S_s_842);
                                    FileClose(G_i_190);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         L_d_11 = getOrderBreakEven(I_i_6, OrderType(), OrderOpenPrice());
         G_i_63 = I_i_6;
         G_d_63 = 0;
         if (I_i_6 == I_i_1) {
            G_d_63 = (I_d_4 * 0);
         }
         if (G_i_63 == I_i_2) {
            G_d_63 = (I_d_4 * 0);
         }
         if (G_i_63 == I_i_3) {
            G_d_63 = (I_d_4 * 0);
         }
         if (G_i_63 == I_i_4) {
            G_d_63 = (I_d_4 * 0);
         }
         if (G_i_63 == I_i_5) {
            G_d_63 = (I_d_4 * 0);
         }
         if (G_i_63 == I_i_6) {
            G_d_63 = (I_d_4 * 0);
         }
         if (G_i_63 == I_i_7) {
            G_d_63 = (I_d_4 * 0);
         }
         if (G_i_63 == I_i_8) {
            G_d_63 = (I_d_4 * 0);
         }
         if (G_i_63 == I_i_9) {
            G_d_63 = (I_d_4 * 0);
         }
         if (G_i_63 == I_i_10) {
            G_d_63 = (I_d_4 * 0);
         }
         if (G_i_63 == I_i_11) {
            G_d_63 = (I_d_4 * 0);
         }
         if (G_i_63 == I_i_12) {
            G_d_63 = (I_d_4 * 0);
         }
         if (G_i_63 == I_i_13) {
            G_d_63 = (I_d_4 * 0);
         }
         if (G_i_63 == I_i_14) {
            G_d_63 = (I_d_4 * 0);
         }
         L_d_36 = NormalizeDouble(G_d_63, _Digits);
         if ((L_d_11 > 0)) {
            if (OrderType() == OP_BUY) {
               L_d_37 = (OrderOpenPrice() + L_d_36);
               if ((OrderOpenPrice() <= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_37)) {
                     S_s_856 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_856 != DoubleToString(L_d_37, _Digits)) {
                        S_s_858 = "";
                        S_s_859 = "";
                        S_s_860 = "";
                        S_s_861 = "";
                        S_s_862 = "";
                        S_s_863 = "";
                        S_s_864 = (string)L_d_37;
                        S_s_865 = " to :";
                        S_s_866 = (string)Fa_i_00;
                        S_s_867 = ", Magic Number: ";
                        S_s_868 = (string)OrderTicket();
                        S_s_869 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_870 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_870, " ", S_s_869, S_s_868, S_s_867, S_s_866, S_s_865, S_s_864, S_s_863, S_s_862, S_s_861, S_s_860, S_s_859, S_s_858);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_64 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_64 > 0) {
                                 FileSeek(G_i_64, 0, 2);
                                 S_s_871 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_64, S_s_871, " VERBOSE: ", S_s_869, S_s_868, S_s_867, S_s_866, S_s_865, S_s_864, S_s_863, S_s_862, S_s_861, S_s_860, S_s_859, S_s_858);
                                 FileClose(G_i_64);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_291 = GetLastError();
                           L_i_16 = G_i_291;
                           S_s_872 = "";
                           S_s_873 = "";
                           S_s_874 = (string)OrderStopLoss();
                           S_s_875 = " Current SL: ";
                           S_s_876 = (string)Bid;
                           S_s_877 = ", Bid: ";
                           S_s_878 = (string)Ask;
                           S_s_879 = ", Ask: ";
                           S_s_880 = ErrorDescription(G_i_291);
                           S_s_881 = " - ";
                           S_s_882 = (string)G_i_291;
                           S_s_883 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_884 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_884, " ", S_s_883, S_s_882, S_s_881, S_s_880, S_s_879, S_s_878, S_s_877, S_s_876, S_s_875, S_s_874, S_s_873, S_s_872);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_191 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_191 > 0) {
                                    FileSeek(G_i_191, 0, 2);
                                    S_s_885 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_191, S_s_885, " VERBOSE: ", S_s_883, S_s_882, S_s_881, S_s_880, S_s_879, S_s_878, S_s_877, S_s_876, S_s_875, S_s_874, S_s_873, S_s_872);
                                    FileClose(G_i_191);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_37 = (OrderOpenPrice() - L_d_36);
               if ((OrderOpenPrice() >= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_37)) {
                     S_s_886 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_886 != DoubleToString(L_d_37, _Digits)) {
                        S_s_888 = "";
                        S_s_889 = "";
                        S_s_890 = "";
                        S_s_891 = "";
                        S_s_892 = "";
                        S_s_893 = "";
                        S_s_894 = (string)L_d_37;
                        S_s_895 = " to :";
                        S_s_896 = (string)Fa_i_00;
                        S_s_897 = ", Magic Number: ";
                        S_s_898 = (string)OrderTicket();
                        S_s_899 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_900 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_900, " ", S_s_899, S_s_898, S_s_897, S_s_896, S_s_895, S_s_894, S_s_893, S_s_892, S_s_891, S_s_890, S_s_889, S_s_888);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_192 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_192 > 0) {
                                 FileSeek(G_i_192, 0, 2);
                                 S_s_901 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_192, S_s_901, " VERBOSE: ", S_s_899, S_s_898, S_s_897, S_s_896, S_s_895, S_s_894, S_s_893, S_s_892, S_s_891, S_s_890, S_s_889, S_s_888);
                                 FileClose(G_i_192);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_292 = GetLastError();
                           L_i_16 = G_i_292;
                           S_s_902 = "";
                           S_s_903 = "";
                           S_s_904 = (string)OrderStopLoss();
                           S_s_905 = " Current SL: ";
                           S_s_906 = (string)Bid;
                           S_s_907 = ", Bid: ";
                           S_s_908 = (string)Ask;
                           S_s_909 = ", Ask: ";
                           S_s_910 = ErrorDescription(G_i_292);
                           S_s_911 = " - ";
                           S_s_912 = (string)G_i_292;
                           S_s_913 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_914 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_914, " ", S_s_913, S_s_912, S_s_911, S_s_910, S_s_909, S_s_908, S_s_907, S_s_906, S_s_905, S_s_904, S_s_903, S_s_902);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_65 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_65 > 0) {
                                    FileSeek(G_i_65, 0, 2);
                                    S_s_915 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_65, S_s_915, " VERBOSE: ", S_s_913, S_s_912, S_s_911, S_s_910, S_s_909, S_s_908, S_s_907, S_s_906, S_s_905, S_s_904, S_s_903, S_s_902);
                                    FileClose(G_i_65);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         G_i_193 = I_i_6;
         G_d_67 = 0;
         if (I_i_6 == I_i_1) {
            G_d_67 = 0;
         }
         if (G_i_193 == I_i_2) {
            G_d_67 = 0;
         }
         if (G_i_193 == I_i_3) {
            G_d_67 = 0;
         }
         if (G_i_193 == I_i_4) {
            G_d_67 = 0;
         }
         if (G_i_193 == I_i_5) {
            G_d_67 = 0;
         }
         if (G_i_193 == I_i_6) {
            G_d_67 = 0;
         }
         if (G_i_193 == I_i_7) {
            G_d_67 = 0;
         }
         if (G_i_193 == I_i_8) {
            G_d_67 = 0;
         }
         if (G_i_193 == I_i_9) {
            G_d_67 = 0;
         }
         if (G_i_193 == I_i_10) {
            G_d_67 = 0;
         }
         if (G_i_193 == I_i_11) {
            G_d_67 = 0;
         }
         if (G_i_193 == I_i_12) {
            G_d_67 = 0;
         }
         if (G_i_193 == I_i_13) {
            G_d_67 = 0;
         }
         if (G_i_193 == I_i_14) {
            G_d_67 = 0;
         }
         returned_double = NormalizeDouble(G_d_67, _Digits);
         L_d_11 = returned_double;
         if ((L_d_11 > 0)) {
            G_i_66 = (int)(returned_double + 10);
            G_l_16 = OrderOpenTime();
            G_i_67 = 0;
            G_i_194 = 0;
            G_i_292 = G_i_66 + 10;
            if (G_i_292 > 0) {
               do {
                  if (G_l_16 < Time[G_i_194]) {
                     G_i_67 = G_i_67 + 1;
                  }
                  G_i_194 = G_i_194 + 1;
                  G_i_293 = G_i_66 + 10;
               } while (G_i_194 < G_i_293);
            }
            if ((G_i_67 >= L_d_11)) {
               S_s_916 = "";
               S_s_917 = "";
               S_s_918 = "";
               S_s_919 = "";
               S_s_920 = "";
               S_s_921 = "";
               S_s_922 = (string)Fa_i_00;
               S_s_923 = ", Magic Number: ";
               S_s_924 = (string)OrderTicket();
               S_s_925 = "bars - closing order with ticket: ";
               S_s_926 = (string)L_d_11;
               S_s_927 = "Exit After ";
               if (I_i_139 == 1) {
                  S_s_928 = TimeToString(TimeCurrent(), 3);
                  Print("---VERBOSE--- ", S_s_928, " ", S_s_927, S_s_926, S_s_925, S_s_924, S_s_923, S_s_922, S_s_921, S_s_920, S_s_919, S_s_918, S_s_917, S_s_916);
               } else {
                  if (I_i_139 == 2) {
                     G_i_68 = FileOpen("EAW_VerboseLog.txt", 3);
                     if (G_i_68 > 0) {
                        FileSeek(G_i_68, 0, 2);
                        S_s_929 = TimeToString(TimeCurrent(), 3);
                        FileWrite(G_i_68, S_s_929, " VERBOSE: ", S_s_927, S_s_926, S_s_925, S_s_924, S_s_923, S_s_922, S_s_921, S_s_920, S_s_919, S_s_918, S_s_917, S_s_916);
                        FileClose(G_i_68);
                     }
                  }
               }
               sqClosePositionAtMarket(-1);
            }
         }
      }
   }
   if (Fa_i_00 == I_i_7) {
      if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
         L_d_11 = getOrderTrailingStop(I_i_7, OrderType(), OrderOpenPrice());
         if ((L_d_11 > 0)) {
            G_i_195 = I_i_7;
            G_d_71 = 0;
            if (I_i_7 == I_i_1) {
               G_d_71 = (I_d_4 * 0);
            }
            if (G_i_195 == I_i_2) {
               G_d_71 = (I_d_4 * 0);
            }
            if (G_i_195 == I_i_3) {
               G_d_71 = (I_d_4 * 0);
            }
            if (G_i_195 == I_i_4) {
               G_d_71 = (I_d_4 * 0);
            }
            if (G_i_195 == I_i_5) {
               G_d_71 = (I_d_4 * 0);
            }
            if (G_i_195 == I_i_6) {
               G_d_71 = (I_d_4 * 0);
            }
            if (G_i_195 == I_i_7) {
               G_d_71 = (I_d_4 * 0);
            }
            if (G_i_195 == I_i_8) {
               G_d_71 = (I_d_4 * 0);
            }
            if (G_i_195 == I_i_9) {
               G_d_71 = (I_d_4 * 0);
            }
            if (G_i_195 == I_i_10) {
               G_d_71 = (I_d_4 * 0);
            }
            if (G_i_195 == I_i_11) {
               G_d_71 = (I_d_4 * 0);
            }
            if (G_i_195 == I_i_12) {
               G_d_71 = (I_d_4 * 0);
            }
            if (G_i_195 == I_i_13) {
               G_d_71 = (I_d_4 * 0);
            }
            if (G_i_195 == I_i_14) {
               G_d_71 = (I_d_4 * 0);
            }
            L_d_36 = NormalizeDouble(G_d_71, _Digits);
            if (OrderType() == OP_BUY) {
               L_d_38 = (Bid - OrderOpenPrice());
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_11)) {
                     S_s_930 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_930 != DoubleToString(L_d_37, _Digits)) {
                        S_s_932 = "";
                        S_s_933 = "";
                        S_s_934 = "";
                        S_s_935 = "";
                        S_s_936 = "";
                        S_s_937 = "";
                        S_s_938 = (string)L_d_37;
                        S_s_939 = " to :";
                        S_s_940 = (string)Fa_i_00;
                        S_s_941 = ", Magic Number: ";
                        S_s_942 = (string)OrderTicket();
                        S_s_943 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_944 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_944, " ", S_s_943, S_s_942, S_s_941, S_s_940, S_s_939, S_s_938, S_s_937, S_s_936, S_s_935, S_s_934, S_s_933, S_s_932);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_69 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_69 > 0) {
                                 FileSeek(G_i_69, 0, 2);
                                 S_s_945 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_69, S_s_945, " VERBOSE: ", S_s_943, S_s_942, S_s_941, S_s_940, S_s_939, S_s_938, S_s_937, S_s_936, S_s_935, S_s_934, S_s_933, S_s_932);
                                 FileClose(G_i_69);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_295 = GetLastError();
                           L_i_16 = G_i_295;
                           S_s_946 = "";
                           S_s_947 = "";
                           S_s_948 = "";
                           S_s_949 = "";
                           S_s_950 = "";
                           S_s_951 = "";
                           S_s_952 = "";
                           S_s_953 = "";
                           S_s_954 = ErrorDescription(G_i_295);
                           S_s_955 = " - ";
                           S_s_956 = (string)G_i_295;
                           S_s_957 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_958 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_958, " ", S_s_957, S_s_956, S_s_955, S_s_954, S_s_953, S_s_952, S_s_951, S_s_950, S_s_949, S_s_948, S_s_947, S_s_946);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_196 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_196 > 0) {
                                    FileSeek(G_i_196, 0, 2);
                                    S_s_959 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_196, S_s_959, " VERBOSE: ", S_s_957, S_s_956, S_s_955, S_s_954, S_s_953, S_s_952, S_s_951, S_s_950, S_s_949, S_s_948, S_s_947, S_s_946);
                                    FileClose(G_i_196);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_38 = (OrderOpenPrice() - Ask);
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_11)) {
                     S_s_960 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_960 != DoubleToString(L_d_37, _Digits)) {
                        S_s_962 = "";
                        S_s_963 = "";
                        S_s_964 = "";
                        S_s_965 = "";
                        S_s_966 = "";
                        S_s_967 = "";
                        S_s_968 = (string)L_d_37;
                        S_s_969 = " to :";
                        S_s_970 = (string)Fa_i_00;
                        S_s_971 = ", Magic Number: ";
                        S_s_972 = (string)OrderTicket();
                        S_s_973 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_974 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_974, " ", S_s_973, S_s_972, S_s_971, S_s_970, S_s_969, S_s_968, S_s_967, S_s_966, S_s_965, S_s_964, S_s_963, S_s_962);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_197 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_197 > 0) {
                                 FileSeek(G_i_197, 0, 2);
                                 S_s_975 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_197, S_s_975, " VERBOSE: ", S_s_973, S_s_972, S_s_971, S_s_970, S_s_969, S_s_968, S_s_967, S_s_966, S_s_965, S_s_964, S_s_963, S_s_962);
                                 FileClose(G_i_197);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_349 = GetLastError();
                           L_i_16 = G_i_349;
                           S_s_976 = "";
                           S_s_977 = "";
                           S_s_978 = (string)OrderStopLoss();
                           S_s_979 = " Current SL: ";
                           S_s_980 = (string)Bid;
                           S_s_981 = ", Bid: ";
                           S_s_982 = (string)Ask;
                           S_s_983 = ", Ask: ";
                           S_s_984 = ErrorDescription(G_i_349);
                           S_s_985 = " - ";
                           S_s_986 = (string)G_i_349;
                           S_s_987 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_988 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_988, " ", S_s_987, S_s_986, S_s_985, S_s_984, S_s_983, S_s_982, S_s_981, S_s_980, S_s_979, S_s_978, S_s_977, S_s_976);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_70 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_70 > 0) {
                                    FileSeek(G_i_70, 0, 2);
                                    S_s_989 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_70, S_s_989, " VERBOSE: ", S_s_987, S_s_986, S_s_985, S_s_984, S_s_983, S_s_982, S_s_981, S_s_980, S_s_979, S_s_978, S_s_977, S_s_976);
                                    FileClose(G_i_70);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         L_d_11 = getOrderBreakEven(I_i_7, OrderType(), OrderOpenPrice());
         G_i_198 = I_i_7;
         G_d_149 = 0;
         if (I_i_7 == I_i_1) {
            G_d_149 = (I_d_4 * 0);
         }
         if (G_i_198 == I_i_2) {
            G_d_149 = (I_d_4 * 0);
         }
         if (G_i_198 == I_i_3) {
            G_d_149 = (I_d_4 * 0);
         }
         if (G_i_198 == I_i_4) {
            G_d_149 = (I_d_4 * 0);
         }
         if (G_i_198 == I_i_5) {
            G_d_149 = (I_d_4 * 0);
         }
         if (G_i_198 == I_i_6) {
            G_d_149 = (I_d_4 * 0);
         }
         if (G_i_198 == I_i_7) {
            G_d_149 = (I_d_4 * 0);
         }
         if (G_i_198 == I_i_8) {
            G_d_149 = (I_d_4 * 0);
         }
         if (G_i_198 == I_i_9) {
            G_d_149 = (I_d_4 * 0);
         }
         if (G_i_198 == I_i_10) {
            G_d_149 = (I_d_4 * 0);
         }
         if (G_i_198 == I_i_11) {
            G_d_149 = (I_d_4 * 0);
         }
         if (G_i_198 == I_i_12) {
            G_d_149 = (I_d_4 * 0);
         }
         if (G_i_198 == I_i_13) {
            G_d_149 = (I_d_4 * 0);
         }
         if (G_i_198 == I_i_14) {
            G_d_149 = (I_d_4 * 0);
         }
         L_d_36 = NormalizeDouble(G_d_149, _Digits);
         if ((L_d_11 > 0)) {
            if (OrderType() == OP_BUY) {
               L_d_37 = (OrderOpenPrice() + L_d_36);
               if ((OrderOpenPrice() <= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_37)) {
                     S_s_990 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_990 != DoubleToString(L_d_37, _Digits)) {
                        S_s_992 = "";
                        S_s_993 = "";
                        S_s_994 = "";
                        S_s_995 = "";
                        S_s_996 = "";
                        S_s_997 = "";
                        S_s_998 = (string)(string)L_d_37;
                        S_s_999 = " to :";
                        S_s_1000 = (string)(string)Fa_i_00;
                        S_s_1001 = ", Magic Number: ";
                        S_s_1002 = (string)OrderTicket();
                        S_s_1003 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1004 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1004, " ", S_s_1003, S_s_1002, S_s_1001, S_s_1000, S_s_999, S_s_998, S_s_997, S_s_996, S_s_995, S_s_994, S_s_993, S_s_992);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_199 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_199 > 0) {
                                 FileSeek(G_i_199, 0, 2);
                                 S_s_1005 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_199, S_s_1005, " VERBOSE: ", S_s_1003, S_s_1002, S_s_1001, S_s_1000, S_s_999, S_s_998, S_s_997, S_s_996, S_s_995, S_s_994, S_s_993, S_s_992);
                                 FileClose(G_i_199);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_297 = GetLastError();
                           L_i_16 = G_i_297;
                           S_s_1006 = "";
                           S_s_1007 = "";
                           S_s_1008 = (string)OrderStopLoss();
                           S_s_1009 = " Current SL: ";
                           S_s_1010 = (string)Bid;
                           S_s_1011 = ", Bid: ";
                           S_s_1012 = (string)Ask;
                           S_s_1013 = ", Ask: ";
                           S_s_1014 = ErrorDescription(G_i_297);
                           S_s_1015 = " - ";
                           S_s_1016 = (string)G_i_297;
                           S_s_1017 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1018 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1018, " ", S_s_1017, S_s_1016, S_s_1015, S_s_1014, S_s_1013, S_s_1012, S_s_1011, S_s_1010, S_s_1009, S_s_1008, S_s_1007, S_s_1006);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_72 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_72 > 0) {
                                    FileSeek(G_i_72, 0, 2);
                                    S_s_1019 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_72, S_s_1019, " VERBOSE: ", S_s_1017, S_s_1016, S_s_1015, S_s_1014, S_s_1013, S_s_1012, S_s_1011, S_s_1010, S_s_1009, S_s_1008, S_s_1007, S_s_1006);
                                    FileClose(G_i_72);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_37 = (OrderOpenPrice() - L_d_36);
               if ((OrderOpenPrice() >= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_37)) {
                     S_s_1020 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1020 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1022 = "";
                        S_s_1023 = "";
                        S_s_1024 = "";
                        S_s_1025 = "";
                        S_s_1026 = "";
                        S_s_1027 = "";
                        S_s_1028 = (string)L_d_37;
                        S_s_1029 = " to :";
                        S_s_1030 = (string)Fa_i_00;
                        S_s_1031 = ", Magic Number: ";
                        S_s_1032 = (string)OrderTicket();
                        S_s_1033 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1034 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1034, " ", S_s_1033, S_s_1032, S_s_1031, S_s_1030, S_s_1029, S_s_1028, S_s_1027, S_s_1026, S_s_1025, S_s_1024, S_s_1023, S_s_1022);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_200 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_200 > 0) {
                                 FileSeek(G_i_200, 0, 2);
                                 S_s_1035 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_200, S_s_1035, " VERBOSE: ", S_s_1033, S_s_1032, S_s_1031, S_s_1030, S_s_1029, S_s_1028, S_s_1027, S_s_1026, S_s_1025, S_s_1024, S_s_1023, S_s_1022);
                                 FileClose(G_i_200);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_298 = GetLastError();
                           L_i_16 = G_i_298;
                           S_s_1036 = "";
                           S_s_1037 = "";
                           S_s_1038 = (string)OrderStopLoss();
                           S_s_1039 = " Current SL: ";
                           S_s_1040 = (string)Bid;
                           S_s_1041 = ", Bid: ";
                           S_s_1042 = (string)Ask;
                           S_s_1043 = ", Ask: ";
                           S_s_1044 = ErrorDescription(G_i_298);
                           S_s_1045 = " - ";
                           S_s_1046 = (string)G_i_298;
                           S_s_1047 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1048 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1048, " ", S_s_1047, S_s_1046, S_s_1045, S_s_1044, S_s_1043, S_s_1042, S_s_1041, S_s_1040, S_s_1039, S_s_1038, S_s_1037, S_s_1036);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_201 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_201 > 0) {
                                    FileSeek(G_i_201, 0, 2);
                                    S_s_1049 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_201, S_s_1049, " VERBOSE: ", S_s_1047, S_s_1046, S_s_1045, S_s_1044, S_s_1043, S_s_1042, S_s_1041, S_s_1040, S_s_1039, S_s_1038, S_s_1037, S_s_1036);
                                    FileClose(G_i_201);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         G_i_73 = I_i_7;
         G_d_78 = 0;
         if (I_i_7 == I_i_1) {
            G_d_78 = 0;
         }
         if (G_i_73 == I_i_2) {
            G_d_78 = 0;
         }
         if (G_i_73 == I_i_3) {
            G_d_78 = 0;
         }
         if (G_i_73 == I_i_4) {
            G_d_78 = 0;
         }
         if (G_i_73 == I_i_5) {
            G_d_78 = 0;
         }
         if (G_i_73 == I_i_6) {
            G_d_78 = 0;
         }
         if (G_i_73 == I_i_7) {
            G_d_78 = 0;
         }
         if (G_i_73 == I_i_8) {
            G_d_78 = 0;
         }
         if (G_i_73 == I_i_9) {
            G_d_78 = 0;
         }
         if (G_i_73 == I_i_10) {
            G_d_78 = 0;
         }
         if (G_i_73 == I_i_11) {
            G_d_78 = 0;
         }
         if (G_i_73 == I_i_12) {
            G_d_78 = 0;
         }
         if (G_i_73 == I_i_13) {
            G_d_78 = 0;
         }
         if (G_i_73 == I_i_14) {
            G_d_78 = 0;
         }
         returned_double = NormalizeDouble(G_d_78, _Digits);
         L_d_11 = returned_double;
         if ((L_d_11 > 0)) {
            G_i_202 = (int)(returned_double + 10);
            G_l_17 = OrderOpenTime();
            G_i_203 = 0;
            G_i_75 = 0;
            G_i_298 = G_i_202 + 10;
            if (G_i_298 > 0) {
               do {
                  if (G_l_17 < Time[G_i_75]) {
                     G_i_203 = G_i_203 + 1;
                  }
                  G_i_75 = G_i_75 + 1;
                  G_i_299 = G_i_202 + 10;
               } while (G_i_75 < G_i_299);
            }
            if ((G_i_203 >= L_d_11)) {
               S_s_1050 = "";
               S_s_1051 = "";
               S_s_1052 = "";
               S_s_1053 = "";
               S_s_1054 = "";
               S_s_1055 = "";
               S_s_1056 = (string)Fa_i_00;
               S_s_1057 = ", Magic Number: ";
               S_s_1058 = (string)OrderTicket();
               S_s_1059 = "bars - closing order with ticket: ";
               S_s_1060 = (string)L_d_11;
               S_s_1061 = "Exit After ";
               if (I_i_139 == 1) {
                  S_s_1062 = TimeToString(TimeCurrent(), 3);
                  Print("---VERBOSE--- ", S_s_1062, " ", S_s_1061, S_s_1060, S_s_1059, S_s_1058, S_s_1057, S_s_1056, S_s_1055, S_s_1054, S_s_1053, S_s_1052, S_s_1051, S_s_1050);
               } else {
                  if (I_i_139 == 2) {
                     G_i_204 = FileOpen("EAW_VerboseLog.txt", 3);
                     if (G_i_204 > 0) {
                        FileSeek(G_i_204, 0, 2);
                        S_s_1063 = TimeToString(TimeCurrent(), 3);
                        FileWrite(G_i_204, S_s_1063, " VERBOSE: ", S_s_1061, S_s_1060, S_s_1059, S_s_1058, S_s_1057, S_s_1056, S_s_1055, S_s_1054, S_s_1053, S_s_1052, S_s_1051, S_s_1050);
                        FileClose(G_i_204);
                     }
                  }
               }
               sqClosePositionAtMarket(-1);
            }
         }
      }
   }
   if (Fa_i_00 == I_i_8) {
      if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
         L_d_11 = getOrderTrailingStop(I_i_8, OrderType(), OrderOpenPrice());
         if ((L_d_11 > 0)) {
            G_i_76 = I_i_8;
            G_d_82 = 0;
            if (I_i_8 == I_i_1) {
               G_d_82 = (I_d_4 * 0);
            }
            if (G_i_76 == I_i_2) {
               G_d_82 = (I_d_4 * 0);
            }
            if (G_i_76 == I_i_3) {
               G_d_82 = (I_d_4 * 0);
            }
            if (G_i_76 == I_i_4) {
               G_d_82 = (I_d_4 * 0);
            }
            if (G_i_76 == I_i_5) {
               G_d_82 = (I_d_4 * 0);
            }
            if (G_i_76 == I_i_6) {
               G_d_82 = (I_d_4 * 0);
            }
            if (G_i_76 == I_i_7) {
               G_d_82 = (I_d_4 * 0);
            }
            if (G_i_76 == I_i_8) {
               G_d_82 = (I_d_4 * 0);
            }
            if (G_i_76 == I_i_9) {
               G_d_82 = (I_d_4 * 0);
            }
            if (G_i_76 == I_i_10) {
               G_d_82 = (I_d_4 * 0);
            }
            if (G_i_76 == I_i_11) {
               G_d_82 = (I_d_4 * 0);
            }
            if (G_i_76 == I_i_12) {
               G_d_82 = (I_d_4 * 0);
            }
            if (G_i_76 == I_i_13) {
               G_d_82 = (I_d_4 * 0);
            }
            if (G_i_76 == I_i_14) {
               G_d_82 = (I_d_4 * 0);
            }
            L_d_36 = NormalizeDouble(G_d_82, _Digits);
            if (OrderType() == OP_BUY) {
               L_d_38 = (Bid - OrderOpenPrice());
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_11)) {
                     S_s_1064 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1064 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1066 = "";
                        S_s_1067 = "";
                        S_s_1068 = "";
                        S_s_1069 = "";
                        S_s_1070 = "";
                        S_s_1071 = "";
                        S_s_1072 = (string)L_d_37;
                        S_s_1073 = " to :";
                        S_s_1074 = (string)Fa_i_00;
                        S_s_1075 = ", Magic Number: ";
                        S_s_1076 = (string)OrderTicket();
                        S_s_1077 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1078 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1078, " ", S_s_1077, S_s_1076, S_s_1075, S_s_1074, S_s_1073, S_s_1072, S_s_1071, S_s_1070, S_s_1069, S_s_1068, S_s_1067, S_s_1066);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_205 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_205 > 0) {
                                 FileSeek(G_i_205, 0, 2);
                                 S_s_1079 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_205, S_s_1079, " VERBOSE: ", S_s_1077, S_s_1076, S_s_1075, S_s_1074, S_s_1073, S_s_1072, S_s_1071, S_s_1070, S_s_1069, S_s_1068, S_s_1067, S_s_1066);
                                 FileClose(G_i_205);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_301 = GetLastError();
                           L_i_16 = G_i_301;
                           S_s_1080 = "";
                           S_s_1081 = "";
                           S_s_1082 = "";
                           S_s_1083 = "";
                           S_s_1084 = "";
                           S_s_1085 = "";
                           S_s_1086 = "";
                           S_s_1087 = "";
                           S_s_1088 = ErrorDescription(G_i_301);
                           S_s_1089 = " - ";
                           S_s_1090 = (string)G_i_301;
                           S_s_1091 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1092 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1092, " ", S_s_1091, S_s_1090, S_s_1089, S_s_1088, S_s_1087, S_s_1086, S_s_1085, S_s_1084, S_s_1083, S_s_1082, S_s_1081, S_s_1080);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_77 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_77 > 0) {
                                    FileSeek(G_i_77, 0, 2);
                                    S_s_1093 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_77, S_s_1093, " VERBOSE: ", S_s_1091, S_s_1090, S_s_1089, S_s_1088, S_s_1087, S_s_1086, S_s_1085, S_s_1084, S_s_1083, S_s_1082, S_s_1081, S_s_1080);
                                    FileClose(G_i_77);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_38 = (OrderOpenPrice() - Ask);
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_11)) {
                     S_s_1094 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1094 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1096 = "";
                        S_s_1097 = "";
                        S_s_1098 = "";
                        S_s_1099 = "";
                        S_s_1100 = "";
                        S_s_1101 = "";
                        S_s_1102 = (string)L_d_37;
                        S_s_1103 = " to :";
                        S_s_1104 = (string)Fa_i_00;
                        S_s_1105 = ", Magic Number: ";
                        S_s_1106 = (string)OrderTicket();
                        S_s_1107 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1108 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1108, " ", S_s_1107, S_s_1106, S_s_1105, S_s_1104, S_s_1103, S_s_1102, S_s_1101, S_s_1100, S_s_1099, S_s_1098, S_s_1097, S_s_1096);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_206 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_206 > 0) {
                                 FileSeek(G_i_206, 0, 2);
                                 S_s_1109 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_206, S_s_1109, " VERBOSE: ", S_s_1107, S_s_1106, S_s_1105, S_s_1104, S_s_1103, S_s_1102, S_s_1101, S_s_1100, S_s_1099, S_s_1098, S_s_1097, S_s_1096);
                                 FileClose(G_i_206);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_348 = GetLastError();
                           L_i_16 = G_i_348;
                           S_s_1110 = "";
                           S_s_1111 = "";
                           S_s_1112 = (string)OrderStopLoss();
                           S_s_1113 = " Current SL: ";
                           S_s_1114 = (string)Bid;
                           S_s_1115 = ", Bid: ";
                           S_s_1116 = (string)Ask;
                           S_s_1117 = ", Ask: ";
                           S_s_1118 = ErrorDescription(G_i_348);
                           S_s_1119 = " - ";
                           S_s_1120 = (string)G_i_348;
                           S_s_1121 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1122 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1122, " ", S_s_1121, S_s_1120, S_s_1119, S_s_1118, S_s_1117, S_s_1116, S_s_1115, S_s_1114, S_s_1113, S_s_1112, S_s_1111, S_s_1110);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_207 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_207 > 0) {
                                    FileSeek(G_i_207, 0, 2);
                                    S_s_1123 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_207, S_s_1123, " VERBOSE: ", S_s_1121, S_s_1120, S_s_1119, S_s_1118, S_s_1117, S_s_1116, S_s_1115, S_s_1114, S_s_1113, S_s_1112, S_s_1111, S_s_1110);
                                    FileClose(G_i_207);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         L_d_11 = getOrderBreakEven(I_i_8, OrderType(), OrderOpenPrice());
         G_i_78 = I_i_8;
         G_d_86 = 0;
         if (I_i_8 == I_i_1) {
            G_d_86 = (I_d_4 * 0);
         }
         if (G_i_78 == I_i_2) {
            G_d_86 = (I_d_4 * 0);
         }
         if (G_i_78 == I_i_3) {
            G_d_86 = (I_d_4 * 0);
         }
         if (G_i_78 == I_i_4) {
            G_d_86 = (I_d_4 * 0);
         }
         if (G_i_78 == I_i_5) {
            G_d_86 = (I_d_4 * 0);
         }
         if (G_i_78 == I_i_6) {
            G_d_86 = (I_d_4 * 0);
         }
         if (G_i_78 == I_i_7) {
            G_d_86 = (I_d_4 * 0);
         }
         if (G_i_78 == I_i_8) {
            G_d_86 = (I_d_4 * 0);
         }
         if (G_i_78 == I_i_9) {
            G_d_86 = (I_d_4 * 0);
         }
         if (G_i_78 == I_i_10) {
            G_d_86 = (I_d_4 * 0);
         }
         if (G_i_78 == I_i_11) {
            G_d_86 = (I_d_4 * 0);
         }
         if (G_i_78 == I_i_12) {
            G_d_86 = (I_d_4 * 0);
         }
         if (G_i_78 == I_i_13) {
            G_d_86 = (I_d_4 * 0);
         }
         if (G_i_78 == I_i_14) {
            G_d_86 = (I_d_4 * 0);
         }
         L_d_36 = NormalizeDouble(G_d_86, _Digits);
         if ((L_d_11 > 0)) {
            if (OrderType() == OP_BUY) {
               L_d_37 = (OrderOpenPrice() + L_d_36);
               if ((OrderOpenPrice() <= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_37)) {
                     S_s_1124 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1124 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1126 = "";
                        S_s_1127 = "";
                        S_s_1128 = "";
                        S_s_1129 = "";
                        S_s_1130 = "";
                        S_s_1131 = "";
                        S_s_1132 = (string)L_d_37;
                        S_s_1133 = " to :";
                        S_s_1134 = (string)Fa_i_00;
                        S_s_1135 = ", Magic Number: ";
                        S_s_1136 = (string)OrderTicket();
                        S_s_1137 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1138 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1138, " ", S_s_1137, S_s_1136, S_s_1135, S_s_1134, S_s_1133, S_s_1132, S_s_1131, S_s_1130, S_s_1129, S_s_1128, S_s_1127, S_s_1126);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_79 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_79 > 0) {
                                 FileSeek(G_i_79, 0, 2);
                                 S_s_1139 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_79, S_s_1139, " VERBOSE: ", S_s_1137, S_s_1136, S_s_1135, S_s_1134, S_s_1133, S_s_1132, S_s_1131, S_s_1130, S_s_1129, S_s_1128, S_s_1127, S_s_1126);
                                 FileClose(G_i_79);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_303 = GetLastError();
                           L_i_16 = G_i_303;
                           S_s_1140 = "";
                           S_s_1141 = "";
                           S_s_1142 = (string)OrderStopLoss();
                           S_s_1143 = " Current SL: ";
                           S_s_1144 = (string)Bid;
                           S_s_1145 = ", Bid: ";
                           S_s_1146 = (string)Ask;
                           S_s_1147 = ", Ask: ";
                           S_s_1148 = ErrorDescription(G_i_303);
                           S_s_1149 = " - ";
                           S_s_1150 = (string)G_i_303;
                           S_s_1151 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1152 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1152, " ", S_s_1151, S_s_1150, S_s_1149, S_s_1148, S_s_1147, S_s_1146, S_s_1145, S_s_1144, S_s_1143, S_s_1142, S_s_1141, S_s_1140);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_208 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_208 > 0) {
                                    FileSeek(G_i_208, 0, 2);
                                    S_s_1153 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_208, S_s_1153, " VERBOSE: ", S_s_1151, S_s_1150, S_s_1149, S_s_1148, S_s_1147, S_s_1146, S_s_1145, S_s_1144, S_s_1143, S_s_1142, S_s_1141, S_s_1140);
                                    FileClose(G_i_208);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_37 = (OrderOpenPrice() - L_d_36);
               if ((OrderOpenPrice() >= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_37)) {
                     S_s_1154 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1154 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1156 = "";
                        S_s_1157 = "";
                        S_s_1158 = "";
                        S_s_1159 = "";
                        S_s_1160 = "";
                        S_s_1161 = "";
                        S_s_1162 = (string)L_d_37;
                        S_s_1163 = " to :";
                        S_s_1164 = (string)Fa_i_00;
                        S_s_1165 = ", Magic Number: ";
                        S_s_1166 = (string)OrderTicket();
                        S_s_1167 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1168 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1168, " ", S_s_1167, S_s_1166, S_s_1165, S_s_1164, S_s_1163, S_s_1162, S_s_1161, S_s_1160, S_s_1159, S_s_1158, S_s_1157, S_s_1156);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_80 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_80 > 0) {
                                 FileSeek(G_i_80, 0, 2);
                                 S_s_1169 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_80, S_s_1169, " VERBOSE: ", S_s_1167, S_s_1166, S_s_1165, S_s_1164, S_s_1163, S_s_1162, S_s_1161, S_s_1160, S_s_1159, S_s_1158, S_s_1157, S_s_1156);
                                 FileClose(G_i_80);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_304 = GetLastError();
                           L_i_16 = G_i_304;
                           S_s_1170 = "";
                           S_s_1171 = "";
                           S_s_1172 = (string)OrderStopLoss();
                           S_s_1173 = " Current SL: ";
                           S_s_1174 = (string)Bid;
                           S_s_1175 = ", Bid: ";
                           S_s_1176 = (string)Ask;
                           S_s_1177 = ", Ask: ";
                           S_s_1178 = ErrorDescription(G_i_304);
                           S_s_1179 = " - ";
                           S_s_1180 = (string)G_i_304;
                           S_s_1181 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1182 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1182, " ", S_s_1181, S_s_1180, S_s_1179, S_s_1178, S_s_1177, S_s_1176, S_s_1175, S_s_1174, S_s_1173, S_s_1172, S_s_1171, S_s_1170);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_209 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_209 > 0) {
                                    FileSeek(G_i_209, 0, 2);
                                    S_s_1183 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_209, S_s_1183, " VERBOSE: ", S_s_1181, S_s_1180, S_s_1179, S_s_1178, S_s_1177, S_s_1176, S_s_1175, S_s_1174, S_s_1173, S_s_1172, S_s_1171, S_s_1170);
                                    FileClose(G_i_209);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         G_i_210 = I_i_8;
         G_d_150 = 0;
         if (I_i_8 == I_i_1) {
            G_d_150 = 0;
         }
         if (G_i_210 == I_i_2) {
            G_d_150 = 0;
         }
         if (G_i_210 == I_i_3) {
            G_d_150 = 0;
         }
         if (G_i_210 == I_i_4) {
            G_d_150 = 0;
         }
         if (G_i_210 == I_i_5) {
            G_d_150 = 0;
         }
         if (G_i_210 == I_i_6) {
            G_d_150 = 0;
         }
         if (G_i_210 == I_i_7) {
            G_d_150 = 0;
         }
         if (G_i_210 == I_i_8) {
            G_d_150 = 0;
         }
         if (G_i_210 == I_i_9) {
            G_d_150 = 0;
         }
         if (G_i_210 == I_i_10) {
            G_d_150 = 0;
         }
         if (G_i_210 == I_i_11) {
            G_d_150 = 0;
         }
         if (G_i_210 == I_i_12) {
            G_d_150 = 0;
         }
         if (G_i_210 == I_i_13) {
            G_d_150 = 0;
         }
         if (G_i_210 == I_i_14) {
            G_d_150 = 0;
         }
         returned_double = NormalizeDouble(G_d_150, _Digits);
         L_d_11 = returned_double;
         if ((L_d_11 > 0)) {
            G_i_211 = (int)(returned_double + 10);
            G_l_18 = OrderOpenTime();
            G_i_82 = 0;
            G_i_212 = 0;
            G_i_304 = G_i_211 + 10;
            if (G_i_304 > 0) {
               do {
                  if (G_l_18 < Time[G_i_212]) {
                     G_i_82 = G_i_82 + 1;
                  }
                  G_i_212 = G_i_212 + 1;
                  G_i_305 = G_i_211 + 10;
               } while (G_i_212 < G_i_305);
            }
            if ((G_i_82 >= L_d_11)) {
               S_s_1184 = "";
               S_s_1185 = "";
               S_s_1186 = "";
               S_s_1187 = "";
               S_s_1188 = "";
               S_s_1189 = "";
               S_s_1190 = (string)Fa_i_00;
               S_s_1191 = ", Magic Number: ";
               S_s_1192 = (string)OrderTicket();
               S_s_1193 = "bars - closing order with ticket: ";
               S_s_1194 = (string)L_d_11;
               S_s_1195 = "Exit After ";
               if (I_i_139 == 1) {
                  S_s_1196 = TimeToString(TimeCurrent(), 3);
                  Print("---VERBOSE--- ", S_s_1196, " ", S_s_1195, S_s_1194, S_s_1193, S_s_1192, S_s_1191, S_s_1190, S_s_1189, S_s_1188, S_s_1187, S_s_1186, S_s_1185, S_s_1184);
               } else {
                  if (I_i_139 == 2) {
                     G_i_213 = FileOpen("EAW_VerboseLog.txt", 3);
                     if (G_i_213 > 0) {
                        FileSeek(G_i_213, 0, 2);
                        S_s_1197 = TimeToString(TimeCurrent(), 3);
                        FileWrite(G_i_213, S_s_1197, " VERBOSE: ", S_s_1195, S_s_1194, S_s_1193, S_s_1192, S_s_1191, S_s_1190, S_s_1189, S_s_1188, S_s_1187, S_s_1186, S_s_1185, S_s_1184);
                        FileClose(G_i_213);
                     }
                  }
               }
               sqClosePositionAtMarket(-1);
            }
         }
      }
   }
   if (Fa_i_00 == I_i_9) {
      if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
         L_d_11 = getOrderTrailingStop(I_i_9, OrderType(), OrderOpenPrice());
         if ((L_d_11 > 0)) {
            G_i_83 = I_i_9;
            G_d_94 = 0;
            if (I_i_9 == I_i_1) {
               G_d_94 = (I_d_4 * 0);
            }
            if (G_i_83 == I_i_2) {
               G_d_94 = (I_d_4 * 0);
            }
            if (G_i_83 == I_i_3) {
               G_d_94 = (I_d_4 * 0);
            }
            if (G_i_83 == I_i_4) {
               G_d_94 = (I_d_4 * 0);
            }
            if (G_i_83 == I_i_5) {
               G_d_94 = (I_d_4 * 0);
            }
            if (G_i_83 == I_i_6) {
               G_d_94 = (I_d_4 * 0);
            }
            if (G_i_83 == I_i_7) {
               G_d_94 = (I_d_4 * 0);
            }
            if (G_i_83 == I_i_8) {
               G_d_94 = (I_d_4 * 0);
            }
            if (G_i_83 == I_i_9) {
               G_d_94 = (I_d_4 * 0);
            }
            if (G_i_83 == I_i_10) {
               G_d_94 = (I_d_4 * 0);
            }
            if (G_i_83 == I_i_11) {
               G_d_94 = (I_d_4 * 0);
            }
            if (G_i_83 == I_i_12) {
               G_d_94 = (I_d_4 * 0);
            }
            if (G_i_83 == I_i_13) {
               G_d_94 = (I_d_4 * 0);
            }
            if (G_i_83 == I_i_14) {
               G_d_94 = (I_d_4 * 0);
            }
            L_d_36 = NormalizeDouble(G_d_94, _Digits);
            if (OrderType() == OP_BUY) {
               L_d_38 = (Bid - OrderOpenPrice());
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_11)) {
                     S_s_1198 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1198 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1200 = "";
                        S_s_1201 = "";
                        S_s_1202 = "";
                        S_s_1203 = "";
                        S_s_1204 = "";
                        S_s_1205 = "";
                        S_s_1206 = (string)L_d_37;
                        S_s_1207 = " to :";
                        S_s_1208 = (string)Fa_i_00;
                        S_s_1209 = ", Magic Number: ";
                        S_s_1210 = (string)OrderTicket();
                        S_s_1211 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1212 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1212, " ", S_s_1211, S_s_1210, S_s_1209, S_s_1208, S_s_1207, S_s_1206, S_s_1205, S_s_1204, S_s_1203, S_s_1202, S_s_1201, S_s_1200);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_84 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_84 > 0) {
                                 FileSeek(G_i_84, 0, 2);
                                 S_s_1213 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_84, S_s_1213, " VERBOSE: ", S_s_1211, S_s_1210, S_s_1209, S_s_1208, S_s_1207, S_s_1206, S_s_1205, S_s_1204, S_s_1203, S_s_1202, S_s_1201, S_s_1200);
                                 FileClose(G_i_84);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_307 = GetLastError();
                           L_i_16 = G_i_307;
                           S_s_1214 = "";
                           S_s_1215 = "";
                           S_s_1216 = "";
                           S_s_1217 = "";
                           S_s_1218 = "";
                           S_s_1219 = "";
                           S_s_1220 = "";
                           S_s_1221 = "";
                           S_s_1222 = ErrorDescription(G_i_307);
                           S_s_1223 = " - ";
                           S_s_1224 = (string)G_i_307;
                           S_s_1225 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1226 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1226, " ", S_s_1225, S_s_1224, S_s_1223, S_s_1222, S_s_1221, S_s_1220, S_s_1219, S_s_1218, S_s_1217, S_s_1216, S_s_1215, S_s_1214);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_85 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_85 > 0) {
                                    FileSeek(G_i_85, 0, 2);
                                    S_s_1227 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_85, S_s_1227, " VERBOSE: ", S_s_1225, S_s_1224, S_s_1223, S_s_1222, S_s_1221, S_s_1220, S_s_1219, S_s_1218, S_s_1217, S_s_1216, S_s_1215, S_s_1214);
                                    FileClose(G_i_85);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_38 = (OrderOpenPrice() - Ask);
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_11)) {
                     S_s_1228 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1228 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1230 = "";
                        S_s_1231 = "";
                        S_s_1232 = "";
                        S_s_1233 = "";
                        S_s_1234 = "";
                        S_s_1235 = "";
                        S_s_1236 = (string)L_d_37;
                        S_s_1237 = " to :";
                        S_s_1238 = (string)Fa_i_00;
                        S_s_1239 = ", Magic Number: ";
                        S_s_1240 = (string)OrderTicket();
                        S_s_1241 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1242 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1242, " ", S_s_1241, S_s_1240, S_s_1239, S_s_1238, S_s_1237, S_s_1236, S_s_1235, S_s_1234, S_s_1233, S_s_1232, S_s_1231, S_s_1230);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_214 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_214 > 0) {
                                 FileSeek(G_i_214, 0, 2);
                                 S_s_1243 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_214, S_s_1243, " VERBOSE: ", S_s_1241, S_s_1240, S_s_1239, S_s_1238, S_s_1237, S_s_1236, S_s_1235, S_s_1234, S_s_1233, S_s_1232, S_s_1231, S_s_1230);
                                 FileClose(G_i_214);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_347 = GetLastError();
                           L_i_16 = G_i_347;
                           S_s_1244 = "";
                           S_s_1245 = "";
                           S_s_1246 = (string)OrderStopLoss();
                           S_s_1247 = " Current SL: ";
                           S_s_1248 = (string)Bid;
                           S_s_1249 = ", Bid: ";
                           S_s_1250 = (string)Ask;
                           S_s_1251 = ", Ask: ";
                           S_s_1252 = ErrorDescription(G_i_347);
                           S_s_1253 = " - ";
                           S_s_1254 = (string)G_i_347;
                           S_s_1255 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1256 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1256, " ", S_s_1255, S_s_1254, S_s_1253, S_s_1252, S_s_1251, S_s_1250, S_s_1249, S_s_1248, S_s_1247, S_s_1246, S_s_1245, S_s_1244);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_86 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_86 > 0) {
                                    FileSeek(G_i_86, 0, 2);
                                    S_s_1257 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_86, S_s_1257, " VERBOSE: ", S_s_1255, S_s_1254, S_s_1253, S_s_1252, S_s_1251, S_s_1250, S_s_1249, S_s_1248, S_s_1247, S_s_1246, S_s_1245, S_s_1244);
                                    FileClose(G_i_86);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         L_d_11 = getOrderBreakEven(I_i_9, OrderType(), OrderOpenPrice());
         G_i_215 = I_i_9;
         G_d_151 = 0;
         if (I_i_9 == I_i_1) {
            G_d_151 = (I_d_4 * 0);
         }
         if (G_i_215 == I_i_2) {
            G_d_151 = (I_d_4 * 0);
         }
         if (G_i_215 == I_i_3) {
            G_d_151 = (I_d_4 * 0);
         }
         if (G_i_215 == I_i_4) {
            G_d_151 = (I_d_4 * 0);
         }
         if (G_i_215 == I_i_5) {
            G_d_151 = (I_d_4 * 0);
         }
         if (G_i_215 == I_i_6) {
            G_d_151 = (I_d_4 * 0);
         }
         if (G_i_215 == I_i_7) {
            G_d_151 = (I_d_4 * 0);
         }
         if (G_i_215 == I_i_8) {
            G_d_151 = (I_d_4 * 0);
         }
         if (G_i_215 == I_i_9) {
            G_d_151 = (I_d_4 * 0);
         }
         if (G_i_215 == I_i_10) {
            G_d_151 = (I_d_4 * 0);
         }
         if (G_i_215 == I_i_11) {
            G_d_151 = (I_d_4 * 0);
         }
         if (G_i_215 == I_i_12) {
            G_d_151 = (I_d_4 * 0);
         }
         if (G_i_215 == I_i_13) {
            G_d_151 = (I_d_4 * 0);
         }
         if (G_i_215 == I_i_14) {
            G_d_151 = (I_d_4 * 0);
         }
         L_d_36 = NormalizeDouble(G_d_151, _Digits);
         if ((L_d_11 > 0)) {
            if (OrderType() == OP_BUY) {
               L_d_37 = (OrderOpenPrice() + L_d_36);
               if ((OrderOpenPrice() <= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_37)) {
                     S_s_1258 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1258 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1260 = "";
                        S_s_1261 = "";
                        S_s_1262 = "";
                        S_s_1263 = "";
                        S_s_1264 = "";
                        S_s_1265 = "";
                        S_s_1266 = (string)L_d_37;
                        S_s_1267 = " to :";
                        S_s_1268 = (string)Fa_i_00;
                        S_s_1269 = ", Magic Number: ";
                        S_s_1270 = (string)OrderTicket();
                        S_s_1271 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1272 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1272, " ", S_s_1271, S_s_1270, S_s_1269, S_s_1268, S_s_1267, S_s_1266, S_s_1265, S_s_1264, S_s_1263, S_s_1262, S_s_1261, S_s_1260);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_216 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_216 > 0) {
                                 FileSeek(G_i_216, 0, 2);
                                 S_s_1273 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_216, S_s_1273, " VERBOSE: ", S_s_1271, S_s_1270, S_s_1269, S_s_1268, S_s_1267, S_s_1266, S_s_1265, S_s_1264, S_s_1263, S_s_1262, S_s_1261, S_s_1260);
                                 FileClose(G_i_216);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_309 = GetLastError();
                           L_i_16 = G_i_309;
                           S_s_1274 = "";
                           S_s_1275 = "";
                           S_s_1276 = (string)OrderStopLoss();
                           S_s_1277 = " Current SL: ";
                           S_s_1278 = (string)Bid;
                           S_s_1279 = ", Bid: ";
                           S_s_1280 = (string)Ask;
                           S_s_1281 = ", Ask: ";
                           S_s_1282 = ErrorDescription(G_i_309);
                           S_s_1283 = " - ";
                           S_s_1284 = (string)G_i_309;
                           S_s_1285 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1286 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1286, " ", S_s_1285, S_s_1284, S_s_1283, S_s_1282, S_s_1281, S_s_1280, S_s_1279, S_s_1278, S_s_1277, S_s_1276, S_s_1275, S_s_1274);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_88 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_88 > 0) {
                                    FileSeek(G_i_88, 0, 2);
                                    S_s_1287 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_88, S_s_1287, " VERBOSE: ", S_s_1285, S_s_1284, S_s_1283, S_s_1282, S_s_1281, S_s_1280, S_s_1279, S_s_1278, S_s_1277, S_s_1276, S_s_1275, S_s_1274);
                                    FileClose(G_i_88);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_37 = (OrderOpenPrice() - L_d_36);
               if ((OrderOpenPrice() >= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_37)) {
                     S_s_1288 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1288 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1290 = "";
                        S_s_1291 = "";
                        S_s_1292 = "";
                        S_s_1293 = "";
                        S_s_1294 = "";
                        S_s_1295 = "";
                        S_s_1296 = (string)L_d_37;
                        S_s_1297 = " to :";
                        S_s_1298 = (string)Fa_i_00;
                        S_s_1299 = ", Magic Number: ";
                        S_s_1300 = (string)OrderTicket();
                        S_s_1301 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1302 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1302, " ", S_s_1301, S_s_1300, S_s_1299, S_s_1298, S_s_1297, S_s_1296, S_s_1295, S_s_1294, S_s_1293, S_s_1292, S_s_1291, S_s_1290);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_89 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_89 > 0) {
                                 FileSeek(G_i_89, 0, 2);
                                 S_s_1303 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_89, S_s_1303, " VERBOSE: ", S_s_1301, S_s_1300, S_s_1299, S_s_1298, S_s_1297, S_s_1296, S_s_1295, S_s_1294, S_s_1293, S_s_1292, S_s_1291, S_s_1290);
                                 FileClose(G_i_89);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_310 = GetLastError();
                           L_i_16 = G_i_310;
                           S_s_1304 = "";
                           S_s_1305 = "";
                           S_s_1306 = (string)OrderStopLoss();
                           S_s_1307 = " Current SL: ";
                           S_s_1308 = (string)Bid;
                           S_s_1309 = ", Bid: ";
                           S_s_1310 = (string)Ask;
                           S_s_1311 = ", Ask: ";
                           S_s_1312 = ErrorDescription(G_i_310);
                           S_s_1313 = " - ";
                           S_s_1314 = (string)G_i_310;
                           S_s_1315 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1316 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1316, " ", S_s_1315, S_s_1314, S_s_1313, S_s_1312, S_s_1311, S_s_1310, S_s_1309, S_s_1308, S_s_1307, S_s_1306, S_s_1305, S_s_1304);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_217 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_217 > 0) {
                                    FileSeek(G_i_217, 0, 2);
                                    S_s_1317 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_217, S_s_1317, " VERBOSE: ", S_s_1315, S_s_1314, S_s_1313, S_s_1312, S_s_1311, S_s_1310, S_s_1309, S_s_1308, S_s_1307, S_s_1306, S_s_1305, S_s_1304);
                                    FileClose(G_i_217);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         G_i_90 = I_i_9;
         G_d_99 = 0;
         if (I_i_9 == I_i_1) {
            G_d_99 = 0;
         }
         if (G_i_90 == I_i_2) {
            G_d_99 = 0;
         }
         if (G_i_90 == I_i_3) {
            G_d_99 = 0;
         }
         if (G_i_90 == I_i_4) {
            G_d_99 = 0;
         }
         if (G_i_90 == I_i_5) {
            G_d_99 = 0;
         }
         if (G_i_90 == I_i_6) {
            G_d_99 = 0;
         }
         if (G_i_90 == I_i_7) {
            G_d_99 = 0;
         }
         if (G_i_90 == I_i_8) {
            G_d_99 = 0;
         }
         if (G_i_90 == I_i_9) {
            G_d_99 = 0;
         }
         if (G_i_90 == I_i_10) {
            G_d_99 = 0;
         }
         if (G_i_90 == I_i_11) {
            G_d_99 = 0;
         }
         if (G_i_90 == I_i_12) {
            G_d_99 = 0;
         }
         if (G_i_90 == I_i_13) {
            G_d_99 = 0;
         }
         if (G_i_90 == I_i_14) {
            G_d_99 = 0;
         }
         returned_double = NormalizeDouble(G_d_99, _Digits);
         L_d_11 = returned_double;
         if ((L_d_11 > 0)) {
            G_i_91 = (int)(returned_double + 10);
            G_l_19 = OrderOpenTime();
            G_i_92 = 0;
            G_i_218 = 0;
            G_i_310 = G_i_91 + 10;
            if (G_i_310 > 0) {
               do {
                  if (G_l_19 < Time[G_i_218]) {
                     G_i_92 = G_i_92 + 1;
                  }
                  G_i_218 = G_i_218 + 1;
                  G_i_311 = G_i_91 + 10;
               } while (G_i_218 < G_i_311);
            }
            if ((G_i_92 >= L_d_11)) {
               S_s_1318 = "";
               S_s_1319 = "";
               S_s_1320 = "";
               S_s_1321 = "";
               S_s_1322 = "";
               S_s_1323 = "";
               S_s_1324 = (string)Fa_i_00;
               S_s_1325 = ", Magic Number: ";
               S_s_1326 = (string)OrderTicket();
               S_s_1327 = "bars - closing order with ticket: ";
               S_s_1328 = (string)L_d_11;
               S_s_1329 = "Exit After ";
               if (I_i_139 == 1) {
                  S_s_1330 = TimeToString(TimeCurrent(), 3);
                  Print("---VERBOSE--- ", S_s_1330, " ", S_s_1329, S_s_1328, S_s_1327, S_s_1326, S_s_1325, S_s_1324, S_s_1323, S_s_1322, S_s_1321, S_s_1320, S_s_1319, S_s_1318);
               } else {
                  if (I_i_139 == 2) {
                     G_i_93 = FileOpen("EAW_VerboseLog.txt", 3);
                     if (G_i_93 > 0) {
                        FileSeek(G_i_93, 0, 2);
                        S_s_1331 = TimeToString(TimeCurrent(), 3);
                        FileWrite(G_i_93, S_s_1331, " VERBOSE: ", S_s_1329, S_s_1328, S_s_1327, S_s_1326, S_s_1325, S_s_1324, S_s_1323, S_s_1322, S_s_1321, S_s_1320, S_s_1319, S_s_1318);
                        FileClose(G_i_93);
                     }
                  }
               }
               sqClosePositionAtMarket(-1);
            }
         }
      }
   }
   if (Fa_i_00 == I_i_10) {
      if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
         L_d_11 = getOrderTrailingStop(I_i_10, OrderType(), OrderOpenPrice());
         if ((L_d_11 > 0)) {
            G_i_219 = I_i_10;
            G_d_152 = 0;
            if (I_i_10 == I_i_1) {
               G_d_152 = (I_d_4 * 0);
            }
            if (G_i_219 == I_i_2) {
               G_d_152 = (I_d_4 * 0);
            }
            if (G_i_219 == I_i_3) {
               G_d_152 = (I_d_4 * 0);
            }
            if (G_i_219 == I_i_4) {
               G_d_152 = (I_d_4 * 0);
            }
            if (G_i_219 == I_i_5) {
               G_d_152 = (I_d_4 * 0);
            }
            if (G_i_219 == I_i_6) {
               G_d_152 = (I_d_4 * 0);
            }
            if (G_i_219 == I_i_7) {
               G_d_152 = (I_d_4 * 0);
            }
            if (G_i_219 == I_i_8) {
               G_d_152 = (I_d_4 * 0);
            }
            if (G_i_219 == I_i_9) {
               G_d_152 = (I_d_4 * 0);
            }
            if (G_i_219 == I_i_10) {
               G_d_152 = (I_d_4 * 0);
            }
            if (G_i_219 == I_i_11) {
               G_d_152 = (I_d_4 * 0);
            }
            if (G_i_219 == I_i_12) {
               G_d_152 = (I_d_4 * 0);
            }
            if (G_i_219 == I_i_13) {
               G_d_152 = (I_d_4 * 0);
            }
            if (G_i_219 == I_i_14) {
               G_d_152 = (I_d_4 * 0);
            }
            L_d_36 = NormalizeDouble(G_d_152, _Digits);
            if (OrderType() == OP_BUY) {
               L_d_38 = (Bid - OrderOpenPrice());
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_11)) {
                     S_s_1332 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1332 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1334 = "";
                        S_s_1335 = "";
                        S_s_1336 = "";
                        S_s_1337 = "";
                        S_s_1338 = "";
                        S_s_1339 = "";
                        S_s_1340 = (string)L_d_37;
                        S_s_1341 = " to :";
                        S_s_1342 = (string)Fa_i_00;
                        S_s_1343 = ", Magic Number: ";
                        S_s_1344 = (string)OrderTicket();
                        S_s_1345 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1346 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1346, " ", S_s_1345, S_s_1344, S_s_1343, S_s_1342, S_s_1341, S_s_1340, S_s_1339, S_s_1338, S_s_1337, S_s_1336, S_s_1335, S_s_1334);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_95 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_95 > 0) {
                                 FileSeek(G_i_95, 0, 2);
                                 S_s_1347 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_95, S_s_1347, " VERBOSE: ", S_s_1345, S_s_1344, S_s_1343, S_s_1342, S_s_1341, S_s_1340, S_s_1339, S_s_1338, S_s_1337, S_s_1336, S_s_1335, S_s_1334);
                                 FileClose(G_i_95);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_313 = GetLastError();
                           L_i_16 = G_i_313;
                           S_s_1348 = "";
                           S_s_1349 = "";
                           S_s_1350 = "";
                           S_s_1351 = "";
                           S_s_1352 = "";
                           S_s_1353 = "";
                           S_s_1354 = "";
                           S_s_1355 = "";
                           S_s_1356 = ErrorDescription(G_i_313);
                           S_s_1357 = " - ";
                           S_s_1358 = (string)G_i_313;
                           S_s_1359 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1360 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1360, " ", S_s_1359, S_s_1358, S_s_1357, S_s_1356, S_s_1355, S_s_1354, S_s_1353, S_s_1352, S_s_1351, S_s_1350, S_s_1349, S_s_1348);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_220 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_220 > 0) {
                                    FileSeek(G_i_220, 0, 2);
                                    S_s_1361 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_220, S_s_1361, " VERBOSE: ", S_s_1359, S_s_1358, S_s_1357, S_s_1356, S_s_1355, S_s_1354, S_s_1353, S_s_1352, S_s_1351, S_s_1350, S_s_1349, S_s_1348);
                                    FileClose(G_i_220);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_38 = (OrderOpenPrice() - Ask);
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_11)) {
                     S_s_1362 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1362 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1364 = "";
                        S_s_1365 = "";
                        S_s_1366 = "";
                        S_s_1367 = "";
                        S_s_1368 = "";
                        S_s_1369 = "";
                        S_s_1370 = (string)L_d_37;
                        S_s_1371 = " to :";
                        S_s_1372 = (string)Fa_i_00;
                        S_s_1373 = ", Magic Number: ";
                        S_s_1374 = (string)OrderTicket();
                        S_s_1375 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1376 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1376, " ", S_s_1375, S_s_1374, S_s_1373, S_s_1372, S_s_1371, S_s_1370, S_s_1369, S_s_1368, S_s_1367, S_s_1366, S_s_1365, S_s_1364);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_96 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_96 > 0) {
                                 FileSeek(G_i_96, 0, 2);
                                 S_s_1377 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_96, S_s_1377, " VERBOSE: ", S_s_1375, S_s_1374, S_s_1373, S_s_1372, S_s_1371, S_s_1370, S_s_1369, S_s_1368, S_s_1367, S_s_1366, S_s_1365, S_s_1364);
                                 FileClose(G_i_96);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_346 = GetLastError();
                           L_i_16 = G_i_346;
                           S_s_1378 = "";
                           S_s_1379 = "";
                           S_s_1380 = (string)OrderStopLoss();
                           S_s_1381 = " Current SL: ";
                           S_s_1382 = (string)Bid;
                           S_s_1383 = ", Bid: ";
                           S_s_1384 = (string)Ask;
                           S_s_1385 = ", Ask: ";
                           S_s_1386 = ErrorDescription(G_i_346);
                           S_s_1387 = " - ";
                           S_s_1388 = (string)G_i_346;
                           S_s_1389 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1390 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1390, " ", S_s_1389, S_s_1388, S_s_1387, S_s_1386, S_s_1385, S_s_1384, S_s_1383, S_s_1382, S_s_1381, S_s_1380, S_s_1379, S_s_1378);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_97 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_97 > 0) {
                                    FileSeek(G_i_97, 0, 2);
                                    S_s_1391 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_97, S_s_1391, " VERBOSE: ", S_s_1389, S_s_1388, S_s_1387, S_s_1386, S_s_1385, S_s_1384, S_s_1383, S_s_1382, S_s_1381, S_s_1380, S_s_1379, S_s_1378);
                                    FileClose(G_i_97);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         L_d_11 = getOrderBreakEven(I_i_10, OrderType(), OrderOpenPrice());
         G_i_221 = I_i_10;
         G_d_153 = 0;
         if (I_i_10 == I_i_1) {
            G_d_153 = (I_d_4 * 0);
         }
         if (G_i_221 == I_i_2) {
            G_d_153 = (I_d_4 * 0);
         }
         if (G_i_221 == I_i_3) {
            G_d_153 = (I_d_4 * 0);
         }
         if (G_i_221 == I_i_4) {
            G_d_153 = (I_d_4 * 0);
         }
         if (G_i_221 == I_i_5) {
            G_d_153 = (I_d_4 * 0);
         }
         if (G_i_221 == I_i_6) {
            G_d_153 = (I_d_4 * 0);
         }
         if (G_i_221 == I_i_7) {
            G_d_153 = (I_d_4 * 0);
         }
         if (G_i_221 == I_i_8) {
            G_d_153 = (I_d_4 * 0);
         }
         if (G_i_221 == I_i_9) {
            G_d_153 = (I_d_4 * 0);
         }
         if (G_i_221 == I_i_10) {
            G_d_153 = (I_d_4 * 0);
         }
         if (G_i_221 == I_i_11) {
            G_d_153 = (I_d_4 * 0);
         }
         if (G_i_221 == I_i_12) {
            G_d_153 = (I_d_4 * 0);
         }
         if (G_i_221 == I_i_13) {
            G_d_153 = (I_d_4 * 0);
         }
         if (G_i_221 == I_i_14) {
            G_d_153 = (I_d_4 * 0);
         }
         L_d_36 = NormalizeDouble(G_d_153, _Digits);
         if ((L_d_11 > 0)) {
            if (OrderType() == OP_BUY) {
               L_d_37 = (OrderOpenPrice() + L_d_36);
               if ((OrderOpenPrice() <= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_37)) {
                     S_s_1392 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1392 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1394 = "";
                        S_s_1395 = "";
                        S_s_1396 = "";
                        S_s_1397 = "";
                        S_s_1398 = "";
                        S_s_1399 = "";
                        S_s_1400 = (string)L_d_37;
                        S_s_1401 = " to :";
                        S_s_1402 = (string)Fa_i_00;
                        S_s_1403 = ", Magic Number: ";
                        S_s_1404 = (string)OrderTicket();
                        S_s_1405 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1406 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1406, " ", S_s_1405, S_s_1404, S_s_1403, S_s_1402, S_s_1401, S_s_1400, S_s_1399, S_s_1398, S_s_1397, S_s_1396, S_s_1395, S_s_1394);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_222 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_222 > 0) {
                                 FileSeek(G_i_222, 0, 2);
                                 S_s_1407 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_222, S_s_1407, " VERBOSE: ", S_s_1405, S_s_1404, S_s_1403, S_s_1402, S_s_1401, S_s_1400, S_s_1399, S_s_1398, S_s_1397, S_s_1396, S_s_1395, S_s_1394);
                                 FileClose(G_i_222);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_315 = GetLastError();
                           L_i_16 = G_i_315;
                           S_s_1408 = "";
                           S_s_1409 = "";
                           S_s_1410 = (string)OrderStopLoss();
                           S_s_1411 = " Current SL: ";
                           S_s_1412 = (string)Bid;
                           S_s_1413 = ", Bid: ";
                           S_s_1414 = (string)Ask;
                           S_s_1415 = ", Ask: ";
                           S_s_1416 = ErrorDescription(G_i_315);
                           S_s_1417 = " - ";
                           S_s_1418 = (string)G_i_315;
                           S_s_1419 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1420 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1420, " ", S_s_1419, S_s_1418, S_s_1417, S_s_1416, S_s_1415, S_s_1414, S_s_1413, S_s_1412, S_s_1411, S_s_1410, S_s_1409, S_s_1408);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_99 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_99 > 0) {
                                    FileSeek(G_i_99, 0, 2);
                                    S_s_1421 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_99, S_s_1421, " VERBOSE: ", S_s_1419, S_s_1418, S_s_1417, S_s_1416, S_s_1415, S_s_1414, S_s_1413, S_s_1412, S_s_1411, S_s_1410, S_s_1409, S_s_1408);
                                    FileClose(G_i_99);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_37 = (OrderOpenPrice() - L_d_36);
               if ((OrderOpenPrice() >= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_37)) {
                     S_s_1422 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1422 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1424 = "";
                        S_s_1425 = "";
                        S_s_1426 = "";
                        S_s_1427 = "";
                        S_s_1428 = "";
                        S_s_1429 = "";
                        S_s_1430 = (string)L_d_37;
                        S_s_1431 = " to :";
                        S_s_1432 = (string)Fa_i_00;
                        S_s_1433 = ", Magic Number: ";
                        S_s_1434 = (string)OrderTicket();
                        S_s_1435 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1436 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1436, " ", S_s_1435, S_s_1434, S_s_1433, S_s_1432, S_s_1431, S_s_1430, S_s_1429, S_s_1428, S_s_1427, S_s_1426, S_s_1425, S_s_1424);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_223 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_223 > 0) {
                                 FileSeek(G_i_223, 0, 2);
                                 S_s_1437 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_223, S_s_1437, " VERBOSE: ", S_s_1435, S_s_1434, S_s_1433, S_s_1432, S_s_1431, S_s_1430, S_s_1429, S_s_1428, S_s_1427, S_s_1426, S_s_1425, S_s_1424);
                                 FileClose(G_i_223);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_316 = GetLastError();
                           L_i_16 = G_i_316;
                           S_s_1438 = "";
                           S_s_1439 = "";
                           S_s_1440 = (string)OrderStopLoss();
                           S_s_1441 = " Current SL: ";
                           S_s_1442 = (string)Bid;
                           S_s_1443 = ", Bid: ";
                           S_s_1444 = (string)Ask;
                           S_s_1445 = ", Ask: ";
                           S_s_1446 = ErrorDescription(G_i_316);
                           S_s_1447 = " - ";
                           S_s_1448 = (string)G_i_316;
                           S_s_1449 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1450 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1450, " ", S_s_1449, S_s_1448, S_s_1447, S_s_1446, S_s_1445, S_s_1444, S_s_1443, S_s_1442, S_s_1441, S_s_1440, S_s_1439, S_s_1438);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_100 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_100 > 0) {
                                    FileSeek(G_i_100, 0, 2);
                                    S_s_1451 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_100, S_s_1451, " VERBOSE: ", S_s_1449, S_s_1448, S_s_1447, S_s_1446, S_s_1445, S_s_1444, S_s_1443, S_s_1442, S_s_1441, S_s_1440, S_s_1439, S_s_1438);
                                    FileClose(G_i_100);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         G_i_101 = I_i_10;
         G_d_107 = 0;
         if (I_i_10 == I_i_1) {
            G_d_107 = 0;
         }
         if (G_i_101 == I_i_2) {
            G_d_107 = 0;
         }
         if (G_i_101 == I_i_3) {
            G_d_107 = 0;
         }
         if (G_i_101 == I_i_4) {
            G_d_107 = 0;
         }
         if (G_i_101 == I_i_5) {
            G_d_107 = 0;
         }
         if (G_i_101 == I_i_6) {
            G_d_107 = 0;
         }
         if (G_i_101 == I_i_7) {
            G_d_107 = 0;
         }
         if (G_i_101 == I_i_8) {
            G_d_107 = 0;
         }
         if (G_i_101 == I_i_9) {
            G_d_107 = 0;
         }
         if (G_i_101 == I_i_10) {
            G_d_107 = 0;
         }
         if (G_i_101 == I_i_11) {
            G_d_107 = 0;
         }
         if (G_i_101 == I_i_12) {
            G_d_107 = 0;
         }
         if (G_i_101 == I_i_13) {
            G_d_107 = 0;
         }
         if (G_i_101 == I_i_14) {
            G_d_107 = 0;
         }
         returned_double = NormalizeDouble(G_d_107, _Digits);
         L_d_11 = returned_double;
         if ((L_d_11 > 0)) {
            G_i_102 = (int)(returned_double + 10);
            G_l_20 = OrderOpenTime();
            G_i_103 = 0;
            G_i_224 = 0;
            G_i_316 = G_i_102 + 10;
            if (G_i_316 > 0) {
               do {
                  if (G_l_20 < Time[G_i_224]) {
                     G_i_103 = G_i_103 + 1;
                  }
                  G_i_224 = G_i_224 + 1;
                  G_i_317 = G_i_102 + 10;
               } while (G_i_224 < G_i_317);
            }
            if ((G_i_103 >= L_d_11)) {
               S_s_1452 = "";
               S_s_1453 = "";
               S_s_1454 = "";
               S_s_1455 = "";
               S_s_1456 = "";
               S_s_1457 = "";
               S_s_1458 = (string)Fa_i_00;
               S_s_1459 = ", Magic Number: ";
               S_s_1460 = (string)OrderTicket();
               S_s_1461 = "bars - closing order with ticket: ";
               S_s_1462 = (string)L_d_11;
               S_s_1463 = "Exit After ";
               if (I_i_139 == 1) {
                  S_s_1464 = TimeToString(TimeCurrent(), 3);
                  Print("---VERBOSE--- ", S_s_1464, " ", S_s_1463, S_s_1462, S_s_1461, S_s_1460, S_s_1459, S_s_1458, S_s_1457, S_s_1456, S_s_1455, S_s_1454, S_s_1453, S_s_1452);
               } else {
                  if (I_i_139 == 2) {
                     G_i_104 = FileOpen("EAW_VerboseLog.txt", 3);
                     if (G_i_104 > 0) {
                        FileSeek(G_i_104, 0, 2);
                        S_s_1465 = TimeToString(TimeCurrent(), 3);
                        FileWrite(G_i_104, S_s_1465, " VERBOSE: ", S_s_1463, S_s_1462, S_s_1461, S_s_1460, S_s_1459, S_s_1458, S_s_1457, S_s_1456, S_s_1455, S_s_1454, S_s_1453, S_s_1452);
                        FileClose(G_i_104);
                     }
                  }
               }
               sqClosePositionAtMarket(-1);
            }
         }
      }
   }
   if (Fa_i_00 == I_i_11) {
      if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
         L_d_11 = getOrderTrailingStop(I_i_11, OrderType(), OrderOpenPrice());
         if ((L_d_11 > 0)) {
            G_i_105 = I_i_11;
            G_d_110 = 0;
            if (I_i_11 == I_i_1) {
               G_d_110 = (I_d_4 * 0);
            }
            if (G_i_105 == I_i_2) {
               G_d_110 = (I_d_4 * 0);
            }
            if (G_i_105 == I_i_3) {
               G_d_110 = (I_d_4 * 0);
            }
            if (G_i_105 == I_i_4) {
               G_d_110 = (I_d_4 * 0);
            }
            if (G_i_105 == I_i_5) {
               G_d_110 = (I_d_4 * 0);
            }
            if (G_i_105 == I_i_6) {
               G_d_110 = (I_d_4 * 0);
            }
            if (G_i_105 == I_i_7) {
               G_d_110 = (I_d_4 * 0);
            }
            if (G_i_105 == I_i_8) {
               G_d_110 = (I_d_4 * 0);
            }
            if (G_i_105 == I_i_9) {
               G_d_110 = (I_d_4 * 0);
            }
            if (G_i_105 == I_i_10) {
               G_d_110 = (I_d_4 * 0);
            }
            if (G_i_105 == I_i_11) {
               G_d_110 = (I_d_4 * 0);
            }
            if (G_i_105 == I_i_12) {
               G_d_110 = (I_d_4 * 0);
            }
            if (G_i_105 == I_i_13) {
               G_d_110 = (I_d_4 * 0);
            }
            if (G_i_105 == I_i_14) {
               G_d_110 = (I_d_4 * 0);
            }
            L_d_36 = NormalizeDouble(G_d_110, _Digits);
            if (OrderType() == OP_BUY) {
               L_d_38 = (Bid - OrderOpenPrice());
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_11)) {
                     S_s_1466 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1466 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1468 = "";
                        S_s_1469 = "";
                        S_s_1470 = "";
                        S_s_1471 = "";
                        S_s_1472 = "";
                        S_s_1473 = "";
                        S_s_1474 = (string)L_d_37;
                        S_s_1475 = " to :";
                        S_s_1476 = (string)Fa_i_00;
                        S_s_1477 = ", Magic Number: ";
                        S_s_1478 = (string)OrderTicket();
                        S_s_1479 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1480 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1480, " ", S_s_1479, S_s_1478, S_s_1477, S_s_1476, S_s_1475, S_s_1474, S_s_1473, S_s_1472, S_s_1471, S_s_1470, S_s_1469, S_s_1468);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_106 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_106 > 0) {
                                 FileSeek(G_i_106, 0, 2);
                                 S_s_1481 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_106, S_s_1481, " VERBOSE: ", S_s_1479, S_s_1478, S_s_1477, S_s_1476, S_s_1475, S_s_1474, S_s_1473, S_s_1472, S_s_1471, S_s_1470, S_s_1469, S_s_1468);
                                 FileClose(G_i_106);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_319 = GetLastError();
                           L_i_16 = G_i_319;
                           S_s_1482 = "";
                           S_s_1483 = "";
                           S_s_1484 = "";
                           S_s_1485 = "";
                           S_s_1486 = "";
                           S_s_1487 = "";
                           S_s_1488 = "";
                           S_s_1489 = "";
                           S_s_1490 = ErrorDescription(G_i_319);
                           S_s_1491 = " - ";
                           S_s_1492 = (string)G_i_319;
                           S_s_1493 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1494 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1494, " ", S_s_1493, S_s_1492, S_s_1491, S_s_1490, S_s_1489, S_s_1488, S_s_1487, S_s_1486, S_s_1485, S_s_1484, S_s_1483, S_s_1482);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_225 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_225 > 0) {
                                    FileSeek(G_i_225, 0, 2);
                                    S_s_1495 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_225, S_s_1495, " VERBOSE: ", S_s_1493, S_s_1492, S_s_1491, S_s_1490, S_s_1489, S_s_1488, S_s_1487, S_s_1486, S_s_1485, S_s_1484, S_s_1483, S_s_1482);
                                    FileClose(G_i_225);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_38 = (OrderOpenPrice() - Ask);
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_11)) {
                     S_s_1496 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1496 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1498 = "";
                        S_s_1499 = "";
                        S_s_1500 = "";
                        S_s_1501 = "";
                        S_s_1502 = "";
                        S_s_1503 = "";
                        S_s_1504 = (string)L_d_37;
                        S_s_1505 = " to :";
                        S_s_1506 = (string)Fa_i_00;
                        S_s_1507 = ", Magic Number: ";
                        S_s_1508 = (string)OrderTicket();
                        S_s_1509 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1510 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1510, " ", S_s_1509, S_s_1508, S_s_1507, S_s_1506, S_s_1505, S_s_1504, S_s_1503, S_s_1502, S_s_1501, S_s_1500, S_s_1499, S_s_1498);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_107 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_107 > 0) {
                                 FileSeek(G_i_107, 0, 2);
                                 S_s_1511 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_107, S_s_1511, " VERBOSE: ", S_s_1509, S_s_1508, S_s_1507, S_s_1506, S_s_1505, S_s_1504, S_s_1503, S_s_1502, S_s_1501, S_s_1500, S_s_1499, S_s_1498);
                                 FileClose(G_i_107);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_345 = GetLastError();
                           L_i_16 = G_i_345;
                           S_s_1512 = "";
                           S_s_1513 = "";
                           S_s_1514 = (string)OrderStopLoss();
                           S_s_1515 = " Current SL: ";
                           S_s_1516 = (string)Bid;
                           S_s_1517 = ", Bid: ";
                           S_s_1518 = (string)Ask;
                           S_s_1519 = ", Ask: ";
                           S_s_1520 = ErrorDescription(G_i_345);
                           S_s_1521 = " - ";
                           S_s_1522 = (string)G_i_345;
                           S_s_1523 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1524 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1524, " ", S_s_1523, S_s_1522, S_s_1521, S_s_1520, S_s_1519, S_s_1518, S_s_1517, S_s_1516, S_s_1515, S_s_1514, S_s_1513, S_s_1512);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_226 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_226 > 0) {
                                    FileSeek(G_i_226, 0, 2);
                                    S_s_1525 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_226, S_s_1525, " VERBOSE: ", S_s_1523, S_s_1522, S_s_1521, S_s_1520, S_s_1519, S_s_1518, S_s_1517, S_s_1516, S_s_1515, S_s_1514, S_s_1513, S_s_1512);
                                    FileClose(G_i_226);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         L_d_11 = getOrderBreakEven(I_i_11, OrderType(), OrderOpenPrice());
         G_i_108 = I_i_11;
         G_d_113 = 0;
         if (I_i_11 == I_i_1) {
            G_d_113 = (I_d_4 * 0);
         }
         if (G_i_108 == I_i_2) {
            G_d_113 = (I_d_4 * 0);
         }
         if (G_i_108 == I_i_3) {
            G_d_113 = (I_d_4 * 0);
         }
         if (G_i_108 == I_i_4) {
            G_d_113 = (I_d_4 * 0);
         }
         if (G_i_108 == I_i_5) {
            G_d_113 = (I_d_4 * 0);
         }
         if (G_i_108 == I_i_6) {
            G_d_113 = (I_d_4 * 0);
         }
         if (G_i_108 == I_i_7) {
            G_d_113 = (I_d_4 * 0);
         }
         if (G_i_108 == I_i_8) {
            G_d_113 = (I_d_4 * 0);
         }
         if (G_i_108 == I_i_9) {
            G_d_113 = (I_d_4 * 0);
         }
         if (G_i_108 == I_i_10) {
            G_d_113 = (I_d_4 * 0);
         }
         if (G_i_108 == I_i_11) {
            G_d_113 = (I_d_4 * 0);
         }
         if (G_i_108 == I_i_12) {
            G_d_113 = (I_d_4 * 0);
         }
         if (G_i_108 == I_i_13) {
            G_d_113 = (I_d_4 * 0);
         }
         if (G_i_108 == I_i_14) {
            G_d_113 = (I_d_4 * 0);
         }
         L_d_36 = NormalizeDouble(G_d_113, _Digits);
         if ((L_d_11 > 0)) {
            if (OrderType() == OP_BUY) {
               L_d_37 = (OrderOpenPrice() + L_d_36);
               if ((OrderOpenPrice() <= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_37)) {
                     S_s_1526 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1526 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1528 = "";
                        S_s_1529 = "";
                        S_s_1530 = "";
                        S_s_1531 = "";
                        S_s_1532 = "";
                        S_s_1533 = "";
                        S_s_1534 = (string)L_d_37;
                        S_s_1535 = " to :";
                        S_s_1536 = (string)Fa_i_00;
                        S_s_1537 = ", Magic Number: ";
                        S_s_1538 = (string)OrderTicket();
                        S_s_1539 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1540 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1540, " ", S_s_1539, S_s_1538, S_s_1537, S_s_1536, S_s_1535, S_s_1534, S_s_1533, S_s_1532, S_s_1531, S_s_1530, S_s_1529, S_s_1528);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_109 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_109 > 0) {
                                 FileSeek(G_i_109, 0, 2);
                                 S_s_1541 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_109, S_s_1541, " VERBOSE: ", S_s_1539, S_s_1538, S_s_1537, S_s_1536, S_s_1535, S_s_1534, S_s_1533, S_s_1532, S_s_1531, S_s_1530, S_s_1529, S_s_1528);
                                 FileClose(G_i_109);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_321 = GetLastError();
                           L_i_16 = G_i_321;
                           S_s_1542 = "";
                           S_s_1543 = "";
                           S_s_1544 = (string)OrderStopLoss();
                           S_s_1545 = " Current SL: ";
                           S_s_1546 = (string)Bid;
                           S_s_1547 = ", Bid: ";
                           S_s_1548 = (string)Ask;
                           S_s_1549 = ", Ask: ";
                           S_s_1550 = ErrorDescription(G_i_321);
                           S_s_1551 = " - ";
                           S_s_1552 = (string)G_i_321;
                           S_s_1553 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1554 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1554, " ", S_s_1553, S_s_1552, S_s_1551, S_s_1550, S_s_1549, S_s_1548, S_s_1547, S_s_1546, S_s_1545, S_s_1544, S_s_1543, S_s_1542);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_227 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_227 > 0) {
                                    FileSeek(G_i_227, 0, 2);
                                    S_s_1555 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_227, S_s_1555, " VERBOSE: ", S_s_1553, S_s_1552, S_s_1551, S_s_1550, S_s_1549, S_s_1548, S_s_1547, S_s_1546, S_s_1545, S_s_1544, S_s_1543, S_s_1542);
                                    FileClose(G_i_227);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_37 = (OrderOpenPrice() - L_d_36);
               if ((OrderOpenPrice() >= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_37)) {
                     S_s_1556 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1556 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1558 = "";
                        S_s_1559 = "";
                        S_s_1560 = "";
                        S_s_1561 = "";
                        S_s_1562 = "";
                        S_s_1563 = "";
                        S_s_1564 = (string)L_d_37;
                        S_s_1565 = " to :";
                        S_s_1566 = (string)Fa_i_00;
                        S_s_1567 = ", Magic Number: ";
                        S_s_1568 = (string)OrderTicket();
                        S_s_1569 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1570 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1570, " ", S_s_1569, S_s_1568, S_s_1567, S_s_1566, S_s_1565, S_s_1564, S_s_1563, S_s_1562, S_s_1561, S_s_1560, S_s_1559, S_s_1558);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_110 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_110 > 0) {
                                 FileSeek(G_i_110, 0, 2);
                                 S_s_1571 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_110, S_s_1571, " VERBOSE: ", S_s_1569, S_s_1568, S_s_1567, S_s_1566, S_s_1565, S_s_1564, S_s_1563, S_s_1562, S_s_1561, S_s_1560, S_s_1559, S_s_1558);
                                 FileClose(G_i_110);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_322 = GetLastError();
                           L_i_16 = G_i_322;
                           S_s_1572 = "";
                           S_s_1573 = "";
                           S_s_1574 = (string)OrderStopLoss();
                           S_s_1575 = " Current SL: ";
                           S_s_1576 = (string)Bid;
                           S_s_1577 = ", Bid: ";
                           S_s_1578 = (string)Ask;
                           S_s_1579 = ", Ask: ";
                           S_s_1580 = ErrorDescription(G_i_322);
                           S_s_1581 = " - ";
                           S_s_1582 = (string)G_i_322;
                           S_s_1583 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1584 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1584, " ", S_s_1583, S_s_1582, S_s_1581, S_s_1580, S_s_1579, S_s_1578, S_s_1577, S_s_1576, S_s_1575, S_s_1574, S_s_1573, S_s_1572);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_111 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_111 > 0) {
                                    FileSeek(G_i_111, 0, 2);
                                    S_s_1585 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_111, S_s_1585, " VERBOSE: ", S_s_1583, S_s_1582, S_s_1581, S_s_1580, S_s_1579, S_s_1578, S_s_1577, S_s_1576, S_s_1575, S_s_1574, S_s_1573, S_s_1572);
                                    FileClose(G_i_111);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         G_i_228 = I_i_11;
         G_d_154 = 0;
         if (I_i_11 == I_i_1) {
            G_d_154 = 0;
         }
         if (G_i_228 == I_i_2) {
            G_d_154 = 0;
         }
         if (G_i_228 == I_i_3) {
            G_d_154 = 0;
         }
         if (G_i_228 == I_i_4) {
            G_d_154 = 0;
         }
         if (G_i_228 == I_i_5) {
            G_d_154 = 0;
         }
         if (G_i_228 == I_i_6) {
            G_d_154 = 0;
         }
         if (G_i_228 == I_i_7) {
            G_d_154 = 0;
         }
         if (G_i_228 == I_i_8) {
            G_d_154 = 0;
         }
         if (G_i_228 == I_i_9) {
            G_d_154 = 0;
         }
         if (G_i_228 == I_i_10) {
            G_d_154 = 0;
         }
         if (G_i_228 == I_i_11) {
            G_d_154 = 0;
         }
         if (G_i_228 == I_i_12) {
            G_d_154 = 0;
         }
         if (G_i_228 == I_i_13) {
            G_d_154 = 0;
         }
         if (G_i_228 == I_i_14) {
            G_d_154 = 0;
         }
         returned_double = NormalizeDouble(G_d_154, _Digits);
         L_d_11 = returned_double;
         if ((L_d_11 > 0)) {
            G_i_113 = (int)(returned_double + 10);
            G_l_21 = OrderOpenTime();
            G_i_114 = 0;
            G_i_115 = 0;
            G_i_322 = G_i_113 + 10;
            if (G_i_322 > 0) {
               do {
                  if (G_l_21 < Time[G_i_115]) {
                     G_i_114 = G_i_114 + 1;
                  }
                  G_i_115 = G_i_115 + 1;
                  G_i_323 = G_i_113 + 10;
               } while (G_i_115 < G_i_323);
            }
            if ((G_i_114 >= L_d_11)) {
               S_s_1586 = "";
               S_s_1587 = "";
               S_s_1588 = "";
               S_s_1589 = "";
               S_s_1590 = "";
               S_s_1591 = "";
               S_s_1592 = (string)Fa_i_00;
               S_s_1593 = ", Magic Number: ";
               S_s_1594 = (string)OrderTicket();
               S_s_1595 = "bars - closing order with ticket: ";
               S_s_1596 = (string)L_d_11;
               S_s_1597 = "Exit After ";
               if (I_i_139 == 1) {
                  S_s_1598 = TimeToString(TimeCurrent(), 3);
                  Print("---VERBOSE--- ", S_s_1598, " ", S_s_1597, S_s_1596, S_s_1595, S_s_1594, S_s_1593, S_s_1592, S_s_1591, S_s_1590, S_s_1589, S_s_1588, S_s_1587, S_s_1586);
               } else {
                  if (I_i_139 == 2) {
                     G_i_116 = FileOpen("EAW_VerboseLog.txt", 3);
                     if (G_i_116 > 0) {
                        FileSeek(G_i_116, 0, 2);
                        S_s_1599 = TimeToString(TimeCurrent(), 3);
                        FileWrite(G_i_116, S_s_1599, " VERBOSE: ", S_s_1597, S_s_1596, S_s_1595, S_s_1594, S_s_1593, S_s_1592, S_s_1591, S_s_1590, S_s_1589, S_s_1588, S_s_1587, S_s_1586);
                        FileClose(G_i_116);
                     }
                  }
               }
               sqClosePositionAtMarket(-1);
            }
         }
      }
   }
   if (Fa_i_00 == I_i_12) {
      if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
         L_d_11 = getOrderTrailingStop(I_i_12, OrderType(), OrderOpenPrice());
         if ((L_d_11 > 0)) {
            G_i_117 = I_i_12;
            G_d_155 = 0;
            if (I_i_12 == I_i_1) {
               G_d_155 = (I_d_4 * 0);
            }
            if (G_i_117 == I_i_2) {
               G_d_155 = (I_d_4 * 0);
            }
            if (G_i_117 == I_i_3) {
               G_d_155 = (I_d_4 * 0);
            }
            if (G_i_117 == I_i_4) {
               G_d_155 = (I_d_4 * 0);
            }
            if (G_i_117 == I_i_5) {
               G_d_155 = (I_d_4 * 0);
            }
            if (G_i_117 == I_i_6) {
               G_d_155 = (I_d_4 * 0);
            }
            if (G_i_117 == I_i_7) {
               G_d_155 = (I_d_4 * 0);
            }
            if (G_i_117 == I_i_8) {
               G_d_155 = (I_d_4 * 0);
            }
            if (G_i_117 == I_i_9) {
               G_d_155 = (I_d_4 * 0);
            }
            if (G_i_117 == I_i_10) {
               G_d_155 = (I_d_4 * 0);
            }
            if (G_i_117 == I_i_11) {
               G_d_155 = (I_d_4 * 0);
            }
            if (G_i_117 == I_i_12) {
               G_d_155 = (I_d_4 * 0);
            }
            if (G_i_117 == I_i_13) {
               G_d_155 = (I_d_4 * 0);
            }
            if (G_i_117 == I_i_14) {
               G_d_155 = (I_d_4 * 0);
            }
            L_d_36 = NormalizeDouble(G_d_155, _Digits);
            if (OrderType() == OP_BUY) {
               L_d_38 = (Bid - OrderOpenPrice());
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_11)) {
                     S_s_1600 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1600 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1602 = "";
                        S_s_1603 = "";
                        S_s_1604 = "";
                        S_s_1605 = "";
                        S_s_1606 = "";
                        S_s_1607 = "";
                        S_s_1608 = (string)L_d_37;
                        S_s_1609 = " to :";
                        S_s_1610 = (string)Fa_i_00;
                        S_s_1611 = ", Magic Number: ";
                        S_s_1612 = (string)OrderTicket();
                        S_s_1613 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1614 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1614, " ", S_s_1613, S_s_1612, S_s_1611, S_s_1610, S_s_1609, S_s_1608, S_s_1607, S_s_1606, S_s_1605, S_s_1604, S_s_1603, S_s_1602);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_119 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_119 > 0) {
                                 FileSeek(G_i_119, 0, 2);
                                 S_s_1615 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_119, S_s_1615, " VERBOSE: ", S_s_1613, S_s_1612, S_s_1611, S_s_1610, S_s_1609, S_s_1608, S_s_1607, S_s_1606, S_s_1605, S_s_1604, S_s_1603, S_s_1602);
                                 FileClose(G_i_119);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_325 = GetLastError();
                           L_i_16 = G_i_325;
                           S_s_1616 = "";
                           S_s_1617 = "";
                           S_s_1618 = "";
                           S_s_1619 = "";
                           S_s_1620 = "";
                           S_s_1621 = "";
                           S_s_1622 = "";
                           S_s_1623 = "";
                           S_s_1624 = ErrorDescription(G_i_325);
                           S_s_1625 = " - ";
                           S_s_1626 = (string)G_i_325;
                           S_s_1627 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1628 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1628, " ", S_s_1627, S_s_1626, S_s_1625, S_s_1624, S_s_1623, S_s_1622, S_s_1621, S_s_1620, S_s_1619, S_s_1618, S_s_1617, S_s_1616);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_120 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_120 > 0) {
                                    FileSeek(G_i_120, 0, 2);
                                    S_s_1629 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_120, S_s_1629, " VERBOSE: ", S_s_1627, S_s_1626, S_s_1625, S_s_1624, S_s_1623, S_s_1622, S_s_1621, S_s_1620, S_s_1619, S_s_1618, S_s_1617, S_s_1616);
                                    FileClose(G_i_120);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_38 = (OrderOpenPrice() - Ask);
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_11)) {
                     S_s_1630 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1630 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1632 = "";
                        S_s_1633 = "";
                        S_s_1634 = "";
                        S_s_1635 = "";
                        S_s_1636 = "";
                        S_s_1637 = "";
                        S_s_1638 = (string)L_d_37;
                        S_s_1639 = " to :";
                        S_s_1640 = (string)Fa_i_00;
                        S_s_1641 = ", Magic Number: ";
                        S_s_1642 = (string)OrderTicket();
                        S_s_1643 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1644 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1644, " ", S_s_1643, S_s_1642, S_s_1641, S_s_1640, S_s_1639, S_s_1638, S_s_1637, S_s_1636, S_s_1635, S_s_1634, S_s_1633, S_s_1632);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_121 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_121 > 0) {
                                 FileSeek(G_i_121, 0, 2);
                                 S_s_1645 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_121, S_s_1645, " VERBOSE: ", S_s_1643, S_s_1642, S_s_1641, S_s_1640, S_s_1639, S_s_1638, S_s_1637, S_s_1636, S_s_1635, S_s_1634, S_s_1633, S_s_1632);
                                 FileClose(G_i_121);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_344 = GetLastError();
                           L_i_16 = G_i_344;
                           S_s_1646 = "";
                           S_s_1647 = "";
                           S_s_1648 = (string)OrderStopLoss();
                           S_s_1649 = " Current SL: ";
                           S_s_1650 = (string)Bid;
                           S_s_1651 = ", Bid: ";
                           S_s_1652 = (string)Ask;
                           S_s_1653 = ", Ask: ";
                           S_s_1654 = ErrorDescription(G_i_344);
                           S_s_1655 = " - ";
                           S_s_1656 = (string)G_i_344;
                           S_s_1657 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1658 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1658, " ", S_s_1657, S_s_1656, S_s_1655, S_s_1654, S_s_1653, S_s_1652, S_s_1651, S_s_1650, S_s_1649, S_s_1648, S_s_1647, S_s_1646);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_137 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_137 > 0) {
                                    FileSeek(G_i_137, 0, 2);
                                    S_s_1659 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_137, S_s_1659, " VERBOSE: ", S_s_1657, S_s_1656, S_s_1655, S_s_1654, S_s_1653, S_s_1652, S_s_1651, S_s_1650, S_s_1649, S_s_1648, S_s_1647, S_s_1646);
                                    FileClose(G_i_137);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         L_d_11 = getOrderBreakEven(I_i_12, OrderType(), OrderOpenPrice());
         G_i_122 = I_i_12;
         G_d_126 = 0;
         if (I_i_12 == I_i_1) {
            G_d_126 = (I_d_4 * 0);
         }
         if (G_i_122 == I_i_2) {
            G_d_126 = (I_d_4 * 0);
         }
         if (G_i_122 == I_i_3) {
            G_d_126 = (I_d_4 * 0);
         }
         if (G_i_122 == I_i_4) {
            G_d_126 = (I_d_4 * 0);
         }
         if (G_i_122 == I_i_5) {
            G_d_126 = (I_d_4 * 0);
         }
         if (G_i_122 == I_i_6) {
            G_d_126 = (I_d_4 * 0);
         }
         if (G_i_122 == I_i_7) {
            G_d_126 = (I_d_4 * 0);
         }
         if (G_i_122 == I_i_8) {
            G_d_126 = (I_d_4 * 0);
         }
         if (G_i_122 == I_i_9) {
            G_d_126 = (I_d_4 * 0);
         }
         if (G_i_122 == I_i_10) {
            G_d_126 = (I_d_4 * 0);
         }
         if (G_i_122 == I_i_11) {
            G_d_126 = (I_d_4 * 0);
         }
         if (G_i_122 == I_i_12) {
            G_d_126 = (I_d_4 * 0);
         }
         if (G_i_122 == I_i_13) {
            G_d_126 = (I_d_4 * 0);
         }
         if (G_i_122 == I_i_14) {
            G_d_126 = (I_d_4 * 0);
         }
         L_d_36 = NormalizeDouble(G_d_126, _Digits);
         if ((L_d_11 > 0)) {
            if (OrderType() == OP_BUY) {
               L_d_37 = (OrderOpenPrice() + L_d_36);
               if ((OrderOpenPrice() <= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_37)) {
                     S_s_1660 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1660 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1662 = "";
                        S_s_1663 = "";
                        S_s_1664 = "";
                        S_s_1665 = "";
                        S_s_1666 = "";
                        S_s_1667 = "";
                        S_s_1668 = (string)L_d_37;
                        S_s_1669 = " to :";
                        S_s_1670 = (string)Fa_i_00;
                        S_s_1671 = ", Magic Number: ";
                        S_s_1672 = (string)OrderTicket();
                        S_s_1673 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1674 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1674, " ", S_s_1673, S_s_1672, S_s_1671, S_s_1670, S_s_1669, S_s_1668, S_s_1667, S_s_1666, S_s_1665, S_s_1664, S_s_1663, S_s_1662);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_124 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_124 > 0) {
                                 FileSeek(G_i_124, 0, 2);
                                 S_s_1675 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_124, S_s_1675, " VERBOSE: ", S_s_1673, S_s_1672, S_s_1671, S_s_1670, S_s_1669, S_s_1668, S_s_1667, S_s_1666, S_s_1665, S_s_1664, S_s_1663, S_s_1662);
                                 FileClose(G_i_124);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_327 = GetLastError();
                           L_i_16 = G_i_327;
                           S_s_1676 = "";
                           S_s_1677 = "";
                           S_s_1678 = (string)OrderStopLoss();
                           S_s_1679 = " Current SL: ";
                           S_s_1680 = (string)Bid;
                           S_s_1681 = ", Bid: ";
                           S_s_1682 = (string)Ask;
                           S_s_1683 = ", Ask: ";
                           S_s_1684 = ErrorDescription(G_i_327);
                           S_s_1685 = " - ";
                           S_s_1686 = (string)G_i_327;
                           S_s_1687 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1688 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1688, " ", S_s_1687, S_s_1686, S_s_1685, S_s_1684, S_s_1683, S_s_1682, S_s_1681, S_s_1680, S_s_1679, S_s_1678, S_s_1677, S_s_1676);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_125 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_125 > 0) {
                                    FileSeek(G_i_125, 0, 2);
                                    S_s_1689 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_125, S_s_1689, " VERBOSE: ", S_s_1687, S_s_1686, S_s_1685, S_s_1684, S_s_1683, S_s_1682, S_s_1681, S_s_1680, S_s_1679, S_s_1678, S_s_1677, S_s_1676);
                                    FileClose(G_i_125);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_37 = (OrderOpenPrice() - L_d_36);
               if ((OrderOpenPrice() >= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_37)) {
                     S_s_1690 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1690 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1692 = "";
                        S_s_1693 = "";
                        S_s_1694 = "";
                        S_s_1695 = "";
                        S_s_1696 = "";
                        S_s_1697 = "";
                        S_s_1698 = (string)L_d_37;
                        S_s_1699 = " to :";
                        S_s_1700 = (string)Fa_i_00;
                        S_s_1701 = ", Magic Number: ";
                        S_s_1702 = (string)OrderTicket();
                        S_s_1703 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1704 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1704, " ", S_s_1703, S_s_1702, S_s_1701, S_s_1700, S_s_1699, S_s_1698, S_s_1697, S_s_1696, S_s_1695, S_s_1694, S_s_1693, S_s_1692);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_136 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_136 > 0) {
                                 FileSeek(G_i_136, 0, 2);
                                 S_s_1705 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_136, S_s_1705, " VERBOSE: ", S_s_1703, S_s_1702, S_s_1701, S_s_1700, S_s_1699, S_s_1698, S_s_1697, S_s_1696, S_s_1695, S_s_1694, S_s_1693, S_s_1692);
                                 FileClose(G_i_136);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_328 = GetLastError();
                           L_i_16 = G_i_328;
                           S_s_1706 = "";
                           S_s_1707 = "";
                           S_s_1708 = (string)OrderStopLoss();
                           S_s_1709 = " Current SL: ";
                           S_s_1710 = (string)Bid;
                           S_s_1711 = ", Bid: ";
                           S_s_1712 = (string)Ask;
                           S_s_1713 = ", Ask: ";
                           S_s_1714 = ErrorDescription(G_i_328);
                           S_s_1715 = " - ";
                           S_s_1716 = (string)G_i_328;
                           S_s_1717 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1718 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1718, " ", S_s_1717, S_s_1716, S_s_1715, S_s_1714, S_s_1713, S_s_1712, S_s_1711, S_s_1710, S_s_1709, S_s_1708, S_s_1707, S_s_1706);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_126 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_126 > 0) {
                                    FileSeek(G_i_126, 0, 2);
                                    S_s_1719 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_126, S_s_1719, " VERBOSE: ", S_s_1717, S_s_1716, S_s_1715, S_s_1714, S_s_1713, S_s_1712, S_s_1711, S_s_1710, S_s_1709, S_s_1708, S_s_1707, S_s_1706);
                                    FileClose(G_i_126);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         G_i_127 = I_i_12;
         G_d_131 = 0;
         if (I_i_12 == I_i_1) {
            G_d_131 = 0;
         }
         if (G_i_127 == I_i_2) {
            G_d_131 = 0;
         }
         if (G_i_127 == I_i_3) {
            G_d_131 = 0;
         }
         if (G_i_127 == I_i_4) {
            G_d_131 = 0;
         }
         if (G_i_127 == I_i_5) {
            G_d_131 = 0;
         }
         if (G_i_127 == I_i_6) {
            G_d_131 = 0;
         }
         if (G_i_127 == I_i_7) {
            G_d_131 = 0;
         }
         if (G_i_127 == I_i_8) {
            G_d_131 = 0;
         }
         if (G_i_127 == I_i_9) {
            G_d_131 = 0;
         }
         if (G_i_127 == I_i_10) {
            G_d_131 = 0;
         }
         if (G_i_127 == I_i_11) {
            G_d_131 = 0;
         }
         if (G_i_127 == I_i_12) {
            G_d_131 = 0;
         }
         if (G_i_127 == I_i_13) {
            G_d_131 = 0;
         }
         if (G_i_127 == I_i_14) {
            G_d_131 = 0;
         }
         returned_double = NormalizeDouble(G_d_131, _Digits);
         L_d_11 = returned_double;
         if ((L_d_11 > 0)) {
            G_i_129 = (int)(returned_double + 10);
            G_l_22 = OrderOpenTime();
            G_i_131 = 0;
            G_i_132 = 0;
            G_i_328 = G_i_129 + 10;
            if (G_i_328 > 0) {
               do {
                  if (G_l_22 < Time[G_i_132]) {
                     G_i_131 = G_i_131 + 1;
                  }
                  G_i_132 = G_i_132 + 1;
                  G_i_329 = G_i_129 + 10;
               } while (G_i_132 < G_i_329);
            }
            if ((G_i_131 >= L_d_11)) {
               S_s_1720 = "";
               S_s_1721 = "";
               S_s_1722 = "";
               S_s_1723 = "";
               S_s_1724 = "";
               S_s_1725 = "";
               S_s_1726 = (string)Fa_i_00;
               S_s_1727 = ", Magic Number: ";
               S_s_1728 = (string)OrderTicket();
               S_s_1729 = "bars - closing order with ticket: ";
               S_s_1730 = (string)L_d_11;
               S_s_1731 = "Exit After ";
               if (I_i_139 == 1) {
                  S_s_1732 = TimeToString(TimeCurrent(), 3);
                  Print("---VERBOSE--- ", S_s_1732, " ", S_s_1731, S_s_1730, S_s_1729, S_s_1728, S_s_1727, S_s_1726, S_s_1725, S_s_1724, S_s_1723, S_s_1722, S_s_1721, S_s_1720);
               } else {
                  if (I_i_139 == 2) {
                     G_i_133 = FileOpen("EAW_VerboseLog.txt", 3);
                     if (G_i_133 > 0) {
                        FileSeek(G_i_133, 0, 2);
                        S_s_1733 = TimeToString(TimeCurrent(), 3);
                        FileWrite(G_i_133, S_s_1733, " VERBOSE: ", S_s_1731, S_s_1730, S_s_1729, S_s_1728, S_s_1727, S_s_1726, S_s_1725, S_s_1724, S_s_1723, S_s_1722, S_s_1721, S_s_1720);
                        FileClose(G_i_133);
                     }
                  }
               }
               sqClosePositionAtMarket(-1);
            }
         }
      }
   }
   if (Fa_i_00 == I_i_13) {
      if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
         L_d_11 = getOrderTrailingStop(I_i_13, OrderType(), OrderOpenPrice());
         if ((L_d_11 > 0)) {
            G_i_134 = I_i_13;
            G_d_138 = 0;
            if (I_i_13 == I_i_1) {
               G_d_138 = (I_d_4 * 0);
            }
            if (G_i_134 == I_i_2) {
               G_d_138 = (I_d_4 * 0);
            }
            if (G_i_134 == I_i_3) {
               G_d_138 = (I_d_4 * 0);
            }
            if (G_i_134 == I_i_4) {
               G_d_138 = (I_d_4 * 0);
            }
            if (G_i_134 == I_i_5) {
               G_d_138 = (I_d_4 * 0);
            }
            if (G_i_134 == I_i_6) {
               G_d_138 = (I_d_4 * 0);
            }
            if (G_i_134 == I_i_7) {
               G_d_138 = (I_d_4 * 0);
            }
            if (G_i_134 == I_i_8) {
               G_d_138 = (I_d_4 * 0);
            }
            if (G_i_134 == I_i_9) {
               G_d_138 = (I_d_4 * 0);
            }
            if (G_i_134 == I_i_10) {
               G_d_138 = (I_d_4 * 0);
            }
            if (G_i_134 == I_i_11) {
               G_d_138 = (I_d_4 * 0);
            }
            if (G_i_134 == I_i_12) {
               G_d_138 = (I_d_4 * 0);
            }
            if (G_i_134 == I_i_13) {
               G_d_138 = (I_d_4 * 0);
            }
            if (G_i_134 == I_i_14) {
               G_d_138 = (I_d_4 * 0);
            }
            L_d_36 = NormalizeDouble(G_d_138, _Digits);
            if (OrderType() == OP_BUY) {
               L_d_38 = (Bid - OrderOpenPrice());
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_11)) {
                     S_s_1734 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1734 != DoubleToString(L_d_37, _Digits)) {//oto 000011DC;
                        S_s_1736 = "";
                        S_s_1737 = "";
                        S_s_1738 = "";
                        S_s_1739 = "";
                        S_s_1740 = "";
                        S_s_1741 = "";
                        S_s_1742 = (string)L_d_37;
                        S_s_1743 = " to :";
                        S_s_1744 = (string)Fa_i_00;
                        S_s_1745 = ", Magic Number: ";
                        S_s_1746 = (string)OrderTicket();
                        S_s_1747 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1748 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1748, " ", S_s_1747, S_s_1746, S_s_1745, S_s_1744, S_s_1743, S_s_1742, S_s_1741, S_s_1740, S_s_1739, S_s_1738, S_s_1737, S_s_1736);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_229 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_229 > 0) {
                                 FileSeek(G_i_229, 0, 2);
                                 S_s_1749 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_229, S_s_1749, " VERBOSE: ", S_s_1747, S_s_1746, S_s_1745, S_s_1744, S_s_1743, S_s_1742, S_s_1741, S_s_1740, S_s_1739, S_s_1738, S_s_1737, S_s_1736);
                                 FileClose(G_i_229);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_331 = GetLastError();
                           L_i_16 = G_i_331;
                           S_s_1750 = "";
                           S_s_1751 = "";
                           S_s_1752 = "";
                           S_s_1753 = "";
                           S_s_1754 = "";
                           S_s_1755 = "";
                           S_s_1756 = "";
                           S_s_1757 = "";
                           S_s_1758 = ErrorDescription(G_i_331);
                           S_s_1759 = " - ";
                           S_s_1760 = (string)G_i_331;
                           S_s_1761 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1762 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1762, " ", S_s_1761, S_s_1760, S_s_1759, S_s_1758, S_s_1757, S_s_1756, S_s_1755, S_s_1754, S_s_1753, S_s_1752, S_s_1751, S_s_1750);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_230 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_230 > 0) {
                                    FileSeek(G_i_230, 0, 2);
                                    S_s_1763 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_230, S_s_1763, " VERBOSE: ", S_s_1761, S_s_1760, S_s_1759, S_s_1758, S_s_1757, S_s_1756, S_s_1755, S_s_1754, S_s_1753, S_s_1752, S_s_1751, S_s_1750);
                                    FileClose(G_i_230);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_38 = (OrderOpenPrice() - Ask);
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_11)) {
                     S_s_1764 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1764 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1766 = "";
                        S_s_1767 = "";
                        S_s_1768 = "";
                        S_s_1769 = "";
                        S_s_1770 = "";
                        S_s_1771 = "";
                        S_s_1772 = (string)L_d_37;
                        S_s_1773 = " to :";
                        S_s_1774 = (string)Fa_i_00;
                        S_s_1775 = ", Magic Number: ";
                        S_s_1776 = (string)OrderTicket();
                        S_s_1777 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1778 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1778, " ", S_s_1777, S_s_1776, S_s_1775, S_s_1774, S_s_1773, S_s_1772, S_s_1771, S_s_1770, S_s_1769, S_s_1768, S_s_1767, S_s_1766);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_231 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_231 > 0) {
                                 FileSeek(G_i_231, 0, 2);
                                 S_s_1779 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_231, S_s_1779, " VERBOSE: ", S_s_1777, S_s_1776, S_s_1775, S_s_1774, S_s_1773, S_s_1772, S_s_1771, S_s_1770, S_s_1769, S_s_1768, S_s_1767, S_s_1766);
                                 FileClose(G_i_231);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_343 = GetLastError();
                           L_i_16 = G_i_343;
                           S_s_1780 = "";
                           S_s_1781 = "";
                           S_s_1782 = (string)OrderStopLoss();
                           S_s_1783 = " Current SL: ";
                           S_s_1784 = (string)Bid;
                           S_s_1785 = ", Bid: ";
                           S_s_1786 = (string)Ask;
                           S_s_1787 = ", Ask: ";
                           S_s_1788 = ErrorDescription(G_i_343);
                           S_s_1789 = " - ";
                           S_s_1790 = (string)G_i_343;
                           S_s_1791 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1792 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1792, " ", S_s_1791, S_s_1790, S_s_1789, S_s_1788, S_s_1787, S_s_1786, S_s_1785, S_s_1784, S_s_1783, S_s_1782, S_s_1781, S_s_1780);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_232 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_232 > 0) {
                                    FileSeek(G_i_232, 0, 2);
                                    S_s_1793 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_232, S_s_1793, " VERBOSE: ", S_s_1791, S_s_1790, S_s_1789, S_s_1788, S_s_1787, S_s_1786, S_s_1785, S_s_1784, S_s_1783, S_s_1782, S_s_1781, S_s_1780);
                                    FileClose(G_i_232);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         L_d_11 = getOrderBreakEven(I_i_13, OrderType(), OrderOpenPrice());
         G_i_233 = I_i_13;
         G_d_156 = 0;
         if (I_i_13 == I_i_1) {
            G_d_156 = (I_d_4 * 0);
         }
         if (G_i_233 == I_i_2) {
            G_d_156 = (I_d_4 * 0);
         }
         if (G_i_233 == I_i_3) {
            G_d_156 = (I_d_4 * 0);
         }
         if (G_i_233 == I_i_4) {
            G_d_156 = (I_d_4 * 0);
         }
         if (G_i_233 == I_i_5) {
            G_d_156 = (I_d_4 * 0);
         }
         if (G_i_233 == I_i_6) {
            G_d_156 = (I_d_4 * 0);
         }
         if (G_i_233 == I_i_7) {
            G_d_156 = (I_d_4 * 0);
         }
         if (G_i_233 == I_i_8) {
            G_d_156 = (I_d_4 * 0);
         }
         if (G_i_233 == I_i_9) {
            G_d_156 = (I_d_4 * 0);
         }
         if (G_i_233 == I_i_10) {
            G_d_156 = (I_d_4 * 0);
         }
         if (G_i_233 == I_i_11) {
            G_d_156 = (I_d_4 * 0);
         }
         if (G_i_233 == I_i_12) {
            G_d_156 = (I_d_4 * 0);
         }
         if (G_i_233 == I_i_13) {
            G_d_156 = (I_d_4 * 0);
         }
         if (G_i_233 == I_i_14) {
            G_d_156 = (I_d_4 * 0);
         }
         L_d_36 = NormalizeDouble(G_d_156, _Digits);
         if ((L_d_11 > 0)) {
            if (OrderType() == OP_BUY) {
               L_d_37 = (OrderOpenPrice() + L_d_36);
               if ((OrderOpenPrice() <= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_37)) {
                     S_s_1794 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1794 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1796 = "";
                        S_s_1797 = "";
                        S_s_1798 = "";
                        S_s_1799 = "";
                        S_s_1800 = "";
                        S_s_1801 = "";
                        S_s_1802 = (string)L_d_37;
                        S_s_1803 = " to :";
                        S_s_1804 = (string)Fa_i_00;
                        S_s_1805 = ", Magic Number: ";
                        S_s_1806 = (string)OrderTicket();
                        S_s_1807 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1808 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1808, " ", S_s_1807, S_s_1806, S_s_1805, S_s_1804, S_s_1803, S_s_1802, S_s_1801, S_s_1800, S_s_1799, S_s_1798, S_s_1797, S_s_1796);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_234 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_234 > 0) {
                                 FileSeek(G_i_234, 0, 2);
                                 S_s_1809 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_234, S_s_1809, " VERBOSE: ", S_s_1807, S_s_1806, S_s_1805, S_s_1804, S_s_1803, S_s_1802, S_s_1801, S_s_1800, S_s_1799, S_s_1798, S_s_1797, S_s_1796);
                                 FileClose(G_i_234);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_333 = GetLastError();
                           L_i_16 = G_i_333;
                           S_s_1810 = "";
                           S_s_1811 = "";
                           S_s_1812 = (string)OrderStopLoss();
                           S_s_1813 = " Current SL: ";
                           S_s_1814 = (string)Bid;
                           S_s_1815 = ", Bid: ";
                           S_s_1816 = (string)Ask;
                           S_s_1817 = ", Ask: ";
                           S_s_1818 = ErrorDescription(G_i_333);
                           S_s_1819 = " - ";
                           S_s_1820 = (string)G_i_333;
                           S_s_1821 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1822 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1822, " ", S_s_1821, S_s_1820, S_s_1819, S_s_1818, S_s_1817, S_s_1816, S_s_1815, S_s_1814, S_s_1813, S_s_1812, S_s_1811, S_s_1810);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_235 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_235 > 0) {
                                    FileSeek(G_i_235, 0, 2);
                                    S_s_1823 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_235, S_s_1823, " VERBOSE: ", S_s_1821, S_s_1820, S_s_1819, S_s_1818, S_s_1817, S_s_1816, S_s_1815, S_s_1814, S_s_1813, S_s_1812, S_s_1811, S_s_1810);
                                    FileClose(G_i_235);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_37 = (OrderOpenPrice() - L_d_36);
               if ((OrderOpenPrice() >= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_37)) {
                     S_s_1824 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1824 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1826 = "";
                        S_s_1827 = "";
                        S_s_1828 = "";
                        S_s_1829 = "";
                        S_s_1830 = "";
                        S_s_1831 = "";
                        S_s_1832 = (string)L_d_37;
                        S_s_1833 = " to :";
                        S_s_1834 = (string)Fa_i_00;
                        S_s_1835 = ", Magic Number: ";
                        S_s_1836 = (string)OrderTicket();
                        S_s_1837 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1838 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1838, " ", S_s_1837, S_s_1836, S_s_1835, S_s_1834, S_s_1833, S_s_1832, S_s_1831, S_s_1830, S_s_1829, S_s_1828, S_s_1827, S_s_1826);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_236 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_236 > 0) {
                                 FileSeek(G_i_236, 0, 2);
                                 S_s_1839 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_236, S_s_1839, " VERBOSE: ", S_s_1837, S_s_1836, S_s_1835, S_s_1834, S_s_1833, S_s_1832, S_s_1831, S_s_1830, S_s_1829, S_s_1828, S_s_1827, S_s_1826);
                                 FileClose(G_i_236);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_334 = GetLastError();
                           L_i_16 = G_i_334;
                           S_s_1840 = "";
                           S_s_1841 = "";
                           S_s_1842 = (string)OrderStopLoss();
                           S_s_1843 = " Current SL: ";
                           S_s_1844 = (string)Bid;
                           S_s_1845 = ", Bid: ";
                           S_s_1846 = (string)Ask;
                           S_s_1847 = ", Ask: ";
                           S_s_1848 = ErrorDescription(G_i_334);
                           S_s_1849 = " - ";
                           S_s_1850 = (string)G_i_334;
                           S_s_1851 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1852 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1852, " ", S_s_1851, S_s_1850, S_s_1849, S_s_1848, S_s_1847, S_s_1846, S_s_1845, S_s_1844, S_s_1843, S_s_1842, S_s_1841, S_s_1840);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_237 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_237 > 0) {
                                    FileSeek(G_i_237, 0, 2);
                                    S_s_1853 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_237, S_s_1853, " VERBOSE: ", S_s_1851, S_s_1850, S_s_1849, S_s_1848, S_s_1847, S_s_1846, S_s_1845, S_s_1844, S_s_1843, S_s_1842, S_s_1841, S_s_1840);
                                    FileClose(G_i_237);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         G_i_238 = I_i_13;
         G_d_157 = 0;
         if (I_i_13 == I_i_1) {
            G_d_157 = 0;
         }
         if (G_i_238 == I_i_2) {
            G_d_157 = 0;
         }
         if (G_i_238 == I_i_3) {
            G_d_157 = 0;
         }
         if (G_i_238 == I_i_4) {
            G_d_157 = 0;
         }
         if (G_i_238 == I_i_5) {
            G_d_157 = 0;
         }
         if (G_i_238 == I_i_6) {
            G_d_157 = 0;
         }
         if (G_i_238 == I_i_7) {
            G_d_157 = 0;
         }
         if (G_i_238 == I_i_8) {
            G_d_157 = 0;
         }
         if (G_i_238 == I_i_9) {
            G_d_157 = 0;
         }
         if (G_i_238 == I_i_10) {
            G_d_157 = 0;
         }
         if (G_i_238 == I_i_11) {
            G_d_157 = 0;
         }
         if (G_i_238 == I_i_12) {
            G_d_157 = 0;
         }
         if (G_i_238 == I_i_13) {
            G_d_157 = 0;
         }
         if (G_i_238 == I_i_14) {
            G_d_157 = 0;
         }
         returned_double = NormalizeDouble(G_d_157, _Digits);
         L_d_11 = returned_double;
         if ((L_d_11 > 0)) {
            G_i_239 = (int)(returned_double + 10);
            G_l_23 = OrderOpenTime();
            G_i_240 = 0;
            G_i_241 = 0;
            G_i_334 = G_i_239 + 10;
            if (G_i_334 > 0) {
               do {
                  if (G_l_23 < Time[G_i_241]) {
                     G_i_240 = G_i_240 + 1;
                  }
                  G_i_241 = G_i_241 + 1;
                  G_i_335 = G_i_239 + 10;
               } while (G_i_241 < G_i_335);
            }
            if ((G_i_240 >= L_d_11)) {
               S_s_1854 = "";
               S_s_1855 = "";
               S_s_1856 = "";
               S_s_1857 = "";
               S_s_1858 = "";
               S_s_1859 = "";
               S_s_1860 = (string)Fa_i_00;
               S_s_1861 = ", Magic Number: ";
               S_s_1862 = (string)OrderTicket();
               S_s_1863 = "bars - closing order with ticket: ";
               S_s_1864 = (string)L_d_11;
               S_s_1865 = "Exit After ";
               if (I_i_139 == 1) {
                  S_s_1866 = TimeToString(TimeCurrent(), 3);
                  Print("---VERBOSE--- ", S_s_1866, " ", S_s_1865, S_s_1864, S_s_1863, S_s_1862, S_s_1861, S_s_1860, S_s_1859, S_s_1858, S_s_1857, S_s_1856, S_s_1855, S_s_1854);
               } else {
                  if (I_i_139 == 2) {
                     G_i_242 = FileOpen("EAW_VerboseLog.txt", 3);
                     if (G_i_242 > 0) {
                        FileSeek(G_i_242, 0, 2);
                        S_s_1867 = TimeToString(TimeCurrent(), 3);
                        FileWrite(G_i_242, S_s_1867, " VERBOSE: ", S_s_1865, S_s_1864, S_s_1863, S_s_1862, S_s_1861, S_s_1860, S_s_1859, S_s_1858, S_s_1857, S_s_1856, S_s_1855, S_s_1854);
                        FileClose(G_i_242);
                     }
                  }
               }
               sqClosePositionAtMarket(-1);
            }
         }
      }
   }
   if (Fa_i_00 == I_i_14) {//
      if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
         L_d_11 = getOrderTrailingStop(I_i_14, OrderType(), OrderOpenPrice());
         if ((L_d_11 > 0)) {
            G_i_243 = I_i_14;
            G_d_158 = 0;
            if (I_i_14 == I_i_1) {
               G_d_158 = (I_d_4 * 0);
            }
            if (G_i_243 == I_i_2) {
               G_d_158 = (I_d_4 * 0);
            }
            if (G_i_243 == I_i_3) {
               G_d_158 = (I_d_4 * 0);
            }
            if (G_i_243 == I_i_4) {
               G_d_158 = (I_d_4 * 0);
            }
            if (G_i_243 == I_i_5) {
               G_d_158 = (I_d_4 * 0);
            }
            if (G_i_243 == I_i_6) {
               G_d_158 = (I_d_4 * 0);
            }
            if (G_i_243 == I_i_7) {
               G_d_158 = (I_d_4 * 0);
            }
            if (G_i_243 == I_i_8) {
               G_d_158 = (I_d_4 * 0);
            }
            if (G_i_243 == I_i_9) {
               G_d_158 = (I_d_4 * 0);
            }
            if (G_i_243 == I_i_10) {
               G_d_158 = (I_d_4 * 0);
            }
            if (G_i_243 == I_i_11) {
               G_d_158 = (I_d_4 * 0);
            }
            if (G_i_243 == I_i_12) {
               G_d_158 = (I_d_4 * 0);
            }
            if (G_i_243 == I_i_13) {
               G_d_158 = (I_d_4 * 0);
            }
            if (G_i_243 == I_i_14) {
               G_d_158 = (I_d_4 * 0);
            }
            L_d_36 = NormalizeDouble(G_d_158, _Digits);
            if (OrderType() == OP_BUY) {
               L_d_38 = (Bid - OrderOpenPrice());
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_11)) {
                     S_s_1868 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1868 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1870 = "";
                        S_s_1871 = "";
                        S_s_1872 = "";
                        S_s_1873 = "";
                        S_s_1874 = "";
                        S_s_1875 = "";
                        S_s_1876 = (string)L_d_37;
                        S_s_1877 = " to :";
                        S_s_1878 = (string)Fa_i_00;
                        S_s_1879 = ", Magic Number: ";
                        S_s_1880 = (string)OrderTicket();
                        S_s_1881 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1882 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1882, " ", S_s_1881, S_s_1880, S_s_1879, S_s_1878, S_s_1877, S_s_1876, S_s_1875, S_s_1874, S_s_1873, S_s_1872, S_s_1871, S_s_1870);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_244 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_244 > 0) {
                                 FileSeek(G_i_244, 0, 2);
                                 S_s_1883 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_244, S_s_1883, " VERBOSE: ", S_s_1881, S_s_1880, S_s_1879, S_s_1878, S_s_1877, S_s_1876, S_s_1875, S_s_1874, S_s_1873, S_s_1872, S_s_1871, S_s_1870);
                                 FileClose(G_i_244);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_337 = GetLastError();
                           L_i_16 = G_i_337;
                           S_s_1884 = "";
                           S_s_1885 = "";
                           S_s_1886 = "";
                           S_s_1887 = "";
                           S_s_1888 = "";
                           S_s_1889 = "";
                           S_s_1890 = "";
                           S_s_1891 = "";
                           S_s_1892 = ErrorDescription(G_i_337);
                           S_s_1893 = " - ";
                           S_s_1894 = (string)G_i_337;
                           S_s_1895 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1896 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1896, " ", S_s_1895, S_s_1894, S_s_1893, S_s_1892, S_s_1891, S_s_1890, S_s_1889, S_s_1888, S_s_1887, S_s_1886, S_s_1885, S_s_1884);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_245 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_245 > 0) {
                                    FileSeek(G_i_245, 0, 2);
                                    S_s_1897 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_245, S_s_1897, " VERBOSE: ", S_s_1895, S_s_1894, S_s_1893, S_s_1892, S_s_1891, S_s_1890, S_s_1889, S_s_1888, S_s_1887, S_s_1886, S_s_1885, S_s_1884);
                                    FileClose(G_i_245);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_38 = (OrderOpenPrice() - Ask);
               L_d_37 = L_d_11;
               if ((L_d_38 >= L_d_36)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_11)) {
                     S_s_1898 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1898 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1900 = "";
                        S_s_1901 = "";
                        S_s_1902 = "";
                        S_s_1903 = "";
                        S_s_1904 = "";
                        S_s_1905 = "";
                        S_s_1906 = (string)L_d_37;
                        S_s_1907 = " to :";
                        S_s_1908 = (string)Fa_i_00;
                        S_s_1909 = ", Magic Number: ";
                        S_s_1910 = (string)OrderTicket();
                        S_s_1911 = "Moving trailing stop for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1912 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1912, " ", S_s_1911, S_s_1910, S_s_1909, S_s_1908, S_s_1907, S_s_1906, S_s_1905, S_s_1904, S_s_1903, S_s_1902, S_s_1901, S_s_1900);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_246 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_246 > 0) {
                                 FileSeek(G_i_246, 0, 2);
                                 S_s_1913 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_246, S_s_1913, " VERBOSE: ", S_s_1911, S_s_1910, S_s_1909, S_s_1908, S_s_1907, S_s_1906, S_s_1905, S_s_1904, S_s_1903, S_s_1902, S_s_1901, S_s_1900);
                                 FileClose(G_i_246);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_342 = GetLastError();
                           L_i_16 = G_i_342;
                           S_s_1914 = "";
                           S_s_1915 = "";
                           S_s_1916 = (string)OrderStopLoss();
                           S_s_1917 = " Current SL: ";
                           S_s_1918 = (string)Bid;
                           S_s_1919 = ", Bid: ";
                           S_s_1920 = (string)Ask;
                           S_s_1921 = ", Ask: ";
                           S_s_1922 = ErrorDescription(G_i_342);
                           S_s_1923 = " - ";
                           S_s_1924 = (string)G_i_342;
                           S_s_1925 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1926 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1926, " ", S_s_1925, S_s_1924, S_s_1923, S_s_1922, S_s_1921, S_s_1920, S_s_1919, S_s_1918, S_s_1917, S_s_1916, S_s_1915, S_s_1914);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_247 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_247 > 0) {
                                    FileSeek(G_i_247, 0, 2);
                                    S_s_1927 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_247, S_s_1927, " VERBOSE: ", S_s_1925, S_s_1924, S_s_1923, S_s_1922, S_s_1921, S_s_1920, S_s_1919, S_s_1918, S_s_1917, S_s_1916, S_s_1915, S_s_1914);
                                    FileClose(G_i_247);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         L_d_11 = getOrderBreakEven(I_i_14, OrderType(), OrderOpenPrice());
         G_i_248 = I_i_14;
         G_d_159 = 0;
         if (I_i_14 == I_i_1) {
            G_d_159 = (I_d_4 * 0);
         }
         if (G_i_248 == I_i_2) {
            G_d_159 = (I_d_4 * 0);
         }
         if (G_i_248 == I_i_3) {
            G_d_159 = (I_d_4 * 0);
         }
         if (G_i_248 == I_i_4) {
            G_d_159 = (I_d_4 * 0);
         }
         if (G_i_248 == I_i_5) {
            G_d_159 = (I_d_4 * 0);
         }
         if (G_i_248 == I_i_6) {
            G_d_159 = (I_d_4 * 0);
         }
         if (G_i_248 == I_i_7) {
            G_d_159 = (I_d_4 * 0);
         }
         if (G_i_248 == I_i_8) {
            G_d_159 = (I_d_4 * 0);
         }
         if (G_i_248 == I_i_9) {
            G_d_159 = (I_d_4 * 0);
         }
         if (G_i_248 == I_i_10) {
            G_d_159 = (I_d_4 * 0);
         }
         if (G_i_248 == I_i_11) {
            G_d_159 = (I_d_4 * 0);
         }
         if (G_i_248 == I_i_12) {
            G_d_159 = (I_d_4 * 0);
         }
         if (G_i_248 == I_i_13) {
            G_d_159 = (I_d_4 * 0);
         }
         if (G_i_248 == I_i_14) {
            G_d_159 = (I_d_4 * 0);
         }
         L_d_36 = NormalizeDouble(G_d_159, _Digits);
         if ((L_d_11 > 0)) {
            if (OrderType() == OP_BUY) {
               L_d_37 = (OrderOpenPrice() + L_d_36);
               if ((OrderOpenPrice() <= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() < L_d_37)) {
                     S_s_1928 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1928 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1930 = "";
                        S_s_1931 = "";
                        S_s_1932 = "";
                        S_s_1933 = "";
                        S_s_1934 = "";
                        S_s_1935 = "";
                        S_s_1936 = (string)L_d_37;
                        S_s_1937 = " to :";
                        S_s_1938 = (string)Fa_i_00;
                        S_s_1939 = ", Magic Number: ";
                        S_s_1940 = (string)OrderTicket();
                        S_s_1941 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1942 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1942, " ", S_s_1941, S_s_1940, S_s_1939, S_s_1938, S_s_1937, S_s_1936, S_s_1935, S_s_1934, S_s_1933, S_s_1932, S_s_1931, S_s_1930);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_249 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_249 > 0) {
                                 FileSeek(G_i_249, 0, 2);
                                 S_s_1943 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_249, S_s_1943, " VERBOSE: ", S_s_1941, S_s_1940, S_s_1939, S_s_1938, S_s_1937, S_s_1936, S_s_1935, S_s_1934, S_s_1933, S_s_1932, S_s_1931, S_s_1930);
                                 FileClose(G_i_249);
                              }
                           }
                        }
                        if (!OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295)) {
                           G_i_339 = GetLastError();
                           L_i_16 = G_i_339;
                           S_s_1944 = "";
                           S_s_1945 = "";
                           S_s_1946 = (string)OrderStopLoss();
                           S_s_1947 = " Current SL: ";
                           S_s_1948 = (string)Bid;
                           S_s_1949 = ", Bid: ";
                           S_s_1950 = (string)Ask;
                           S_s_1951 = ", Ask: ";
                           S_s_1952 = ErrorDescription(G_i_339);
                           S_s_1953 = " - ";
                           S_s_1954 = (string)G_i_339;
                           S_s_1955 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1956 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1956, " ", S_s_1955, S_s_1954, S_s_1953, S_s_1952, S_s_1951, S_s_1950, S_s_1949, S_s_1948, S_s_1947, S_s_1946, S_s_1945, S_s_1944);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_250 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_250 > 0) {
                                    FileSeek(G_i_250, 0, 2);
                                    S_s_1957 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_250, S_s_1957, " VERBOSE: ", S_s_1955, S_s_1954, S_s_1953, S_s_1952, S_s_1951, S_s_1950, S_s_1949, S_s_1948, S_s_1947, S_s_1946, S_s_1945, S_s_1944);
                                    FileClose(G_i_250);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            } else {
               L_d_37 = (OrderOpenPrice() - L_d_36);
               if ((OrderOpenPrice() >= L_d_11)) {
                  if ((OrderStopLoss() == 0) || (OrderStopLoss() > L_d_37)) {
                     S_s_1958 = DoubleToString(OrderStopLoss(), _Digits);
                     if (S_s_1958 != DoubleToString(L_d_37, _Digits)) {
                        S_s_1960 = "";
                        S_s_1961 = "";
                        S_s_1962 = "";
                        S_s_1963 = "";
                        S_s_1964 = "";
                        S_s_1965 = "";
                        S_s_1966 = (string)L_d_37;
                        S_s_1967 = " to :";
                        S_s_1968 = (string)Fa_i_00;
                        S_s_1969 = ", Magic Number: ";
                        S_s_1970 = (string)OrderTicket();
                        S_s_1971 = "Moving SL 2 BE for order with ticket: ";
                        if (I_i_139 == 1) {
                           S_s_1972 = TimeToString(TimeCurrent(), 3);
                           Print("---VERBOSE--- ", S_s_1972, " ", S_s_1971, S_s_1970, S_s_1969, S_s_1968, S_s_1967, S_s_1966, S_s_1965, S_s_1964, S_s_1963, S_s_1962, S_s_1961, S_s_1960);
                        } else {
                           if (I_i_139 == 2) {
                              G_i_251 = FileOpen("EAW_VerboseLog.txt", 3);
                              if (G_i_251 > 0) {
                                 FileSeek(G_i_251, 0, 2);
                                 S_s_1973 = TimeToString(TimeCurrent(), 3);
                                 FileWrite(G_i_251, S_s_1973, " VERBOSE: ", S_s_1971, S_s_1970, S_s_1969, S_s_1968, S_s_1967, S_s_1966, S_s_1965, S_s_1964, S_s_1963, S_s_1962, S_s_1961, S_s_1960);
                                 FileClose(G_i_251);
                              }
                           }
                        }
                        if (OrderModify(OrderTicket(), OrderOpenPrice(), L_d_37, OrderTakeProfit(), 0, 4294967295) != true) {
                           G_i_340 = GetLastError();
                           L_i_16 = G_i_340;
                           S_s_1974 = "";
                           S_s_1975 = "";
                           S_s_1976 = (string)OrderStopLoss();
                           S_s_1977 = " Current SL: ";
                           S_s_1978 = (string)Bid;
                           S_s_1979 = ", Bid: ";
                           S_s_1980 = (string)Ask;
                           S_s_1981 = ", Ask: ";
                           S_s_1982 = ErrorDescription(G_i_340);
                           S_s_1983 = " - ";
                           S_s_1984 = (string)G_i_340;
                           S_s_1985 = "Failed, error: ";
                           if (I_i_139 == 1) {
                              S_s_1986 = TimeToString(TimeCurrent(), 3);
                              Print("---VERBOSE--- ", S_s_1986, " ", S_s_1985, S_s_1984, S_s_1983, S_s_1982, S_s_1981, S_s_1980, S_s_1979, S_s_1978, S_s_1977, S_s_1976, S_s_1975, S_s_1974);
                           } else {
                              if (I_i_139 == 2) {
                                 G_i_252 = FileOpen("EAW_VerboseLog.txt", 3);
                                 if (G_i_252 > 0) {
                                    FileSeek(G_i_252, 0, 2);
                                    S_s_1987 = TimeToString(TimeCurrent(), 3);
                                    FileWrite(G_i_252, S_s_1987, " VERBOSE: ", S_s_1985, S_s_1984, S_s_1983, S_s_1982, S_s_1981, S_s_1980, S_s_1979, S_s_1978, S_s_1977, S_s_1976, S_s_1975, S_s_1974);
                                    FileClose(G_i_252);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         G_i_253 = I_i_14;
         G_d_160 = 0;
         if (I_i_14 == I_i_1) {
            G_d_160 = 0;
         }
         if (G_i_253 == I_i_2) {
            G_d_160 = 0;
         }
         if (G_i_253 == I_i_3) {
            G_d_160 = 0;
         }
         if (G_i_253 == I_i_4) {
            G_d_160 = 0;
         }
         if (G_i_253 == I_i_5) {
            G_d_160 = 0;
         }
         if (G_i_253 == I_i_6) {
            G_d_160 = 0;
         }
         if (G_i_253 == I_i_7) {
            G_d_160 = 0;
         }
         if (G_i_253 == I_i_8) {
            G_d_160 = 0;
         }
         if (G_i_253 == I_i_9) {
            G_d_160 = 0;
         }
         if (G_i_253 == I_i_10) {
            G_d_160 = 0;
         }
         if (G_i_253 == I_i_11) {
            G_d_160 = 0;
         }
         if (G_i_253 == I_i_12) {
            G_d_160 = 0;
         }
         if (G_i_253 == I_i_13) {
            G_d_160 = 0;
         }
         if (G_i_253 == I_i_14) {
            G_d_160 = 0;
         }
         returned_double = NormalizeDouble(G_d_160, _Digits);
         L_d_11 = returned_double;
         if ((L_d_11 > 0)) {//
            G_i_254 = (int)(returned_double + 10);
            G_l_24 = OrderOpenTime();
            G_i_255 = 0;
            G_i_256 = 0;
            G_i_340 = G_i_254 + 10;
            if (G_i_340 > 0) {
               do {
                  if (G_l_24 < Time[G_i_256]) {
                     G_i_255 = G_i_255 + 1;
                  }
                  G_i_256 = G_i_256 + 1;
                  G_i_341 = G_i_254 + 10;
               } while (G_i_256 < G_i_341);
            }
            if ((G_i_255 < L_d_11)) return;
            S_s_1988 = "";
            S_s_1989 = "";
            S_s_1990 = "";
            S_s_1991 = "";
            S_s_1992 = "";
            S_s_1993 = "";
            S_s_1994 = (string)Fa_i_00;
            S_s_1995 = ", Magic Number: ";
            S_s_1996 = (string)OrderTicket();
            S_s_1997 = "bars - closing order with ticket: ";
            S_s_1998 = (string)L_d_11;
            S_s_1999 = "Exit After ";
            if (I_i_139 == 1) {
               S_s_2000 = TimeToString(TimeCurrent(), 3);
               Print("---VERBOSE--- ", S_s_2000, " ", S_s_1999, S_s_1998, S_s_1997, S_s_1996, S_s_1995, S_s_1994, S_s_1993, S_s_1992, S_s_1991, S_s_1990, S_s_1989, S_s_1988);
            } else {
               if (I_i_139 == 2) {
                  G_i_257 = FileOpen("EAW_VerboseLog.txt", 3);
                  if (G_i_257 > 0) {
                     FileSeek(G_i_257, 0, 2);
                     S_s_2001 = TimeToString(TimeCurrent(), 3);
                     FileWrite(G_i_257, S_s_2001, " VERBOSE: ", S_s_1999, S_s_1998, S_s_1997, S_s_1996, S_s_1995, S_s_1994, S_s_1993, S_s_1992, S_s_1991, S_s_1990, S_s_1989, S_s_1988);
                     FileClose(G_i_257);
                  }
               }
            }
            sqClosePositionAtMarket(-1);
         }
      }
   }
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void manageOrderExpiration(int Fa_i_00) {
   string S_s_2639;
   string S_s_2640;
   string S_s_2641;
   string S_s_2642;
   string S_s_2643;
   string S_s_2644;
   string S_s_2645;
   string S_s_2646;
   string S_s_2647;
   string S_s_2648;
   string S_s_2649;
   string S_s_2650;
   string S_s_2651;
   string S_s_2652;
   string S_s_2653;
   string S_s_2654;
   string S_s_2655;
   string S_s_2656;
   string S_s_2657;
   string S_s_2658;
   string S_s_2659;
   string S_s_2660;
   string S_s_2661;
   string S_s_2662;
   string S_s_2663;
   string S_s_2664;
   string S_s_2665;
   string S_s_2625;
   string S_s_2626;
   string S_s_2627;
   string S_s_2628;
   string S_s_2629;
   string S_s_2630;
   string S_s_2631;
   string S_s_2632;
   string S_s_2633;
   string S_s_2634;
   string S_s_2635;
   string S_s_2567;
   string S_s_2568;
   string S_s_2569;
   string S_s_2570;
   string S_s_2571;
   string S_s_2572;
   string S_s_2573;
   string S_s_2574;
   string S_s_2575;
   string S_s_2576;
   string S_s_2577;
   string S_s_2578;
   string S_s_2579;
   string S_s_2580;
   string S_s_2581;
   string S_s_2582;
   string S_s_2583;
   string S_s_2584;
   string S_s_2585;
   string S_s_2586;
   string S_s_2587;
   string S_s_2588;
   string S_s_2589;
   string S_s_2590;
   string S_s_2591;
   string S_s_2592;
   string S_s_2593;
   string S_s_2594;
   string S_s_2595;
   string S_s_2596;
   string S_s_2597;
   string S_s_2410;
   string S_s_2411;
   string S_s_2412;
   string S_s_2413;
   string S_s_2414;
   string S_s_2415;
   string S_s_2416;
   string S_s_2417;
   string S_s_2418;
   string S_s_2419;
   string S_s_2420;
   string S_s_2421;
   string S_s_2422;
   string S_s_2423;
   string S_s_2424;
   string S_s_2425;
   string S_s_2426;
   string S_s_2427;
   string S_s_2428;
   string S_s_2429;
   string S_s_2430;
   string S_s_2431;
   string S_s_2432;
   string S_s_2433;
   string S_s_2434;
   string S_s_2435;
   string S_s_2436;
   string S_s_2437;
   string S_s_2438;
   string S_s_2439;
   string S_s_2440;
   string S_s_2441;
   string S_s_2442;
   string S_s_2443;
   string S_s_2444;
   string S_s_2445;
   string S_s_2446;
   string S_s_2447;
   string S_s_2448;
   string S_s_2449;
   string S_s_2450;
   string S_s_2451;
   string S_s_2452;
   string S_s_2453;
   string S_s_2454;
   string S_s_2455;
   string S_s_2456;
   string S_s_2457;
   string S_s_2458;
   string S_s_2459;
   string S_s_2460;
   string S_s_2461;
   string S_s_2462;
   string S_s_2463;
   string S_s_2464;
   string S_s_2465;
   string S_s_2466;
   string S_s_2467;
   string S_s_2468;
   string S_s_2469;
   string S_s_2470;
   string S_s_2471;
   string S_s_2472;
   string S_s_2473;
   string S_s_2474;
   string S_s_2475;
   string S_s_2476;
   string S_s_2477;
   string S_s_2478;
   string S_s_2479;
   string S_s_2480;
   string S_s_2481;
   string S_s_2482;
   string S_s_2483;
   string S_s_2484;
   string S_s_2485;
   string S_s_2486;
   string S_s_2487;
   string S_s_2488;
   string S_s_2489;
   string S_s_2490;
   string S_s_2491;
   string S_s_2492;
   string S_s_2493;
   string S_s_2494;
   string S_s_2495;
   string S_s_2496;
   string S_s_2497;
   string S_s_2498;
   string S_s_2499;
   string S_s_2500;
   string S_s_2501;
   string S_s_2502;
   string S_s_2503;
   string S_s_2504;
   string S_s_2505;
   string S_s_2506;
   string S_s_2507;
   string S_s_2508;
   string S_s_2509;
   string S_s_2510;
   string S_s_2511;
   string S_s_2512;
   string S_s_2513;
   string S_s_2514;
   string S_s_2515;
   string S_s_2516;
   string S_s_2517;
   string S_s_2518;
   string S_s_2519;
   string S_s_2520;
   string S_s_2521;
   string S_s_2522;
   string S_s_2523;
   string S_s_2524;
   string S_s_2525;
   string S_s_2526;
   string S_s_2527;
   string S_s_2528;
   string S_s_2190;
   string S_s_2191;
   string S_s_2192;
   string S_s_2193;
   string S_s_2194;
   string S_s_2195;
   string S_s_2196;
   string S_s_2197;
   int L_i_13;
   int L_i_17;
   L_i_13 = 0;
   L_i_17 = 0;
   G_i_19 = 0;
   G_d_140 = 0;
   G_i_144 = 0;
   G_l_123 = 0;
   G_i_22 = 0;
   G_i_145 = 0;
   G_i_23 = 0;
   G_i_24 = 0;
   G_d_301 = 0;
   G_i_146 = 0;
   G_l_124 = 0;
   G_i_26 = 0;
   G_i_148 = 0;
   G_i_27 = 0;
   G_i_149 = 0;
   G_d_13 = 0;
   G_i_28 = 0;
   G_l_125 = 0;
   G_i_29 = 0;
   G_i_151 = 0;
   G_i_30 = 0;
   G_i_152 = 0;
   G_d_17 = 0;
   G_i_31 = 0;
   G_l_126 = 0;
   G_i_155 = 0;
   G_i_32 = 0;
   G_i_156 = 0;
   G_i_33 = 0;
   G_d_21 = 0;
   G_i_34 = 0;
   G_l_127 = 0;
   G_i_356 = 0;
   G_i_35 = 0;
   G_i_357 = 0;
   G_i_159 = 0;
   G_d_302 = 0;
   G_i_160 = 0;
   G_l_128 = 0;
   G_i_358 = 0;
   G_i_38 = 0;
   G_i_161 = 0;
   G_i_162 = 0;
   G_d_303 = 0;
   G_i_163 = 0;
   G_l_129 = 0;
   G_i_40 = 0;
   G_i_164 = 0;
   G_i_41 = 0;
   G_i_165 = 0;
   G_d_304 = 0;
   G_i_359 = 0;
   G_l_130 = 0;
   G_i_43 = 0;
   G_i_167 = 0;
   G_i_168 = 0;
   G_i_44 = 0;
   G_d_38 = 0;
   G_i_45 = 0;
   G_l_131 = 0;
   G_i_46 = 0;
   G_i_171 = 0;
   G_i_172 = 0;
   G_i_47 = 0;
   G_d_42 = 0;
   G_i_173 = 0;
   G_l_132 = 0;
   G_i_174 = 0;
   G_i_49 = 0;
   G_i_175 = 0;
   G_i_50 = 0;
   G_d_46 = 0;
   G_i_360 = 0;
   G_l_133 = 0;
   G_i_177 = 0;
   G_i_178 = 0;
   G_i_52 = 0;
   G_i_361 = 0;
   G_d_305 = 0;
   G_i_53 = 0;
   G_l_134 = 0;
   G_i_55 = 0;
   G_i_180 = 0;
   G_i_362 = 0;
   G_i_56 = 0;
   G_d_53 = 0;
   G_i_57 = 0;
   G_l_135 = 0;
   G_i_183 = 0;
   G_i_58 = 0;
   G_i_184 = 0;
   G_i_59 = 0;
   G_d_57 = 0;
   G_i_60 = 0;
   G_l_136 = 0;
   G_i_187 = 0;
   G_i_61 = 0;
   G_i_188 = 0;
   L_i_13 = 0;
   L_i_17 = 0;
   if (Fa_i_00 == I_i_1 && OrderType() != OP_BUY && OrderType() != OP_SELL) {
      G_i_19 = I_i_1;
      G_d_140 = 0;
      if (I_i_1 == I_i_1) {
         G_d_140 = 0;
      }
      if (G_i_19 == I_i_2) {
         G_d_140 = 0;
      }
      if (G_i_19 == I_i_3) {
         G_d_140 = 0;
      }
      if (G_i_19 == I_i_4) {
         G_d_140 = 0;
      }
      if (G_i_19 == I_i_5) {
         G_d_140 = 0;
      }
      if (G_i_19 == I_i_6) {
         G_d_140 = 0;
      }
      if (G_i_19 == I_i_7) {
         G_d_140 = 0;
      }
      if (G_i_19 == I_i_8) {
         G_d_140 = 0;
      }
      if (G_i_19 == I_i_9) {
         G_d_140 = 0;
      }
      if (G_i_19 == I_i_10) {
         G_d_140 = 0;
      }
      if (G_i_19 == I_i_11) {
         G_d_140 = 0;
      }
      if (G_i_19 == I_i_12) {
         G_d_140 = 0;
      }
      if (G_i_19 == I_i_13) {
         G_d_140 = 0;
      }
      if (G_i_19 == I_i_14) {
         G_d_140 = 0;
      }
      L_i_13 = (int)NormalizeDouble(G_d_140, _Digits);
      if (L_i_13 > 0) {
         G_i_189 = L_i_13 + 10;
         G_i_144 = G_i_189;
         G_l_123 = OrderOpenTime();
         G_i_22 = 0;
         G_i_145 = 0;
         G_i_189 = G_i_189 + 10;
         if (G_i_189 > 0) {
            do {
               if (G_l_123 < Time[G_i_145]) {
                  G_i_22 = G_i_22 + 1;
               }
               G_i_145 = G_i_145 + 1;
               G_i_62 = G_i_144 + 10;
            } while (G_i_145 < G_i_62);
         }
         L_i_17 = G_i_22;
         if (G_i_22 >= L_i_13) {
            S_s_2639 = "";
            S_s_2640 = "";
            S_s_2641 = "";
            S_s_2642 = "";
            S_s_2643 = "";
            S_s_2644 = "";
            S_s_2645 = "";
            S_s_2646 = " expired";
            S_s_2647 = (string)Fa_i_00;
            S_s_2648 = ", Magic Number: ";
            S_s_2649 = (string)OrderTicket();
            S_s_2650 = "Order with ticket: ";
            if (I_i_139 == 1) {
               S_s_2651 = TimeToString(TimeCurrent(), 3);
               Print("---VERBOSE--- ", S_s_2651, " ", S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641, S_s_2640, S_s_2639);
            } else {
               if (I_i_139 == 2) {
                  G_i_23 = FileOpen("EAW_VerboseLog.txt", 3);
                  if (G_i_23 > 0) {
                     FileSeek(G_i_23, 0, 2);
                     S_s_2652 = TimeToString(TimeCurrent(), 3);
                     FileWrite(G_i_23, S_s_2652, " VERBOSE: ", S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641, S_s_2640, S_s_2639);
                     FileClose(G_i_23);
                  }
               }
            }
            order_check = OrderDelete(OrderTicket(), 4294967295);
         }
      }
   }
   if (Fa_i_00 == I_i_2 && OrderType() != OP_BUY && OrderType() != OP_SELL) {
      G_i_24 = I_i_2;
      G_d_301 = 0;
      if (I_i_2 == I_i_1) {
         G_d_301 = 0;
      }
      if (G_i_24 == I_i_2) {
         G_d_301 = 0;
      }
      if (G_i_24 == I_i_3) {
         G_d_301 = 0;
      }
      if (G_i_24 == I_i_4) {
         G_d_301 = 0;
      }
      if (G_i_24 == I_i_5) {
         G_d_301 = 0;
      }
      if (G_i_24 == I_i_6) {
         G_d_301 = 0;
      }
      if (G_i_24 == I_i_7) {
         G_d_301 = 0;
      }
      if (G_i_24 == I_i_8) {
         G_d_301 = 0;
      }
      if (G_i_24 == I_i_9) {
         G_d_301 = 0;
      }
      if (G_i_24 == I_i_10) {
         G_d_301 = 0;
      }
      if (G_i_24 == I_i_11) {
         G_d_301 = 0;
      }
      if (G_i_24 == I_i_12) {
         G_d_301 = 0;
      }
      if (G_i_24 == I_i_13) {
         G_d_301 = 0;
      }
      if (G_i_24 == I_i_14) {
         G_d_301 = 0;
      }
      L_i_13 = (int)NormalizeDouble(G_d_301, _Digits);
      if (L_i_13 > 0) {
         G_i_62 = L_i_13 + 10;
         G_i_146 = G_i_62;
         G_l_124 = OrderOpenTime();
         G_i_26 = 0;
         G_i_148 = 0;
         G_i_62 = G_i_62 + 10;
         if (G_i_62 > 0) {
            do {
               if (G_l_124 < Time[G_i_148]) {
                  G_i_26 = G_i_26 + 1;
               }
               G_i_148 = G_i_148 + 1;
               G_i_190 = G_i_146 + 10;
            } while (G_i_148 < G_i_190);
         }
         L_i_17 = G_i_26;
         if (G_i_26 >= L_i_13) {
            S_s_2653 = "";
            S_s_2654 = "";
            S_s_2655 = "";
            S_s_2656 = "";
            S_s_2657 = "";
            S_s_2658 = "";
            S_s_2659 = "";
            S_s_2660 = " expired";
            S_s_2661 = (string)Fa_i_00;
            S_s_2662 = ", Magic Number: ";
            S_s_2663 = (string)OrderTicket();
            S_s_2664 = "Order with ticket: ";
            if (I_i_139 == 1) {
               S_s_2665 = TimeToString(TimeCurrent(), 3);
               Print("---VERBOSE--- ", S_s_2665, " ", S_s_2664, S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655, S_s_2654, S_s_2653);
            } else {
               if (I_i_139 == 2) {
                  G_i_27 = FileOpen("EAW_VerboseLog.txt", 3);
                  if (G_i_27 > 0) {
                     FileSeek(G_i_27, 0, 2);
                     S_s_2625 = TimeToString(TimeCurrent(), 3);
                     FileWrite(G_i_27, S_s_2625, " VERBOSE: ", S_s_2664, S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655, S_s_2654, S_s_2653);
                     FileClose(G_i_27);
                  }
               }
            }
            order_check = OrderDelete(OrderTicket(), 4294967295);
         }
      }
   }
   if (Fa_i_00 == I_i_3 && OrderType() != OP_BUY && OrderType() != OP_SELL) {
      G_i_149 = I_i_3;
      G_d_13 = 0;
      if (I_i_3 == I_i_1) {
         G_d_13 = 0;
      }
      if (G_i_149 == I_i_2) {
         G_d_13 = 0;
      }
      if (G_i_149 == I_i_3) {
         G_d_13 = 0;
      }
      if (G_i_149 == I_i_4) {
         G_d_13 = 0;
      }
      if (G_i_149 == I_i_5) {
         G_d_13 = 0;
      }
      if (G_i_149 == I_i_6) {
         G_d_13 = 0;
      }
      if (G_i_149 == I_i_7) {
         G_d_13 = 0;
      }
      if (G_i_149 == I_i_8) {
         G_d_13 = 0;
      }
      if (G_i_149 == I_i_9) {
         G_d_13 = 0;
      }
      if (G_i_149 == I_i_10) {
         G_d_13 = 0;
      }
      if (G_i_149 == I_i_11) {
         G_d_13 = 0;
      }
      if (G_i_149 == I_i_12) {
         G_d_13 = 0;
      }
      if (G_i_149 == I_i_13) {
         G_d_13 = 0;
      }
      if (G_i_149 == I_i_14) {
         G_d_13 = 0;
      }
      L_i_13 = (int)NormalizeDouble(G_d_13, _Digits);
      if (L_i_13 > 0) {
         G_i_190 = L_i_13 + 10;
         G_i_28 = G_i_190;
         G_l_125 = OrderOpenTime();
         G_i_29 = 0;
         G_i_151 = 0;
         G_i_190 = G_i_190 + 10;
         if (G_i_190 > 0) {
            do {
               if (G_l_125 < Time[G_i_151]) {
                  G_i_29 = G_i_29 + 1;
               }
               G_i_151 = G_i_151 + 1;
               G_i_63 = G_i_28 + 10;
            } while (G_i_151 < G_i_63);
         }
         L_i_17 = G_i_29;
         if (G_i_29 >= L_i_13) {
            S_s_2626 = "";
            S_s_2627 = "";
            S_s_2628 = "";
            S_s_2629 = "";
            S_s_2630 = "";
            S_s_2631 = "";
            S_s_2632 = "";
            S_s_2633 = " expired";
            S_s_2634 = (string)Fa_i_00;
            S_s_2635 = ", Magic Number: ";
            S_s_2567 = (string)OrderTicket();
            S_s_2568 = "Order with ticket: ";
            if (I_i_139 == 1) {
               S_s_2569 = TimeToString(TimeCurrent(), 3);
               Print("---VERBOSE--- ", S_s_2569, " ", S_s_2568, S_s_2567, S_s_2635, S_s_2634, S_s_2633, S_s_2632, S_s_2631, S_s_2630, S_s_2629, S_s_2628, S_s_2627, S_s_2626);
            } else {
               if (I_i_139 == 2) {
                  G_i_30 = FileOpen("EAW_VerboseLog.txt", 3);
                  if (G_i_30 > 0) {
                     FileSeek(G_i_30, 0, 2);
                     S_s_2570 = TimeToString(TimeCurrent(), 3);
                     FileWrite(G_i_30, S_s_2570, " VERBOSE: ", S_s_2568, S_s_2567, S_s_2635, S_s_2634, S_s_2633, S_s_2632, S_s_2631, S_s_2630, S_s_2629, S_s_2628, S_s_2627, S_s_2626);
                     FileClose(G_i_30);
                  }
               }
            }
            order_check = OrderDelete(OrderTicket(), 4294967295);
         }
      }
   }
   if (Fa_i_00 == I_i_4 && OrderType() != OP_BUY && OrderType() != OP_SELL) {
      G_i_152 = I_i_4;
      G_d_17 = 0;
      if (I_i_4 == I_i_1) {
         G_d_17 = 0;
      }
      if (G_i_152 == I_i_2) {
         G_d_17 = 0;
      }
      if (G_i_152 == I_i_3) {
         G_d_17 = 0;
      }
      if (G_i_152 == I_i_4) {
         G_d_17 = 0;
      }
      if (G_i_152 == I_i_5) {
         G_d_17 = 0;
      }
      if (G_i_152 == I_i_6) {
         G_d_17 = 0;
      }
      if (G_i_152 == I_i_7) {
         G_d_17 = 0;
      }
      if (G_i_152 == I_i_8) {
         G_d_17 = 0;
      }
      if (G_i_152 == I_i_9) {
         G_d_17 = 0;
      }
      if (G_i_152 == I_i_10) {
         G_d_17 = 0;
      }
      if (G_i_152 == I_i_11) {
         G_d_17 = 0;
      }
      if (G_i_152 == I_i_12) {
         G_d_17 = 0;
      }
      if (G_i_152 == I_i_13) {
         G_d_17 = 0;
      }
      if (G_i_152 == I_i_14) {
         G_d_17 = 0;
      }
      L_i_13 = (int)NormalizeDouble(G_d_17, _Digits);
      if (L_i_13 > 0) {
         G_i_63 = L_i_13 + 10;
         G_i_31 = G_i_63;
         G_l_126 = OrderOpenTime();
         G_i_155 = 0;
         G_i_32 = 0;
         G_i_63 = G_i_63 + 10;
         if (G_i_63 > 0) {
            do {
               if (G_l_126 < Time[G_i_32]) {
                  G_i_155 = G_i_155 + 1;
               }
               G_i_32 = G_i_32 + 1;
               G_i_363 = G_i_31 + 10;
            } while (G_i_32 < G_i_363);
         }
         L_i_17 = G_i_155;
         if (G_i_155 >= L_i_13) {
            S_s_2571 = "";
            S_s_2572 = "";
            S_s_2573 = "";
            S_s_2574 = "";
            S_s_2575 = "";
            S_s_2576 = "";
            S_s_2577 = "";
            S_s_2578 = " expired";
            S_s_2579 = (string)Fa_i_00;
            S_s_2580 = ", Magic Number: ";
            S_s_2581 = (string)OrderTicket();
            S_s_2582 = "Order with ticket: ";
            if (I_i_139 == 1) {
               S_s_2583 = TimeToString(TimeCurrent(), 3);
               Print("---VERBOSE--- ", S_s_2583, " ", S_s_2582, S_s_2581, S_s_2580, S_s_2579, S_s_2578, S_s_2577, S_s_2576, S_s_2575, S_s_2574, S_s_2573, S_s_2572, S_s_2571);
            } else {
               if (I_i_139 == 2) {
                  G_i_156 = FileOpen("EAW_VerboseLog.txt", 3);
                  if (G_i_156 > 0) {
                     FileSeek(G_i_156, 0, 2);
                     S_s_2584 = TimeToString(TimeCurrent(), 3);
                     FileWrite(G_i_156, S_s_2584, " VERBOSE: ", S_s_2582, S_s_2581, S_s_2580, S_s_2579, S_s_2578, S_s_2577, S_s_2576, S_s_2575, S_s_2574, S_s_2573, S_s_2572, S_s_2571);
                     FileClose(G_i_156);
                  }
               }
            }
            order_check = OrderDelete(OrderTicket(), 4294967295);
         }
      }
   }
   if (Fa_i_00 == I_i_5 && OrderType() != OP_BUY && OrderType() != OP_SELL) {
      G_i_33 = I_i_5;
      G_d_21 = 0;
      if (I_i_5 == I_i_1) {
         G_d_21 = 0;
      }
      if (G_i_33 == I_i_2) {
         G_d_21 = 0;
      }
      if (G_i_33 == I_i_3) {
         G_d_21 = 0;
      }
      if (G_i_33 == I_i_4) {
         G_d_21 = 0;
      }
      if (G_i_33 == I_i_5) {
         G_d_21 = 0;
      }
      if (G_i_33 == I_i_6) {
         G_d_21 = 0;
      }
      if (G_i_33 == I_i_7) {
         G_d_21 = 0;
      }
      if (G_i_33 == I_i_8) {
         G_d_21 = 0;
      }
      if (G_i_33 == I_i_9) {
         G_d_21 = 0;
      }
      if (G_i_33 == I_i_10) {
         G_d_21 = 0;
      }
      if (G_i_33 == I_i_11) {
         G_d_21 = 0;
      }
      if (G_i_33 == I_i_12) {
         G_d_21 = 0;
      }
      if (G_i_33 == I_i_13) {
         G_d_21 = 0;
      }
      if (G_i_33 == I_i_14) {
         G_d_21 = 0;
      }
      L_i_13 = (int)NormalizeDouble(G_d_21, _Digits);
      if (L_i_13 > 0) {
         G_i_363 = L_i_13 + 10;
         G_i_34 = G_i_363;
         G_l_127 = OrderOpenTime();
         G_i_356 = 0;
         G_i_35 = 0;
         G_i_363 = G_i_363 + 10;
         if (G_i_363 > 0) {
            do {
               if (G_l_127 < Time[G_i_35]) {
                  G_i_356 = G_i_356 + 1;
               }
               G_i_35 = G_i_35 + 1;
               G_i_64 = G_i_34 + 10;
            } while (G_i_35 < G_i_64);
         }
         L_i_17 = G_i_356;
         if (G_i_356 >= L_i_13) {
            S_s_2585 = "";
            S_s_2586 = "";
            S_s_2587 = "";
            S_s_2588 = "";
            S_s_2589 = "";
            S_s_2590 = "";
            S_s_2591 = "";
            S_s_2592 = " expired";
            S_s_2593 = (string)Fa_i_00;
            S_s_2594 = ", Magic Number: ";
            S_s_2595 = (string)OrderTicket();
            S_s_2596 = "Order with ticket: ";
            if (I_i_139 == 1) {
               S_s_2597 = TimeToString(TimeCurrent(), 3);
               Print("---VERBOSE--- ", S_s_2597, " ", S_s_2596, S_s_2595, S_s_2594, S_s_2593, S_s_2592, S_s_2591, S_s_2590, S_s_2589, S_s_2588, S_s_2587, S_s_2586, S_s_2585);
            } else {
               if (I_i_139 == 2) {
                  G_i_357 = FileOpen("EAW_VerboseLog.txt", 3);
                  if (G_i_357 > 0) {
                     FileSeek(G_i_357, 0, 2);
                     S_s_2410 = TimeToString(TimeCurrent(), 3);
                     FileWrite(G_i_357, S_s_2410, " VERBOSE: ", S_s_2596, S_s_2595, S_s_2594, S_s_2593, S_s_2592, S_s_2591, S_s_2590, S_s_2589, S_s_2588, S_s_2587, S_s_2586, S_s_2585);
                     FileClose(G_i_357);
                  }
               }
            }
            order_check = OrderDelete(OrderTicket(), 4294967295);
         }
      }
   }
   if (Fa_i_00 == I_i_6 && OrderType() != OP_BUY && OrderType() != OP_SELL) {
      G_i_159 = I_i_6;
      G_d_302 = 0;
      if (I_i_6 == I_i_1) {
         G_d_302 = 0;
      }
      if (G_i_159 == I_i_2) {
         G_d_302 = 0;
      }
      if (G_i_159 == I_i_3) {
         G_d_302 = 0;
      }
      if (G_i_159 == I_i_4) {
         G_d_302 = 0;
      }
      if (G_i_159 == I_i_5) {
         G_d_302 = 0;
      }
      if (G_i_159 == I_i_6) {
         G_d_302 = 0;
      }
      if (G_i_159 == I_i_7) {
         G_d_302 = 0;
      }
      if (G_i_159 == I_i_8) {
         G_d_302 = 0;
      }
      if (G_i_159 == I_i_9) {
         G_d_302 = 0;
      }
      if (G_i_159 == I_i_10) {
         G_d_302 = 0;
      }
      if (G_i_159 == I_i_11) {
         G_d_302 = 0;
      }
      if (G_i_159 == I_i_12) {
         G_d_302 = 0;
      }
      if (G_i_159 == I_i_13) {
         G_d_302 = 0;
      }
      if (G_i_159 == I_i_14) {
         G_d_302 = 0;
      }
      L_i_13 = (int)NormalizeDouble(G_d_302, _Digits);
      if (L_i_13 > 0) {
         G_i_64 = L_i_13 + 10;
         G_i_160 = G_i_64;
         G_l_128 = OrderOpenTime();
         G_i_358 = 0;
         G_i_38 = 0;
         G_i_64 = G_i_64 + 10;
         if (G_i_64 > 0) {
            do {
               if (G_l_128 < Time[G_i_38]) {
                  G_i_358 = G_i_358 + 1;
               }
               G_i_38 = G_i_38 + 1;
               G_i_191 = G_i_160 + 10;
            } while (G_i_38 < G_i_191);
         }
         L_i_17 = G_i_358;
         if (G_i_358 >= L_i_13) {
            S_s_2411 = "";
            S_s_2412 = "";
            S_s_2413 = "";
            S_s_2414 = "";
            S_s_2415 = "";
            S_s_2416 = "";
            S_s_2417 = "";
            S_s_2418 = " expired";
            S_s_2419 = (string)Fa_i_00;
            S_s_2420 = ", Magic Number: ";
            S_s_2421 = (string)OrderTicket();
            S_s_2422 = "Order with ticket: ";
            if (I_i_139 == 1) {
               S_s_2423 = TimeToString(TimeCurrent(), 3);
               Print("---VERBOSE--- ", S_s_2423, " ", S_s_2422, S_s_2421, S_s_2420, S_s_2419, S_s_2418, S_s_2417, S_s_2416, S_s_2415, S_s_2414, S_s_2413, S_s_2412, S_s_2411);
            } else {
               if (I_i_139 == 2) {
                  G_i_161 = FileOpen("EAW_VerboseLog.txt", 3);
                  if (G_i_161 > 0) {
                     FileSeek(G_i_161, 0, 2);
                     S_s_2424 = TimeToString(TimeCurrent(), 3);
                     FileWrite(G_i_161, S_s_2424, " VERBOSE: ", S_s_2422, S_s_2421, S_s_2420, S_s_2419, S_s_2418, S_s_2417, S_s_2416, S_s_2415, S_s_2414, S_s_2413, S_s_2412, S_s_2411);
                     FileClose(G_i_161);
                  }
               }
            }
            order_check = OrderDelete(OrderTicket(), 4294967295);
         }
      }
   }
   if (Fa_i_00 == I_i_7 && OrderType() != OP_BUY && OrderType() != OP_SELL) {
      G_i_162 = I_i_7;
      G_d_303 = 0;
      if (I_i_7 == I_i_1) {
         G_d_303 = 0;
      }
      if (G_i_162 == I_i_2) {
         G_d_303 = 0;
      }
      if (G_i_162 == I_i_3) {
         G_d_303 = 0;
      }
      if (G_i_162 == I_i_4) {
         G_d_303 = 0;
      }
      if (G_i_162 == I_i_5) {
         G_d_303 = 0;
      }
      if (G_i_162 == I_i_6) {
         G_d_303 = 0;
      }
      if (G_i_162 == I_i_7) {
         G_d_303 = 0;
      }
      if (G_i_162 == I_i_8) {
         G_d_303 = 0;
      }
      if (G_i_162 == I_i_9) {
         G_d_303 = 0;
      }
      if (G_i_162 == I_i_10) {
         G_d_303 = 0;
      }
      if (G_i_162 == I_i_11) {
         G_d_303 = 0;
      }
      if (G_i_162 == I_i_12) {
         G_d_303 = 0;
      }
      if (G_i_162 == I_i_13) {
         G_d_303 = 0;
      }
      if (G_i_162 == I_i_14) {
         G_d_303 = 0;
      }
      L_i_13 = (int)NormalizeDouble(G_d_303, _Digits);
      if (L_i_13 > 0) {
         G_i_191 = L_i_13 + 10;
         G_i_163 = G_i_191;
         G_l_129 = OrderOpenTime();
         G_i_40 = 0;
         G_i_164 = 0;
         G_i_191 = G_i_191 + 10;
         if (G_i_191 > 0) {
            do {
               if (G_l_129 < Time[G_i_164]) {
                  G_i_40 = G_i_40 + 1;
               }
               G_i_164 = G_i_164 + 1;
               G_i_192 = G_i_163 + 10;
            } while (G_i_164 < G_i_192);
         }
         L_i_17 = G_i_40;
         if (G_i_40 >= L_i_13) {
            S_s_2425 = "";
            S_s_2426 = "";
            S_s_2427 = "";
            S_s_2428 = "";
            S_s_2429 = "";
            S_s_2430 = "";
            S_s_2431 = "";
            S_s_2432 = " expired";
            S_s_2433 = (string)Fa_i_00;
            S_s_2434 = ", Magic Number: ";
            S_s_2435 = (string)OrderTicket();
            S_s_2436 = "Order with ticket: ";
            if (I_i_139 == 1) {
               S_s_2437 = TimeToString(TimeCurrent(), 3);
               Print("---VERBOSE--- ", S_s_2437, " ", S_s_2436, S_s_2435, S_s_2434, S_s_2433, S_s_2432, S_s_2431, S_s_2430, S_s_2429, S_s_2428, S_s_2427, S_s_2426, S_s_2425);
            } else {
               if (I_i_139 == 2) {
                  G_i_41 = FileOpen("EAW_VerboseLog.txt", 3);
                  if (G_i_41 > 0) {
                     FileSeek(G_i_41, 0, 2);
                     S_s_2438 = TimeToString(TimeCurrent(), 3);
                     FileWrite(G_i_41, S_s_2438, " VERBOSE: ", S_s_2436, S_s_2435, S_s_2434, S_s_2433, S_s_2432, S_s_2431, S_s_2430, S_s_2429, S_s_2428, S_s_2427, S_s_2426, S_s_2425);
                     FileClose(G_i_41);
                  }
               }
            }
            order_check = OrderDelete(OrderTicket(), 4294967295);
         }
      }
   }
   if (Fa_i_00 == I_i_8 && OrderType() != OP_BUY && OrderType() != OP_SELL) {
      G_i_165 = I_i_8;
      G_d_304 = 0;
      if (I_i_8 == I_i_1) {
         G_d_304 = 0;
      }
      if (G_i_165 == I_i_2) {
         G_d_304 = 0;
      }
      if (G_i_165 == I_i_3) {
         G_d_304 = 0;
      }
      if (G_i_165 == I_i_4) {
         G_d_304 = 0;
      }
      if (G_i_165 == I_i_5) {
         G_d_304 = 0;
      }
      if (G_i_165 == I_i_6) {
         G_d_304 = 0;
      }
      if (G_i_165 == I_i_7) {
         G_d_304 = 0;
      }
      if (G_i_165 == I_i_8) {
         G_d_304 = 0;
      }
      if (G_i_165 == I_i_9) {
         G_d_304 = 0;
      }
      if (G_i_165 == I_i_10) {
         G_d_304 = 0;
      }
      if (G_i_165 == I_i_11) {
         G_d_304 = 0;
      }
      if (G_i_165 == I_i_12) {
         G_d_304 = 0;
      }
      if (G_i_165 == I_i_13) {
         G_d_304 = 0;
      }
      if (G_i_165 == I_i_14) {
         G_d_304 = 0;
      }
      L_i_13 = (int)NormalizeDouble(G_d_304, _Digits);
      if (L_i_13 > 0) {
         G_i_192 = L_i_13 + 10;
         G_i_359 = G_i_192;
         G_l_130 = OrderOpenTime();
         G_i_43 = 0;
         G_i_167 = 0;
         G_i_192 = G_i_192 + 10;
         if (G_i_192 > 0) {
            do {
               if (G_l_130 < Time[G_i_167]) {
                  G_i_43 = G_i_43 + 1;
               }
               G_i_167 = G_i_167 + 1;
               G_i_65 = G_i_359 + 10;
            } while (G_i_167 < G_i_65);
         }
         L_i_17 = G_i_43;
         if (G_i_43 >= L_i_13) {
            S_s_2439 = "";
            S_s_2440 = "";
            S_s_2441 = "";
            S_s_2442 = "";
            S_s_2443 = "";
            S_s_2444 = "";
            S_s_2445 = "";
            S_s_2446 = " expired";
            S_s_2447 = (string)Fa_i_00;
            S_s_2448 = ", Magic Number: ";
            S_s_2449 = (string)OrderTicket();
            S_s_2450 = "Order with ticket: ";
            if (I_i_139 == 1) {
               S_s_2451 = TimeToString(TimeCurrent(), 3);
               Print("---VERBOSE--- ", S_s_2451, " ", S_s_2450, S_s_2449, S_s_2448, S_s_2447, S_s_2446, S_s_2445, S_s_2444, S_s_2443, S_s_2442, S_s_2441, S_s_2440, S_s_2439);
            } else {
               if (I_i_139 == 2) {
                  G_i_168 = FileOpen("EAW_VerboseLog.txt", 3);
                  if (G_i_168 > 0) {
                     FileSeek(G_i_168, 0, 2);
                     S_s_2452 = TimeToString(TimeCurrent(), 3);
                     FileWrite(G_i_168, S_s_2452, " VERBOSE: ", S_s_2450, S_s_2449, S_s_2448, S_s_2447, S_s_2446, S_s_2445, S_s_2444, S_s_2443, S_s_2442, S_s_2441, S_s_2440, S_s_2439);
                     FileClose(G_i_168);
                  }
               }
            }
            order_check = OrderDelete(OrderTicket(), 4294967295);
         }
      }
   }
   if (Fa_i_00 == I_i_9 && OrderType() != OP_BUY && OrderType() != OP_SELL) {
      G_i_44 = I_i_9;
      G_d_38 = 0;
      if (I_i_9 == I_i_1) {
         G_d_38 = 0;
      }
      if (G_i_44 == I_i_2) {
         G_d_38 = 0;
      }
      if (G_i_44 == I_i_3) {
         G_d_38 = 0;
      }
      if (G_i_44 == I_i_4) {
         G_d_38 = 0;
      }
      if (G_i_44 == I_i_5) {
         G_d_38 = 0;
      }
      if (G_i_44 == I_i_6) {
         G_d_38 = 0;
      }
      if (G_i_44 == I_i_7) {
         G_d_38 = 0;
      }
      if (G_i_44 == I_i_8) {
         G_d_38 = 0;
      }
      if (G_i_44 == I_i_9) {
         G_d_38 = 0;
      }
      if (G_i_44 == I_i_10) {
         G_d_38 = 0;
      }
      if (G_i_44 == I_i_11) {
         G_d_38 = 0;
      }
      if (G_i_44 == I_i_12) {
         G_d_38 = 0;
      }
      if (G_i_44 == I_i_13) {
         G_d_38 = 0;
      }
      if (G_i_44 == I_i_14) {
         G_d_38 = 0;
      }
      L_i_13 = (int)NormalizeDouble(G_d_38, _Digits);
      if (L_i_13 > 0) {
         G_i_65 = L_i_13 + 10;
         G_i_45 = G_i_65;
         G_l_131 = OrderOpenTime();
         G_i_46 = 0;
         G_i_171 = 0;
         G_i_65 = G_i_65 + 10;
         if (G_i_65 > 0) {
            do {
               if (G_l_131 < Time[G_i_171]) {
                  G_i_46 = G_i_46 + 1;
               }
               G_i_171 = G_i_171 + 1;
               G_i_193 = G_i_45 + 10;
            } while (G_i_171 < G_i_193);
         }
         L_i_17 = G_i_46;
         if (G_i_46 >= L_i_13) {
            S_s_2453 = "";
            S_s_2454 = "";
            S_s_2455 = "";
            S_s_2456 = "";
            S_s_2457 = "";
            S_s_2458 = "";
            S_s_2459 = "";
            S_s_2460 = " expired";
            S_s_2461 = (string)Fa_i_00;
            S_s_2462 = ", Magic Number: ";
            S_s_2463 = (string)OrderTicket();
            S_s_2464 = "Order with ticket: ";
            if (I_i_139 == 1) {
               S_s_2465 = TimeToString(TimeCurrent(), 3);
               Print("---VERBOSE--- ", S_s_2465, " ", S_s_2464, S_s_2463, S_s_2462, S_s_2461, S_s_2460, S_s_2459, S_s_2458, S_s_2457, S_s_2456, S_s_2455, S_s_2454, S_s_2453);
            } else {
               if (I_i_139 == 2) {
                  G_i_172 = FileOpen("EAW_VerboseLog.txt", 3);
                  if (G_i_172 > 0) {
                     FileSeek(G_i_172, 0, 2);
                     S_s_2466 = TimeToString(TimeCurrent(), 3);
                     FileWrite(G_i_172, S_s_2466, " VERBOSE: ", S_s_2464, S_s_2463, S_s_2462, S_s_2461, S_s_2460, S_s_2459, S_s_2458, S_s_2457, S_s_2456, S_s_2455, S_s_2454, S_s_2453);
                     FileClose(G_i_172);
                  }
               }
            }
            order_check = OrderDelete(OrderTicket(), 4294967295);
         }
      }
   }
   if (Fa_i_00 == I_i_10 && OrderType() != OP_BUY && OrderType() != OP_SELL) {
      G_i_47 = I_i_10;
      G_d_42 = 0;
      if (I_i_10 == I_i_1) {
         G_d_42 = 0;
      }
      if (G_i_47 == I_i_2) {
         G_d_42 = 0;
      }
      if (G_i_47 == I_i_3) {
         G_d_42 = 0;
      }
      if (G_i_47 == I_i_4) {
         G_d_42 = 0;
      }
      if (G_i_47 == I_i_5) {
         G_d_42 = 0;
      }
      if (G_i_47 == I_i_6) {
         G_d_42 = 0;
      }
      if (G_i_47 == I_i_7) {
         G_d_42 = 0;
      }
      if (G_i_47 == I_i_8) {
         G_d_42 = 0;
      }
      if (G_i_47 == I_i_9) {
         G_d_42 = 0;
      }
      if (G_i_47 == I_i_10) {
         G_d_42 = 0;
      }
      if (G_i_47 == I_i_11) {
         G_d_42 = 0;
      }
      if (G_i_47 == I_i_12) {
         G_d_42 = 0;
      }
      if (G_i_47 == I_i_13) {
         G_d_42 = 0;
      }
      if (G_i_47 == I_i_14) {
         G_d_42 = 0;
      }
      L_i_13 = (int)NormalizeDouble(G_d_42, _Digits);
      if (L_i_13 > 0) {
         G_i_193 = L_i_13 + 10;
         G_i_173 = G_i_193;
         G_l_132 = OrderOpenTime();
         G_i_174 = 0;
         G_i_49 = 0;
         G_i_193 = G_i_193 + 10;
         if (G_i_193 > 0) {
            do {
               if (G_l_132 < Time[G_i_49]) {
                  G_i_174 = G_i_174 + 1;
               }
               G_i_49 = G_i_49 + 1;
               G_i_364 = G_i_173 + 10;
            } while (G_i_49 < G_i_364);
         }
         L_i_17 = G_i_174;
         if (G_i_174 >= L_i_13) {
            S_s_2467 = "";
            S_s_2468 = "";
            S_s_2469 = "";
            S_s_2470 = "";
            S_s_2471 = "";
            S_s_2472 = "";
            S_s_2473 = "";
            S_s_2474 = " expired";
            S_s_2475 = (string)Fa_i_00;
            S_s_2476 = ", Magic Number: ";
            S_s_2477 = (string)OrderTicket();
            S_s_2478 = "Order with ticket: ";
            if (I_i_139 == 1) {
               S_s_2479 = TimeToString(TimeCurrent(), 3);
               Print("---VERBOSE--- ", S_s_2479, " ", S_s_2478, S_s_2477, S_s_2476, S_s_2475, S_s_2474, S_s_2473, S_s_2472, S_s_2471, S_s_2470, S_s_2469, S_s_2468, S_s_2467);
            } else {
               if (I_i_139 == 2) {
                  G_i_175 = FileOpen("EAW_VerboseLog.txt", 3);
                  if (G_i_175 > 0) {
                     FileSeek(G_i_175, 0, 2);
                     S_s_2480 = TimeToString(TimeCurrent(), 3);
                     FileWrite(G_i_175, S_s_2480, " VERBOSE: ", S_s_2478, S_s_2477, S_s_2476, S_s_2475, S_s_2474, S_s_2473, S_s_2472, S_s_2471, S_s_2470, S_s_2469, S_s_2468, S_s_2467);
                     FileClose(G_i_175);
                  }
               }
            }
            order_check = OrderDelete(OrderTicket(), 4294967295);
         }
      }
   }
   if (Fa_i_00 == I_i_11 && OrderType() != OP_BUY && OrderType() != OP_SELL) {
      G_i_50 = I_i_11;
      G_d_46 = 0;
      if (I_i_11 == I_i_1) {
         G_d_46 = 0;
      }
      if (G_i_50 == I_i_2) {
         G_d_46 = 0;
      }
      if (G_i_50 == I_i_3) {
         G_d_46 = 0;
      }
      if (G_i_50 == I_i_4) {
         G_d_46 = 0;
      }
      if (G_i_50 == I_i_5) {
         G_d_46 = 0;
      }
      if (G_i_50 == I_i_6) {
         G_d_46 = 0;
      }
      if (G_i_50 == I_i_7) {
         G_d_46 = 0;
      }
      if (G_i_50 == I_i_8) {
         G_d_46 = 0;
      }
      if (G_i_50 == I_i_9) {
         G_d_46 = 0;
      }
      if (G_i_50 == I_i_10) {
         G_d_46 = 0;
      }
      if (G_i_50 == I_i_11) {
         G_d_46 = 0;
      }
      if (G_i_50 == I_i_12) {
         G_d_46 = 0;
      }
      if (G_i_50 == I_i_13) {
         G_d_46 = 0;
      }
      if (G_i_50 == I_i_14) {
         G_d_46 = 0;
      }
      L_i_13 = (int)NormalizeDouble(G_d_46, _Digits);
      if (L_i_13 > 0) {
         G_i_364 = L_i_13 + 10;
         G_i_360 = G_i_364;
         G_l_133 = OrderOpenTime();
         G_i_177 = 0;
         G_i_178 = 0;
         G_i_364 = G_i_364 + 10;
         if (G_i_364 > 0) {
            do {
               if (G_l_133 < Time[G_i_178]) {
                  G_i_177 = G_i_177 + 1;
               }
               G_i_178 = G_i_178 + 1;
               G_i_66 = G_i_360 + 10;
            } while (G_i_178 < G_i_66);
         }
         L_i_17 = G_i_177;
         if (G_i_177 >= L_i_13) {
            S_s_2481 = "";
            S_s_2482 = "";
            S_s_2483 = "";
            S_s_2484 = "";
            S_s_2485 = "";
            S_s_2486 = "";
            S_s_2487 = "";
            S_s_2488 = " expired";
            S_s_2489 = (string)Fa_i_00;
            S_s_2490 = ", Magic Number: ";
            S_s_2491 = (string)OrderTicket();
            S_s_2492 = "Order with ticket: ";
            if (I_i_139 == 1) {
               S_s_2493 = TimeToString(TimeCurrent(), 3);
               Print("---VERBOSE--- ", S_s_2493, " ", S_s_2492, S_s_2491, S_s_2490, S_s_2489, S_s_2488, S_s_2487, S_s_2486, S_s_2485, S_s_2484, S_s_2483, S_s_2482, S_s_2481);
            } else {
               if (I_i_139 == 2) {
                  G_i_52 = FileOpen("EAW_VerboseLog.txt", 3);
                  if (G_i_52 > 0) {
                     FileSeek(G_i_52, 0, 2);
                     S_s_2494 = TimeToString(TimeCurrent(), 3);
                     FileWrite(G_i_52, S_s_2494, " VERBOSE: ", S_s_2492, S_s_2491, S_s_2490, S_s_2489, S_s_2488, S_s_2487, S_s_2486, S_s_2485, S_s_2484, S_s_2483, S_s_2482, S_s_2481);
                     FileClose(G_i_52);
                  }
               }
            }
            order_check = OrderDelete(OrderTicket(), 4294967295);
         }
      }
   }
   if (Fa_i_00 == I_i_12 && OrderType() != OP_BUY && OrderType() != OP_SELL) {
      G_i_361 = I_i_12;
      G_d_305 = 0;
      if (I_i_12 == I_i_1) {
         G_d_305 = 0;
      }
      if (G_i_361 == I_i_2) {
         G_d_305 = 0;
      }
      if (G_i_361 == I_i_3) {
         G_d_305 = 0;
      }
      if (G_i_361 == I_i_4) {
         G_d_305 = 0;
      }
      if (G_i_361 == I_i_5) {
         G_d_305 = 0;
      }
      if (G_i_361 == I_i_6) {
         G_d_305 = 0;
      }
      if (G_i_361 == I_i_7) {
         G_d_305 = 0;
      }
      if (G_i_361 == I_i_8) {
         G_d_305 = 0;
      }
      if (G_i_361 == I_i_9) {
         G_d_305 = 0;
      }
      if (G_i_361 == I_i_10) {
         G_d_305 = 0;
      }
      if (G_i_361 == I_i_11) {
         G_d_305 = 0;
      }
      if (G_i_361 == I_i_12) {
         G_d_305 = 0;
      }
      if (G_i_361 == I_i_13) {
         G_d_305 = 0;
      }
      if (G_i_361 == I_i_14) {
         G_d_305 = 0;
      }
      L_i_13 = (int)NormalizeDouble(G_d_305, _Digits);
      if (L_i_13 > 0) {
         G_i_66 = L_i_13 + 10;
         G_i_53 = G_i_66;
         G_l_134 = OrderOpenTime();
         G_i_55 = 0;
         G_i_180 = 0;
         G_i_66 = G_i_66 + 10;
         if (G_i_66 > 0) {
            do {
               if (G_l_134 < Time[G_i_180]) {
                  G_i_55 = G_i_55 + 1;
               }
               G_i_180 = G_i_180 + 1;
               G_i_365 = G_i_53 + 10;
            } while (G_i_180 < G_i_365);
         }
         L_i_17 = G_i_55;
         if (G_i_55 >= L_i_13) {
            S_s_2495 = "";
            S_s_2496 = "";
            S_s_2497 = "";
            S_s_2498 = "";
            S_s_2499 = "";
            S_s_2500 = "";
            S_s_2501 = "";
            S_s_2502 = " expired";
            S_s_2503 = (string)Fa_i_00;
            S_s_2504 = ", Magic Number: ";
            S_s_2505 = (string)OrderTicket();
            S_s_2506 = "Order with ticket: ";
            if (I_i_139 == 1) {
               S_s_2507 = TimeToString(TimeCurrent(), 3);
               Print("---VERBOSE--- ", S_s_2507, " ", S_s_2506, S_s_2505, S_s_2504, S_s_2503, S_s_2502, S_s_2501, S_s_2500, S_s_2499, S_s_2498, S_s_2497, S_s_2496, S_s_2495);
            } else {
               if (I_i_139 == 2) {
                  G_i_362 = FileOpen("EAW_VerboseLog.txt", 3);
                  if (G_i_362 > 0) {
                     FileSeek(G_i_362, 0, 2);
                     S_s_2508 = TimeToString(TimeCurrent(), 3);
                     FileWrite(G_i_362, S_s_2508, " VERBOSE: ", S_s_2506, S_s_2505, S_s_2504, S_s_2503, S_s_2502, S_s_2501, S_s_2500, S_s_2499, S_s_2498, S_s_2497, S_s_2496, S_s_2495);
                     FileClose(G_i_362);
                  }
               }
            }
            order_check = OrderDelete(OrderTicket(), 4294967295);
         }
      }
   }
   if (Fa_i_00 == I_i_13 && OrderType() != OP_BUY && OrderType() != OP_SELL) {
      G_i_56 = I_i_13;
      G_d_53 = 0;
      if (I_i_13 == I_i_1) {
         G_d_53 = 0;
      }
      if (G_i_56 == I_i_2) {
         G_d_53 = 0;
      }
      if (G_i_56 == I_i_3) {
         G_d_53 = 0;
      }
      if (G_i_56 == I_i_4) {
         G_d_53 = 0;
      }
      if (G_i_56 == I_i_5) {
         G_d_53 = 0;
      }
      if (G_i_56 == I_i_6) {
         G_d_53 = 0;
      }
      if (G_i_56 == I_i_7) {
         G_d_53 = 0;
      }
      if (G_i_56 == I_i_8) {
         G_d_53 = 0;
      }
      if (G_i_56 == I_i_9) {
         G_d_53 = 0;
      }
      if (G_i_56 == I_i_10) {
         G_d_53 = 0;
      }
      if (G_i_56 == I_i_11) {
         G_d_53 = 0;
      }
      if (G_i_56 == I_i_12) {
         G_d_53 = 0;
      }
      if (G_i_56 == I_i_13) {
         G_d_53 = 0;
      }
      if (G_i_56 == I_i_14) {
         G_d_53 = 0;
      }
      L_i_13 = (int)NormalizeDouble(G_d_53, _Digits);
      if (L_i_13 > 0) {
         G_i_365 = L_i_13 + 10;
         G_i_57 = G_i_365;
         G_l_135 = OrderOpenTime();
         G_i_183 = 0;
         G_i_58 = 0;
         G_i_365 = G_i_365 + 10;
         if (G_i_365 > 0) {
            do {
               if (G_l_135 < Time[G_i_58]) {
                  G_i_183 = G_i_183 + 1;
               }
               G_i_58 = G_i_58 + 1;
               G_i_67 = G_i_57 + 10;
            } while (G_i_58 < G_i_67);
         }
         L_i_17 = G_i_183;
         if (G_i_183 >= L_i_13) {
            S_s_2509 = "";
            S_s_2510 = "";
            S_s_2511 = "";
            S_s_2512 = "";
            S_s_2513 = "";
            S_s_2514 = "";
            S_s_2515 = "";
            S_s_2516 = " expired";
            S_s_2517 = (string)Fa_i_00;
            S_s_2518 = ", Magic Number: ";
            S_s_2519 = (string)OrderTicket();
            S_s_2520 = "Order with ticket: ";
            if (I_i_139 == 1) {
               S_s_2521 = TimeToString(TimeCurrent(), 3);
               Print("---VERBOSE--- ", S_s_2521, " ", S_s_2520, S_s_2519, S_s_2518, S_s_2517, S_s_2516, S_s_2515, S_s_2514, S_s_2513, S_s_2512, S_s_2511, S_s_2510, S_s_2509);
            } else {
               if (I_i_139 == 2) {
                  G_i_184 = FileOpen("EAW_VerboseLog.txt", 3);
                  if (G_i_184 > 0) {
                     FileSeek(G_i_184, 0, 2);
                     S_s_2522 = TimeToString(TimeCurrent(), 3);
                     FileWrite(G_i_184, S_s_2522, " VERBOSE: ", S_s_2520, S_s_2519, S_s_2518, S_s_2517, S_s_2516, S_s_2515, S_s_2514, S_s_2513, S_s_2512, S_s_2511, S_s_2510, S_s_2509);
                     FileClose(G_i_184);
                  }
               }
            }
            order_check = OrderDelete(OrderTicket(), 4294967295);
         }
      }
   }
   if (Fa_i_00 != I_i_14) return;
   if (OrderType() == OP_BUY) return;
   if (OrderType() == OP_SELL) return;
   G_i_59 = I_i_14;
   G_d_57 = 0;
   if (I_i_14 == I_i_1) {
      G_d_57 = 0;
   }
   if (G_i_59 == I_i_2) {
      G_d_57 = 0;
   }
   if (G_i_59 == I_i_3) {
      G_d_57 = 0;
   }
   if (G_i_59 == I_i_4) {
      G_d_57 = 0;
   }
   if (G_i_59 == I_i_5) {
      G_d_57 = 0;
   }
   if (G_i_59 == I_i_6) {
      G_d_57 = 0;
   }
   if (G_i_59 == I_i_7) {
      G_d_57 = 0;
   }
   if (G_i_59 == I_i_8) {
      G_d_57 = 0;
   }
   if (G_i_59 == I_i_9) {
      G_d_57 = 0;
   }
   if (G_i_59 == I_i_10) {
      G_d_57 = 0;
   }
   if (G_i_59 == I_i_11) {
      G_d_57 = 0;
   }
   if (G_i_59 == I_i_12) {
      G_d_57 = 0;
   }
   if (G_i_59 == I_i_13) {
      G_d_57 = 0;
   }
   if (G_i_59 == I_i_14) {
      G_d_57 = 0;
   }
   L_i_13 = (int)NormalizeDouble(G_d_57, _Digits);
   if (L_i_13 <= 0) return;
   G_i_67 = L_i_13 + 10;
   G_i_60 = G_i_67;
   G_l_136 = OrderOpenTime();
   G_i_187 = 0;
   G_i_61 = 0;
   G_i_67 = G_i_67 + 10;
   if (G_i_67 > 0) {
      do {
         if (G_l_136 < Time[G_i_61]) {
            G_i_187 = G_i_187 + 1;
         }
         G_i_61 = G_i_61 + 1;
         G_i_194 = G_i_60 + 10;
      } while (G_i_61 < G_i_194);
   }
   L_i_17 = G_i_187;
   if (G_i_187 < L_i_13) return;
   S_s_2523 = "";
   S_s_2524 = "";
   S_s_2525 = "";
   S_s_2526 = "";
   S_s_2527 = "";
   S_s_2528 = "";
   S_s_2190 = "";
   S_s_2191 = " expired";
   S_s_2192 = (string)Fa_i_00;
   S_s_2193 = ", Magic Number: ";
   S_s_2194 = (string)OrderTicket();
   S_s_2195 = "Order with ticket: ";
   if (I_i_139 == 1) {
      S_s_2196 = TimeToString(TimeCurrent(), 3);
      Print("---VERBOSE--- ", S_s_2196, " ", S_s_2195, S_s_2194, S_s_2193, S_s_2192, S_s_2191, S_s_2190, S_s_2528, S_s_2527, S_s_2526, S_s_2525, S_s_2524, S_s_2523);
   } else {
      if (I_i_139 == 2) {
         G_i_188 = FileOpen("EAW_VerboseLog.txt", 3);
         if (G_i_188 > 0) {
            FileSeek(G_i_188, 0, 2);
            S_s_2197 = TimeToString(TimeCurrent(), 3);
            FileWrite(G_i_188, S_s_2197, " VERBOSE: ", S_s_2195, S_s_2194, S_s_2193, S_s_2192, S_s_2191, S_s_2190, S_s_2528, S_s_2527, S_s_2526, S_s_2525, S_s_2524, S_s_2523);
            FileClose(G_i_188);
         }
      }
   }
   order_check = OrderDelete(OrderTicket(), 4294967295);
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double getOrderStopLoss(int Fa_i_00, int Fa_i_01, double Fa_d_02) {
   double L_d_11;
   double L_d_36;
   L_d_11 = 0;
   L_d_36 = 0;
   L_d_36 = 0;
   if (Fa_i_00 == I_i_1) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 - L_d_36);
         } else {
            L_d_36 = (Fa_d_02 + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_2) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 - L_d_36);
         } else {
            L_d_36 = (Fa_d_02 + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_3) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 - L_d_36);
         } else {
            L_d_36 = (Fa_d_02 + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_4) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 - L_d_36);
         } else {
            L_d_36 = (Fa_d_02 + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_5) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 - L_d_36);
         } else {
            L_d_36 = (Fa_d_02 + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_6) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 - L_d_36);
         } else {
            L_d_36 = (Fa_d_02 + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_7) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 - L_d_36);
         } else {
            L_d_36 = (Fa_d_02 + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_8) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 - L_d_36);
         } else {
            L_d_36 = (Fa_d_02 + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_9) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 - L_d_36);
         } else {
            L_d_36 = (Fa_d_02 + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_10) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 - L_d_36);
         } else {
            L_d_36 = (Fa_d_02 + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_11) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 - L_d_36);
         } else {
            L_d_36 = (Fa_d_02 + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_12) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 - L_d_36);
         } else {
            L_d_36 = (Fa_d_02 + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_13) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 - L_d_36);
         } else {
            L_d_36 = (Fa_d_02 + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_14) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 - L_d_36);
         } else {
            L_d_36 = (Fa_d_02 + L_d_36);
         }
      }
   }
   L_d_11 = NormalizeDouble(L_d_36, _Digits);
   return L_d_11;
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double getOrderProfitTarget(int Fa_i_00, int Fa_i_01, double Fa_d_02) {
   double L_d_11;
   double L_d_36;
   L_d_11 = 0;
   L_d_36 = 0;
   L_d_36 = 0;
   if (Fa_i_00 == I_i_1) {
      L_d_36 = (ProfitTarget * I_d_4);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 + L_d_36);
         } else {
            L_d_36 = (Fa_d_02 - L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_2) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 + L_d_36);
         } else {
            L_d_36 = (Fa_d_02 - L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_3) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 + L_d_36);
         } else {
            L_d_36 = (Fa_d_02 - L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_4) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 + L_d_36);
         } else {
            L_d_36 = (Fa_d_02 - L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_5) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 + L_d_36);
         } else {
            L_d_36 = (Fa_d_02 - L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_6) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 + L_d_36);
         } else {
            L_d_36 = (Fa_d_02 - L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_7) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 + L_d_36);
         } else {
            L_d_36 = (Fa_d_02 - L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_8) {
      L_d_36 = (ProfitTarget * I_d_4);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 + L_d_36);
         } else {
            L_d_36 = (Fa_d_02 - L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_9) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 + L_d_36);
         } else {
            L_d_36 = (Fa_d_02 - L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_10) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 + L_d_36);
         } else {
            L_d_36 = (Fa_d_02 - L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_11) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 + L_d_36);
         } else {
            L_d_36 = (Fa_d_02 - L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_12) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 + L_d_36);
         } else {
            L_d_36 = (Fa_d_02 - L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_13) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 + L_d_36);
         } else {
            L_d_36 = (Fa_d_02 - L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_14) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Fa_d_02 + L_d_36);
         } else {
            L_d_36 = (Fa_d_02 - L_d_36);
         }
      }
   }
   L_d_11 = NormalizeDouble(L_d_36, _Digits);
   return L_d_11;
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double getOrderTrailingStop(int Fa_i_00, int Fa_i_01, double Fa_d_02) {
   double L_d_11;
   double L_d_36;
   L_d_11 = 0;
   L_d_36 = 0;
   L_d_36 = 0;
   if (Fa_i_00 == I_i_1) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_2) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_3) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_4) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_5) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_6) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_7) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_8) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_9) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_10) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_11) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_12) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_13) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_01 == 0 || Fa_i_00 == I_i_14) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   L_d_11 = NormalizeDouble(L_d_36, _Digits);
   return L_d_11;
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double getOrderBreakEven(int Fa_i_00, int Fa_i_01, double Fa_d_02) {
   double L_d_11;
   double L_d_36;
   L_d_11 = 0;
   L_d_36 = 0;
   L_d_36 = 0;
   if (Fa_i_00 == I_i_1) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_2) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_3) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_4) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_5) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_6) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_7) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_8) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_9) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_10) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_11) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_12) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_13) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   if (Fa_i_00 == I_i_14) {
      L_d_36 = (I_d_4 * 0);
      if ((L_d_36 > 0)) {
         if (Fa_i_01 == 0 || Fa_i_01 == 4 || Fa_i_01 == 2) {
            L_d_36 = (Bid - L_d_36);
         } else {
            L_d_36 = (Ask + L_d_36);
         }
      }
   }
   L_d_11 = NormalizeDouble(L_d_36, _Digits);
   return L_d_11;
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void sqCloseOrder(int Fa_i_00) {
   string S_s_2639;
   string S_s_2640;
   string S_s_2641;
   string S_s_2642;
   string S_s_2643;
   string S_s_2644;
   string S_s_2645;
   string S_s_2646;
   string S_s_2647;
   string S_s_2648;
   string S_s_2649;
   string S_s_2650;
   string S_s_2651;
   string S_s_2652;
   string S_s_2653;
   string S_s_2654;
   string S_s_2655;
   string S_s_2656;
   string S_s_2657;
   string S_s_2658;
   string S_s_2659;
   string S_s_2660;
   string S_s_2661;
   string S_s_2662;
   string S_s_2663;
   string S_s_2664;
   string S_s_2665;
   string S_s_2625;
   string S_s_2626;
   string S_s_2627;
   string S_s_2628;
   string S_s_2629;
   string S_s_2630;
   string S_s_2631;
   string S_s_2632;
   string S_s_2633;
   string S_s_2634;
   string S_s_2635;
   string S_s_2567;
   string S_s_2568;
   string S_s_2569;
   string S_s_2570;
   string S_s_2571;
   string S_s_2572;
   string S_s_2573;
   string S_s_2574;
   string S_s_2575;
   string S_s_2576;
   string S_s_2577;
   string S_s_2578;
   string S_s_2579;
   string S_s_2580;
   string S_s_2581;
   string S_s_2582;
   string S_s_2583;
   string S_s_2584;
   bool L_b_6;
   int L_i_17;
   L_b_6 = false;
   L_i_17 = 0;
   G_i_19 = 0;
   G_i_20 = 0;
   G_i_144 = 0;
   G_i_21 = 0;
   L_b_6 = false;
   S_s_2639 = "";
   S_s_2640 = "";
   S_s_2641 = "";
   S_s_2642 = "";
   S_s_2643 = "";
   S_s_2644 = "";
   S_s_2645 = "";
   S_s_2646 = "";
   S_s_2647 = "";
   S_s_2648 = " ----------------";
   S_s_2649 = (string)Fa_i_00;
   S_s_2650 = "Closing order with Magic Number: ";
   if (I_i_139 == 1) {
      S_s_2651 = TimeToString(TimeCurrent(), 3);
      Print("---VERBOSE--- ", S_s_2651, " ", S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641, S_s_2640, S_s_2639);
   } else {
      if (I_i_139 == 2) {
         G_i_19 = FileOpen("EAW_VerboseLog.txt", 3);
         if (G_i_19 > 0) {
            FileSeek(G_i_19, 0, 2);
            S_s_2652 = TimeToString(TimeCurrent(), 3);
            FileWrite(G_i_19, S_s_2652, " VERBOSE: ", S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641, S_s_2640, S_s_2639);
            FileClose(G_i_19);
         }
      }
   }
   L_i_17 = 0;
   if (OrdersTotal() > 0) {
      do {
         if (OrderSelect(L_i_17, 0, 0) == true && OrderMagicNumber() == Fa_i_00) {
            L_b_6 = true;
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               sqClosePositionAtMarket(-1);
            } else {
               S_s_2653 = "";
               S_s_2654 = "";
               S_s_2655 = "";
               S_s_2656 = "";
               S_s_2657 = "";
               S_s_2658 = "";
               S_s_2659 = "";
               S_s_2660 = "";
               S_s_2661 = "";
               S_s_2662 = "";
               S_s_2663 = (string)OrderTicket();
               S_s_2664 = "Deleting pending order with ticket: ";
               if (I_i_139 == 1) {
                  S_s_2665 = TimeToString(TimeCurrent(), 3);
                  Print("---VERBOSE--- ", S_s_2665, " ", S_s_2664, S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655, S_s_2654, S_s_2653);
               } else {
                  if (I_i_139 == 2) {
                     G_i_20 = FileOpen("EAW_VerboseLog.txt", 3);
                     if (G_i_20 > 0) {
                        FileSeek(G_i_20, 0, 2);
                        S_s_2625 = TimeToString(TimeCurrent(), 3);
                        FileWrite(G_i_20, S_s_2625, " VERBOSE: ", S_s_2664, S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655, S_s_2654, S_s_2653);
                        FileClose(G_i_20);
                     }
                  }
               }
               order_check = OrderDelete(OrderTicket(), 4294967295);
            }
         }
         L_i_17 = L_i_17 + 1;
      } while (L_i_17 < OrdersTotal());
   }
   if (L_b_6 != true) {
      S_s_2626 = "";
      S_s_2627 = "";
      S_s_2628 = "";
      S_s_2629 = "";
      S_s_2630 = "";
      S_s_2631 = "";
      S_s_2632 = "";
      S_s_2633 = "";
      S_s_2634 = "";
      S_s_2635 = "";
      S_s_2567 = "";
      S_s_2568 = "Order cannot be found";
      if (I_i_139 == 1) {
         S_s_2569 = TimeToString(TimeCurrent(), 3);
         Print("---VERBOSE--- ", S_s_2569, " ", S_s_2568, S_s_2567, S_s_2635, S_s_2634, S_s_2633, S_s_2632, S_s_2631, S_s_2630, S_s_2629, S_s_2628, S_s_2627, S_s_2626);
      } else {
         if (I_i_139 == 2) {
            G_i_144 = FileOpen("EAW_VerboseLog.txt", 3);
            if (G_i_144 > 0) {
               FileSeek(G_i_144, 0, 2);
               S_s_2570 = TimeToString(TimeCurrent(), 3);
               FileWrite(G_i_144, S_s_2570, " VERBOSE: ", S_s_2568, S_s_2567, S_s_2635, S_s_2634, S_s_2633, S_s_2632, S_s_2631, S_s_2630, S_s_2629, S_s_2628, S_s_2627, S_s_2626);
               FileClose(G_i_144);
            }
         }
      }
   }
   S_s_2571 = "";
   S_s_2572 = "";
   S_s_2573 = "";
   S_s_2574 = "";
   S_s_2575 = "";
   S_s_2576 = "";
   S_s_2577 = "";
   S_s_2578 = "";
   S_s_2579 = "";
   S_s_2580 = "";
   S_s_2581 = "";
   S_s_2582 = "Closing order finished ----------------";
   if (I_i_139 == 1) {
      S_s_2583 = TimeToString(TimeCurrent(), 3);
      Print("---VERBOSE--- ", S_s_2583, " ", S_s_2582, S_s_2581, S_s_2580, S_s_2579, S_s_2578, S_s_2577, S_s_2576, S_s_2575, S_s_2574, S_s_2573, S_s_2572, S_s_2571);
      return ;
   }
   if (I_i_139 != 2) return;
   G_i_21 = FileOpen("EAW_VerboseLog.txt", 3);
   if (G_i_21 <= 0) return;
   FileSeek(G_i_21, 0, 2);
   S_s_2584 = TimeToString(TimeCurrent(), 3);
   FileWrite(G_i_21, S_s_2584, " VERBOSE: ", S_s_2582, S_s_2581, S_s_2580, S_s_2579, S_s_2578, S_s_2577, S_s_2576, S_s_2575, S_s_2574, S_s_2573, S_s_2572, S_s_2571);
   FileClose(G_i_21);
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool sqClosePositionAtMarket(double Fa_d_00) {
   string S_s_2639;
   string S_s_2640;
   string S_s_2641;
   string S_s_2642;
   string S_s_2643;
   string S_s_2644;
   string S_s_2645;
   string S_s_2646;
   string S_s_2647;
   string S_s_2648;
   string S_s_2649;
   string S_s_2650;
   string S_s_2651;
   string S_s_2652;
   string S_s_2653;
   string S_s_2654;
   string S_s_2655;
   string S_s_2656;
   string S_s_2657;
   string S_s_2658;
   string S_s_2659;
   string S_s_2660;
   string S_s_2661;
   string S_s_2662;
   string S_s_2663;
   string S_s_2664;
   string S_s_2665;
   string S_s_2625;
   string S_s_2626;
   string S_s_2627;
   string S_s_2628;
   string S_s_2629;
   string S_s_2630;
   string S_s_2631;
   string S_s_2632;
   string S_s_2633;
   string S_s_2634;
   string S_s_2635;
   string S_s_2567;
   string S_s_2568;
   string S_s_2569;
   string S_s_2570;
   string S_s_2571;
   string S_s_2572;
   string S_s_2573;
   string S_s_2574;
   string S_s_2575;
   string S_s_2576;
   string S_s_2577;
   string S_s_2578;
   string S_s_2579;
   string S_s_2580;
   string S_s_2581;
   string S_s_2582;
   string S_s_2583;
   string S_s_2584;
   string S_s_2585;
   bool L_b_6;
   int L_i_17;
   int L_i_15;
   L_b_6 = false;
   L_i_17 = 0;
   L_i_15 = 0;
   G_i_19 = 0;
   G_i_20 = 0;
   G_i_144 = 0;
   G_i_21 = 0;
   G_i_22 = 0;
   G_i_145 = 0;
   G_i_23 = 0;
   G_i_24 = 0;
   S_s_2639 = "";
   S_s_2640 = "";
   S_s_2641 = "";
   S_s_2642 = "";
   S_s_2643 = "";
   S_s_2644 = "";
   S_s_2645 = "";
   S_s_2646 = " at market price";
   S_s_2647 = (string)OrderTicket();
   S_s_2648 = ", ticket: ";
   S_s_2649 = (string)OrderMagicNumber();
   S_s_2650 = "Closing order with Magic Number: ";
   if (I_i_139 == 1) {
      S_s_2651 = TimeToString(TimeCurrent(), 3);
      Print("---VERBOSE--- ", S_s_2651, " ", S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641, S_s_2640, S_s_2639);
   } else {
      if (I_i_139 == 2) {
         G_i_19 = FileOpen("EAW_VerboseLog.txt", 3);
         if (G_i_19 > 0) {
            FileSeek(G_i_19, 0, 2);
            S_s_2652 = TimeToString(TimeCurrent(), 3);
            FileWrite(G_i_19, S_s_2652, " VERBOSE: ", S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641, S_s_2640, S_s_2639);
            FileClose(G_i_19);
         }
      }
   }
   L_i_17 = 0;
   L_i_15 = 3;
   do {
      L_i_15 = L_i_15 - 1;
      if (L_i_15 < 0) {
         L_b_6 = false;
         return L_b_6;
      }
      G_i_144 = 30;
      G_i_20 = 1;
      if (!IsTradeAllowed()) {
         G_i_21 = (int)GetTickCount();
         Print("Trade context is busy! Wait until it is free...");
         do {
            if (_StopFlag != 0) {
               Print("The expert was terminated by the user!");
               G_i_20 = -1;
               break;
            }
            G_i_25 = (int)GetTickCount() - G_i_21;
            G_i_22 = G_i_25;
            G_i_25 = G_i_144 * 1000;
            if (G_i_22 > G_i_25) {
               S_s_2653 = (string)G_i_144;
               S_s_2653 = "The waiting limit exceeded (" + S_s_2653;
               S_s_2653 = S_s_2653 + " ???.)!";
               Print(S_s_2653);
               G_i_20 = -2;
               break;
            }
            if (IsTradeAllowed()) {
               Print("Trade context has become free!");
               RefreshRates();
               G_i_20 = 1;
               break;
            }
            Sleep(100);
         } while (true);
      } else G_i_20 = 1;
      if (G_i_20 == 1) {
         S_s_2654 = "";
         S_s_2655 = "";
         S_s_2656 = "";
         S_s_2657 = "";
         S_s_2658 = "";
         S_s_2659 = "";
         S_s_2660 = "";
         S_s_2661 = "";
         S_s_2662 = "";
         S_s_2663 = "";
         G_i_25 = 3 - L_i_15;
         S_s_2664 = (string)G_i_25;
         S_s_2665 = "Closing retry #";
         if (I_i_139 == 1) {
            S_s_2625 = TimeToString(TimeCurrent(), 3);
            Print("---VERBOSE--- ", S_s_2625, " ", S_s_2665, S_s_2664, S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655, S_s_2654);
         } else {
            if (I_i_139 == 2) {
               G_i_145 = FileOpen("EAW_VerboseLog.txt", 3);
               if (G_i_145 > 0) {
                  FileSeek(G_i_145, 0, 2);
                  S_s_2626 = TimeToString(TimeCurrent(), 3);
                  FileWrite(G_i_145, S_s_2626, " VERBOSE: ", S_s_2665, S_s_2664, S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655, S_s_2654);
                  FileClose(G_i_145);
               }
            }
         }
         if (sqClosePositionWithHandling(Fa_d_00)) {
            S_s_2627 = "";
            S_s_2628 = "";
            S_s_2629 = "";
            S_s_2630 = "";
            S_s_2631 = "";
            S_s_2632 = "";
            S_s_2633 = "";
            S_s_2634 = " successfuly closed";
            S_s_2635 = (string)OrderTicket();
            S_s_2567 = ", ticket: ";
            S_s_2568 = (string)OrderMagicNumber();
            S_s_2569 = "Order with Magic Number: ";
            if (I_i_139 == 1) {
               S_s_2570 = TimeToString(TimeCurrent(), 3);
               Print("---VERBOSE--- ", S_s_2570, " ", S_s_2569, S_s_2568, S_s_2567, S_s_2635, S_s_2634, S_s_2633, S_s_2632, S_s_2631, S_s_2630, S_s_2629, S_s_2628, S_s_2627);
            } else {
               if (I_i_139 == 2) {
                  G_i_23 = FileOpen("EAW_VerboseLog.txt", 3);
                  if (G_i_23 > 0) {
                     FileSeek(G_i_23, 0, 2);
                     S_s_2571 = TimeToString(TimeCurrent(), 3);
                     FileWrite(G_i_23, S_s_2571, " VERBOSE: ", S_s_2569, S_s_2568, S_s_2567, S_s_2635, S_s_2634, S_s_2633, S_s_2632, S_s_2631, S_s_2630, S_s_2629, S_s_2628, S_s_2627);
                     FileClose(G_i_23);
                  }
               }
            }
            L_b_6 = true;
            return L_b_6;
         }
         G_i_25 = GetLastError();
         L_i_17 = G_i_25;
         S_s_2572 = "";
         S_s_2573 = "";
         S_s_2574 = "";
         S_s_2575 = "";
         S_s_2576 = "";
         S_s_2577 = "";
         S_s_2578 = "";
         S_s_2579 = "";
         S_s_2580 = ErrorDescription(G_i_25);
         S_s_2581 = " - ";
         S_s_2582 = (string)G_i_25;
         S_s_2583 = "Closing order failed, error: ";
         if (I_i_139 == 1) {
            S_s_2584 = TimeToString(TimeCurrent(), 3);
            Print("---VERBOSE--- ", S_s_2584, " ", S_s_2583, S_s_2582, S_s_2581, S_s_2580, S_s_2579, S_s_2578, S_s_2577, S_s_2576, S_s_2575, S_s_2574, S_s_2573, S_s_2572);
         } else {
            if (I_i_139 == 2) {
               G_i_24 = FileOpen("EAW_VerboseLog.txt", 3);
               if (G_i_24 > 0) {
                  FileSeek(G_i_24, 0, 2);
                  S_s_2585 = TimeToString(TimeCurrent(), 3);
                  FileWrite(G_i_24, S_s_2585, " VERBOSE: ", S_s_2583, S_s_2582, S_s_2581, S_s_2580, S_s_2579, S_s_2578, S_s_2577, S_s_2576, S_s_2575, S_s_2574, S_s_2573, S_s_2572);
                  FileClose(G_i_24);
               }
            }
         }
      }
      Sleep(500);
   } while (true);
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool sqClosePositionWithHandling(double Fa_d_00) {
   string S_s_2639;
   string S_s_2640;
   string S_s_2641;
   string S_s_2642;
   string S_s_2643;
   string S_s_2644;
   string S_s_2645;
   string S_s_2646;
   string S_s_2647;
   string S_s_2648;
   string S_s_2649;
   string S_s_2650;
   string S_s_2651;
   string S_s_2652;
   string S_s_2653;
   string S_s_2654;
   string S_s_2655;
   string S_s_2656;
   string S_s_2657;
   string S_s_2658;
   string S_s_2659;
   string S_s_2660;
   string S_s_2661;
   string S_s_2662;
   string S_s_2663;
   string S_s_2664;
   string S_s_2665;
   string S_s_2625;
   string S_s_2626;
   string S_s_2627;
   bool L_b_6;
   double L_d_36;
   L_b_6 = false;
   L_d_36 = 0;
   G_d_6 = 0;
   G_d_140 = 0;
   G_i_144 = 0;
   G_i_21 = 0;
   RefreshRates();
   L_d_36 = 0;
   if (OrderType() != OP_BUY && OrderType() != OP_SELL) {
      L_b_6 = true;
      return L_b_6;
   }
   if (OrderType() == OP_BUY) {
      S_s_2639 = OrderSymbol();
      if (S_s_2639 == "NULL") {
         G_d_6 = Bid;
      } else {
         G_d_6 = MarketInfo(S_s_2639, MODE_BID);
      }
      L_d_36 = G_d_6;
   } else {
      S_s_2640 = OrderSymbol();
      if (S_s_2640 == "NULL") {
         G_d_140 = Ask;
      } else {
         G_d_140 = MarketInfo(S_s_2640, MODE_ASK);
      }
      L_d_36 = G_d_140;
   }
   if ((Fa_d_00 <= 0)) {
      S_s_2641 = "";
      S_s_2642 = "";
      S_s_2643 = "";
      S_s_2644 = "";
      S_s_2645 = "";
      S_s_2646 = "";
      S_s_2647 = "";
      S_s_2648 = "";
      S_s_2649 = (string)OrderLots();
      S_s_2650 = ", closing size: ";
      S_s_2651 = (string)L_d_36;
      S_s_2652 = "Closing Market price: ";
      if (I_i_139 == 1) {
         S_s_2653 = TimeToString(TimeCurrent(), 3);
         Print("---VERBOSE--- ", S_s_2653, " ", S_s_2652, S_s_2651, S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641);
      } else {
         if (I_i_139 == 2) {
            G_i_144 = FileOpen("EAW_VerboseLog.txt", 3);
            if (G_i_144 > 0) {
               FileSeek(G_i_144, 0, 2);
               S_s_2654 = TimeToString(TimeCurrent(), 3);
               FileWrite(G_i_144, S_s_2654, " VERBOSE: ", S_s_2652, S_s_2651, S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641);
               FileClose(G_i_144);
            }
         }
      }
      L_b_6 = OrderClose(OrderTicket(), OrderLots(), L_d_36, I_i_138, 4294967295);
      return L_b_6;
   }
   S_s_2655 = "";
   S_s_2656 = "";
   S_s_2657 = "";
   S_s_2658 = "";
   S_s_2659 = "";
   S_s_2660 = "";
   S_s_2661 = "";
   S_s_2662 = "";
   S_s_2663 = (string)Fa_d_00;
   S_s_2664 = ", closing size: ";
   S_s_2665 = (string)L_d_36;
   S_s_2625 = "Closing Market price: ";
   if (I_i_139 == 1) {
      S_s_2626 = TimeToString(TimeCurrent(), 3);
      Print("---VERBOSE--- ", S_s_2626, " ", S_s_2625, S_s_2665, S_s_2664, S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655);
   } else {
      if (I_i_139 == 2) {
         G_i_21 = FileOpen("EAW_VerboseLog.txt", 3);
         if (G_i_21 > 0) {
            FileSeek(G_i_21, 0, 2);
            S_s_2627 = TimeToString(TimeCurrent(), 3);
            FileWrite(G_i_21, S_s_2627, " VERBOSE: ", S_s_2625, S_s_2665, S_s_2664, S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655);
            FileClose(G_i_21);
         }
      }
   }
   L_b_6 = OrderClose(OrderTicket(), Fa_d_00, L_d_36, I_i_138, 4294967295);
   return L_b_6;
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool sqOpenOrder(string Fa_s_00, int Fa_i_01, double Fa_d_02, double Fa_d_03, string Fa_s_04, int Fa_i_05, string Fa_s_06) {
   string S_s_2639;
   string S_s_2640;
   string S_s_2641;
   string S_s_2642;
   string S_s_2643;
   string S_s_2644;
   string S_s_2645;
   string S_s_2646;
   string S_s_2647;
   string S_s_2648;
   string S_s_2649;
   string S_s_2650;
   string S_s_2651;
   string S_s_2652;
   string S_s_2653;
   string S_s_2654;
   string S_s_2655;
   string S_s_2656;
   string S_s_2657;
   string S_s_2658;
   string S_s_2659;
   string S_s_2660;
   string S_s_2661;
   string S_s_2662;
   string S_s_2663;
   string S_s_2664;
   string S_s_2665;
   string S_s_2625;
   string S_s_2626;
   string S_s_2627;
   string S_s_2628;
   string S_s_2629;
   string S_s_2630;
   string S_s_2631;
   string S_s_2632;
   string S_s_2633;
   string S_s_2634;
   string S_s_2635;
   string S_s_2567;
   string S_s_2568;
   string S_s_2569;
   string S_s_2570;
   string S_s_2571;
   string S_s_2572;
   string S_s_2573;
   string S_s_2574;
   string S_s_2575;
   string S_s_2576;
   string S_s_2577;
   string S_s_2578;
   string S_s_2579;
   string S_s_2580;
   string S_s_2581;
   string S_s_2582;
   string S_s_2583;
   string S_s_2584;
   string S_s_2585;
   string S_s_2586;
   string S_s_2587;
   string S_s_2588;
   string S_s_2589;
   string S_s_2590;
   string S_s_2591;
   string S_s_2592;
   string S_s_2593;
   string S_s_2594;
   string S_s_2595;
   string S_s_2596;
   string S_s_2597;
   string S_s_2410;
   string S_s_2411;
   string S_s_2412;
   string S_s_2413;
   string S_s_2414;
   string S_s_2415;
   string S_s_2416;
   string S_s_2417;
   string S_s_2418;
   string S_s_2419;
   string S_s_2420;
   string S_s_2421;
   string S_s_2422;
   string S_s_2423;
   string S_s_2424;
   string S_s_2425;
   string S_s_2426;
   string S_s_2427;
   string S_s_2428;
   string S_s_2429;
   string S_s_2430;
   string S_s_2431;
   string S_s_2432;
   string S_s_2433;
   string S_s_2434;
   string S_s_2435;
   string S_s_2436;
   string S_s_2437;
   string S_s_2438;
   string S_s_2439;
   string S_s_2440;
   string S_s_2441;
   string S_s_2442;
   string S_s_2443;
   string S_s_2444;
   string S_s_2445;
   string S_s_2446;
   string S_s_2447;
   string S_s_2448;
   string S_s_2449;
   string S_s_2450;
   string S_s_2451;
   string S_s_2452;
   string S_s_2453;
   string S_s_2454;
   string S_s_2455;
   string S_s_2456;
   string S_s_2457;
   string S_s_2458;
   string S_s_2459;
   string S_s_2460;
   string S_s_2461;
   string S_s_2462;
   string S_s_2463;
   string S_s_2464;
   string S_s_2465;
   string S_s_2466;
   string S_s_2467;
   string S_s_2468;
   string S_s_2469;
   string S_s_2470;
   string S_s_2471;
   string S_s_2472;
   string S_s_2473;
   string S_s_2474;
   string S_s_2475;
   string S_s_2476;
   string S_s_2477;
   string S_s_2478;
   string S_s_2479;
   string S_s_2480;
   string S_s_2481;
   string S_s_2482;
   string S_s_2483;
   string S_s_2484;
   string S_s_2485;
   string S_s_2486;
   string S_s_2487;
   string S_s_2488;
   string S_s_2489;
   string S_s_2490;
   string S_s_2491;
   string S_s_2492;
   string S_s_2493;
   string S_s_2494;
   string S_s_2495;
   string S_s_2496;
   string S_s_2497;
   string S_s_2498;
   string S_s_2499;
   string S_s_2500;
   string S_s_2501;
   string S_s_2502;
   string S_s_2503;
   string S_s_2504;
   string S_s_2505;
   string S_s_2506;
   string S_s_2507;
   string S_s_2508;
   string S_s_2509;
   string S_s_2510;
   string S_s_2511;
   string S_s_2512;
   string S_s_2513;
   string S_s_2514;
   string S_s_2515;
   string S_s_2516;
   string S_s_2517;
   string S_s_2518;
   string S_s_2519;
   string S_s_2520;
   string S_s_2521;
   string S_s_2522;
   string S_s_2523;
   string S_s_2524;
   string S_s_2525;
   string S_s_2526;
   string S_s_2527;
   string S_s_2528;
   bool L_b_6;
   int L_i_17;
   double L_d_36;
   double L_d_37;
   double L_d_38;
   int L_i_16;
   L_b_6 = false;
   L_i_17 = 0;
   L_d_36 = 0;
   L_d_37 = 0;
   L_d_38 = 0;
   L_i_16 = 0;
   G_i_19 = 0;
   G_i_20 = 0;
   G_b_99 = false;
   G_i_21 = 0;
   G_i_22 = 0;
   G_i_145 = 0;
   G_i_23 = 0;
   G_b_100 = false;
   G_i_25 = 0;
   G_i_146 = 0;
   G_i_147 = 0;
   G_b_101 = false;
   G_i_148 = 0;
   G_i_27 = 0;
   G_i_149 = 0;
   G_i_366 = 0;
   G_d_307 = 0;
   G_d_14 = 0;
   G_i_29 = 0;
   G_d_15 = 0;
   G_i_30 = 0;
   G_d_16 = 0;
   G_i_153 = 0;
   G_i_31 = 0;
   G_i_154 = 0;
   G_i_155 = 0;
   G_i_32 = 0;
   G_i_156 = 0;
   G_i_33 = 0;
   G_i_157 = 0;
   G_i_34 = 0;
   G_i_158 = 0;
   G_i_356 = 0;
   G_i_35 = 0;
   L_i_17 = 0;
   S_s_2639 = "";
   S_s_2640 = " ----------------";
   S_s_2641 = Fa_s_04;
   S_s_2642 = ", comment: ";
   S_s_2643 = (string)Fa_d_02;
   S_s_2644 = ", lots: ";
   S_s_2645 = (string)Fa_d_03;
   S_s_2646 = ", price: ";
   S_s_2647 = sqGetOrderTypeAsString(Fa_i_01);
   S_s_2648 = ", type: ";
   S_s_2649 = (string)Fa_i_05;
   S_s_2650 = "Opening order with MagicNumber: ";
   if (I_i_139 == 1) {
      S_s_2651 = TimeToString(TimeCurrent(), 3);
      Print("---VERBOSE--- ", S_s_2651, " ", S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641, S_s_2640, S_s_2639);
   } else {
      if (I_i_139 == 2) {
         G_i_19 = FileOpen("EAW_VerboseLog.txt", 3);
         if (G_i_19 > 0) {
            FileSeek(G_i_19, 0, 2);
            S_s_2652 = TimeToString(TimeCurrent(), 3);
            FileWrite(G_i_19, S_s_2652, " VERBOSE: ", S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641, S_s_2640, S_s_2639);
            FileClose(G_i_19);
         }
      }
   }
   S_s_2653 = "";
   S_s_2654 = "";
   S_s_2655 = "";
   S_s_2656 = "";
   S_s_2657 = "";
   S_s_2658 = "";
   S_s_2659 = "";
   S_s_2660 = "";
   S_s_2661 = (string)Bid;
   S_s_2662 = ", Bid: ";
   S_s_2663 = (string)Ask;
   S_s_2664 = "Current Ask: ";
   if (I_i_139 == 1) {
      S_s_2665 = TimeToString(TimeCurrent(), 3);
      Print("---VERBOSE--- ", S_s_2665, " ", S_s_2664, S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655, S_s_2654, S_s_2653);
   } else {
      if (I_i_139 == 2) {
         G_i_20 = FileOpen("EAW_VerboseLog.txt", 3);
         if (G_i_20 > 0) {
            FileSeek(G_i_20, 0, 2);
            S_s_2625 = TimeToString(TimeCurrent(), 3);
            FileWrite(G_i_20, S_s_2625, " VERBOSE: ", S_s_2664, S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655, S_s_2654, S_s_2653);
            FileClose(G_i_20);
         }
      }
   }
   G_l_12 = TimeCurrent();
   G_l_154 = I_i_143;
   G_l_154 = G_l_12 - G_l_154;
   if (G_l_154 < 600) {
      L_b_6 = false;
      return L_b_6;
   }
   G_i_21 = Fa_i_05;
   G_i_159 = OrdersTotal() - 1;
   G_i_22 = G_i_159;
   if (G_i_159 >= 0) {
      do {
         if (OrderSelect(G_i_22, 0, 0) && OrderMagicNumber() == G_i_21 && OrderSymbol() == _Symbol) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               G_b_99 = true;
               break;
            }
         }
         G_i_22 = G_i_22 - 1;
      } while (G_i_22 >= 0);
   } else G_b_99 = false;
   if (G_b_99) {
      S_s_2626 = "";
      S_s_2627 = "";
      S_s_2628 = "";
      S_s_2629 = "";
      S_s_2630 = "";
      S_s_2631 = "";
      S_s_2632 = "";
      S_s_2633 = "";
      S_s_2634 = "";
      S_s_2635 = " already exists, cannot open another one!";
      S_s_2567 = (string)Fa_i_05;
      S_s_2568 = "Order with magic number: ";
      if (I_i_139 == 1) {
         S_s_2569 = TimeToString(TimeCurrent(), 3);
         Print("---VERBOSE--- ", S_s_2569, " ", S_s_2568, S_s_2567, S_s_2635, S_s_2634, S_s_2633, S_s_2632, S_s_2631, S_s_2630, S_s_2629, S_s_2628, S_s_2627, S_s_2626);
      } else {
         if (I_i_139 == 2) {
            G_i_145 = FileOpen("EAW_VerboseLog.txt", 3);
            if (G_i_145 > 0) {
               FileSeek(G_i_145, 0, 2);
               S_s_2570 = TimeToString(TimeCurrent(), 3);
               FileWrite(G_i_145, S_s_2570, " VERBOSE: ", S_s_2568, S_s_2567, S_s_2635, S_s_2634, S_s_2633, S_s_2632, S_s_2631, S_s_2630, S_s_2629, S_s_2628, S_s_2627, S_s_2626);
               FileClose(G_i_145);
            }
         }
      }
      S_s_2571 = "";
      S_s_2572 = "";
      S_s_2573 = "";
      S_s_2574 = "";
      S_s_2575 = "";
      S_s_2576 = "";
      S_s_2577 = "";
      S_s_2578 = "";
      S_s_2579 = "";
      S_s_2580 = "";
      S_s_2581 = "";
      S_s_2582 = "----------------------------------";
      if (I_i_139 == 1) {
         S_s_2583 = TimeToString(TimeCurrent(), 3);
         Print("---VERBOSE--- ", S_s_2583, " ", S_s_2582, S_s_2581, S_s_2580, S_s_2579, S_s_2578, S_s_2577, S_s_2576, S_s_2575, S_s_2574, S_s_2573, S_s_2572, S_s_2571);
      } else {
         if (I_i_139 == 2) {
            G_i_23 = FileOpen("EAW_VerboseLog.txt", 3);
            if (G_i_23 > 0) {
               FileSeek(G_i_23, 0, 2);
               S_s_2584 = TimeToString(TimeCurrent(), 3);
               FileWrite(G_i_23, S_s_2584, " VERBOSE: ", S_s_2582, S_s_2581, S_s_2580, S_s_2579, S_s_2578, S_s_2577, S_s_2576, S_s_2575, S_s_2574, S_s_2573, S_s_2572, S_s_2571);
               FileClose(G_i_23);
            }
         }
      }
      L_b_6 = false;
      return L_b_6;
   }
   G_i_25 = Fa_i_05;
   G_i_159 = OrdersTotal() - 1;
   G_i_146 = G_i_159;
   if (G_i_159 >= 0) {
      do {
         if (OrderSelect(G_i_146, 0, 0) && OrderMagicNumber() == G_i_25 && OrderSymbol() == _Symbol && OrderType() != OP_BUY && OrderType() != OP_SELL) {
            G_b_100 = true;
            break;
         }
         G_i_146 = G_i_146 - 1;
      } while (G_i_146 >= 0);
   } else G_b_100 = false;
   if (G_b_100) {
      G_i_147 = Fa_i_05;
      G_b_101 = false;
      if (Fa_i_05 == I_i_1) {
         G_b_101 = false;
      }
      if (G_i_147 == I_i_2) {
         G_b_101 = false;
      }
      if (G_i_147 == I_i_3) {
         G_b_101 = false;
      }
      if (G_i_147 == I_i_4) {
         G_b_101 = false;
      }
      if (G_i_147 == I_i_5) {
         G_b_101 = false;
      }
      if (G_i_147 == I_i_6) {
         G_b_101 = false;
      }
      if (G_i_147 == I_i_7) {
         G_b_101 = false;
      }
      if (G_i_147 == I_i_8) {
         G_b_101 = false;
      }
      if (G_i_147 == I_i_9) {
         G_b_101 = false;
      }
      if (G_i_147 == I_i_10) {
         G_b_101 = false;
      }
      if (G_i_147 == I_i_11) {
         G_b_101 = false;
      }
      if (G_i_147 == I_i_12) {
         G_b_101 = false;
      }
      if (G_i_147 == I_i_13) {
         G_b_101 = false;
      }
      if (G_i_147 == I_i_14) {
         G_b_101 = false;
      }
      if (G_b_101 != true) {
         S_s_2585 = "";
         S_s_2586 = "";
         S_s_2587 = "";
         S_s_2588 = "";
         S_s_2589 = "";
         S_s_2590 = "";
         S_s_2591 = "";
         S_s_2592 = "";
         S_s_2593 = " ----------------";
         S_s_2594 = " already exists, and replace is not allowed!";
         S_s_2595 = (string)Fa_i_05;
         S_s_2596 = "Pending Order with magic number: ";
         if (I_i_139 == 1) {
            S_s_2597 = TimeToString(TimeCurrent(), 3);
            Print("---VERBOSE--- ", S_s_2597, " ", S_s_2596, S_s_2595, S_s_2594, S_s_2593, S_s_2592, S_s_2591, S_s_2590, S_s_2589, S_s_2588, S_s_2587, S_s_2586, S_s_2585);
         } else {
            if (I_i_139 == 2) {
               G_i_148 = FileOpen("EAW_VerboseLog.txt", 3);
               if (G_i_148 > 0) {
                  FileSeek(G_i_148, 0, 2);
                  S_s_2410 = TimeToString(TimeCurrent(), 3);
                  FileWrite(G_i_148, S_s_2410, " VERBOSE: ", S_s_2596, S_s_2595, S_s_2594, S_s_2593, S_s_2592, S_s_2591, S_s_2590, S_s_2589, S_s_2588, S_s_2587, S_s_2586, S_s_2585);
                  FileClose(G_i_148);
               }
            }
         }
         L_b_6 = false;
         return L_b_6;
      }
      S_s_2411 = "";
      S_s_2412 = "";
      S_s_2413 = "";
      S_s_2414 = "";
      S_s_2415 = "";
      S_s_2416 = "";
      S_s_2417 = "";
      S_s_2418 = "";
      S_s_2419 = "";
      S_s_2420 = "";
      S_s_2421 = "";
      S_s_2422 = "Deleting previous pending order";
      if (I_i_139 == 1) {
         S_s_2423 = TimeToString(TimeCurrent(), 3);
         Print("---VERBOSE--- ", S_s_2423, " ", S_s_2422, S_s_2421, S_s_2420, S_s_2419, S_s_2418, S_s_2417, S_s_2416, S_s_2415, S_s_2414, S_s_2413, S_s_2412, S_s_2411);
      } else {
         if (I_i_139 == 2) {
            G_i_27 = FileOpen("EAW_VerboseLog.txt", 3);
            if (G_i_27 > 0) {
               FileSeek(G_i_27, 0, 2);
               S_s_2424 = TimeToString(TimeCurrent(), 3);
               FileWrite(G_i_27, S_s_2424, " VERBOSE: ", S_s_2422, S_s_2421, S_s_2420, S_s_2419, S_s_2418, S_s_2417, S_s_2416, S_s_2415, S_s_2414, S_s_2413, S_s_2412, S_s_2411);
               FileClose(G_i_27);
            }
         }
      }
      G_i_149 = Fa_i_05;
      G_i_366 = 0;
      if (OrdersTotal() > 0) {
         do {
            if (OrderSelect(G_i_366, 0, 0) == true && OrderMagicNumber() == G_i_149 && OrderSymbol() == _Symbol) {
               order_check = OrderDelete(OrderTicket(), 4294967295);
               break;
            }
            G_i_366 = G_i_366 + 1;
         } while (G_i_366 < OrdersTotal());
      }
   }
   RefreshRates();
   if (Fa_i_01 == 4 || Fa_i_01 == 5) {
      L_d_36 = 0;
      if (Fa_i_01 == 4) {
         S_s_2425 = Fa_s_00;
         if (S_s_2425 == "NULL") {
            G_d_307 = Ask;
         } else {
            G_d_307 = MarketInfo(S_s_2425, MODE_ASK);
         }
         L_d_36 = G_d_307;
      } else {
         S_s_2426 = Fa_s_00;
         if (S_s_2426 == "NULL") {
            G_d_14 = Bid;
         } else {
            G_d_14 = MarketInfo(S_s_2426, MODE_BID);
         }
         L_d_36 = G_d_14;
      }
      G_d_25 = NormalizeDouble(fabs((Fa_d_03 - L_d_36)), _Digits);
      G_i_29 = Fa_i_05;
      G_d_15 = 0;
      if (Fa_i_05 == I_i_1) {
         G_d_15 = 0;
      }
      if (G_i_29 == I_i_2) {
         G_d_15 = 0;
      }
      if (G_i_29 == I_i_3) {
         G_d_15 = 0;
      }
      if (G_i_29 == I_i_4) {
         G_d_15 = 0;
      }
      if (G_i_29 == I_i_5) {
         G_d_15 = 0;
      }
      if (G_i_29 == I_i_6) {
         G_d_15 = 0;
      }
      if (G_i_29 == I_i_7) {
         G_d_15 = 0;
      }
      if (G_i_29 == I_i_8) {
         G_d_15 = 0;
      }
      if (G_i_29 == I_i_9) {
         G_d_15 = 0;
      }
      if (G_i_29 == I_i_10) {
         G_d_15 = 0;
      }
      if (G_i_29 == I_i_11) {
         G_d_15 = 0;
      }
      if (G_i_29 == I_i_12) {
         G_d_15 = 0;
      }
      if (G_i_29 == I_i_13) {
         G_d_15 = 0;
      }
      if (G_i_29 == I_i_14) {
         G_d_15 = 0;
      }
      if ((G_d_25 <= NormalizeDouble((NormalizeDouble(G_d_15, _Digits) / I_d_2), _Digits))) {
         S_s_2427 = "";
         S_s_2428 = "";
         S_s_2429 = "";
         S_s_2430 = "";
         S_s_2431 = "";
         S_s_2432 = "";
         S_s_2433 = "";
         S_s_2434 = "";
         S_s_2435 = "";
         S_s_2436 = "";
         S_s_2437 = " ----------------";
         S_s_2438 = "Stop/limit order is too close to actual price";
         if (I_i_139 == 1) {
            S_s_2439 = TimeToString(TimeCurrent(), 3);
            Print("---VERBOSE--- ", S_s_2439, " ", S_s_2438, S_s_2437, S_s_2436, S_s_2435, S_s_2434, S_s_2433, S_s_2432, S_s_2431, S_s_2430, S_s_2429, S_s_2428, S_s_2427);
         } else {
            if (I_i_139 == 2) {
               G_i_30 = FileOpen("EAW_VerboseLog.txt", 3);
               if (G_i_30 > 0) {
                  FileSeek(G_i_30, 0, 2);
                  S_s_2440 = TimeToString(TimeCurrent(), 3);
                  FileWrite(G_i_30, S_s_2440, " VERBOSE: ", S_s_2438, S_s_2437, S_s_2436, S_s_2435, S_s_2434, S_s_2433, S_s_2432, S_s_2431, S_s_2430, S_s_2429, S_s_2428, S_s_2427);
                  FileClose(G_i_30);
               }
            }
         }
         L_b_6 = false;
         return L_b_6;
      }
   }
   L_d_37 = getOrderStopLoss(Fa_i_05, Fa_i_01, Fa_d_03);
   L_d_38 = getOrderProfitTarget(Fa_i_05, Fa_i_01, Fa_d_03);
   L_i_16 = 3;
   do {
      L_i_16 = L_i_16 - 1;
      if (L_i_16 < 0) {
         L_b_6 = false;
         return L_b_6;
      }
      G_i_153 = Fa_i_05;
      G_i_160 = OrdersTotal() - 1;
      G_i_31 = G_i_160;
      if (G_i_160 >= 0) {
         do {
            if (OrderSelect(G_i_31, 0, 0)) {
               if ((G_i_153 == 0 && OrderSymbol() == _Symbol) || OrderMagicNumber() == G_i_153) {
                  if (OrderType() == OP_BUY) {
                     G_d_16 = 1;
                     break;
                  }
                  if (OrderType() == OP_SELL) {
                     G_d_16 = -1;
                     break;
                  }
               }
            }
            G_i_31 = G_i_31 - 1;
         } while (G_i_31 >= 0);
      } else G_d_16 = 0;
      if ((G_d_16 != 0)) {
         S_s_2441 = "";
         S_s_2442 = "";
         S_s_2443 = "";
         S_s_2444 = "";
         S_s_2445 = "";
         S_s_2446 = "";
         S_s_2447 = "";
         S_s_2448 = "";
         S_s_2449 = "";
         S_s_2450 = "";
         S_s_2451 = " ----------------";
         S_s_2452 = "Order already opened";
         if (I_i_139 == 1) {
            S_s_2453 = TimeToString(TimeCurrent(), 3);
            Print("---VERBOSE--- ", S_s_2453, " ", S_s_2452, S_s_2451, S_s_2450, S_s_2449, S_s_2448, S_s_2447, S_s_2446, S_s_2445, S_s_2444, S_s_2443, S_s_2442, S_s_2441);
         } else {
            if (I_i_139 == 2) {
               G_i_154 = FileOpen("EAW_VerboseLog.txt", 3);
               if (G_i_154 > 0) {
                  FileSeek(G_i_154, 0, 2);
                  S_s_2454 = TimeToString(TimeCurrent(), 3);
                  FileWrite(G_i_154, S_s_2454, " VERBOSE: ", S_s_2452, S_s_2451, S_s_2450, S_s_2449, S_s_2448, S_s_2447, S_s_2446, S_s_2445, S_s_2444, S_s_2443, S_s_2442, S_s_2441);
                  FileClose(G_i_154);
               }
            }
         }
         L_b_6 = false;
         return L_b_6;
      }
      G_i_32 = 30;
      G_i_155 = 1;
      if (!IsTradeAllowed()) {
         G_i_156 = (int)GetTickCount();
         Print("Trade context is busy! Wait until it is free...");
         do {
            if (_StopFlag != 0) {
               Print("The expert was terminated by the user!");
               G_i_155 = -1;
               break;
            }
            G_i_160 = (int)GetTickCount() - G_i_156;
            G_i_33 = G_i_160;
            G_i_160 = G_i_32 * 1000;
            if (G_i_33 > G_i_160) {
               S_s_2455 = (string)G_i_32;
               S_s_2455 = "The waiting limit exceeded (" + S_s_2455;
               S_s_2455 = S_s_2455 + " ???.)!";
               Print(S_s_2455);
               G_i_155 = -2;
               break;
            }
            if (IsTradeAllowed()) {
               Print("Trade context has become free!");
               RefreshRates();
               break;//G_i_155 = 1;
            }
            Sleep(100);
         } while (true);
      } else G_i_155 = 1;
      if (G_i_155 == 1) {
         S_s_2456 = "";
         S_s_2457 = "";
         S_s_2458 = "";
         S_s_2459 = "";
         S_s_2460 = "";
         S_s_2461 = "";
         S_s_2462 = "";
         S_s_2463 = "";
         S_s_2464 = "";
         S_s_2465 = "";
         G_i_160 = 3 - L_i_16;
         S_s_2466 = (string)G_i_160;
         S_s_2467 = "Opening, try #";
         if (I_i_139 == 1) {
            S_s_2468 = TimeToString(TimeCurrent(), 3);
            Print("---VERBOSE--- ", S_s_2468, " ", S_s_2467, S_s_2466, S_s_2465, S_s_2464, S_s_2463, S_s_2462, S_s_2461, S_s_2460, S_s_2459, S_s_2458, S_s_2457, S_s_2456);
         } else {
            if (I_i_139 == 2) {
               G_i_157 = FileOpen("EAW_VerboseLog.txt", 3);
               if (G_i_157 > 0) {
                  FileSeek(G_i_157, 0, 2);
                  S_s_2469 = TimeToString(TimeCurrent(), 3);
                  FileWrite(G_i_157, S_s_2469, " VERBOSE: ", S_s_2467, S_s_2466, S_s_2465, S_s_2464, S_s_2463, S_s_2462, S_s_2461, S_s_2460, S_s_2459, S_s_2458, S_s_2457, S_s_2456);
                  FileClose(G_i_157);
               }
            }
         }
         S_s_2470 = Fa_s_04;
         S_s_2471 = Fa_s_00;
         L_i_17 = sqOpenOrderWithErrorHandling(S_s_2471, Fa_i_01, Fa_d_02, Fa_d_03, L_d_37, L_d_38, S_s_2470, Fa_i_05);
         if (L_i_17 > 0) {
            S_s_2472 = "";
            S_s_2473 = "";
            S_s_2474 = "";
            S_s_2475 = "";
            S_s_2476 = "";
            S_s_2477 = "";
            S_s_2478 = "";
            S_s_2479 = "";
            S_s_2480 = "";
            S_s_2481 = "";
            S_s_2482 = " ----------------";
            S_s_2483 = "Trade successfuly opened";
            if (I_i_139 == 1) {
               S_s_2484 = TimeToString(TimeCurrent(), 3);
               Print("---VERBOSE--- ", S_s_2484, " ", S_s_2483, S_s_2482, S_s_2481, S_s_2480, S_s_2479, S_s_2478, S_s_2477, S_s_2476, S_s_2475, S_s_2474, S_s_2473, S_s_2472);
            } else {
               if (I_i_139 == 2) {
                  G_i_34 = FileOpen("EAW_VerboseLog.txt", 3);
                  if (G_i_34 > 0) {
                     FileSeek(G_i_34, 0, 2);
                     S_s_2485 = TimeToString(TimeCurrent(), 3);
                     FileWrite(G_i_34, S_s_2485, " VERBOSE: ", S_s_2483, S_s_2482, S_s_2481, S_s_2480, S_s_2479, S_s_2478, S_s_2477, S_s_2476, S_s_2475, S_s_2474, S_s_2473, S_s_2472);
                     FileClose(G_i_34);
                  }
               }
            }
            S_s_2486 = "Last Signal: " + Fa_s_06;
            ObjectSetText("lines", S_s_2486, 8, "Tahoma", I_i_18);
            L_b_6 = true;
            return L_b_6;
         }
      }
      if (L_i_17 == -130) {
         S_s_2487 = "";
         S_s_2488 = "";
         S_s_2489 = "";
         S_s_2490 = "";
         S_s_2491 = "";
         S_s_2492 = "";
         S_s_2493 = "";
         S_s_2494 = "";
         S_s_2495 = "";
         S_s_2496 = "";
         S_s_2497 = " ----------------";
         S_s_2498 = "Invalid stops, cannot open the trade";
         if (I_i_139 == 1) {
            S_s_2499 = TimeToString(TimeCurrent(), 3);
            Print("---VERBOSE--- ", S_s_2499, " ", S_s_2498, S_s_2497, S_s_2496, S_s_2495, S_s_2494, S_s_2493, S_s_2492, S_s_2491, S_s_2490, S_s_2489, S_s_2488, S_s_2487);
         } else {
            if (I_i_139 == 2) {
               G_i_158 = FileOpen("EAW_VerboseLog.txt", 3);
               if (G_i_158 > 0) {
                  FileSeek(G_i_158, 0, 2);
                  S_s_2500 = TimeToString(TimeCurrent(), 3);
                  FileWrite(G_i_158, S_s_2500, " VERBOSE: ", S_s_2498, S_s_2497, S_s_2496, S_s_2495, S_s_2494, S_s_2493, S_s_2492, S_s_2491, S_s_2490, S_s_2489, S_s_2488, S_s_2487);
                  FileClose(G_i_158);
               }
            }
         }
         L_b_6 = false;
         return L_b_6;
      }
      if (L_i_17 == -131) {
         S_s_2501 = "";
         S_s_2502 = "";
         S_s_2503 = "";
         S_s_2504 = "";
         S_s_2505 = "";
         S_s_2506 = "";
         S_s_2507 = "";
         S_s_2508 = "";
         S_s_2509 = "";
         S_s_2510 = "";
         S_s_2511 = " ----------------";
         S_s_2512 = "Invalid volume, cannot open the trade";
         if (I_i_139 == 1) {
            S_s_2513 = TimeToString(TimeCurrent(), 3);
            Print("---VERBOSE--- ", S_s_2513, " ", S_s_2512, S_s_2511, S_s_2510, S_s_2509, S_s_2508, S_s_2507, S_s_2506, S_s_2505, S_s_2504, S_s_2503, S_s_2502, S_s_2501);
         } else {
            if (I_i_139 == 2) {
               G_i_356 = FileOpen("EAW_VerboseLog.txt", 3);
               if (G_i_356 > 0) {
                  FileSeek(G_i_356, 0, 2);
                  S_s_2514 = TimeToString(TimeCurrent(), 3);
                  FileWrite(G_i_356, S_s_2514, " VERBOSE: ", S_s_2512, S_s_2511, S_s_2510, S_s_2509, S_s_2508, S_s_2507, S_s_2506, S_s_2505, S_s_2504, S_s_2503, S_s_2502, S_s_2501);
                  FileClose(G_i_356);
               }
            }
         }
         L_b_6 = false;
         return L_b_6;
      }
      if (L_i_17 == -11111) {
         S_s_2515 = "";
         S_s_2516 = "";
         S_s_2517 = "";
         S_s_2518 = "";
         S_s_2519 = "";
         S_s_2520 = "";
         S_s_2521 = "";
         S_s_2522 = "";
         S_s_2523 = "";
         S_s_2524 = "";
         S_s_2525 = " ----------------";
         S_s_2526 = "Trade opened, but cannot set SL/PT, closing trade";
         if (I_i_139 == 1) {
            S_s_2527 = TimeToString(TimeCurrent(), 3);
            Print("---VERBOSE--- ", S_s_2527, " ", S_s_2526, S_s_2525, S_s_2524, S_s_2523, S_s_2522, S_s_2521, S_s_2520, S_s_2519, S_s_2518, S_s_2517, S_s_2516, S_s_2515);
         } else {
            if (I_i_139 == 2) {
               G_i_35 = FileOpen("EAW_VerboseLog.txt", 3);
               if (G_i_35 > 0) {
                  FileSeek(G_i_35, 0, 2);
                  S_s_2528 = TimeToString(TimeCurrent(), 3);
                  FileWrite(G_i_35, S_s_2528, " VERBOSE: ", S_s_2526, S_s_2525, S_s_2524, S_s_2523, S_s_2522, S_s_2521, S_s_2520, S_s_2519, S_s_2518, S_s_2517, S_s_2516, S_s_2515);
                  FileClose(G_i_35);
               }
            }
         }
         L_b_6 = false;
         return L_b_6;
      }
      Sleep(1000);
   } while (true);
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int sqOpenOrderWithErrorHandling(string Fa_s_00, int Fa_i_01, double Fa_d_02, double Fa_d_03, double Fa_d_04, double Fa_d_05, string Fa_s_06, int Fa_i_07) {
   string S_s_2639;
   string S_s_2640;
   string S_s_2641;
   string S_s_2642;
   string S_s_2643;
   string S_s_2644;
   string S_s_2645;
   string S_s_2646;
   string S_s_2647;
   string S_s_2648;
   string S_s_2649;
   string S_s_2650;
   string S_s_2651;
   string S_s_2652;
   string S_s_2653;
   string S_s_2654;
   string S_s_2655;
   string S_s_2656;
   string S_s_2657;
   string S_s_2658;
   string S_s_2659;
   string S_s_2660;
   string S_s_2661;
   string S_s_2662;
   string S_s_2663;
   string S_s_2664;
   string S_s_2665;
   string S_s_2625;
   string S_s_2626;
   string S_s_2627;
   string S_s_2628;
   string S_s_2629;
   string S_s_2630;
   string S_s_2631;
   string S_s_2632;
   string S_s_2633;
   string S_s_2634;
   string S_s_2635;
   string S_s_2567;
   string S_s_2568;
   string S_s_2569;
   string S_s_2570;
   string S_s_2571;
   string S_s_2572;
   string S_s_2573;
   string S_s_2574;
   string S_s_2575;
   string S_s_2576;
   string S_s_2577;
   string S_s_2578;
   string S_s_2579;
   string S_s_2580;
   string S_s_2581;
   string S_s_2582;
   string S_s_2583;
   string S_s_2584;
   string S_s_2585;
   string S_s_2586;
   string S_s_2587;
   string S_s_2588;
   string S_s_2589;
   string S_s_2590;
   string S_s_2591;
   string S_s_2592;
   string S_s_2593;
   string S_s_2594;
   string S_s_2595;
   string S_s_2596;
   string S_s_2597;
   int L_i_13;
   int L_i_17;
   int L_i_15;
   double L_d_37;
   double L_d_38;
   int L_i_16;
   L_i_13 = 0;
   L_i_17 = 0;
   L_i_15 = 0;
   L_d_37 = 0;
   L_d_38 = 0;
   L_i_16 = 0;
   G_i_19 = 0;
   G_i_20 = 0;
   G_i_144 = 0;
   G_i_21 = 0;
   G_i_22 = 0;
   G_i_145 = 0;
   G_i_23 = 0;
   L_i_17 = 0;
   L_i_15 = 0;
   S_s_2639 = "";
   S_s_2640 = "";
   S_s_2641 = "";
   S_s_2642 = "";
   S_s_2643 = "";
   S_s_2644 = "";
   S_s_2645 = "";
   S_s_2646 = "";
   S_s_2647 = "";
   S_s_2648 = "";
   S_s_2649 = "";
   S_s_2650 = "Sending order...";
   if (I_i_139 == 1) {
      S_s_2651 = TimeToString(TimeCurrent(), 3);
      Print("---VERBOSE--- ", S_s_2651, " ", S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641, S_s_2640, S_s_2639);
   } else {
      if (I_i_139 == 2) {
         G_i_19 = FileOpen("EAW_VerboseLog.txt", 3);
         if (G_i_19 > 0) {
            FileSeek(G_i_19, 0, 2);
            S_s_2652 = TimeToString(TimeCurrent(), 3);
            FileWrite(G_i_19, S_s_2652, " VERBOSE: ", S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641, S_s_2640, S_s_2639);
            FileClose(G_i_19);
         }
      }
   }
   L_d_37 = Fa_d_04;
   L_d_38 = Fa_d_05;
   if (I_b_13) {
      L_d_37 = 0;
      L_d_38 = 0;
   }
   if (Fa_s_00 == "NULL") {
      L_i_17 = OrderSend(_Symbol, Fa_i_01, Fa_d_02, Fa_d_03, I_i_138, L_d_37, L_d_38, Fa_s_06, Fa_i_07, 0, 4294967295);
   } else {
      L_i_17 = OrderSend(Fa_s_00, Fa_i_01, Fa_d_02, Fa_d_03, I_i_138, L_d_37, L_d_38, Fa_s_06, Fa_i_07, 0, 4294967295);
   }
   if (L_i_17 < 0) {
      G_i_24 = GetLastError();
      L_i_15 = G_i_24;
      S_s_2653 = "";
      S_s_2654 = "";
      S_s_2655 = "";
      S_s_2656 = "";
      S_s_2657 = "";
      S_s_2658 = "";
      S_s_2659 = "";
      S_s_2660 = "";
      S_s_2661 = "";
      S_s_2662 = "";
      S_s_2663 = (string)G_i_24;
      S_s_2664 = "Order failed, error: ";
      if (I_i_139 == 1) {
         S_s_2665 = TimeToString(TimeCurrent(), 3);
         Print("---VERBOSE--- ", S_s_2665, " ", S_s_2664, S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655, S_s_2654, S_s_2653);
      } else {
         if (I_i_139 == 2) {
            G_i_20 = FileOpen("EAW_VerboseLog.txt", 3);
            if (G_i_20 > 0) {
               FileSeek(G_i_20, 0, 2);
               S_s_2625 = TimeToString(TimeCurrent(), 3);
               FileWrite(G_i_20, S_s_2625, " VERBOSE: ", S_s_2664, S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655, S_s_2654, S_s_2653);
               FileClose(G_i_20);
            }
         }
      }
      L_i_13 = -L_i_15;
      return L_i_13;
   }
   order_check = OrderSelect(L_i_17, 1, 0);
   S_s_2626 = "";
   S_s_2627 = "";
   S_s_2628 = "";
   S_s_2629 = "";
   S_s_2630 = "";
   S_s_2631 = "";
   S_s_2632 = "";
   S_s_2633 = "";
   S_s_2634 = (string)OrderOpenPrice();
   S_s_2635 = " at price:";
   S_s_2567 = (string)OrderTicket();
   S_s_2568 = "Order opened with ticket: ";
   S_s_2569 = TimeToString(TimeCurrent(), 3);
   Print(S_s_2569, " ", S_s_2568, S_s_2567, S_s_2635, S_s_2634, S_s_2633, S_s_2632, S_s_2631, S_s_2630, S_s_2629, S_s_2628, S_s_2627, S_s_2626);
   S_s_2570 = "";
   S_s_2571 = "";
   S_s_2572 = "";
   S_s_2573 = "";
   S_s_2574 = "";
   S_s_2575 = "";
   S_s_2576 = (string)OrderOpenPrice();
   S_s_2577 = " at price:";
   S_s_2578 = (string)OrderTicket();
   S_s_2579 = " opened with ticket: ";
   S_s_2580 = (string)Fa_i_07;
   S_s_2581 = "Order with Magic Number: ";
   VerboseLog(S_s_2581, S_s_2580, S_s_2579, S_s_2578, S_s_2577, S_s_2576, S_s_2575, S_s_2574, S_s_2573, S_s_2572, S_s_2571, S_s_2570);
   if (I_b_13 == false) return L_i_17;
   L_i_16 = 3;
   do {
      L_i_16 = L_i_16 - 1;
      if (L_i_16 < 0) {
         L_i_13 = 0;
         return L_i_13;
      }
      if ((Fa_d_04 == 0 && Fa_d_05 == 0)
            || (OrderStopLoss() == Fa_d_04 && OrderTakeProfit() == Fa_d_05)) {
         L_i_13 = L_i_17;
         return L_i_13;
      }
      G_i_21 = 30;
      G_i_144 = 1;
      if (!IsTradeAllowed()) {
         G_i_22 = (int)GetTickCount();
         Print("Trade context is busy! Wait until it is free...");
         do {
            if (_StopFlag != 0) {
               Print("The expert was terminated by the user!");
               G_i_144 = -1;
               break;
            }
            G_i_24 = (int)GetTickCount() - G_i_22;
            G_i_145 = G_i_24;
            G_i_24 = G_i_21 * 1000;
            if (G_i_145 > G_i_24) {
               S_s_2582 = (string)G_i_21;
               S_s_2582 = "The waiting limit exceeded (" + S_s_2582;
               S_s_2582 = S_s_2582 + " ???.)!";
               Print(S_s_2582);
               G_i_144 = -2;
               break;
            }
            if (IsTradeAllowed()) {
               Print("Trade context has become free!");
               RefreshRates();
               G_i_144 = 1;
               break;
            }
            Sleep(100);
         } while (true);
      } else G_i_144 = 1;
      if (G_i_144 == 1) {
         S_s_2583 = "";
         S_s_2584 = "";
         S_s_2585 = "";
         S_s_2586 = "";
         S_s_2587 = "";
         S_s_2588 = "";
         S_s_2589 = "";
         S_s_2590 = "";
         S_s_2591 = "";
         S_s_2592 = "";
         G_i_24 = 3 - L_i_16;
         S_s_2593 = (string)(string)G_i_24;
         S_s_2594 = "Setting SL/PT, try #";
         if (I_i_139 == 1) {
            S_s_2595 = TimeToString(TimeCurrent(), 3);
            Print("---VERBOSE--- ", S_s_2595, " ", S_s_2594, S_s_2593, S_s_2592, S_s_2591, S_s_2590, S_s_2589, S_s_2588, S_s_2587, S_s_2586, S_s_2585, S_s_2584, S_s_2583);
         } else {
            if (I_i_139 == 2) {
               G_i_23 = FileOpen("EAW_VerboseLog.txt", 3);
               if (G_i_23 > 0) {
                  FileSeek(G_i_23, 0, 2);
                  S_s_2596 = TimeToString(TimeCurrent(), 3);
                  FileWrite(G_i_23, S_s_2596, " VERBOSE: ", S_s_2594, S_s_2593, S_s_2592, S_s_2591, S_s_2590, S_s_2589, S_s_2588, S_s_2587, S_s_2586, S_s_2585, S_s_2584, S_s_2583);
                  FileClose(G_i_23);
               }
            }
         }
         S_s_2597 = Fa_s_00;
         if (sqSetSLPTForOrder(L_i_17, Fa_d_04, Fa_d_05, Fa_i_07, Fa_i_01, Fa_d_03, S_s_2597, L_i_16)) {
            L_i_13 = L_i_17;
            return L_i_13;
         }
         if (L_i_16 == 0) {
            L_i_13 = -11111;
            return L_i_13;
         }
      }
      Sleep(1000);
   } while (true);
///Label 00001BFE
   L_i_13 = L_i_17;
//Label 00001BE5
   return L_i_13;
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool sqSetSLPTForOrder(int Fa_i_00, double Fa_d_01, double Fa_d_02, int Fa_i_03, int Fa_i_04, double Fa_d_05, string Fa_s_05, int Fa_i_07) {
   string S_s_2639;
   string S_s_2640;
   string S_s_2641;
   string S_s_2642;
   string S_s_2643;
   string S_s_2644;
   string S_s_2645;
   string S_s_2646;
   string S_s_2647;
   string S_s_2648;
   string S_s_2649;
   string S_s_2650;
   string S_s_2651;
   string S_s_2652;
   string S_s_2653;
   string S_s_2654;
   string S_s_2655;
   string S_s_2656;
   string S_s_2657;
   string S_s_2658;
   string S_s_2659;
   string S_s_2660;
   string S_s_2661;
   string S_s_2662;
   string S_s_2663;
   string S_s_2664;
   string S_s_2665;
   string S_s_2625;
   string S_s_2626;
   string S_s_2627;
   string S_s_2628;
   string S_s_2629;
   string S_s_2630;
   string S_s_2631;
   string S_s_2632;
   string S_s_2633;
   string S_s_2634;
   string S_s_2635;
   bool L_b_6;
   int L_i_17;
   L_b_6 = false;
   L_i_17 = 0;
   G_i_19 = 0;
   S_s_2639 = "";
   S_s_2640 = "";
   S_s_2641 = "";
   S_s_2642 = "";
   S_s_2643 = "";
   S_s_2644 = "";
   S_s_2645 = "";
   S_s_2646 = " for order";
   S_s_2647 = (string)Fa_d_02;
   S_s_2648 = " and PT: ";
   S_s_2649 = (string)Fa_d_01;
   S_s_2650 = "Setting SL: ";
   if (I_i_139 == 1) {
      S_s_2651 = TimeToString(TimeCurrent(), 3);
      Print("---VERBOSE--- ", S_s_2651, " ", S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641, S_s_2640, S_s_2639);
   } else {
      if (I_i_139 == 2) {
         G_i_19 = FileOpen("EAW_VerboseLog.txt", 3);
         if (G_i_19 > 0) {
            FileSeek(G_i_19, 0, 2);
            S_s_2652 = TimeToString(TimeCurrent(), 3);
            FileWrite(G_i_19, S_s_2652, " VERBOSE: ", S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641, S_s_2640, S_s_2639);
            FileClose(G_i_19);
         }
      }
   }
   if (OrderModify(Fa_i_00, OrderOpenPrice(), Fa_d_01, Fa_d_02, 0, 0)) {
      S_s_2653 = "";
      S_s_2654 = "";
      S_s_2655 = "";
      S_s_2656 = "";
      S_s_2657 = "";
      S_s_2658 = "";
      S_s_2659 = "";
      S_s_2660 = "";
      S_s_2661 = (string)Fa_d_02;
      S_s_2662 = ", Profit Target: ";
      S_s_2663 = (string)Fa_d_01;
      S_s_2664 = "Order updates, StopLoss: ";
      VerboseLog(S_s_2664, S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655, S_s_2654, S_s_2653);
      L_b_6 = true;
      return L_b_6;
   }
   G_i_20 = GetLastError();
   L_i_17 = G_i_20;
   S_s_2665 = "";
   S_s_2625 = "";
   S_s_2626 = "";
   S_s_2627 = "";
   S_s_2628 = "";
   S_s_2629 = "";
   S_s_2630 = "";
   S_s_2631 = "";
   S_s_2632 = ErrorDescription(G_i_20);
   S_s_2633 = " : ";
   S_s_2634 = (string)G_i_20;
   S_s_2635 = "Error modifying order: ";
   VerboseLog(S_s_2635, S_s_2634, S_s_2633, S_s_2632, S_s_2631, S_s_2630, S_s_2629, S_s_2628, S_s_2627, S_s_2626, S_s_2625, S_s_2665);
   if (Fa_i_07 != 0) return false;
   RefreshRates();
   sqClosePositionAtMarket(-1);
   I_i_143 = (int)TimeCurrent();
   L_b_6 = false;
   return L_b_6;
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool sqCandlePatternHammer(int Fa_i_00) {
   bool L_b_6;
   double L_d_36;
   double L_d_37;
   double L_d_38;
   double L_d_39;
   double L_d_40;
   double L_d_41;
   double L_d_42;
   double L_d_43;
   double L_d_44;
   double L_d_45;
   double L_d_46;
   double L_d_47;
   double L_d_48;
   double L_d_49;
   double L_d_50;
   double L_d_51;
   double L_d_52;
   L_b_6 = false;
   L_d_36 = 0;
   L_d_37 = 0;
   L_d_38 = 0;
   L_d_39 = 0;
   L_d_40 = 0;
   L_d_41 = 0;
   L_d_42 = 0;
   L_d_43 = 0;
   L_d_44 = 0;
   L_d_45 = 0;
   L_d_46 = 0;
   L_d_47 = 0;
   L_d_48 = 0;
   L_d_49 = 0;
   L_d_50 = 0;
   L_d_51 = 0;
   L_d_52 = 0;
   L_d_36 = High[Fa_i_00];
   L_d_37 = Low[Fa_i_00];
   G_i_144 = Fa_i_00 + 1;
   L_d_38 = Low[G_i_144];
   G_i_21 = Fa_i_00 + 2;
   L_d_39 = Low[G_i_21];
   G_i_22 = Fa_i_00 + 3;
   L_d_40 = Low[G_i_22];
   L_d_41 = Open[Fa_i_00];
   L_d_42 = Close[Fa_i_00];
   L_d_43 = (L_d_36 - L_d_37);
   L_d_44 = 0;
   L_d_45 = 0;
   L_d_46 = 0.9;
   L_d_47 = 12;
   if ((L_d_41 > L_d_42)) {
      L_d_45 = L_d_41;
      L_d_44 = L_d_42;
   } else {
      L_d_45 = L_d_42;
      L_d_44 = L_d_41;
   }
   L_d_48 = (L_d_44 - L_d_37);
   L_d_49 = (L_d_36 - L_d_45);
   L_d_50 = fabs((L_d_41 - L_d_42));
   L_d_51 = (L_d_50 * L_d_46);
   L_d_52 = I_d_4;
   if ((L_d_37 > L_d_38)) return false;
   if ((L_d_37 >= L_d_39)) return false;
   if ((L_d_37 >= L_d_40)) return false;
   if (((L_d_48 / 2) > L_d_49) && (L_d_48 > L_d_51) && (L_d_43 >= (L_d_47 * I_d_4)) && (L_d_41 != L_d_42) && ((L_d_48 / 3) <= L_d_49) && ((L_d_48 / 4) <= L_d_49)) {
      L_b_6 = true;
      return L_b_6;
   }
   if (((L_d_48 / 3) > L_d_49) && (L_d_48 > L_d_51) && (L_d_43 >= (L_d_47 * L_d_52)) && (L_d_41 != L_d_42) && ((L_d_48 / 4) <= L_d_49)) {
      L_b_6 = true;
      return L_b_6;
   }
   if (((L_d_48 / 4) <= L_d_49)) return false;
   if ((L_d_48 <= L_d_51)) return false;
   if ((L_d_43 < (L_d_47 * L_d_52))) return false;
   if ((L_d_41 == L_d_42)) return false;
   L_b_6 = true;
   return L_b_6;
   L_b_6 = false;
   return L_b_6;
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool sqCandlePatternShootingStar(int Fa_i_00) {
   bool L_b_6;
   double L_d_36;
   double L_d_37;
   double L_d_38;
   double L_d_39;
   double L_d_40;
   double L_d_41;
   double L_d_42;
   double L_d_43;
   double L_d_44;
   double L_d_45;
   double L_d_46;
   double L_d_47;
   double L_d_48;
   double L_d_49;
   double L_d_50;
   double L_d_51;
   double L_d_52;
   L_b_6 = false;
   L_d_36 = 0;
   L_d_37 = 0;
   L_d_38 = 0;
   L_d_39 = 0;
   L_d_40 = 0;
   L_d_41 = 0;
   L_d_42 = 0;
   L_d_43 = 0;
   L_d_44 = 0;
   L_d_45 = 0;
   L_d_46 = 0;
   L_d_47 = 0;
   L_d_48 = 0;
   L_d_49 = 0;
   L_d_50 = 0;
   L_d_51 = 0;
   L_d_52 = 0;
   L_d_36 = Low[Fa_i_00];
   L_d_37 = High[Fa_i_00];
   G_i_144 = Fa_i_00 + 1;
   L_d_38 = High[G_i_144];
   G_i_21 = Fa_i_00 + 2;
   L_d_39 = High[G_i_21];
   G_i_22 = Fa_i_00 + 3;
   L_d_40 = High[G_i_22];
   L_d_41 = Open[Fa_i_00];
   L_d_42 = Close[Fa_i_00];
   L_d_43 = (L_d_37 - L_d_36);
   L_d_44 = 0;
   L_d_45 = 0;
   L_d_46 = 0.9;
   L_d_47 = 12;
   if ((L_d_41 > L_d_42)) {
      L_d_45 = L_d_41;
      L_d_44 = L_d_42;
   } else {
      L_d_45 = L_d_42;
      L_d_44 = L_d_41;
   }
   L_d_48 = (L_d_44 - L_d_36);
   L_d_49 = (L_d_37 - L_d_45);
   L_d_50 = fabs((L_d_41 - L_d_42));
   L_d_51 = (L_d_50 * L_d_46);
   L_d_52 = I_d_4;
   if ((L_d_37 < L_d_38)) return false;
   if ((L_d_37 <= L_d_39)) return false;
   if ((L_d_37 <= L_d_40)) return false;
   if (((L_d_49 / 2) > L_d_48) && (L_d_49 > (L_d_51 * 2)) && (L_d_43 >= (L_d_47 * I_d_4)) && (L_d_41 != L_d_42) && ((L_d_49 / 3) <= L_d_48) && ((L_d_49 / 4) <= L_d_48)) {
      L_b_6 = true;
      return L_b_6;
   }
   if (((L_d_49 / 3) > L_d_48) && (L_d_49 > (L_d_51 * 2)) && (L_d_43 >= (L_d_47 * L_d_52)) && (L_d_41 != L_d_42) && ((L_d_49 / 4) <= L_d_48)) {
      L_b_6 = true;
      return L_b_6;
   }
   if (((L_d_49 / 4) <= L_d_48)) return false;
   if ((L_d_49 <= (L_d_51 * 2))) return false;
   if ((L_d_43 < (L_d_47 * L_d_52))) return false;
   if ((L_d_41 == L_d_42)) return false;
   L_b_6 = true;
   return L_b_6;
   L_b_6 = false;
   return L_b_6;
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void sqTextFillTotals() {
   string S_s_2639;
   string S_s_2640;
   G_i_19 = 0;
   G_i_20 = 0;
   G_d_8 = 0;
   G_i_21 = 0;
   G_i_22 = 0;
   G_i_145 = 0;
   G_i_23 = 0;
   G_i_24 = 0;
   G_d_301 = 0;
   G_i_146 = 0;
   G_i_147 = 0;
   G_i_26 = 0;
   G_i_148 = 0;
   G_i_27 = 0;
   G_i_149 = 0;
   G_d_13 = 0;
   G_i_28 = 0;
   G_i_150 = 0;
   G_i_29 = I_i_18;
   G_i_20 = 100;
   G_i_19 = 0;
   G_d_8 = 0;
   G_i_21 = 0;
   G_i_22 = 0;
   G_i_145 = HistoryTotal();
   if (G_i_145 >= 0) {
      do {
         if (OrderSelect(G_i_145, 0, 1) == true && OrderSymbol() == _Symbol) {
            if (G_i_19 == 0 || OrderMagicNumber() == G_i_19) {
               G_i_21 = G_i_21 + 1;
               if (OrderType() == OP_BUY) {
                  G_d_15 = OrderClosePrice();
                  G_d_8 = (G_d_15 - OrderOpenPrice());
               } else {
                  G_d_15 = OrderOpenPrice();
                  G_d_8 = (G_d_15 - OrderClosePrice());
               }
               if ((G_d_8 > 0)) {
                  G_i_22 = G_i_22 + 1;
               }
               if (G_i_21 >= G_i_20) break;
            }
         }
         G_i_145 = G_i_145 - 1;
      } while (G_i_145 >= 0);
   }
   S_s_2639 = (string)G_i_22;
   S_s_2639 = "Total profits/losses so far: " + S_s_2639;
   S_s_2639 = S_s_2639 + "/";
   G_i_24 = 100;
   G_i_23 = 0;
   G_d_301 = 0;
   G_i_146 = 0;
   G_i_147 = 0;
   G_i_26 = HistoryTotal();
   if (G_i_26 >= 0) {
      do {
         if (OrderSelect(G_i_26, 0, 1) == true && OrderSymbol() == _Symbol) {
            if (G_i_23 == 0 || OrderMagicNumber() == G_i_23) {
               G_i_146 = G_i_146 + 1;
               if (OrderType() == OP_BUY) {
                  G_d_15 = OrderClosePrice();
                  G_d_301 = (G_d_15 - OrderOpenPrice());
               } else {
                  G_d_15 = OrderOpenPrice();
                  G_d_301 = (G_d_15 - OrderClosePrice());
               }
               if ((G_d_301 < 0)) {
                  G_i_147 = G_i_147 + 1;
               }
               if (G_i_146 >= G_i_24) break;
            }
         }
         G_i_26 = G_i_26 - 1;
      } while (G_i_26 >= 0);
   }
   S_s_2640 = (string)G_i_147;
   S_s_2639 = S_s_2639 + S_s_2640;
   ObjectSetText("lineto", S_s_2639, 8, "Tahoma", G_i_29);
   G_i_151 = I_i_18;
   G_i_149 = 1000;
   G_i_27 = 0;
   G_d_13 = 0;
   G_i_28 = 0;
   G_i_150 = HistoryTotal();
   if (G_i_150 >= 0) {
      do {
         if (OrderSelect(G_i_150, 0, 1) == true && OrderSymbol() == _Symbol) {
            if (G_i_27 == 0 || OrderMagicNumber() == G_i_27) {
               G_i_28 = G_i_28 + 1;
               G_d_13 = (G_d_13 + OrderProfit());
               if (G_i_28 >= G_i_149) break;
            }
         }
         G_i_150 = G_i_150 - 1;
      } while (G_i_150 >= 0);
   }
   G_i_148 = (int)G_d_13;
   S_s_2640 = "Total P/L so far: " + DoubleToString(G_i_148, 2);
   ObjectSetText("linetp", S_s_2640, 8, "Tahoma", G_i_151);
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
string sqGetOrderTypeAsString(int Fa_i_00) {
   string S_s_2639;
   I_i_0 = Fa_i_00;
   if (I_i_0 > 5) return "Unknown";
   if (I_i_0 == 0) return "Buy";
   if (I_i_0 == 1) return "Sell";
   if (I_i_0 == 2) return "Buy Limit";
   if (I_i_0 == 4) return "Buy Stop";
   if (I_i_0 == 3) return "Sell Limit";
   if (I_i_0 == 5) return "Sell Stop";
   return "Unknown";
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void VerboseLog(string Fa_s_00, string Fa_s_01, string Fa_s_02, string Fa_s_03, string Fa_s_04, string Fa_s_05, string Fa_s_06, string Fa_s_07, string Fa_s_08, string Fa_s_09, string Fa_s_0A, string Fa_s_0B) {
   string S_s_2639;
   string S_s_2640;
   string S_s_2641;
   string S_s_2642;
   string S_s_2643;
   string S_s_2644;
   string S_s_2645;
   string S_s_2646;
   string S_s_2647;
   string S_s_2648;
   string S_s_2649;
   string S_s_2650;
   string S_s_2651;
   string S_s_2652;
   string S_s_2653;
   string S_s_2654;
   string S_s_2655;
   string S_s_2656;
   string S_s_2657;
   string S_s_2658;
   string S_s_2659;
   string S_s_2660;
   string S_s_2661;
   string S_s_2662;
   string S_s_2663;
   string S_s_2664;
   string S_s_2665;
   G_i_19 = 0;
   if (I_i_139 != 1) {
      S_s_2639 = Fa_s_0B;
      S_s_2640 = Fa_s_0A;
      S_s_2641 = Fa_s_09;
      S_s_2642 = Fa_s_08;
      S_s_2643 = Fa_s_07;
      S_s_2644 = Fa_s_06;
      S_s_2645 = Fa_s_05;
      S_s_2646 = Fa_s_04;
      S_s_2647 = Fa_s_03;
      S_s_2648 = Fa_s_02;
      S_s_2649 = Fa_s_01;
      S_s_2650 = Fa_s_00;
      S_s_2651 = TimeToString(TimeCurrent(), 3);
      Print(S_s_2651, " ", S_s_2650, S_s_2649, S_s_2648, S_s_2647, S_s_2646, S_s_2645, S_s_2644, S_s_2643, S_s_2642, S_s_2641, S_s_2640, S_s_2639);
   }
   S_s_2652 = Fa_s_0B;
   S_s_2653 = Fa_s_0A;
   S_s_2654 = Fa_s_09;
   S_s_2655 = Fa_s_08;
   S_s_2656 = Fa_s_07;
   S_s_2657 = Fa_s_06;
   S_s_2658 = Fa_s_05;
   S_s_2659 = Fa_s_04;
   S_s_2660 = Fa_s_03;
   S_s_2661 = Fa_s_02;
   S_s_2662 = Fa_s_01;
   S_s_2663 = Fa_s_00;
   if (I_i_139 == 1) {
      S_s_2664 = TimeToString(TimeCurrent(), 3);
      Print("---VERBOSE--- ", S_s_2664, " ", S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655, S_s_2654, S_s_2653, S_s_2652);
      return ;
   }
   if (I_i_139 != 2) return;
   G_i_19 = FileOpen("EAW_VerboseLog.txt", 3);
   if (G_i_19 <= 0) return;
   FileSeek(G_i_19, 0, 2);
   S_s_2665 = TimeToString(TimeCurrent(), 3);
   FileWrite(G_i_19, S_s_2665, " VERBOSE: ", S_s_2663, S_s_2662, S_s_2661, S_s_2660, S_s_2659, S_s_2658, S_s_2657, S_s_2656, S_s_2655, S_s_2654, S_s_2653, S_s_2652);
   FileClose(G_i_19);
}

//+------------------------------------------------------------------+
