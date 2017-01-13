
with AdaOS.Processor; use AdaOS.Processor;
with AdaOS.Processor.Boot; use AdaOS.Processor.Boot;
with Interfaces; use Interfaces;
with Ada.Unchecked_Conversion;


package body Generated_Interrupt_Handlers is
   procedure Setup_IDT is
      type Asm_Procedure_Pointer is access procedure;
      pragma Convention (Asm, Asm_Procedure_Pointer);
      function To_Unsigned_32 is new
        Ada.Unchecked_Conversion (Asm_Procedure_Pointer, Unsigned_32);

      Work_IDT_Descriptor : X86_Gate;
      Work_Address : Unsigned_32;
      procedure Interrupt_Handler_0;
      pragma Import (Asm, Interrupt_Handler_0, "interrupt_handler_0");
      procedure Interrupt_Handler_1;
      pragma Import (Asm, Interrupt_Handler_1, "interrupt_handler_1");
      procedure Interrupt_Handler_2;
      pragma Import (Asm, Interrupt_Handler_2, "interrupt_handler_2");
      procedure Interrupt_Handler_3;
      pragma Import (Asm, Interrupt_Handler_3, "interrupt_handler_3");
      procedure Interrupt_Handler_4;
      pragma Import (Asm, Interrupt_Handler_4, "interrupt_handler_4");
      procedure Interrupt_Handler_5;
      pragma Import (Asm, Interrupt_Handler_5, "interrupt_handler_5");
      procedure Interrupt_Handler_6;
      pragma Import (Asm, Interrupt_Handler_6, "interrupt_handler_6");
      procedure Interrupt_Handler_7;
      pragma Import (Asm, Interrupt_Handler_7, "interrupt_handler_7");
      procedure Interrupt_Handler_8;
      pragma Import (Asm, Interrupt_Handler_8, "interrupt_handler_8");
      procedure Interrupt_Handler_9;
      pragma Import (Asm, Interrupt_Handler_9, "interrupt_handler_9");
      procedure Interrupt_Handler_10;
      pragma Import (Asm, Interrupt_Handler_10, "interrupt_handler_10");
      procedure Interrupt_Handler_11;
      pragma Import (Asm, Interrupt_Handler_11, "interrupt_handler_11");
      procedure Interrupt_Handler_12;
      pragma Import (Asm, Interrupt_Handler_12, "interrupt_handler_12");
      procedure Interrupt_Handler_13;
      pragma Import (Asm, Interrupt_Handler_13, "interrupt_handler_13");
      procedure Interrupt_Handler_14;
      pragma Import (Asm, Interrupt_Handler_14, "interrupt_handler_14");
      procedure Interrupt_Handler_15;
      pragma Import (Asm, Interrupt_Handler_15, "interrupt_handler_15");
      procedure Interrupt_Handler_16;
      pragma Import (Asm, Interrupt_Handler_16, "interrupt_handler_16");
      procedure Interrupt_Handler_17;
      pragma Import (Asm, Interrupt_Handler_17, "interrupt_handler_17");
      procedure Interrupt_Handler_18;
      pragma Import (Asm, Interrupt_Handler_18, "interrupt_handler_18");
      procedure Interrupt_Handler_19;
      pragma Import (Asm, Interrupt_Handler_19, "interrupt_handler_19");
      procedure Interrupt_Handler_20;
      pragma Import (Asm, Interrupt_Handler_20, "interrupt_handler_20");
      procedure Interrupt_Handler_21;
      pragma Import (Asm, Interrupt_Handler_21, "interrupt_handler_21");
      procedure Interrupt_Handler_22;
      pragma Import (Asm, Interrupt_Handler_22, "interrupt_handler_22");
      procedure Interrupt_Handler_23;
      pragma Import (Asm, Interrupt_Handler_23, "interrupt_handler_23");
      procedure Interrupt_Handler_24;
      pragma Import (Asm, Interrupt_Handler_24, "interrupt_handler_24");
      procedure Interrupt_Handler_25;
      pragma Import (Asm, Interrupt_Handler_25, "interrupt_handler_25");
      procedure Interrupt_Handler_26;
      pragma Import (Asm, Interrupt_Handler_26, "interrupt_handler_26");
      procedure Interrupt_Handler_27;
      pragma Import (Asm, Interrupt_Handler_27, "interrupt_handler_27");
      procedure Interrupt_Handler_28;
      pragma Import (Asm, Interrupt_Handler_28, "interrupt_handler_28");
      procedure Interrupt_Handler_29;
      pragma Import (Asm, Interrupt_Handler_29, "interrupt_handler_29");
      procedure Interrupt_Handler_30;
      pragma Import (Asm, Interrupt_Handler_30, "interrupt_handler_30");
      procedure Interrupt_Handler_31;
      pragma Import (Asm, Interrupt_Handler_31, "interrupt_handler_31");
      procedure Interrupt_Handler_32;
      pragma Import (Asm, Interrupt_Handler_32, "interrupt_handler_32");
      procedure Interrupt_Handler_33;
      pragma Import (Asm, Interrupt_Handler_33, "interrupt_handler_33");
      procedure Interrupt_Handler_34;
      pragma Import (Asm, Interrupt_Handler_34, "interrupt_handler_34");
      procedure Interrupt_Handler_35;
      pragma Import (Asm, Interrupt_Handler_35, "interrupt_handler_35");
      procedure Interrupt_Handler_36;
      pragma Import (Asm, Interrupt_Handler_36, "interrupt_handler_36");
      procedure Interrupt_Handler_37;
      pragma Import (Asm, Interrupt_Handler_37, "interrupt_handler_37");
      procedure Interrupt_Handler_38;
      pragma Import (Asm, Interrupt_Handler_38, "interrupt_handler_38");
      procedure Interrupt_Handler_39;
      pragma Import (Asm, Interrupt_Handler_39, "interrupt_handler_39");
      procedure Interrupt_Handler_40;
      pragma Import (Asm, Interrupt_Handler_40, "interrupt_handler_40");
      procedure Interrupt_Handler_41;
      pragma Import (Asm, Interrupt_Handler_41, "interrupt_handler_41");
      procedure Interrupt_Handler_42;
      pragma Import (Asm, Interrupt_Handler_42, "interrupt_handler_42");
      procedure Interrupt_Handler_43;
      pragma Import (Asm, Interrupt_Handler_43, "interrupt_handler_43");
      procedure Interrupt_Handler_44;
      pragma Import (Asm, Interrupt_Handler_44, "interrupt_handler_44");
      procedure Interrupt_Handler_45;
      pragma Import (Asm, Interrupt_Handler_45, "interrupt_handler_45");
      procedure Interrupt_Handler_46;
      pragma Import (Asm, Interrupt_Handler_46, "interrupt_handler_46");
      procedure Interrupt_Handler_47;
      pragma Import (Asm, Interrupt_Handler_47, "interrupt_handler_47");
      procedure Interrupt_Handler_48;
      pragma Import (Asm, Interrupt_Handler_48, "interrupt_handler_48");
      procedure Interrupt_Handler_49;
      pragma Import (Asm, Interrupt_Handler_49, "interrupt_handler_49");
      procedure Interrupt_Handler_50;
      pragma Import (Asm, Interrupt_Handler_50, "interrupt_handler_50");
      procedure Interrupt_Handler_51;
      pragma Import (Asm, Interrupt_Handler_51, "interrupt_handler_51");
      procedure Interrupt_Handler_52;
      pragma Import (Asm, Interrupt_Handler_52, "interrupt_handler_52");
      procedure Interrupt_Handler_53;
      pragma Import (Asm, Interrupt_Handler_53, "interrupt_handler_53");
      procedure Interrupt_Handler_54;
      pragma Import (Asm, Interrupt_Handler_54, "interrupt_handler_54");
      procedure Interrupt_Handler_55;
      pragma Import (Asm, Interrupt_Handler_55, "interrupt_handler_55");
      procedure Interrupt_Handler_56;
      pragma Import (Asm, Interrupt_Handler_56, "interrupt_handler_56");
      procedure Interrupt_Handler_57;
      pragma Import (Asm, Interrupt_Handler_57, "interrupt_handler_57");
      procedure Interrupt_Handler_58;
      pragma Import (Asm, Interrupt_Handler_58, "interrupt_handler_58");
      procedure Interrupt_Handler_59;
      pragma Import (Asm, Interrupt_Handler_59, "interrupt_handler_59");
      procedure Interrupt_Handler_60;
      pragma Import (Asm, Interrupt_Handler_60, "interrupt_handler_60");
      procedure Interrupt_Handler_61;
      pragma Import (Asm, Interrupt_Handler_61, "interrupt_handler_61");
      procedure Interrupt_Handler_62;
      pragma Import (Asm, Interrupt_Handler_62, "interrupt_handler_62");
      procedure Interrupt_Handler_63;
      pragma Import (Asm, Interrupt_Handler_63, "interrupt_handler_63");
      procedure Interrupt_Handler_64;
      pragma Import (Asm, Interrupt_Handler_64, "interrupt_handler_64");
      procedure Interrupt_Handler_65;
      pragma Import (Asm, Interrupt_Handler_65, "interrupt_handler_65");
      procedure Interrupt_Handler_66;
      pragma Import (Asm, Interrupt_Handler_66, "interrupt_handler_66");
      procedure Interrupt_Handler_67;
      pragma Import (Asm, Interrupt_Handler_67, "interrupt_handler_67");
      procedure Interrupt_Handler_68;
      pragma Import (Asm, Interrupt_Handler_68, "interrupt_handler_68");
      procedure Interrupt_Handler_69;
      pragma Import (Asm, Interrupt_Handler_69, "interrupt_handler_69");
      procedure Interrupt_Handler_70;
      pragma Import (Asm, Interrupt_Handler_70, "interrupt_handler_70");
      procedure Interrupt_Handler_71;
      pragma Import (Asm, Interrupt_Handler_71, "interrupt_handler_71");
      procedure Interrupt_Handler_72;
      pragma Import (Asm, Interrupt_Handler_72, "interrupt_handler_72");
      procedure Interrupt_Handler_73;
      pragma Import (Asm, Interrupt_Handler_73, "interrupt_handler_73");
      procedure Interrupt_Handler_74;
      pragma Import (Asm, Interrupt_Handler_74, "interrupt_handler_74");
      procedure Interrupt_Handler_75;
      pragma Import (Asm, Interrupt_Handler_75, "interrupt_handler_75");
      procedure Interrupt_Handler_76;
      pragma Import (Asm, Interrupt_Handler_76, "interrupt_handler_76");
      procedure Interrupt_Handler_77;
      pragma Import (Asm, Interrupt_Handler_77, "interrupt_handler_77");
      procedure Interrupt_Handler_78;
      pragma Import (Asm, Interrupt_Handler_78, "interrupt_handler_78");
      procedure Interrupt_Handler_79;
      pragma Import (Asm, Interrupt_Handler_79, "interrupt_handler_79");
      procedure Interrupt_Handler_80;
      pragma Import (Asm, Interrupt_Handler_80, "interrupt_handler_80");
      procedure Interrupt_Handler_81;
      pragma Import (Asm, Interrupt_Handler_81, "interrupt_handler_81");
      procedure Interrupt_Handler_82;
      pragma Import (Asm, Interrupt_Handler_82, "interrupt_handler_82");
      procedure Interrupt_Handler_83;
      pragma Import (Asm, Interrupt_Handler_83, "interrupt_handler_83");
      procedure Interrupt_Handler_84;
      pragma Import (Asm, Interrupt_Handler_84, "interrupt_handler_84");
      procedure Interrupt_Handler_85;
      pragma Import (Asm, Interrupt_Handler_85, "interrupt_handler_85");
      procedure Interrupt_Handler_86;
      pragma Import (Asm, Interrupt_Handler_86, "interrupt_handler_86");
      procedure Interrupt_Handler_87;
      pragma Import (Asm, Interrupt_Handler_87, "interrupt_handler_87");
      procedure Interrupt_Handler_88;
      pragma Import (Asm, Interrupt_Handler_88, "interrupt_handler_88");
      procedure Interrupt_Handler_89;
      pragma Import (Asm, Interrupt_Handler_89, "interrupt_handler_89");
      procedure Interrupt_Handler_90;
      pragma Import (Asm, Interrupt_Handler_90, "interrupt_handler_90");
      procedure Interrupt_Handler_91;
      pragma Import (Asm, Interrupt_Handler_91, "interrupt_handler_91");
      procedure Interrupt_Handler_92;
      pragma Import (Asm, Interrupt_Handler_92, "interrupt_handler_92");
      procedure Interrupt_Handler_93;
      pragma Import (Asm, Interrupt_Handler_93, "interrupt_handler_93");
      procedure Interrupt_Handler_94;
      pragma Import (Asm, Interrupt_Handler_94, "interrupt_handler_94");
      procedure Interrupt_Handler_95;
      pragma Import (Asm, Interrupt_Handler_95, "interrupt_handler_95");
      procedure Interrupt_Handler_96;
      pragma Import (Asm, Interrupt_Handler_96, "interrupt_handler_96");
      procedure Interrupt_Handler_97;
      pragma Import (Asm, Interrupt_Handler_97, "interrupt_handler_97");
      procedure Interrupt_Handler_98;
      pragma Import (Asm, Interrupt_Handler_98, "interrupt_handler_98");
      procedure Interrupt_Handler_99;
      pragma Import (Asm, Interrupt_Handler_99, "interrupt_handler_99");
      procedure Interrupt_Handler_100;
      pragma Import (Asm, Interrupt_Handler_100, "interrupt_handler_100");
      procedure Interrupt_Handler_101;
      pragma Import (Asm, Interrupt_Handler_101, "interrupt_handler_101");
      procedure Interrupt_Handler_102;
      pragma Import (Asm, Interrupt_Handler_102, "interrupt_handler_102");
      procedure Interrupt_Handler_103;
      pragma Import (Asm, Interrupt_Handler_103, "interrupt_handler_103");
      procedure Interrupt_Handler_104;
      pragma Import (Asm, Interrupt_Handler_104, "interrupt_handler_104");
      procedure Interrupt_Handler_105;
      pragma Import (Asm, Interrupt_Handler_105, "interrupt_handler_105");
      procedure Interrupt_Handler_106;
      pragma Import (Asm, Interrupt_Handler_106, "interrupt_handler_106");
      procedure Interrupt_Handler_107;
      pragma Import (Asm, Interrupt_Handler_107, "interrupt_handler_107");
      procedure Interrupt_Handler_108;
      pragma Import (Asm, Interrupt_Handler_108, "interrupt_handler_108");
      procedure Interrupt_Handler_109;
      pragma Import (Asm, Interrupt_Handler_109, "interrupt_handler_109");
      procedure Interrupt_Handler_110;
      pragma Import (Asm, Interrupt_Handler_110, "interrupt_handler_110");
      procedure Interrupt_Handler_111;
      pragma Import (Asm, Interrupt_Handler_111, "interrupt_handler_111");
      procedure Interrupt_Handler_112;
      pragma Import (Asm, Interrupt_Handler_112, "interrupt_handler_112");
      procedure Interrupt_Handler_113;
      pragma Import (Asm, Interrupt_Handler_113, "interrupt_handler_113");
      procedure Interrupt_Handler_114;
      pragma Import (Asm, Interrupt_Handler_114, "interrupt_handler_114");
      procedure Interrupt_Handler_115;
      pragma Import (Asm, Interrupt_Handler_115, "interrupt_handler_115");
      procedure Interrupt_Handler_116;
      pragma Import (Asm, Interrupt_Handler_116, "interrupt_handler_116");
      procedure Interrupt_Handler_117;
      pragma Import (Asm, Interrupt_Handler_117, "interrupt_handler_117");
      procedure Interrupt_Handler_118;
      pragma Import (Asm, Interrupt_Handler_118, "interrupt_handler_118");
      procedure Interrupt_Handler_119;
      pragma Import (Asm, Interrupt_Handler_119, "interrupt_handler_119");
      procedure Interrupt_Handler_120;
      pragma Import (Asm, Interrupt_Handler_120, "interrupt_handler_120");
      procedure Interrupt_Handler_121;
      pragma Import (Asm, Interrupt_Handler_121, "interrupt_handler_121");
      procedure Interrupt_Handler_122;
      pragma Import (Asm, Interrupt_Handler_122, "interrupt_handler_122");
      procedure Interrupt_Handler_123;
      pragma Import (Asm, Interrupt_Handler_123, "interrupt_handler_123");
      procedure Interrupt_Handler_124;
      pragma Import (Asm, Interrupt_Handler_124, "interrupt_handler_124");
      procedure Interrupt_Handler_125;
      pragma Import (Asm, Interrupt_Handler_125, "interrupt_handler_125");
      procedure Interrupt_Handler_126;
      pragma Import (Asm, Interrupt_Handler_126, "interrupt_handler_126");
      procedure Interrupt_Handler_127;
      pragma Import (Asm, Interrupt_Handler_127, "interrupt_handler_127");
      procedure Interrupt_Handler_128;
      pragma Import (Asm, Interrupt_Handler_128, "interrupt_handler_128");
      procedure Interrupt_Handler_129;
      pragma Import (Asm, Interrupt_Handler_129, "interrupt_handler_129");
      procedure Interrupt_Handler_130;
      pragma Import (Asm, Interrupt_Handler_130, "interrupt_handler_130");
      procedure Interrupt_Handler_131;
      pragma Import (Asm, Interrupt_Handler_131, "interrupt_handler_131");
      procedure Interrupt_Handler_132;
      pragma Import (Asm, Interrupt_Handler_132, "interrupt_handler_132");
      procedure Interrupt_Handler_133;
      pragma Import (Asm, Interrupt_Handler_133, "interrupt_handler_133");
      procedure Interrupt_Handler_134;
      pragma Import (Asm, Interrupt_Handler_134, "interrupt_handler_134");
      procedure Interrupt_Handler_135;
      pragma Import (Asm, Interrupt_Handler_135, "interrupt_handler_135");
      procedure Interrupt_Handler_136;
      pragma Import (Asm, Interrupt_Handler_136, "interrupt_handler_136");
      procedure Interrupt_Handler_137;
      pragma Import (Asm, Interrupt_Handler_137, "interrupt_handler_137");
      procedure Interrupt_Handler_138;
      pragma Import (Asm, Interrupt_Handler_138, "interrupt_handler_138");
      procedure Interrupt_Handler_139;
      pragma Import (Asm, Interrupt_Handler_139, "interrupt_handler_139");
      procedure Interrupt_Handler_140;
      pragma Import (Asm, Interrupt_Handler_140, "interrupt_handler_140");
      procedure Interrupt_Handler_141;
      pragma Import (Asm, Interrupt_Handler_141, "interrupt_handler_141");
      procedure Interrupt_Handler_142;
      pragma Import (Asm, Interrupt_Handler_142, "interrupt_handler_142");
      procedure Interrupt_Handler_143;
      pragma Import (Asm, Interrupt_Handler_143, "interrupt_handler_143");
      procedure Interrupt_Handler_144;
      pragma Import (Asm, Interrupt_Handler_144, "interrupt_handler_144");
      procedure Interrupt_Handler_145;
      pragma Import (Asm, Interrupt_Handler_145, "interrupt_handler_145");
      procedure Interrupt_Handler_146;
      pragma Import (Asm, Interrupt_Handler_146, "interrupt_handler_146");
      procedure Interrupt_Handler_147;
      pragma Import (Asm, Interrupt_Handler_147, "interrupt_handler_147");
      procedure Interrupt_Handler_148;
      pragma Import (Asm, Interrupt_Handler_148, "interrupt_handler_148");
      procedure Interrupt_Handler_149;
      pragma Import (Asm, Interrupt_Handler_149, "interrupt_handler_149");
      procedure Interrupt_Handler_150;
      pragma Import (Asm, Interrupt_Handler_150, "interrupt_handler_150");
      procedure Interrupt_Handler_151;
      pragma Import (Asm, Interrupt_Handler_151, "interrupt_handler_151");
      procedure Interrupt_Handler_152;
      pragma Import (Asm, Interrupt_Handler_152, "interrupt_handler_152");
      procedure Interrupt_Handler_153;
      pragma Import (Asm, Interrupt_Handler_153, "interrupt_handler_153");
      procedure Interrupt_Handler_154;
      pragma Import (Asm, Interrupt_Handler_154, "interrupt_handler_154");
      procedure Interrupt_Handler_155;
      pragma Import (Asm, Interrupt_Handler_155, "interrupt_handler_155");
      procedure Interrupt_Handler_156;
      pragma Import (Asm, Interrupt_Handler_156, "interrupt_handler_156");
      procedure Interrupt_Handler_157;
      pragma Import (Asm, Interrupt_Handler_157, "interrupt_handler_157");
      procedure Interrupt_Handler_158;
      pragma Import (Asm, Interrupt_Handler_158, "interrupt_handler_158");
      procedure Interrupt_Handler_159;
      pragma Import (Asm, Interrupt_Handler_159, "interrupt_handler_159");
      procedure Interrupt_Handler_160;
      pragma Import (Asm, Interrupt_Handler_160, "interrupt_handler_160");
      procedure Interrupt_Handler_161;
      pragma Import (Asm, Interrupt_Handler_161, "interrupt_handler_161");
      procedure Interrupt_Handler_162;
      pragma Import (Asm, Interrupt_Handler_162, "interrupt_handler_162");
      procedure Interrupt_Handler_163;
      pragma Import (Asm, Interrupt_Handler_163, "interrupt_handler_163");
      procedure Interrupt_Handler_164;
      pragma Import (Asm, Interrupt_Handler_164, "interrupt_handler_164");
      procedure Interrupt_Handler_165;
      pragma Import (Asm, Interrupt_Handler_165, "interrupt_handler_165");
      procedure Interrupt_Handler_166;
      pragma Import (Asm, Interrupt_Handler_166, "interrupt_handler_166");
      procedure Interrupt_Handler_167;
      pragma Import (Asm, Interrupt_Handler_167, "interrupt_handler_167");
      procedure Interrupt_Handler_168;
      pragma Import (Asm, Interrupt_Handler_168, "interrupt_handler_168");
      procedure Interrupt_Handler_169;
      pragma Import (Asm, Interrupt_Handler_169, "interrupt_handler_169");
      procedure Interrupt_Handler_170;
      pragma Import (Asm, Interrupt_Handler_170, "interrupt_handler_170");
      procedure Interrupt_Handler_171;
      pragma Import (Asm, Interrupt_Handler_171, "interrupt_handler_171");
      procedure Interrupt_Handler_172;
      pragma Import (Asm, Interrupt_Handler_172, "interrupt_handler_172");
      procedure Interrupt_Handler_173;
      pragma Import (Asm, Interrupt_Handler_173, "interrupt_handler_173");
      procedure Interrupt_Handler_174;
      pragma Import (Asm, Interrupt_Handler_174, "interrupt_handler_174");
      procedure Interrupt_Handler_175;
      pragma Import (Asm, Interrupt_Handler_175, "interrupt_handler_175");
      procedure Interrupt_Handler_176;
      pragma Import (Asm, Interrupt_Handler_176, "interrupt_handler_176");
      procedure Interrupt_Handler_177;
      pragma Import (Asm, Interrupt_Handler_177, "interrupt_handler_177");
      procedure Interrupt_Handler_178;
      pragma Import (Asm, Interrupt_Handler_178, "interrupt_handler_178");
      procedure Interrupt_Handler_179;
      pragma Import (Asm, Interrupt_Handler_179, "interrupt_handler_179");
      procedure Interrupt_Handler_180;
      pragma Import (Asm, Interrupt_Handler_180, "interrupt_handler_180");
      procedure Interrupt_Handler_181;
      pragma Import (Asm, Interrupt_Handler_181, "interrupt_handler_181");
      procedure Interrupt_Handler_182;
      pragma Import (Asm, Interrupt_Handler_182, "interrupt_handler_182");
      procedure Interrupt_Handler_183;
      pragma Import (Asm, Interrupt_Handler_183, "interrupt_handler_183");
      procedure Interrupt_Handler_184;
      pragma Import (Asm, Interrupt_Handler_184, "interrupt_handler_184");
      procedure Interrupt_Handler_185;
      pragma Import (Asm, Interrupt_Handler_185, "interrupt_handler_185");
      procedure Interrupt_Handler_186;
      pragma Import (Asm, Interrupt_Handler_186, "interrupt_handler_186");
      procedure Interrupt_Handler_187;
      pragma Import (Asm, Interrupt_Handler_187, "interrupt_handler_187");
      procedure Interrupt_Handler_188;
      pragma Import (Asm, Interrupt_Handler_188, "interrupt_handler_188");
      procedure Interrupt_Handler_189;
      pragma Import (Asm, Interrupt_Handler_189, "interrupt_handler_189");
      procedure Interrupt_Handler_190;
      pragma Import (Asm, Interrupt_Handler_190, "interrupt_handler_190");
      procedure Interrupt_Handler_191;
      pragma Import (Asm, Interrupt_Handler_191, "interrupt_handler_191");
      procedure Interrupt_Handler_192;
      pragma Import (Asm, Interrupt_Handler_192, "interrupt_handler_192");
      procedure Interrupt_Handler_193;
      pragma Import (Asm, Interrupt_Handler_193, "interrupt_handler_193");
      procedure Interrupt_Handler_194;
      pragma Import (Asm, Interrupt_Handler_194, "interrupt_handler_194");
      procedure Interrupt_Handler_195;
      pragma Import (Asm, Interrupt_Handler_195, "interrupt_handler_195");
      procedure Interrupt_Handler_196;
      pragma Import (Asm, Interrupt_Handler_196, "interrupt_handler_196");
      procedure Interrupt_Handler_197;
      pragma Import (Asm, Interrupt_Handler_197, "interrupt_handler_197");
      procedure Interrupt_Handler_198;
      pragma Import (Asm, Interrupt_Handler_198, "interrupt_handler_198");
      procedure Interrupt_Handler_199;
      pragma Import (Asm, Interrupt_Handler_199, "interrupt_handler_199");
      procedure Interrupt_Handler_200;
      pragma Import (Asm, Interrupt_Handler_200, "interrupt_handler_200");
      procedure Interrupt_Handler_201;
      pragma Import (Asm, Interrupt_Handler_201, "interrupt_handler_201");
      procedure Interrupt_Handler_202;
      pragma Import (Asm, Interrupt_Handler_202, "interrupt_handler_202");
      procedure Interrupt_Handler_203;
      pragma Import (Asm, Interrupt_Handler_203, "interrupt_handler_203");
      procedure Interrupt_Handler_204;
      pragma Import (Asm, Interrupt_Handler_204, "interrupt_handler_204");
      procedure Interrupt_Handler_205;
      pragma Import (Asm, Interrupt_Handler_205, "interrupt_handler_205");
      procedure Interrupt_Handler_206;
      pragma Import (Asm, Interrupt_Handler_206, "interrupt_handler_206");
      procedure Interrupt_Handler_207;
      pragma Import (Asm, Interrupt_Handler_207, "interrupt_handler_207");
      procedure Interrupt_Handler_208;
      pragma Import (Asm, Interrupt_Handler_208, "interrupt_handler_208");
      procedure Interrupt_Handler_209;
      pragma Import (Asm, Interrupt_Handler_209, "interrupt_handler_209");
      procedure Interrupt_Handler_210;
      pragma Import (Asm, Interrupt_Handler_210, "interrupt_handler_210");
      procedure Interrupt_Handler_211;
      pragma Import (Asm, Interrupt_Handler_211, "interrupt_handler_211");
      procedure Interrupt_Handler_212;
      pragma Import (Asm, Interrupt_Handler_212, "interrupt_handler_212");
      procedure Interrupt_Handler_213;
      pragma Import (Asm, Interrupt_Handler_213, "interrupt_handler_213");
      procedure Interrupt_Handler_214;
      pragma Import (Asm, Interrupt_Handler_214, "interrupt_handler_214");
      procedure Interrupt_Handler_215;
      pragma Import (Asm, Interrupt_Handler_215, "interrupt_handler_215");
      procedure Interrupt_Handler_216;
      pragma Import (Asm, Interrupt_Handler_216, "interrupt_handler_216");
      procedure Interrupt_Handler_217;
      pragma Import (Asm, Interrupt_Handler_217, "interrupt_handler_217");
      procedure Interrupt_Handler_218;
      pragma Import (Asm, Interrupt_Handler_218, "interrupt_handler_218");
      procedure Interrupt_Handler_219;
      pragma Import (Asm, Interrupt_Handler_219, "interrupt_handler_219");
      procedure Interrupt_Handler_220;
      pragma Import (Asm, Interrupt_Handler_220, "interrupt_handler_220");
      procedure Interrupt_Handler_221;
      pragma Import (Asm, Interrupt_Handler_221, "interrupt_handler_221");
      procedure Interrupt_Handler_222;
      pragma Import (Asm, Interrupt_Handler_222, "interrupt_handler_222");
      procedure Interrupt_Handler_223;
      pragma Import (Asm, Interrupt_Handler_223, "interrupt_handler_223");
      procedure Interrupt_Handler_224;
      pragma Import (Asm, Interrupt_Handler_224, "interrupt_handler_224");
      procedure Interrupt_Handler_225;
      pragma Import (Asm, Interrupt_Handler_225, "interrupt_handler_225");
      procedure Interrupt_Handler_226;
      pragma Import (Asm, Interrupt_Handler_226, "interrupt_handler_226");
      procedure Interrupt_Handler_227;
      pragma Import (Asm, Interrupt_Handler_227, "interrupt_handler_227");
      procedure Interrupt_Handler_228;
      pragma Import (Asm, Interrupt_Handler_228, "interrupt_handler_228");
      procedure Interrupt_Handler_229;
      pragma Import (Asm, Interrupt_Handler_229, "interrupt_handler_229");
      procedure Interrupt_Handler_230;
      pragma Import (Asm, Interrupt_Handler_230, "interrupt_handler_230");
      procedure Interrupt_Handler_231;
      pragma Import (Asm, Interrupt_Handler_231, "interrupt_handler_231");
      procedure Interrupt_Handler_232;
      pragma Import (Asm, Interrupt_Handler_232, "interrupt_handler_232");
      procedure Interrupt_Handler_233;
      pragma Import (Asm, Interrupt_Handler_233, "interrupt_handler_233");
      procedure Interrupt_Handler_234;
      pragma Import (Asm, Interrupt_Handler_234, "interrupt_handler_234");
      procedure Interrupt_Handler_235;
      pragma Import (Asm, Interrupt_Handler_235, "interrupt_handler_235");
      procedure Interrupt_Handler_236;
      pragma Import (Asm, Interrupt_Handler_236, "interrupt_handler_236");
      procedure Interrupt_Handler_237;
      pragma Import (Asm, Interrupt_Handler_237, "interrupt_handler_237");
      procedure Interrupt_Handler_238;
      pragma Import (Asm, Interrupt_Handler_238, "interrupt_handler_238");
      procedure Interrupt_Handler_239;
      pragma Import (Asm, Interrupt_Handler_239, "interrupt_handler_239");
      procedure Interrupt_Handler_240;
      pragma Import (Asm, Interrupt_Handler_240, "interrupt_handler_240");
      procedure Interrupt_Handler_241;
      pragma Import (Asm, Interrupt_Handler_241, "interrupt_handler_241");
      procedure Interrupt_Handler_242;
      pragma Import (Asm, Interrupt_Handler_242, "interrupt_handler_242");
      procedure Interrupt_Handler_243;
      pragma Import (Asm, Interrupt_Handler_243, "interrupt_handler_243");
      procedure Interrupt_Handler_244;
      pragma Import (Asm, Interrupt_Handler_244, "interrupt_handler_244");
      procedure Interrupt_Handler_245;
      pragma Import (Asm, Interrupt_Handler_245, "interrupt_handler_245");
      procedure Interrupt_Handler_246;
      pragma Import (Asm, Interrupt_Handler_246, "interrupt_handler_246");
      procedure Interrupt_Handler_247;
      pragma Import (Asm, Interrupt_Handler_247, "interrupt_handler_247");
      procedure Interrupt_Handler_248;
      pragma Import (Asm, Interrupt_Handler_248, "interrupt_handler_248");
      procedure Interrupt_Handler_249;
      pragma Import (Asm, Interrupt_Handler_249, "interrupt_handler_249");
      procedure Interrupt_Handler_250;
      pragma Import (Asm, Interrupt_Handler_250, "interrupt_handler_250");
      procedure Interrupt_Handler_251;
      pragma Import (Asm, Interrupt_Handler_251, "interrupt_handler_251");
      procedure Interrupt_Handler_252;
      pragma Import (Asm, Interrupt_Handler_252, "interrupt_handler_252");
      procedure Interrupt_Handler_253;
      pragma Import (Asm, Interrupt_Handler_253, "interrupt_handler_253");
      procedure Interrupt_Handler_254;
      pragma Import (Asm, Interrupt_Handler_254, "interrupt_handler_254");
      procedure Interrupt_Handler_255;
      pragma Import (Asm, Interrupt_Handler_255, "interrupt_handler_255");
   begin
      Work_IDT_Descriptor.Gate_Type := 2#01110#;
      Work_IDT_Descriptor.Priviledge_Level := 0;
      Work_IDT_Descriptor.Present := True;
      Work_IDT_Descriptor.Dummy := 0;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_0'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (0) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_1'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (1) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_2'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (2) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_3'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (3) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_4'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (4) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_5'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (5) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_6'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (6) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_7'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (7) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_8'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (8) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_9'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (9) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_10'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (10) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_11'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (11) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_12'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (12) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_13'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (13) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_14'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (14) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_15'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (15) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_16'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (16) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_17'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (17) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_18'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (18) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_19'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (19) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_20'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (20) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_21'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (21) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_22'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (22) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_23'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (23) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_24'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (24) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_25'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (25) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_26'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (26) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_27'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (27) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_28'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (28) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_29'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (29) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_30'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (30) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_31'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (31) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_32'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (32) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_33'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (33) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_34'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (34) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_35'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (35) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_36'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (36) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_37'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (37) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_38'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (38) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_39'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (39) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_40'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (40) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_41'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (41) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_42'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (42) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_43'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (43) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_44'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (44) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_45'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (45) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_46'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (46) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_47'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (47) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_48'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (48) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_49'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (49) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_50'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (50) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_51'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (51) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_52'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (52) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_53'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (53) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_54'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (54) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_55'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (55) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_56'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (56) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_57'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (57) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_58'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (58) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_59'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (59) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_60'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (60) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_61'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (61) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_62'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (62) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_63'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (63) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_64'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (64) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_65'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (65) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_66'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (66) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_67'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (67) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_68'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (68) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_69'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (69) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_70'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (70) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_71'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (71) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_72'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (72) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_73'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (73) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_74'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (74) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_75'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (75) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_76'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (76) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_77'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (77) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_78'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (78) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_79'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (79) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_80'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (80) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_81'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (81) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_82'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (82) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_83'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (83) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_84'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (84) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_85'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (85) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_86'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (86) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_87'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (87) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_88'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (88) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_89'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (89) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_90'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (90) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_91'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (91) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_92'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (92) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_93'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (93) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_94'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (94) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_95'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (95) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_96'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (96) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_97'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (97) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_98'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (98) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_99'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (99) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_100'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (100) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_101'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (101) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_102'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (102) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_103'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (103) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_104'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (104) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_105'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (105) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_106'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (106) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_107'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (107) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_108'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (108) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_109'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (109) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_110'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (110) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_111'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (111) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_112'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (112) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_113'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (113) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_114'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (114) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_115'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (115) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_116'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (116) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_117'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (117) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_118'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (118) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_119'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (119) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_120'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (120) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_121'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (121) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_122'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (122) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_123'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (123) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_124'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (124) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_125'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (125) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_126'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (126) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_127'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (127) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_128'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (128) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_129'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (129) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_130'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (130) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_131'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (131) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_132'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (132) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_133'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (133) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_134'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (134) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_135'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (135) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_136'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (136) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_137'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (137) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_138'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (138) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_139'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (139) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_140'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (140) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_141'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (141) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_142'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (142) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_143'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (143) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_144'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (144) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_145'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (145) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_146'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (146) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_147'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (147) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_148'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (148) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_149'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (149) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_150'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (150) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_151'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (151) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_152'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (152) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_153'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (153) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_154'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (154) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_155'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (155) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_156'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (156) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_157'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (157) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_158'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (158) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_159'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (159) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_160'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (160) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_161'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (161) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_162'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (162) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_163'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (163) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_164'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (164) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_165'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (165) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_166'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (166) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_167'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (167) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_168'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (168) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_169'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (169) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_170'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (170) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_171'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (171) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_172'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (172) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_173'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (173) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_174'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (174) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_175'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (175) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_176'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (176) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_177'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (177) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_178'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (178) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_179'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (179) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_180'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (180) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_181'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (181) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_182'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (182) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_183'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (183) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_184'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (184) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_185'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (185) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_186'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (186) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_187'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (187) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_188'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (188) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_189'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (189) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_190'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (190) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_191'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (191) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_192'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (192) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_193'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (193) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_194'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (194) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_195'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (195) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_196'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (196) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_197'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (197) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_198'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (198) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_199'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (199) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_200'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (200) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_201'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (201) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_202'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (202) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_203'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (203) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_204'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (204) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_205'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (205) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_206'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (206) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_207'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (207) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_208'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (208) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_209'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (209) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_210'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (210) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_211'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (211) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_212'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (212) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_213'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (213) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_214'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (214) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_215'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (215) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_216'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (216) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_217'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (217) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_218'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (218) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_219'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (219) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_220'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (220) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_221'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (221) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_222'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (222) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_223'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (223) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_224'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (224) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_225'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (225) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_226'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (226) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_227'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (227) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_228'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (228) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_229'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (229) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_230'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (230) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_231'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (231) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_232'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (232) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_233'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (233) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_234'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (234) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_235'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (235) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_236'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (236) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_237'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (237) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_238'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (238) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_239'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (239) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_240'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (240) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_241'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (241) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_242'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (242) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_243'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (243) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_244'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (244) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_245'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (245) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_246'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (246) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_247'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (247) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_248'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (248) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_249'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (249) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_250'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (250) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_251'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (251) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_252'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (252) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_253'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (253) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_254'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (254) := Work_IDT_Descriptor;

      Work_Address := To_Unsigned_32 (Interrupt_Handler_255'Access);
      Work_IDT_Descriptor.Selector := 16#0010#;
      Work_IDT_Descriptor.Offset_Low :=
        Unsigned_16 (Work_Address and 16#FFFF#);
      Work_IDT_Descriptor.Offset_High :=
        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);
      The_IDT_Descriptor_Table (255) := Work_IDT_Descriptor;

   end Setup_IDT;
end Generated_Interrupt_Handlers;
