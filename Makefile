#
# SPDX-License-Identifier:	GPL-2.0+
#

dtb-y += snickerdoodle.dtb
dtb-y += snickerdoodle-black.dtb
dtb-y += snickerdoodle-prime.dtb
dtb-y += snickerdoodle-one.dtb

srcdir-y += examples/

PHONY += all
all: $(srcdir-y) $(dtb-y)

#examples: $(example-y)
#	$(MAKE) -C $<

%/:
	$(MAKE) -C $@

%.dtb: %.dts
	@echo "  $< --> $@"
	@dtc -@ -I dts -O dtb -o $@ $<

%.dtbo: %.dtso
	@dtc -I dts -O dtb -o $@ $<



#clean_examples: $(examples-y)
#	$(MAKE) -C $< clean

#PHONY += clean
#clean: $(dtb-y)
#	@rm -f $^


.PHONY: $(PHONY)
