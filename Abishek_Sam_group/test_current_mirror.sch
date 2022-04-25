v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 130 40 130 60 {
lab=#net1}
N 130 -30 130 -20 {
lab=VDD}
N 130 10 140 10 {
lab=VDD}
N 10 10 90 10 {
lab=#net2}
N 130 120 130 140 {
lab=GND}
C {current_mirror.sym} -40 10 0 0 {name=x1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 110 10 0 0 {name=M1
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
C {devices/vdd.sym} 130 -30 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 130 140 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 140 10 1 0 {name=l3 lab=VDD}
C {devices/ammeter.sym} 130 90 0 0 {name=Vdrain_current}
C {devices/code.sym} -100 60 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"}
C {devices/code_shown.sym} -80 220 0 0 {name="Parameter Sweep"
only_toplevel=true
value="
.tran 0.1u 5u
.save all
"}
