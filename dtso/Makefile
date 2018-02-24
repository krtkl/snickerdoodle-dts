#
# SPDX-License-Identifier:	GPL-2.0+
#


dtbo-y := gpio.dtbo
dtbo-y += pwm.dtbo
dtbo-y += uio.dtbo
dtbo-y += strm_ctrl.dtbo

all : $(dtbo-y)

%.dtbo : %.dts
	@echo "  $< --> $@"
	@dtc -I dts -O dtb -o $@ $<

clean :
	@rm -f $(dtbo-y)
