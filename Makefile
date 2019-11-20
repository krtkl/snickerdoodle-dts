#
# SPDX-License-Identifier:	GPL-2.0+
#

<<<<<<< HEAD
src += $(wildcard *.dts)
obj += $(src:.dts=.dtb)
=======
dtb-y += snickerdoodle.dtb
dtb-y += snickerdoodle-black.dtb
dtb-y += snickerdoodle-prime.dtb
dtb-y += snickerdoodle-one.dtb

dtb-y += snickerdoodle-gpio.dtb
dtb-y += snickerdoodle-black-spi.dtb
dtb-y += snickerdoodle-spi.dtb

dtb-y += snickerdoodle-one-pismasher-4.1.dtb
dtb-y += snickerdoodle-black-pismasher-4.1.dtb

dtb-y += snickerdoodle-black-OpenAMP.dtb

dtbo-y += dtbo/
>>>>>>> fa19f7fc5fc6a398e05b7cfba4757102159e1c1f

PHONY += all
all: $(obj)

# Do not print the directory
MAKEFLAGS += --no-print-directory
Q = @

%.dtb: %.dts
	@echo "  $< --> $@"
	@dtc -@ -q -I dts -O dtb -o $@ $<

%.dtbo: %.dts
	@dtc -q -I dts -O dtb -o $@ $<

PHONY += clean
clean:
	$(Q)rm -f $(obj)

.PHONY: $(PHONY)
