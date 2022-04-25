v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 0 50 0 80 {
lab=GND}
N -0 -50 0 -10 {
lab=Vbias}
N -0 -160 -0 -110 {
lab=VDD}
N 40 -80 60 -80 {
lab=Vbias}
N 60 -80 60 -40 {
lab=Vbias}
N 0 -40 60 -40 {
lab=Vbias}
N -20 -80 0 -80 {
lab=VDD}
N 60 -80 80 -80 {
lab=Vbias}
C {devices/gnd.sym} 0 80 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 0 -160 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 20 -80 0 1 {name=M1
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
C {devices/isource.sym} 0 20 0 0 {name=I0 value=3u}
C {devices/vdd.sym} -20 -80 3 0 {name=l3 lab=VDD}
C {devices/code.sym} -260 -180 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"}
C {devices/code_shown.sym} -240 -20 0 0 {name="Parameter Sweep"
only_toplevel=true
value="
.dc I0 0u 10u 0.1u
.save all
"}
C {devices/opin.sym} 80 -80 0 0 {name=p1 lab=Vbias}
