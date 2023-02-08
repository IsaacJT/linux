human_arch	= RISC-V
build_arch	= riscv
header_arch	= $(build_arch)
defconfig	= mpfs_defconfig
flavours        = generic
build_image	= Image
kernel_file	= arch/$(build_arch)/boot/Image
install_file	= vmlinuz

vdso		= vdso_install
no_dumpfile	= true

do_flavour_image_package = false
do_tools	= false
do_tools_common	= false
do_extras_package = false
do_source_package = false
do_doc_package	= false
do_flavour_header_package = false
do_common_headers_indep = false

# Skip the ABI chek for now until we get a proper derivative kernel up and
# running.
skipabi		= true

# Disable building libc-dev until we have the derivative
do_libc_dev_package = false

disable_d_i	= true
do_zfs		= false
