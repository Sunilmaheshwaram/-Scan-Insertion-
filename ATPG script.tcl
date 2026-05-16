set ver /--name--;
set top /--top module name--;
set tm1 COMPRESSION DECOMP;
set tm2 COMPRESSION_DECOMP_RST;
set tm3 COMPRESSION;
set tm4 FULLSCAN;
set exp /name;
set path /--path--;
set techlib /--library path--;
set netlist /--netlist path--;
set db workdir spath/sa_compression/Sver;
set WORKDIR [get_db workdir]
# Configure the database
set option stdout summary;        # Only print a summary for each command to the terminal
                                  # Logs contain the complete command output
set ::env(CDS LIC_REPORT) yes
set db stop_on severity error;
file delete -force $WORKDIR/tbdata;
file delete -force $WORKDIR/testresults;
BUILD THE LOGIC MODEL
# Logs contain the complete command output
# Delete Test Database
# Delete Test Output Files/Logs

# BUILD THE LOGIC MODEL
build model \
- cell             $top \
- techlib          $techlib \
- designsource    $netlist \
- allowmissingmodules yes \
- verbose yes \
- messagecounteach 100 \

#BUILD THE TEST MODEL-COMP_DOMP
build_testmode \
- testmode   $tml \
- assignfile $path/--path-- \
- modedef   $tml \
- delaymode zero \
- allowflushedmeasures yes \
- reportremovedscanelements yes \
- noncontactedbidiatz yes \
- keepcorruptscanelements warning \

# BUILD THE TEST MODEL-COMP_DCOMP_RST
build_testmode \
- testmode   $tm2 \
- assignfile $path/--path-- \
- modedef     $tm3 \
- delaymode zero \
- allowflushedmeasures yes \
- reportremovedscanelements yes \
- noncontactedbidiatz yes \
- keepcorruptscanelements warning \

# BUILD THE TEST MODEL-COMP
build_testmode \
- testmode   $tm3 \
- assignfile $path/--path-- \
- modedef     $tm3
- delaymode zero \
- allowflushedmeasures yes \
- reportremovedscanelements yes \
- noncontactedbidiatz yes \
- keepcorruptscanelements warning \

# BUILD THE TEST MODEL-FULLSCAN
build_testmode \
- testmode   $ta4 \
- assignfile $path/--path-- \
- modedef     $tn4 \
- delaysode zero \
- allowflushedmeasures yes \
- reportremovedscanelements yes \
- noncontactedbidiatz yes \
- keepcorruptscanelements warning \

# VERIFY THE TEST MODEL
verify_test_structures \
- messagecount  TSV-016=10, TSV-024=10, TSV-315=10, TSV-027=10 \
- testmode $tml \
- clockanalysis yes \
- testxsource yes \
- reruntests yes \
- reportstatus yes \
- reportconstraints yes \
- testclockchopper no \
- testclocksignalraces no \
- megraces yes \

# REPORT THE TEST MODEL
report_test_structures \
- testmode  $tm1\
- reportscanchain all \
- reportchannelio yes \
- reportchannelmaskscanchain yes \
- reportchannelmaskstate yes \

# REPORT THE TEST MODEL
report_test_structures \
- testmode $tml\
- reportscanchain all \
- reportchannelio yes \
- reportchannelmaskscanchain yes \
- reportchannelmaskstate yes \

# REPORT THE TEST MODEL
report_test_structures \
- testmode $tm2 \
- reportscanchain all \
- reportchannelio yes
- reportchannelmaskscanchain yes \
- reportchannelmaskstate yes \

# REPORT THE TEST MODEL
report_test_structures \
- testmode $tm4 \
- reportscanchain all \

# BUILD THE FAULT MODEL
build_faultmodel \
- includedynamic no \
file copy -force $WORKDIR/tbdata $WORKDIR/tbdata_bfm;    # Copy Test Database
set hostname [info hostname]

# ATPG - CHAIN TEST GENERATION
create_scanchain_tests \
- experiment $exp.chain \

# VERILOG VECTORS - For PARALLEL Simulation
write_vectors \
- Inexperinent   $exp. Chain \
- testaode       $tm1 \
- Language verilog \
- scanformat serial \
- scanstrobeoffset 2 \
- teststrobeoffset 2 \
- scanpulsewidth 9 \
- testpulsewidth 9 \
- scanperiod 28 \
- testperiod 20 \
- outputfilenane $top.$exp.$tml.chain serial \
- exportdir      $path/--serial pattern directory path-- \

# VERILOG VECTORS - For PARALLEL5 Simulation
write_vectors \
- Inexperiment   $exp.chain \
- testmode       $tml \
- Language verilog \
- scanformat parallel \
- includelatchnames yes \
- explicitshifts 5 \
- scanstrobeoffset 2 \
- teststrobeoffset 2 \
- scanpulsewidth 9 \
- testpulsewidth 9 \
- scanperiod 20 \
- testperiod 20 \
- outputfilename $top.$exp.$tml.chain_parallel5 \
- exportdir      $path/--parallel pattern directory path-- \

# VERILOG VECTORS - For PARALLEL Simulation
write_vectors \
- inexperiment $exp.chain \
- testmode     $tml \
- language verilog \
