; ModuleID = 'llvm_expressions/./tigress-1-challenge-4.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: norecurse nounwind readnone
define i64 @__arybo(i64 %SymVar_0) #0 {
.3:
  %.6 = lshr i64 %SymVar_0, 3
  %.9 = shl i64 %SymVar_0, 61
  %.10 = or i64 %.6, %.9
  %.11 = add i64 %.10, -1072693119
  %.12 = or i64 %.11, %SymVar_0
  %.13 = add i64 %.12, -300260246
  %.14 = lshr i64 %.13, 32
  %.52 = and i64 %.14, 16711680
  %.53 = and i64 %.14, 16777215
  %.5520 = lshr i64 %.13, 56
  %.58 = shl nuw nsw i64 %.5520, 24
  %.59 = or i64 %.53, %.58
  %.82 = shl i64 %.13, 32
  %.83 = and i64 %.82, 1095216660480
  %.84 = or i64 %.59, %.83
  %.89 = and i64 %.82, 280375465082880
  %.90 = or i64 %.84, %.89
  %.95 = and i64 %.82, 71776119061217280
  %.96 = or i64 %.90, %.95
  %.98 = lshr i64 %.13, 24
  %.101 = shl i64 %.98, 56
  %.102 = or i64 %.96, %.101
  %.115 = shl i64 %SymVar_0, 4
  %.116 = add i64 %.115, 32
  %.119 = and i64 %.116, 1008
  %.120 = or i64 %.102, %.119
  %.122 = and i64 %.120, 255
  %0 = lshr i64 %.90, 32
  %.141 = and i64 %0, 65280
  %1 = shl i64 %.120, 32
  %.170 = and i64 %1, 280375465082880
  %.174 = and i64 %.96, 71776119061217280
  %.177 = and i64 %.102, -72057594037927936
  %.142 = or i64 %.58, %.52
  %.147 = or i64 %.142, %.83
  %.152 = or i64 %.147, %.141
  %.157 = or i64 %.152, %.174
  %.171 = or i64 %.157, %.177
  %.176 = or i64 %.171, %.122
  %.181 = or i64 %.176, %.170
  %.182 = lshr i64 %.11, 32
  %.221 = and i64 %.182, 16777215
  %.22339 = lshr i64 %.11, 56
  %.226 = shl nuw nsw i64 %.22339, 24
  %.227 = or i64 %.221, %.226
  %.250 = shl i64 %.11, 32
  %.251 = and i64 %.250, 1095216660480
  %.252 = or i64 %.227, %.251
  %.257 = and i64 %.250, 280375465082880
  %.258 = or i64 %.252, %.257
  %.263 = and i64 %.250, 71776119061217280
  %.264 = or i64 %.258, %.263
  %.266 = lshr i64 %.11, 24
  %.269 = shl i64 %.266, 56
  %.270 = or i64 %.264, %.269
  %.277 = add i64 %.181, %.270
  %.286 = shl i64 %.277, 1
  %.319 = lshr i64 %.277, 63
  %.320 = or i64 %.286, %.319
  ret i64 %.320
}

attributes #0 = { norecurse nounwind readnone }