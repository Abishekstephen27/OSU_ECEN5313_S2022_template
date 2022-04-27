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
N 640 -280 640 -240 {
lab=Vout}
N 640 -280 730 -280 {
lab=Vout}
N 730 -280 730 -240 {
lab=Vout}
N 600 -10 730 -10 {
lab=GND}
N 640 -180 640 -150 {
lab=#net1}
N 640 -150 640 -120 {
lab=#net1}
N 640 -60 640 -10 {
lab=GND}
N 140 -280 180 -280 {
lab=Vin}
N 130 -240 130 -200 {
lab=Vcontrol}
N 130 -240 210 -240 {
lab=Vcontrol}
N 130 -140 130 -10 {
lab=GND}
N 270 -50 270 -10 {
lab=GND}
N 270 -280 270 -110 {
lab=#net2}
N 130 -220 230 -220 {
lab=Vcontrol}
N 230 -220 230 -80 {
lab=Vcontrol}
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
N 730 -180 730 -130 {
lab=#net3}
N 730 -70 730 -10 {
lab=GND}
N 240 -280 340 -280 {
lab=#net2}
N 400 -280 490 -280 {
lab=#net4}
N 550 -280 640 -280 {
lab=Vout}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 250 -80 0 0 {name=M1
L=0.5
W=20
nf=1
mult=420
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
mult=1580
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
value=1u
footprint=1206
device="ceramic capacitor"}
C {devices/ind.sym} 520 -280 1 0 {name=L1
m=1
value=4.7u
footprint=1206
device=inductor}
C {devices/res.sym} 730 -210 0 0 {name=R1
value=4.5
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 30 -130 0 0 {name=V1 value=3.6}
C {devices/gnd.sym} 400 -10 0 0 {name=l1 lab=GND}
C {devices/res.sym} 370 -280 3 0 {name=R2
value=1.5m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 640 -90 0 0 {name=R3
value=10m
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 130 -170 0 0 {name=V2 value="pulse(0 3.6 0 0.01u 0.01u 0.445u 1u)"}
C {devices/code.sym} -160 -340 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"}
C {devices/lab_pin.sym} 30 -260 0 0 {name=l2 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 730 -270 0 1 {name=l3 sig_type=std_logic lab=Vout}
C {devices/ammeter.sym} 730 -100 0 0 {name=VIout}
C {devices/code_shown.sym} -480 -170 0 0 {name=Power Calculation
only_toplevel=true
place=end
value="
.tran 1u 200u
.save all

 .control
        run
        meas tran idd_ave INTEG i(V1) from=190u to=191u
        meas tran ido_ave INTEG i(VIout) from=190u to=191u
        let power_in = (idd_ave)*3.6
        let power_out = (ido_ave)*1.8
        let nu = power_out/power_in*100
        print power_in
        print power_out
        print nu
 .endc
"}
C {devices/lab_pin.sym} 130 -240 0 0 {name=l4 sig_type=std_logic lab=Vcontrol}
