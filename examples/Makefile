#
# SPDX-License-Identifier:	GPL-2.0+
#

dtb-y +=	snickerdoodle/gpio.dtb \
		snickerdoodle/spi.dtb \
		snickerdoodle-black/gpio.dtb \
		snickerdoodle-black/spi.dtb \
		snickerdoodle-one/gpio.dtb \
		snickerdoodle-one/spi.dtb \
		snickerdoodle-prime/gpio.dtb \
		snickerdoodle-prime/spi.dtb \
		overlay/gpio.dtbo \
		overlay/spi.dtbo

PHONY += all
all: check-dtsi $(dtb-y)


PHONY += clean
clean:
	@rm -f $(dtb-y)

check-dtsi:
ifndef DTSI_PATH
	$(error DTSI_PATH is undefined)
endif

%.dtb: %.dts
	@echo "  $< --> $@"
	@dtc -@ -i $(DTSI_PATH) -I dts -O dtb -o $@ $<

%.dtbo: %.dts
	@echo "  $< --> $@"
	@dtc -I dts -O dtb -o $@ $<


.PHONY: $(PHONY)

