##################################################################
# To run the make, you should have the following tools available:
#
#   * rvv clang/llvm (https://github.com/isrc-cas/rvv-llvm)
#   * riscv gcc elf toolchain (https://github.com/riscv/riscv-gnu-toolchain)
#   * spike (https://github.com/riscv/riscv-isa-sim)
#   * pk (https://github.com/riscv/riscv-pk)
#
##################################################################

# Change the path for your environment.

GCC_TOOLCHAIN_DIR := /home/icmr/RISCV/riscv-gnu-toolchain_rvv-0.9.x
SYSROOT_DIR := $(GCC_TOOLCHAIN_DIR)/riscv32-unknown-elf

CLANG := /home/icmr/RISCV/llvm-project/build/bin/clang
SPIKE := spike
PK := ../riscv-gnu-toolchain_rvv-0.9.x/riscv32-unknown-elf/bin/pk

objects = main.c memcpy.s sgemm.S strlen.s vvaddint32.s saxpy.s strcpy.s strncpy.s
# objects = main.c memcpy.s strlen.s vvaddint32.s saxpy.s strcpy.s strncpy.s
target = rvv-test

$(target) : $(objects)
	$(CLANG)  --target=riscv32-unknown-elf -menable-experimental-extensions -march=rv32gcv1p0 --sysroot=$(SYSROOT_DIR) --gcc-toolchain=$(GCC_TOOLCHAIN_DIR) -o $(target) $(objects)

run :
	$(SPIKE) $(PK) -s $(target)

clean :
	rm -f $(target)
