#
# SPDX-License-Identifier:	GPL-2.0+
#


dtb-y += snickerdoodle.dtb
dtb-y += snickerdoodle-one.dtb
dtb-y += snickerdoodle-black.dtb
dtb-y += snickerdoodle-prime.dtb
dtb-y += snickerdoodle-prime-le.dtb

# Add the device tree overlays
dtbo-y += dtso/

# Add baseboard device trees
board-dtb += baseboard/

all : $(dtb-y) dtbo board_dtb

%.dtb : %.dts
	@echo "  $< --> $@"
	@dtc -I dts -O dtb -o $@ $<

.PHONY = dtbo

dtbo : $(dtbo-y)
	@echo "-- Building overlays"
	$(MAKE) -C $<


export DTSI_DIR=${PWD}

.PHONY : board_dtb

board_dtb : $(board-dtb)
	@echo "-- Building baseboard device trees"
	$(MAKE) -C $<

.PHONY : clean_dtbo

clean_dtbo : $(dtbo-y)
	$(MAKE) -C $< clean

.PHONY : clean_board

clean_board : $(board-dtb)
	$(MAKE) -C $< clean 

clean : clean_dtbo clean_board
	@rm -f $(dtb-y)
