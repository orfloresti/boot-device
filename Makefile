ASM=nasm
SRC_DIR=src
BUILD_DIR=build
# Available archs: i386, x86_64
ARCH=x86_64

all:
	$(ASM) $(SRC_DIR)/main.asm -f bin -o $(BUILD_DIR)/main.bin

run:
	qemu-system-$(ARCH) --drive format=raw,file=$(BUILD_DIR)/main.bin
