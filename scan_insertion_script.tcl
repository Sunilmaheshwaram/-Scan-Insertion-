set VER /version name
set REPORT_DIR DFT_${VER}
set NETLIST_DIR /----Directory path----
set CONFORMAL /---Directory path---

set DESIGN name_of_the_design

read_hdl /--path of the netlist--
read_libs "--paths of libraries--"
elaborate $DESIGN - (calling line no.4)
set_db / .information_level /--Integer--
set_db / .dft_scan_style_muxed_scan
set_db / .dft_prefix DFT
set_db / .dft_identify_internal_test_clocks_false
set_db / use_scan_segs_for_non_dft_false
set_db [vfind / -design $DESIGN ] .dft_scan_map_mode tdrc_pass
set_db [vfind / -design $DESIGN]  .dft_connect_ shift_enable_during_mapping_tie_off
set_db [vfind / -design SDESIGN]  .dft_connect_scan_data_pins_during_mapping loopback
set_db [vfind / -design $DESIGN ] .dft_scan_output_preference auto
set_db [vfind / -design $DESIGN ] .dft_lockup_element_type preferred_level_sensitive
set_db [vfind / -design SDESIGN ] .dft_mix_clock_edges_in_scan_chains true

define_test_clock -name scanclk -period 33.33 [get_ports scan_clk]
define_shift_enable -name se -active high scan_en
define_test_mode name tm -active high test_mode
define_test_signal -active high -function compression_enable SCOMP -create_port

check_dft_rule

report_dft_registers           > $REPORT_DIR/pre_dft_setup_before_fix_dft_regs.rpt
report_dft_violations          > $REPORT_DIR/pre_dft_before_fix_dft_drc_report.rpt
report_dft_setup               > $REPORT_DIR/pre_dft_setup_before_fix_dft_ report. rpt

covert_to_scan

define_scan_chain -name top_chain_1 -sdi scan_in_1 -sdo scan_out_1 -shift_enable se -create_ports
define_scan_chain -name top_chain_2 -sdi scan_in_2 -sdo scan_out_2 -shift_enable se -create_ports
define_scan_chain -name top_chain_3 -sdi scan_in_3 -sdo scan_out_3 -shift_enable se -create_ports
define_scan_chain -name top_chain_4 -sdi scan_in_4 -sdo scan_out_4 -shift_enable se -create_ports
define_scan_chain -name top_chain_5 -sdi scan_in_5 -sdo scan_out_5 -shift_enable se -create_ports
define_scan_chain -name top_chain_6 -sdi scan_in_6 -sdo scan_out_6 -shift_enable se -create_ports
define_scan_chain -name top_chain_7 -sdi scan_in_7 -sdo scan_out_7 -shift_enable se -create_ports
define_scan_chain -name top_chain_8 -sdi scan_in_8 -sdo scan_out_8 -shift_enable se -create_ports
define_scan_chain -name top_chain_9 -sdi scan_in_9 -sdo scan_out_9 -shift_enable se -create_ports
define_scan_chain -name top_chain_10 -sdi scan_in_10 -sdo scan_out_10 -shift_enable se -create_ports
define_scan_chain -name top_chain_11 -sdi scan_in_11 -sdo scan_out_11 -shift_enable se -create_ports
define_scan_chain -name top_chain_12 -sdi scan_in_12 -sdo scan_out_12 -shift_enable se -create_ports
define_scan_chain -name top_chain_13 -sdi scan_in_13 -sdo scan_out_13 -shift_enable se -create_ports
define_scan_chain -name top_chain_14 -sdi scan_in_14 -sdo scan_out_14 -shift_enable se -create_ports
define_scan_chain -name top_chain_15 -sdi scan_in_15 -sdo scan_out_15 -shift_enable se -create_ports
define_scan_chain -name top_chain_16 -sdi scan_in_16 -sdo scan_out_16 -shift_enable se -create_ports
define_scan_chain -name top_chain_17 -sdi scan_in_17 -sdo scan_out_17 -shift_enable se -create_ports
define_scan_chain -name top_chain_18 -sdi scan_in_18 -sdo scan_out_18 -shift_enable se -create_ports
define_scan_chain -name top_chain_19 -sdi scan_in_19 -sdo scan_out_19 -shift_enable se -create_ports
define_scan_chain -name top_chain_20 -sdi scan_in_20 -sdo scan_out_20 -shift_enable se -create_ports
define_scan_chain -name top_chain_21 -sdi scan_in_21 -sdo scan_out_21 -shift_enable se -create_ports
define_scan_chain -name top_chain_22 -sdi scan_in_22 -sdo scan_out_22 -shift_enable se -create_ports
define_scan_chain -name top_chain_23 -sdi scan_in_23 -sdo scan_out_23 -shift_enable se -create_ports
define_scan_chain -name top_chain_24 -sdi scan_in_24 -sdo scan_out_24 -shift_enable se -create_ports
define_scan_chain -name top_chain_25 -sdi scan_in_25 -sdo scan_out_25 -shift_enable se -create_ports
define_scan_chain -name top_chain_26 -sdi scan_in_26 -sdo scan_out_26 -shift_enable se -create_ports
define_scan_chain -name top_chain_27 -sdi scan_in_27 -sdo scan_out_27 -shift_enable se -create_ports
define_scan_chain -name top_chain_28 -sdi scan_in_28 -sdo scan_out_28 -shift_enable se -create_ports
define_scan_chain -name top_chain_29 -sdi scan_in_29 -sdo scan_out_29 -shift_enable se -create_ports
define_scan_chain -name top_chain_30 -sdi scan_in_30 -sdo scan_out_30 -shift_enable se -create_ports
define_scan_chain -name top_chain_31 -sdi scan_in_31 -sdo scan_out_31 -shift_enable se -create_ports
define_scan_chain -name top_chain_32 -sdi scan_in_32 -sdo scan_out_32 -shift_enable se -create_ports
define_scan_chain -name top_chain_33 -sdi scan_in_33 -sdo scan_out_33 -shift_enable se -create_ports
define_scan_chain -name top_chain_34 -sdi scan_in_34 -sdo scan_out_34 -shift_enable se -create_ports
define_scan_chain -name top_chain_35 -sdi scan_in_35 -sdo scan_out_35 -shift_enable se -create_ports
define_scan_chain -name top_chain_36 -sdi scan_in_36 -sdo scan_out_36 -shift_enable se -create_ports
define_scan_chain -name top_chain_37 -sdi scan_in_37 -sdo scan_out_37 -shift_enable se -create_ports
define_scan_chain -name top_chain_38 -sdi scan_in_38 -sdo scan_out_38 -shift_enable se -create_ports
define_scan_chain -name top_chain_39 -sdi scan_in_39 -sdo scan_out_39 -shift_enable se -create_ports
define_scan_chain -name top_chain_40 -sdi scan_in_40 -sdo scan_out_40 -shift_enable se -create_ports
define_scan_chain -name top_chain_41 -sdi scan_in_41 -sdo scan_out_41 -shift_enable se -create_ports
define_scan_chain -name top_chain_42 -sdi scan_in_42 -sdo scan_out_42 -shift_enable se -create_ports
define_scan_chain -name top_chain_43 -sdi scan_in_43 -sdo scan_out_43 -shift_enable se -create_ports
define_scan_chain -name top_chain_44 -sdi scan_in_44 -sdo scan_out_44 -shift_enable se -create_ports
define_scan_chain -name top_chain_45 -sdi scan_in_45 -sdo scan_out_45 -shift_enable se -create_ports
define_scan_chain -name top_chain_46 -sdi scan_in_46 -sdo scan_out_46 -shift_enable se -create_ports
define_scan_chain -name top_chain_47 -sdi scan_in_47 -sdo scan_out_47 -shift_enable se -create_ports
define_scan_chain -name top_chain_48 -sdi scan_in_48 -sdo scan_out_48 -shift_enable se -create_ports
define_scan_chain -name top_chain_49 -sdi scan_in_49 -sdo scan_out_49 -shift_enable se -create_ports
define_scan_chain -name top_chain_50 -sdi scan_in_50 -sdo scan_out_50 -shift_enable se -create_ports

connect_scan_chains

compress_scan_chains -ratio 25 -decompressor broadcast -compressor xor
report_dft_registers  > $REPORT_DIR/post_dft_regs.rpt
report_dft_violations > $REPORT_DIR/post_dft_drc_report.rpt
report_scan_setup     > $REPORT_DIR/post_dft_setup_before_fix_dft_report.rpt
check_design -multiple_driver
report_clocks     > $REPORT_DIR/clocks.rpt
get_ports         > $REPORT_DIR/port.rpt

report_dft_chains > $REPORT_DIR/chains.rpt

report_dft_registers -dont_scan - abstract_dont_scan
write scandef -version 5.5 > $REPORT_ DIR/post_dft_scandef.def
write_hdl > $NETLIST_DIR/${DESIGN}_netlist_scn.v
write_dft_atpg -compression -directory $REPORT_DIR/modus -library --library path--/slow.Lib
write_do_lec -golden design /--path--/netlist_cp.v -revised_design $NETLIST_DIR/${DESIGN}_netlist_scn.v -logfile --path--/Lec.Log
write_hdl -abstract           > design logic abstract
write_db -all root attributes > scan.db
write_dft abstract model -ctl > $REPORT_DIR/opmisrctl.ctl

report_area -depth 2         > $REPORT_DIR/area.rpt
report_gates                 > $REPORT_DIR/gates.rpt
report_timing -lint -verbose > $REPORT_DIR/timing.rpt
report_qor                   > $REPORT_DIR/quality.rpt

