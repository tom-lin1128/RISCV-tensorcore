// vdot vd, vs2, vs1

VI_VV_LOOP_EX
({
  vd += vs2 * vs1;
})

VI_VV_LOOP_REDUCTION_EX
({
  vd_0_res += vs_temp;
})


