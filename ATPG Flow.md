Step-1: Setup design variables, top module, test modes, libraries, netlist paths, and working directory.
Step-2: Configure Modus database settings, logging options, and clean previous test database/results.
Step-3: Build the logic model by reading the synthesized gate-level netlist and standard cell libraries.
Step-4: Create and configure multiple test modes such as:
        * Compression + Decompression
        * Compression Reset
        * Compression Mode
        * Full Scan Mode
Step-5: Build the test models for all defined test modes using assign files and DFT configurations.
Step-6: Verify test structures including:
        * Scan chains
        * Test clocks
        * Constraints
        * X-source analysis
        * DFT rule checks
Step-7: Generate detailed reports for:
        * Scan chains
        * Compression channels
        * Channel IOs
        * Mask scan chains
        * Compression states
Step-8: Build the ATPG fault model for fault simulation and pattern generation.
Step-9: Backup and manage ATPG test databases for further processing.
Step-10: Generate scan-chain verification patterns using scan-chain test generation flow.
Step-11: Generate compressed ATPG patterns for:
         * Stuck-at faults
         * At-Speed / Transition faults
Step-12: Perform fault simulation and analyze fault coverage reports.
Step-13: Export ATPG vectors in Verilog format for:
         * Serial scan simulation
         * Parallel scan simulation
Step-14: Configure scan timing parameters including:
         * Scan period
         * Test period
         * Pulse width
         * Strobe offsets
Step-15: Generate both serial and parallel scan patterns for simulation environment compatibility.
Step-16: Verify ATPG patterns and scan functionality using Xcelium/SimVision simulation flow.
Step-17: Validate:
         * Shift operations
         * Capture operations
         * Compression/decompression logic
         * Scan chain connectivity
Step-18: Release final EDT-compressed ATPG netlist, reports, and verified simulation vectors.
