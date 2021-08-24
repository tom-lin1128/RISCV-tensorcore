    .text
    .balign 4
    .global tensormul
    # vector-vector add routine of 32-bit integers
    # void vvaddint32(size_t n, const int*x, const int*y, int*z)
    # { for (size_t i=0; i<n; i++) { z[i]=x[i]+y[i]; } }
    #
    # a0 = n, a1 = x, a2 = y, a3 = z
# ver 1.0
# tensormul:
#     vsetvli t0, a0, e32, m1, ta, ma  # Set vector length based on 32-bit vectors
#     vl1re32.v v1, (a1)         # Get first vector
#       sub a0, a0, t0         # Decrement number done
#       slli t0, t0, 2         # Multiply number done by 4 bytes
#       add a1, a1, t0         # Bump pointer
#     vl1re32.v v2, (a2)         # Get second vector
#       add a2, a2, t0         # Bump pointer
#      .word 0xE2208057
#     vs1r.v v0, (a3)         # Store result
#       add a3, a3, t0         # Bump pointer
#       bnez a0, tensormul    # Loop back
#       ret                    # Finished

tensormul:
    vsetvli t0, a0, e32, m4, ta, ma  # Set vector length based on 32-bit vectors
    vl4re32.v v4, (a1)         # Get first vector
      sub a0, a0, t0         # Decrement number done
      slli t0, t0, 2         # Multiply number done by 4 bytes
      add a1, a1, t0         # Bump pointer
    vl4re32.v v8, (a2)         # Get second vector
      add a2, a2, t0         # Bump pointer
    vl4re32.v v0, (a3)
     .word 0xE2820057
    vs4r.v v0, (a3)         # Store result
      add a3, a3, t0         # Bump pointer
      bnez a0, tensormul    # Loop back
      ret                    # Finished