Step-1: Read gate-level synthesised netlist and standard cell libraries.
Step-2: Elaborate the design.
Step-3: Define DFT specifications like type of scan, test mode, scan enable, scan clock, etc..
Step-3: Perform DFT rule checks and analyse the scan reports.
Step-4: Perform DRC(Design Rule Check) and fix violations if raised.
Step-5: Define scan chains based on the flip-flops count in the design.
Step-6: After defining the scan chains, connect the scan chains in this step.
Step-7: As we are proceeding with the EDT logic, we have to define the compression ratio, type of decompressor & compressor and masking logic(for more fault coverage).
Step-8: check for the DFT reports, scan setup, clocks,etc..
Step-9: Now write out the scan def file, EDT/compressed scan netlist, ATPG do file, data base, LEC file, reports, etc..
