;buildInfoPackage: chisel3, version: 3.1.3, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2018-09-12 19:37:29.007, builtAtMillis: 1536781049007
circuit PPGenerator : 
  module PPGenerator : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : {input : {sign : UInt<1>, exponent : UInt<8>, mantissa : UInt<23>}, weight : {grps : UInt<3>[2], exponent : UInt<8>}}, out : {pp_1 : UInt<10>, pp_2 : UInt<10>, exponent : UInt<9>}}
    
    wire pp1_tmp : UInt<9> @[PPGenerator.scala 21:21]
    wire pp2_tmp : UInt<9> @[PPGenerator.scala 22:21]
    node _T_47 = bits(io.in.weight.grps[1], 1, 0) @[PPGenerator.scala 24:38]
    node _T_49 = eq(_T_47, UInt<2>("h03")) @[PPGenerator.scala 24:44]
    node _T_52 = bits(io.in.input.mantissa, 22, 20) @[PPGenerator.scala 24:97]
    node _T_53 = cat(UInt<1>("h01"), _T_52) @[Cat.scala 30:58]
    node _T_54 = bits(io.in.weight.grps[1], 1, 0) @[PPGenerator.scala 24:129]
    node _T_55 = dshl(_T_53, _T_54) @[PPGenerator.scala 24:106]
    node _T_56 = shl(_T_55, 3) @[PPGenerator.scala 24:135]
    node _T_57 = mux(_T_49, UInt<1>("h00"), _T_56) @[PPGenerator.scala 24:17]
    pp1_tmp <= _T_57 @[PPGenerator.scala 24:11]
    node _T_58 = bits(io.in.weight.grps[0], 1, 0) @[PPGenerator.scala 25:38]
    node _T_60 = eq(_T_58, UInt<2>("h03")) @[PPGenerator.scala 25:44]
    node _T_63 = bits(io.in.input.mantissa, 22, 20) @[PPGenerator.scala 25:97]
    node _T_64 = cat(UInt<1>("h01"), _T_63) @[Cat.scala 30:58]
    node _T_65 = bits(io.in.weight.grps[0], 1, 0) @[PPGenerator.scala 25:129]
    node _T_66 = dshl(_T_64, _T_65) @[PPGenerator.scala 25:106]
    node _T_67 = mux(_T_60, UInt<1>("h00"), _T_66) @[PPGenerator.scala 25:17]
    pp2_tmp <= _T_67 @[PPGenerator.scala 25:11]
    node _T_68 = bits(io.in.weight.grps[1], 2, 2) @[PPGenerator.scala 27:61]
    node _T_69 = xor(io.in.input.sign, _T_68) @[PPGenerator.scala 27:39]
    node _T_70 = cat(_T_69, pp1_tmp) @[Cat.scala 30:58]
    io.out.pp_1 <= _T_70 @[PPGenerator.scala 27:15]
    node _T_71 = bits(io.in.weight.grps[0], 2, 2) @[PPGenerator.scala 28:61]
    node _T_72 = xor(io.in.input.sign, _T_71) @[PPGenerator.scala 28:39]
    node _T_73 = cat(_T_72, pp2_tmp) @[Cat.scala 30:58]
    io.out.pp_2 <= _T_73 @[PPGenerator.scala 28:15]
    node _T_74 = add(io.in.input.exponent, io.in.weight.exponent) @[PPGenerator.scala 29:43]
    io.out.exponent <= _T_74 @[PPGenerator.scala 29:19]
    
