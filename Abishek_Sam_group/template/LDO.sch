v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -100 190 -100 230 {
lab=GND}
N -100 230 80 230 {
lab=GND}
N 80 190 80 230 {
lab=GND}
N 0 230 0 250 {
lab=GND}
N -60 160 40 160 {
lab=#net1}
N -30 110 -30 160 {
lab=#net1}
N -100 110 -30 110 {
lab=#net1}
N -100 -140 -100 -120 {
lab=#net2}
N -100 -140 80 -140 {
lab=#net2}
N 80 -140 80 -120 {
lab=#net2}
N -10 -180 -10 -140 {
lab=#net2}
N -10 -270 -10 -240 {
lab=VDD}
N -220 -220 -200 -220 {
lab=Vbais_2}
N -200 -90 -140 -90 {
lab=Vplus}
N 120 -90 160 -90 {
lab=Vfb}
N -360 -40 -360 -20 {
lab=Vplus}
N -370 -40 -360 -40 {
lab=Vplus}
N -360 40 -360 60 {
lab=GND}
N 340 -100 380 -100 {
lab=Vcomsrc_out}
N 440 -100 480 -100 {
lab=#net3}
N 340 -160 600 -160 {
lab=Vcomsrc_out}
N 640 60 640 120 {
lab=Vfb}
N 540 -100 640 -100 {
lab=Vldo_out}
N 640 -100 800 -100 {
lab=Vldo_out}
N 800 -100 800 -40 {
lab=Vldo_out}
N 800 -100 910 -100 {
lab=Vldo_out}
N 910 -100 910 -40 {
lab=Vldo_out}
N 600 90 640 90 {
lab=Vfb}
N -280 40 -280 50 {
lab=GND}
N -280 -30 -280 -20 {
lab=VDD}
N -100 -60 -100 30 {
lab=#net4}
N -100 90 -100 130 {
lab=#net1}
N 80 90 80 130 {
lab=#net5}
N 80 -60 80 30 {
lab=Vdiff_out}
N 80 -30 100 -30 {
lab=Vdiff_out}
N 340 120 340 130 {
lab=GND}
N 340 -180 340 -90 {
lab=Vcomsrc_out}
N 320 -140 340 -140 {
lab=Vcomsrc_out}
N 340 -30 340 -10 {
lab=#net6}
N 340 -10 340 60 {
lab=#net6}
N 300 0 300 90 {
lab=Vdiff_out}
N 80 0 300 0 {
lab=Vdiff_out}
N 640 -100 640 -80 {
lab=Vldo_out}
N 640 -130 640 -100 {
lab=Vldo_out}
N 640 -20 640 -0 {
lab=#net7}
N 800 20 800 40 {
lab=#net8}
N -110 160 -100 160 {
lab=GND}
N 80 160 90 160 {
lab=GND}
N 340 90 350 90 {
lab=GND}
N -10 -210 -0 -210 {
lab=VDD}
N 340 -210 350 -210 {
lab=VDD}
N 640 -160 650 -160 {
lab=VDD}
N 70 -90 80 -90 {
lab=VDD}
N -100 -90 -90 -90 {
lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -80 160 0 1 {name=M1
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/vdd.sym} -10 -270 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 0 250 0 0 {name=l2 lab=GND}
C {devices/res.sym} 410 -100 1 0 {name=R1
value=30k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 510 -100 1 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {current_mirror.sym} -270 -220 0 0 {name=x1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 60 160 0 0 {name=M4
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -200 -220 0 1 {name=l3 sig_type=std_logic lab=Vbais_2}
C {devices/lab_pin.sym} -50 -210 0 0 {name=l4 sig_type=std_logic lab=Vbais_2}
C {devices/lab_pin.sym} -200 -90 0 0 {name=l5 sig_type=std_logic lab=Vplus}
C {devices/lab_pin.sym} 160 -90 0 1 {name=l6 sig_type=std_logic lab=Vfb}
C {devices/vsource.sym} -360 10 0 0 {name=V1 value=0.6}
C {devices/lab_pin.sym} -370 -40 0 0 {name=l7 sig_type=std_logic lab=Vplus}
C {devices/gnd.sym} -360 60 0 0 {name=l8 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 320 90 0 0 {name=M7
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 300 -210 0 0 {name=l9 sig_type=std_logic lab=Vbais_2}
C {devices/vdd.sym} 340 -240 0 0 {name=l10 lab=VDD}
C {devices/gnd.sym} 340 130 0 0 {name=l11 lab=GND}
C {devices/res.sym} 640 30 2 0 {name=R2
value=500k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 640 150 2 0 {name=R3
value=500k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 640 180 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 640 -190 0 0 {name=l13 lab=VDD}
C {devices/res.sym} 800 70 2 0 {name=R4
value=20k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 910 -10 2 0 {name=C2
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 800 100 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} 910 20 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} 600 90 0 0 {name=l16 sig_type=std_logic lab=Vfb}
C {devices/vsource.sym} -280 10 0 0 {name=V2 value="5 AC 1"}
C {devices/vdd.sym} -280 -30 0 0 {name=l17 lab=VDD}
C {devices/gnd.sym} -280 50 0 0 {name=l18 lab=GND}
C {devices/code_shown.sym} 290 -450 0 0 {name="AC Simulation"
only_toplevel=true
value="
.ac dec 20 1 1e6
.save all

.control
run
plot db(v(Vldo_out)) 180*cph(v(Vldo_out))/pi
.endc
"}
C {devices/code.sym} 120 -430 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"}
C {devices/lab_pin.sym} 100 -30 0 1 {name=l19 sig_type=std_logic lab=Vdiff_out}
C {devices/lab_pin.sym} 320 -140 0 0 {name=l20 sig_type=std_logic lab=Vcomsrc_out}
C {devices/lab_pin.sym} 910 -100 0 1 {name=l21 sig_type=std_logic lab=Vldo_out}
C {devices/ammeter.sym} -100 60 0 0 {name=Vleft_diff_branch_current}
C {devices/ammeter.sym} 80 60 0 0 {name=Vright_diff_branch_current}
C {devices/ammeter.sym} 340 -60 0 0 {name=Vcomsrc_current}
C {devices/ammeter.sym} 640 -50 0 0 {name=Vresistordiv_current}
C {devices/ammeter.sym} 800 -10 0 0 {name=Vload_current}
C {devices/gnd.sym} -110 160 1 0 {name=l22 lab=GND}
C {devices/gnd.sym} 90 160 3 1 {name=l23 lab=GND}
C {devices/gnd.sym} 350 90 3 1 {name=l24 lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -30 -210 0 0 {name=M9
L=0.5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -120 -90 0 0 {name=M2
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 100 -90 0 1 {name=M3
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 320 -210 0 0 {name=M5
L=0.5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 620 -160 0 0 {name=M6
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/vdd.sym} 0 -210 1 0 {name=l25 lab=VDD}
C {devices/vdd.sym} 350 -210 1 0 {name=l26 lab=VDD}
C {devices/vdd.sym} 650 -160 1 0 {name=l27 lab=VDD}
C {devices/vdd.sym} 70 -90 3 1 {name=l28 lab=VDD}
C {devices/vdd.sym} -90 -90 1 0 {name=l29 lab=VDD}
