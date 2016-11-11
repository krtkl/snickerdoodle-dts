#
# SPDX-License-Identifier:	GPL-2.0+
#


dtb-y += snickerdoodle.dtb
dtb-y += snickerdoodle-black.dtb
dtb-y += snickerdoodle-piSmasher.dtb
dtb-y += snickerdoodle-black-piSmasher.dtb

# Add the device tree overlays
dtbo-y += dtso/

all : $(dtb-y) dtbo


$(dtb-y) : $(addsuffix .dts, $(basename $(dtb-y)))
	@echo "  $< --> $@"
	@dtc -I dts -O dtb -o $@ $<

dtbo : $(dtbo-y)
	@echo "-- Building overlays"
	@cd $< && $(MAKE)

clean-dtbo : $(dtbo-y)
	@cd $< && $(MAKE) clean

clean : clean-dtbo
	@rm -f $(dtb-y)
