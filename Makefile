#
# SPDX-License-Identifier:	GPL-2.0+
#

src += $(wildcard *.dts)
obj += $(src:.dts=.dtb)

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
