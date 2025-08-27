v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 960 -100 1760 300 {flags=graph
y1=-0.0027
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.1235107e-09
x2=1.2033227e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="pin_out
out
in
pin_out_parax"
color="4 5 9 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 970 360 1770 760 {flags=graph
y1=-0.000268
y2=0.001942
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.1235107e-09
x2=1.2033227e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(vmeas)
i(vmeas1)"
color="9 6"
dataset=-1
unitx=1
logx=0
logy=0
}
N 450 710 550 710 {
lab=VSS}
N 450 690 550 690 {
lab=#net1}
N 550 530 550 570 {
lab=VDD}
N 450 730 640 730 {
lab=out}
N 60 690 150 690 {
lab=in}
N 700 730 740 730 {
lab=pin_out}
N 740 730 740 780 {
lab=pin_out}
N 740 730 840 730 {
lab=pin_out}
N 550 570 550 630 {
lab=VDD}
N 510 1230 610 1230 {
lab=VSS}
N 510 1210 610 1210 {
lab=#net2}
N 610 1050 610 1090 {
lab=VDD}
N 510 1250 700 1250 {
lab=out}
N 120 1210 210 1210 {
lab=in}
N 760 1250 800 1250 {
lab=pin_out_parax}
N 800 1250 800 1300 {
lab=pin_out_parax}
N 800 1250 900 1250 {
lab=pin_out_parax}
N 610 1090 610 1150 {
lab=VDD}
C {devices/code.sym} -470 0 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -210 50 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} -100 -90 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -30 -90 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_wire.sym} -100 -120 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -30 -120 0 0 {name=p2 sig_type=std_logic lab=vss
}
C {devices/gnd.sym} -100 -60 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -30 -60 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 550 530 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 550 710 2 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/gnd.sym} 740 840 0 0 {name=l3 lab=GND}
C {devices/simulator_commands_shown.sym} 70 230 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.options savecurrents
vin in 0 pulse 0 1.8 5n 1n 1n 50n 100n

.control
save all
tran 100p 200n

write testbench_2.raw

.endc

 
"}
C {devices/launcher.sym} -210 130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/testbench.raw tran"
}
C {double_inverter.sym} 300 710 0 0 {name=x1}
C {devices/res.sym} 670 730 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 740 810 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 550 730 2 0 {name=p6 sig_type=std_logic lab=out
}
C {devices/ipin.sym} 60 690 0 0 {name=p8 lab=in}
C {devices/ammeter.sym} 550 660 0 0 {name=Vmeas savecurrent=true}
C {devices/lab_wire.sym} 610 1050 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 610 1230 2 0 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/gnd.sym} 800 1360 0 0 {name=l4 lab=GND}
C {double_inverter.sym} 360 1230 0 0 {name=x2

schematic=double_inverter_parax.sim

spice_sym_def="tcleval(.include [file normalize ../mag/double_inverter.sim.spice])"

tclcommand="textwindow [file normalize ../mag/double_inverter.sim.spice]"}
C {devices/res.sym} 730 1250 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 800 1330 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 610 1250 2 0 {name=p11 sig_type=std_logic lab=out
}
C {devices/ipin.sym} 120 1210 0 0 {name=p12 lab=in}
C {devices/ammeter.sym} 610 1180 0 0 {name=Vmeas1 savecurrent=true}
C {devices/opin.sym} 840 730 0 0 {name=p13 lab=pin_out
}
C {devices/opin.sym} 900 1250 0 0 {name=p7 lab=pin_out_parax
}
