// mtmac vd, vs2, vs1

for(int step = 0 ; step < 4 ; step++ ){
  VI_VV_LOOP_EX
  ({
    vd = vs2 * vs1;
  })
  VI_VV_LOOP_REDUCTION_EX
  ({
    vd_0_res += vs_temp_0;
    vd_1_res += vs_temp_1;
    vd_2_res += vs_temp_2;
    vd_3_res += vs_temp_3;
  })
}