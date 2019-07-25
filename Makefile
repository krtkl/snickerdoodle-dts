#
# SPDX-License-Identifier:	GPL-2.0+
#

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

PHONY += all
all: $(dtb-y) dtbo

# Do not print the directory
MAKEFLAGS += --no-print-directory
Q = @

PHONY += dtbo
dtbo: $(dtbo-y)
	$(Q)$(MAKE) $(MAKEFLAGS) -C $@

%.dtb: %.dts
	@echo "  $< --> $@"
	@dtc -@ -I dts -O dtb -o $@ $<

PHONY += clean
clean: clean_dtbo
	$(Q)rm -f $(dtb-y)

clean_dtbo: $(dtbo-y)
	$(Q)$(MAKE) $(MAKEFLAGS) -C $< clean

.PHONY: $(PHONY)
