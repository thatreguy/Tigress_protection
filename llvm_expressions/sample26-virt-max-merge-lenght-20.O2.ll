; ModuleID = 'llvm_expressions/sample26-virt-max-merge-lenght-20.ll'
source_filename = "llvm_expressions/sample26-virt-max-merge-lenght-20.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: norecurse nounwind readnone
define i64 @SECRET(i64 %SymVar_0) local_unnamed_addr #0 {
.3:
  %.6 = lshr i64 %SymVar_0, 5
  %.8 = and i64 %.6, 117709218
  %.9 = or i64 %SymVar_0, 441848546
  %.10 = add i64 %.8, %.9
  %.11 = shl i64 %.10, 3
  %.14 = and i64 %.11, 120
  %.19 = add i64 %SymVar_0, -63267836
  %.20 = or i64 %.14, %.19
  %.22 = shl i64 %.20, 3
  %.25 = and i64 %.22, 120
  %.26 = or i64 %.25, %.20
  %.27 = shl i64 %.26, 3
  %.35 = add i64 %SymVar_0, -43022659
  %.38 = lshr i64 %.10, 3
  %.39 = and i64 %.38, 14
  %.40 = or i64 %.39, 1
  %.56 = shl i64 828565327, %.40
  %.60 = lshr i64 %.56, 4
  %.61 = and i64 %.60, 6
  %.62 = or i64 %.61, 1
  %.66 = shl i64 %.35, %.62
  %.68 = or i64 %.27, %.66
  %.69 = shl i64 %.66, 3
  %.70 = and i64 %.69, 16
  %.77 = and i64 %.27, 120
  %.78 = or i64 %.77, %.26
  %.79 = or i64 %.78, %.70
  %.80 = lshr i64 %SymVar_0, 53
  %.82 = and i64 %.80, 55
  %.97 = and i64 %.6, 22784
  %.99 = or i64 %.82, %.97
  %.102 = and i64 %.6, 7667712
  %.104 = or i64 %.99, %.102
  %.107 = and i64 %.6, 4009754624
  %.109 = or i64 %.104, %.107
  %0 = lshr i64 %SymVar_0, 13
  %.125 = and i64 %0, 442381631488
  %.126 = or i64 %.109, %.125
  %1 = shl i64 %SymVar_0, 3
  %.136 = and i64 %1, 144036023238656
  %.137 = or i64 %.126, %.136
  %.139 = shl i64 %.6, 48
  %.146 = and i64 %.139, 65865144550293504
  %.151 = and i64 %.6, 72057594037927936
  %.147 = or i64 %.137, %.151
  %.152 = or i64 %.147, %.146
  %.156 = shl nuw nsw i64 %.82, 1
  %.157 = lshr i64 %.10, 35
  %.192 = and i64 %.157, 2097151
  %.19411 = lshr i64 %.10, 56
  %.197 = shl nuw nsw i64 %.19411, 21
  %.198 = or i64 %.197, %.156
  %.246 = or i64 %.198, %.192
  %.250 = and i64 %.246, 14
  %.251 = or i64 %.250, 1
  %.252 = sub nsw i64 64, %.251
  %.258 = shl i64 %.79, %.252
  %.269 = lshr i64 %.79, %.251
  %.270 = or i64 %.258, %.269
  %.271 = shl i64 %.270, 2
  %.274 = and i64 %.271, 60
  %.275 = lshr i64 %.66, 32
  %.314 = and i64 %.275, 16777215
  %.31630 = lshr i64 %.66, 56
  %.319 = shl nuw nsw i64 %.31630, 24
  %.320 = or i64 %.314, %.319
  %.322 = shl i64 %.68, 32
  %.344 = and i64 %.322, 1090921693184
  %2 = shl i64 %.66, 32
  %.350 = and i64 %2, 280375465082880
  %.356 = and i64 %2, 71776119061217280
  %.359 = lshr i64 %.66, 24
  %.362 = shl i64 %.359, 56
  %.391 = and i64 %.246, 6
  %.392 = or i64 %.391, 1
  %.398 = shl i64 %.152, %.392
  %.345 = or i64 %.320, %.350
  %.351 = or i64 %.345, %.356
  %.357 = or i64 %.351, %.362
  %.363 = or i64 %.357, %.79
  %.364 = or i64 %.363, %.344
  %.365 = or i64 %.364, %.398
  %.399 = or i64 %.365, %.274
  ret i64 %.399
}

attributes #0 = { norecurse nounwind readnone }