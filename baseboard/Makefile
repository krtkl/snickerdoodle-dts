#
# SPDX-License-Identifier:	GPL-2.0+
#


dtb-y += snickerdoodle-piSmasher.dtb
dtb-y += snickerdoodle-black-piSmasher.dtb
dtb-y += snickerdoodle-prime-piSmasher.dtb
dtb-y += snickerdoodle-black-birddog.dtb
dtb-y += snickerdoodle-black-birddog-testing.dtb
dtb-y += snickerdoodle-black-scorbitron.dtb

all : $(dtb-y)

%.dtb : %.dts
	@echo "  $< --> $@"
	@dtc -@ -I dts -O dtb -o $@ -i ${DTSI_DIR} $<

clean :
	@rm -f $(dtb-y)
