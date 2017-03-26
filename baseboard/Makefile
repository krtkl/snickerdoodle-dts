#
# SPDX-License-Identifier:	GPL-2.0+
#


dtb-y += snickerdoodle-piSmasher.dtb
dtb-y += snickerdoodle-black-piSmasher.dtb

all : $(dtb-y)

%.dtb : %.dts
	@echo "  $< --> $@"
	@dtc -@ -I dts -O dtb -o $@ -i ${DTSI_DIR} $<

clean :
	@rm -f $(dtb-y)
