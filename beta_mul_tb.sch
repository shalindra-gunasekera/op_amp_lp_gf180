v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -20 120 -20 140 {lab=GND}
N -20 -20 -20 -10 {lab=VDD}
N 20 -120 20 -70 {lab=#net1}
N 60 -150 60 -110 {lab=#net1}
N 20 -110 60 -110 {lab=#net1}
N 60 -140 230 -140 {lab=#net1}
N 230 -150 230 -140 {lab=#net1}
N 190 -120 190 -70 {lab=Vdrop}
N 190 -10 190 20 {lab=GND}
N 20 -200 190 -200 {lab=VDD}
N 190 -200 190 -180 {lab=VDD}
N 20 -200 20 -180 {lab=VDD}
N -10 -150 20 -150 {lab=VDD}
N -20 -200 -20 -150 {lab=VDD}
N -20 -200 20 -200 {lab=VDD}
N -20 -150 -10 -150 {lab=VDD}
N 150 -150 190 -150 {lab=VDD}
N 150 -200 150 -150 {lab=VDD}
N 90 -230 90 -200 {lab=VDD}
N -140 40 -140 60 {lab=GND}
C {beta_mul_SC_module.sym} 0 50 0 0 {name=x1}
C {vdd.sym} -20 -20 0 0 {name=l1 lab=VDD}
C {gnd.sym} -20 140 0 0 {name=l2 lab=GND}
C {gf180mcu_fd_pr/pfet_03v3.sym} 40 -150 0 1 {name=M1
L=0.3u
W=24u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {gf180mcu_fd_pr/pfet_03v3.sym} 210 -150 0 1 {name=M2
L=0.3u
W=24u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {res.sym} 190 -40 0 0 {name=R1
value=\{rtest\}
footprint=1206
device=resistor
m=1}
C {gnd.sym} 190 20 0 0 {name=l3 lab=GND}
C {vdd.sym} 90 -230 0 0 {name=l4 lab=VDD}
C {vsource.sym} 20 -40 0 0 {name=Vsense value=0 savecurrent=false}
C {vsource.sym} -140 10 0 0 {name=V2 value=3.3 savecurrent=false}
C {vdd.sym} -140 -20 0 0 {name=l5 lab=VDD}
C {gnd.sym} -140 60 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 190 -80 0 0 {name=p1 sig_type=std_logic lab=Vdrop}
C {devices/code_shown.sym} 240 70 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 240 -30 0 0 {name=SAVE only_toplevel=true
value="
.save all
.options savecurrents
"}
C {code_shown.sym} -410 -300 0 0 {name=SPICE only_toplevel=false value="

.param rtest=100k
.csparam rdiv = \{rtest\}
.save all
.save @m.xr1.m0[r]
.options savecurrents

.op
.control
tran 1p 10p
plot i(Vsense) v(Vdrop)/($&rdiv)
.endc
"}
