# Digilent Genesys with Xilinx Virtex-5 LX50T

7/8/2023 D. W. Hawkins (dwh@caltech.edu)

### Introduction

This repo contains design examples for the Digilent Genesys board. The Digilent Genesys board contains a Xilinx Virtex-5 SX50T. The designs were implemented using the Xilinx ISE 14.7 Virtual Machine (see *Resources*).

Developing designs targeting the Xilinx Virtex-5 series remains useful, as the series includes the radiation-tolerant Virtex-5QV device. The Virtex-5QV is used in space applications (and requires the use of a different development Virtual Machine).

Xilinx and Digilent no longer manufacture Virtex-5 development boards, however, the boards can be found on eBay from time-to-time. This repo was created after buying four boards off eBay (for $100 each). The Xilinx ML50x series boards can usually be purchased for $200 to $300 each.

The Virtex-5 designs are scripted for easy regeneration. The scripting techniques used in this repository can be applied to any Xilinx ISE design.

### Repository Contents

Directory           | Contents
--------------------|-----------
doc                 | Analysis documentation
designs             | Example designs
refs                | Reference documentation

### Resources

Document | Link
---------|-----
Digilent Genesys documentation and examples | https://digilent.com/reference/programmable-logic/genesys/start
Xilinx Virtex-5 documentation | https://www.xilinx.com/support/documentation-navigation/silicon-devices/mature-products/virtex-5.html
Xilinx design hubs | https://www.xilinx.com/support/documentation-navigation/design-hubs.html
Xilinx ISE 14.7 VM | https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive-ise.html
