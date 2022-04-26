v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 30 -240 30 -160 {
lab=Vin}
N 30 -280 30 -240 {
lab=Vin}
N 30 -280 140 -280 {
lab=Vin}
N 210 -10 480 -10 {
lab=GND}
N 30 -100 30 -10 {
lab=GND}
N 30 -10 210 -10 {
lab=GND}
N 480 -10 600 -10 {
lab=GND}
N 390 -280 450 -280 {
lab=#net1}
N 510 -280 640 -280 {
lab=Vout}
N 640 -280 640 -240 {
lab=Vout}
N 640 -280 730 -280 {
lab=Vout}
N 730 -280 730 -240 {
lab=Vout}
N 730 -180 730 -10 {
lab=GND}
N 600 -10 730 -10 {
lab=GND}
N 640 -180 640 -150 {
lab=#net2}
N 640 -150 640 -120 {
lab=#net2}
N 640 -60 640 -10 {
lab=GND}
N 140 -280 180 -280 {
lab=Vin}
N 240 -280 330 -280 {
lab=#net3}
N 130 -240 130 -200 {
lab=#net4}
N 130 -240 210 -240 {
lab=#net4}
N 130 -140 130 -10 {
lab=GND}
N 270 -50 270 -10 {
lab=GND}
N 270 -280 270 -110 {
lab=#net3}
N 130 -220 230 -220 {
lab=#net4}
N 230 -220 230 -80 {
lab=#net4}
N 210 -320 210 -280 {
lab=Vin}
N 160 -320 210 -320 {
lab=Vin}
N 160 -320 160 -280 {
lab=Vin}
N 270 -80 310 -80 {
lab=GND}
N 310 -80 310 -10 {
lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 250 -80 0 0 {name=M1
L=0.5
W=20
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 210 -260 3 0 {name=M2
L=0.5
W=20
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
C {devices/capa.sym} 640 -210 0 0 {name=C1
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {devices/ind.sym} 360 -280 1 0 {name=L1
m=1
value=4.7u
footprint=1206
device=inductor}
C {devices/res.sym} 730 -210 0 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 30 -130 0 0 {name=V1 value=3.6}
C {devices/gnd.sym} 400 -10 0 0 {name=l1 lab=GND}
C {devices/res.sym} 480 -280 3 0 {name=R2
value=48m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 640 -90 0 0 {name=R3
value=1.59
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 130 -170 0 0 {name=V2 value="pulse(0 3.6 0 0.01u 0.01u 0.5u 1u)"}
C {devices/code.sym} -160 -340 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"}
C {devices/code_shown.sym} -180 -150 0 0 {name="Transient simulation"
only_toplevel=true
place=end
value="
.tran 0.1u 10u
.save all
"}
C {devices/lab_pin.sym} 30 -260 0 0 {name=l2 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 730 -270 0 1 {name=l3 sig_type=std_logic lab=Vout}
