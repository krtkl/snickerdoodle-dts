# snickerdoodle Devicetree Sources and Overlays
Devicetree sources and overlays for all snickerdoodle variants and baseboards.

## Generating Devicetree Blobs (.dtb) from Devicetree Source (.dts) using Linux
Clone this snickerdoodle-dts repository:  

`$ sudo git clone -b master https://github.com/krtkl/snickerdoodle-dts`  

Install devicetree compiler:  

`$ sudo apt-get install device-tree-compiler`

Generate .dtb from .dts (make any desired devicetree modifications prior to this step):  

`$ dtc -I dts -O dtb snickerdoodle-dts/<devicetree-source-file-name>.dts -o <your-new-devicetree-blob-name>.dtb`

Copy new devicetree blob to BOOT directory:

`$ sudo cp <your-new-devicetree-blob-name>.dtb /boot/devicetree.dtb`

Reboot! 

## Generating Devicetree Source (.dts) from Devicetree Blobs (.dtb) using Linux
To view the source used to create a given .dtb:

`$ dtc -I dtb -O <devicetree-blob>.dtb -o <devicetree-source>.dts`

*Note: Hierarchical devicetree components (e.g. .dtsi) will be flattened.*
