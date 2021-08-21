//WRITE_RD(sext_xlen(READ_REG(insn.rd()) + sext_xlen(RS1 * RS2)));
require_extension('M');
reg_t tmp = sext_xlen(RS1 * RS2);
WRITE_RD(sext_xlen(READ_REG(insn.rd()) + tmp));

// vmacc.vv: vd[i] = +(vs1[i] * vs2[i]) + vd[i]
//VI_VV_LOOP
//({
//  vd = vs1 * vs2 + vd;
//})
