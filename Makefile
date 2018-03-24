#
# SPDX-License-Identifier:	GPL-2.0+
#

dtb-y += snickerdoodle.dtb
dtb-y += snickerdoodle-black.dtb
dtb-y += snickerdoodle-prime.dtb
dtb-y += snickerdoodle-one.dtb

examples-y += examples/

export DTSI_PATH := $(PWD)/include/

PHONY += all
all: $(dtb-y) examples

# Do not print the directory
MAKEFLAGS += --no-print-directory
Q = @

PHONY += examples
examples: $(examples-y)
	$(Q)$(MAKE) $(MAKEFLAGS) -C $<

%.dtb: %.dts
	@echo "  $< --> $@"
	@dtc -@ -i $(DTSI_PATH) -I dts -O dtb -o $@ $<

%.dtbo: %.dtso
	@dtc -I dts -O dtb -o $@ $<

PHONY += clean
clean:
	$(Q)rm -f $(dtb-y)
	$(Q)$(MAKE) $(MAKEFLAGS) -C $(examples-y) $@

.PHONY: $(PHONY)
