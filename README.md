# Analogue Pocket - openFPGA example - PipelineC Blink Module

This project is a small modification of the [core-template](https://github.com/open-fpga/core-template) project. It includes a VHDL module generated with [PipelineC](https://github.com/JulianKemmerer/PipelineC), using the following C code as input: 
```
#include "uintN_t.h"  // uintN_t types for any N

uint27_t counter; // Count to 74250000 iterations * 13.468ns each ~= 1sec
uint1_t led; // LED on off state

// 'Called'/'Executing' every 13.468ns (74.25MHz)
#pragma MAIN_MHZ blink 74.25
uint1_t blink() {
  if(counter==(74250000-1)) { // If reached 1 second
	led = !led; // Toggle led
	counter = 0; // Reset counter
  } else {
	counter += 1;
  }
  return led;
}
```

Running this core on an Analogue pocket will use this module to alternate between a red and black screen every 1 second.

# Core Template
This is a template repository for a core which contains all of the core definition JSON files and FPGA starter code.

## Legal
Analogue’s Development program was created to further video game hardware preservation with FPGA technology. Analogue Developers have access to Analogue Pocket I/O’s so Developers can utilize cartridge adapters or interface with other pieces of original or bespoke hardware to support legacy media. Analogue does not support or endorse the unauthorized use or distribution of material protected by copyright or other intellectual property rights.
