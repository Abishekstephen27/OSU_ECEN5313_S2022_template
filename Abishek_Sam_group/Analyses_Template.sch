v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {This must be included in
your top level design to be
able to run Ngspice simulations} 90 -530 0 0 0.3 0.3 {}
T {This annotate symbol
is used with the spice
probes found in devices.
ctlr + left click the arrow
to annotate the probes in the
schematic. MUST have run Ngspice
sim in batch mode before hand,
and have a .raw file in you PWD.} 120 -140 0 0 0.3 0.3 {}
T {Simulation Templates} 590 -620 0 0 0.6 0.6 {layer=8}
T {Voltage Source Templates} 570 -890 0 0 0.6 0.6 {layer=8}
T {PWL outputs a voltage at 
the specified time.

FORMAT:
PWL(t0 V0 t1 V1 ...)} 570 -770 0 0 0.2 0.2 {layer=4}
T {PULSE generates a consistent pulse
forever. The voltage source above
outputs 0 for 4ns, then rises to 5v
in 1ps, stays at 5v for 4ns, then falls
back to 0 in 1ps. 

FORMAT:
PULSE V1 V2 delay rise fall pulse_width period} 780 -770 0 0 0.2 0.2 {layer=4}
T {FORMAT:
.tran [tstep] [tstop]} 580 -480 0 0 0.2 0.2 {layer=4}
T {FORMAT:
.dc [src] [Vstart] [Vstop] [Vstep]} 570 -350 0 0 0.2 0.2 {layer=4}
T {FORMAT:
.dc [src0] [Vstart0] [Vstop0] [Vstep0] 
  + [src1] [Vstart1] [Vstop1] [Vstep1]} 790 -350 0 0 0.2 0.2 {layer=4}
T {FORMAT:
.ac dec [pts_per_dec] [fstart] [fstop]} 1070 -400 0 0 0.2 0.2 {layer=4}
T {Diode Model} 1150 -890 0 0 0.6 0.6 {layer=8}
T {There is no primitive diode model in Xschem.
To use a diode in a schematic, you can use
the one above provided by SKY130.} 1150 -780 0 0 0.2 0.2 {layer=4}
T {This does the exact same thing as the
one above except it writes a raw file
in ASCII format. This can later be
exported into another program if needed.} 1070 -110 0 0 0.2 0.2 {layer=4}
T {Always Include in Schematics!!} 50 -580 0 0 0.6 0.6 {layer=8}
T {Include in Schematic if you want} 40 -230 0 0 0.6 0.6 {layer=8}
C {devices/code_shown.sym} 570 -400 0 0 {name="DC Parameter Sweep"
only_toplevel=true
place=end
value="
.dc V1 0 5 0.1
.save all
"}
C {devices/code_shown.sym} 1060 -540 0 0 {name="AC Simulation to Plot Frequency Response"
only_toplevel=true
place=end
value="
.ac dec 20 1 1e6
.save all

.control
run
plot db(v(Vout)) 180*cph(v(Vout))/pi
.endc
"}
C {devices/code_shown.sym} 790 -400 0 0 {name="DC Sweep of 2 Parameters"
only_toplevel=true
place=end
value="
.dc V1 0 5 0.1 R1 1k 10k 100
.save all
"}
C {devices/code_shown.sym} 580 -540 0 0 {name="Transient simulation"
only_toplevel=true
place=end
value="
.tran 0.1n 10n
.save all
"}
C {devices/code_shown.sym} 810 -540 0 0 {name="Operation Point Analysis"
only_toplevel=true
place=end
value="
.op
.save all
"}
C {devices/code.sym} 140 -440 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt"
}
C {devices/launcher.sym} 200 -170 0 0 {name=h1
descr=Annotate 
tclcommand="ngspice::annotate"}
C {devices/title-2.sym} -310 90 0 0 {name=l1 author="Ryan Ridley" rev=1.0}
C {devices/vsource.sym} 590 -810 0 0 {name=V2 value="PWL(0n 0 5n 3.6 7n 1.8 13.1n 5)"}
C {devices/vsource.sym} 800 -810 0 0 {name=V1 value="PULSE(0 5 0 1p 1p 4n 8n)"}
C {sky130_fd_pr/diode.sym} 1220 -820 0 0 {name=D1
model=diode_pw2nd_05v5
area=1e12
}
C {devices/code_shown.sym} 1060 -280 0 0 {name="AC Simulation to write raw file in ASCII format"
only_toplevel=true
place=end
value="
.ac dec 20 1 1e6
.save all

.control
set filetype=ascii
run
plot db(v(Vout)) 180*cph(v(Vout))/pi
write myschematic.raw all
.endc
"}
