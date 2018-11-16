#
# SPDX-License-Identifier:	GPL-2.0+
#
dtbo-y +=	pismasher.dtbo \
		uio0.dtbo \
                uio1.dtbo \
                uio2.dtbo \
                uio3.dtbo \
                uio4.dtbo \
                uio5.dtbo \
                uio6.dtbo \
                uio7.dtbo \
                uio8.dtbo \
                uio9.dtbo \
                uio10.dtbo \
                uio11.dtbo \
                uio12.dtbo \
                uio13.dtbo \
                uio14.dtbo \
                uio15.dtbo
PHONY += all
all: $(dtbo-y)

%.dtbo: %.dts
	@dtc -I dts -O dtb -o $@ $<

PHONY += clean
clean:
	$(Q)rm -f $(dtbo-y)

.PHONY: $(PHONY)
