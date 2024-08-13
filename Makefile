obj-m += devmem-bypass.o
KERNEL_DIR ?= /usr/lib/modules/$(shell uname -r)/build
all:
	make -C $(KERNEL_DIR) M=$(PWD) modules
clean:
	make -C $(KERNEL_DIR) M=$(PWD) clean

