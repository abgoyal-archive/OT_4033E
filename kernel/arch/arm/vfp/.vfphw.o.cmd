cmd_arch/arm/vfp/vfphw.o := arm-linux-androideabi-gcc -Wp,-MD,arch/arm/vfp/.vfphw.o.d  -nostdinc -isystem /local/build/autotest-release/case_yarism_1015/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.6/bin/../lib/gcc/arm-linux-androideabi/4.6.x-google/include -I/local/build/autotest-release/GPL/kernel/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include /local/build/autotest-release/GPL/kernel/include/linux/kconfig.h -I../mediatek/custom///common -I../mediatek/platform/mt6572/kernel/core/include/ -I../mediatek/kernel/include/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/rtc/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/kpd/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/core/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/leds/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/accelerometer/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/camera/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/vibrator/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/touchpanel/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/alsps/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/battery/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/headset/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/dct/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/flashlight/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/usb/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/barometer/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/./ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/hdmi/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/sound/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/sound/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/leds/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/accelerometer/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/cam_cal/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/cam_cal/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/lcm/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/lcm/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/magnetometer/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/ssw/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/ssw/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/flashlight/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/gyroscope/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/alsps/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/jogball/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/eeprom/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/eeprom/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/imgsensor/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/imgsensor/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/ccci/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/lens/ -I../mediatek/custom/out/jrdhz72_we_jb3/kernel/lens/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/hal/sensors/ -I../mediatek/custom/out/jrdhz72_we_jb3/hal/audioflinger/ -I../mediatek/custom/out/jrdhz72_we_jb3/hal/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/hal/lens/ -I../mediatek/custom/out/jrdhz72_we_jb3/hal/camera/ -I../mediatek/custom/out/jrdhz72_we_jb3/hal/camera/inc/ -I../mediatek/custom/out/jrdhz72_we_jb3/hal/imgsensor/ -I../mediatek/custom/out/jrdhz72_we_jb3/hal/combo/ -I../mediatek/custom/out/jrdhz72_we_jb3/hal/cam_cal/ -I../mediatek/custom/out/jrdhz72_we_jb3/hal/vt/ -I../mediatek/custom/out/jrdhz72_we_jb3/hal/flashlight/ -I../mediatek/custom/out/jrdhz72_we_jb3/hal/matv/ -I../mediatek/custom/out/jrdhz72_we_jb3/hal/fmradio/ -I../mediatek/custom/out/jrdhz72_we_jb3/hal/eeprom/ -I../mediatek/custom/out/jrdhz72_we_jb3/hal/ant/ -I../mediatek/custom/out/jrdhz72_we_jb3/hal/bluetooth/ -I../mediatek/custom/out/jrdhz72_we_jb3/common -D__KERNEL__   -mlittle-endian -DMODEM_3G -Imediatek/platform/mt6572/kernel/core/include -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7 -march=armv7-a -include asm/unified.h -Wa,-mfpu=softvfp+vfp -mfloat-abi=soft -gdwarf-2        -c -o arch/arm/vfp/vfphw.o arch/arm/vfp/vfphw.S

source_arch/arm/vfp/vfphw.o := arch/arm/vfp/vfphw.S

deps_arch/arm/vfp/vfphw.o := \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/vfpv3.h) \
  /local/build/autotest-release/GPL/kernel/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
  /local/build/autotest-release/GPL/kernel/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/arm/thumbee.h) \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /local/build/autotest-release/GPL/kernel/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/iwmmxt.h) \
  /local/build/autotest-release/GPL/kernel/arch/arm/include/asm/vfpmacros.h \
  /local/build/autotest-release/GPL/kernel/arch/arm/include/asm/hwcap.h \
  /local/build/autotest-release/GPL/kernel/arch/arm/include/asm/vfp.h \
  arch/arm/vfp/../kernel/entry-header.S \
    $(wildcard include/config/frame/pointer.h) \
    $(wildcard include/config/alignment/trap.h) \
    $(wildcard include/config/cpu/v6.h) \
    $(wildcard include/config/cpu/32v6k.h) \
  include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /local/build/autotest-release/GPL/kernel/arch/arm/include/asm/types.h \
  include/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/linux/linkage.h \
  /local/build/autotest-release/GPL/kernel/arch/arm/include/asm/linkage.h \
  /local/build/autotest-release/GPL/kernel/arch/arm/include/asm/assembler.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/mt/sched/monitor.h) \
  /local/build/autotest-release/GPL/kernel/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/arm/thumb.h) \
  /local/build/autotest-release/GPL/kernel/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \
  /local/build/autotest-release/GPL/kernel/arch/arm/include/asm/asm-offsets.h \
  include/generated/asm-offsets.h \
  arch/arm/include/generated/asm/errno.h \
  include/asm-generic/errno.h \
  include/asm-generic/errno-base.h \

arch/arm/vfp/vfphw.o: $(deps_arch/arm/vfp/vfphw.o)

$(deps_arch/arm/vfp/vfphw.o):
