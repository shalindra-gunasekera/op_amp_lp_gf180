v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Secondary ESD
Not sure what L,W
refer to on the diode

R~
from R_sheet = 310 Ohms/square
Need to change R to lower
100-200 Ohm} -80 -370 0 0 0.15 0.15 {}
T {Modified beta-multiplier 
Current reference
(see Baker cMOS ch20)} 30 0 0 0 0.2 0.2 {}
N 10 -210 10 -180 {lab=VDD}
N 10 -100 10 -90 {lab=GND}
N 60 -140 90 -140 {lab=#net1}
N -10 -90 -10 -60 {lab=#net2}
N -50 -70 -50 -60 {lab=VDD}
N -70 -70 -50 -70 {lab=VDD}
N 10 -90 40 -90 {lab=GND}
N -20 -210 10 -210 {lab=VDD}
N -70 70 -50 70 {lab=GND}
N -460 80 -460 100 {lab=GND}
N -520 100 -460 100 {lab=GND}
N -500 50 -500 100 {lab=GND}
N -460 50 -450 50 {lab=GND}
N -450 50 -450 100 {lab=GND}
N -460 100 -450 100 {lab=GND}
N -520 0 -460 0 {lab=Vim}
N -460 0 -460 20 {lab=Vim}
N -460 -20 -460 0 {lab=Vim}
N -500 -90 -500 -50 {lab=VDD}
N -460 -90 -460 -80 {lab=VDD}
N -460 -90 -450 -90 {lab=VDD}
N -450 -90 -450 -50 {lab=VDD}
N -460 -50 -450 -50 {lab=VDD}
N -460 -220 -460 -200 {lab=GND}
N -500 -250 -500 -200 {lab=GND}
N -460 -250 -450 -250 {lab=GND}
N -450 -250 -450 -200 {lab=GND}
N -460 -200 -450 -200 {lab=GND}
N -520 -300 -460 -300 {lab=Vip}
N -460 -300 -460 -280 {lab=Vip}
N -460 -320 -460 -300 {lab=Vip}
N -520 -350 -500 -350 {lab=VDD}
N -520 -390 -520 -350 {lab=VDD}
N -520 -390 -460 -390 {lab=VDD}
N -460 -390 -460 -380 {lab=VDD}
N -460 -390 -450 -390 {lab=VDD}
N -450 -390 -450 -350 {lab=VDD}
N -460 -350 -450 -350 {lab=VDD}
N -500 -200 -460 -200 {lab=GND}
N -500 -90 -460 -90 {lab=VDD}
N -460 0 -340 0 {lab=Vim}
N -280 -0 -230 0 {lab=Vm}
N -230 -20 -230 -0 {lab=Vm}
N -230 0 -230 20 {lab=Vm}
N -230 80 -230 100 {lab=GND}
N -230 -90 -230 -80 {lab=VDD}
N -450 -90 -230 -90 {lab=VDD}
N -450 100 -230 100 {lab=GND}
N -310 20 -310 100 {lab=GND}
N -310 -280 -310 -200 {lab=GND}
N -450 -200 -310 -200 {lab=GND}
N -460 -300 -350 -300 {lab=Vip}
N -350 -300 -340 -300 {lab=Vip}
N -280 -300 -230 -300 {lab=Vp}
N -230 -320 -230 -300 {lab=Vp}
N -230 -300 -230 -280 {lab=Vp}
N -230 -220 -230 -200 {lab=GND}
N -230 -390 -230 -380 {lab=VDD}
N -450 -390 -230 -390 {lab=VDD}
N -310 -200 -230 -200 {lab=GND}
N 90 -140 170 -140 {lab=#net1}
N 170 -150 170 -140 {lab=#net1}
N 170 -160 170 -150 {lab=#net1}
N 170 -140 170 -120 {lab=#net1}
N 370 -60 370 -40 {lab=GND}
N 410 -90 410 -40 {lab=GND}
N 360 -90 370 -90 {lab=GND}
N 360 -90 360 -40 {lab=GND}
N 360 -40 370 -40 {lab=GND}
N 370 -140 430 -140 {lab=Vo}
N 370 -140 370 -120 {lab=Vo}
N 370 -160 370 -140 {lab=Vo}
N 410 -230 410 -190 {lab=VDD}
N 370 -230 370 -220 {lab=VDD}
N 360 -230 370 -230 {lab=VDD}
N 360 -230 360 -190 {lab=VDD}
N 360 -190 370 -190 {lab=VDD}
N 370 -230 410 -230 {lab=VDD}
N 370 -40 410 -40 {lab=GND}
N 170 -230 170 -220 {lab=VDD}
N 170 -230 360 -230 {lab=VDD}
N 170 -60 170 -40 {lab=GND}
N 170 -40 360 -40 {lab=GND}
N 240 -120 240 -40 {lab=GND}
N 170 -140 210 -140 {lab=#net1}
N 270 -140 370 -140 {lab=Vo}
N -90 -160 -50 -160 {lab=Vp}
N -90 -120 -50 -120 {lab=Vm}
C {op_amp_module.sym} 10 -30 0 0 {name=x1}
C {title.sym} -360 170 0 0 {name=l10 author="Shalindra Gunasekera"}
C {beta_mul_SC_module.sym} -30 0 0 0 {name=x2}
C {gf180mcu_fd_pr/npolyf_u.sym} -310 -300 3 0 {name=R1
W=5u
L=10u
model=npolyf_u
spiceprefix=X
m=1}
C {gf180mcu_fd_pr/npolyf_u.sym} -310 0 1 1 {name=R2
W=5u
L=10u
model=npolyf_u
spiceprefix=X
m=1}
C {gf180mcu_fd_pr/npolyf_u.sym} 240 -140 3 0 {name=R3
W=5u
L=10u
model=npolyf_u
spiceprefix=X
m=1}
C {lab_wire.sym} 0 -210 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -50 -70 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -50 70 0 0 {name=p9 sig_type=std_logic lab=GND}
C {ipin.sym} -520 -300 0 0 {name=p7 lab=Vip}
C {ipin.sym} -520 0 0 0 {name=p13 lab=Vim}
C {ipin.sym} -520 -390 0 0 {name=p14 lab=VDD}
C {ipin.sym} -520 100 0 0 {name=p15 lab=GND}
C {opin.sym} 430 -140 0 0 {name=p16 lab=Vo}
C {lab_wire.sym} 10 -90 2 0 {name=p17 sig_type=std_logic lab=GND}
C {lab_wire.sym} 380 -40 2 0 {name=p8 sig_type=std_logic lab=GND}
C {lab_wire.sym} -470 -90 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -500 -200 2 0 {name=p4 sig_type=std_logic lab=GND}
C {gf180mcu_fd_pr/diode_nd2ps_03v3.sym} -230 50 2 1 {name=D3
model=diode_nd2ps_03v3
r_w=1.19u
r_l=40u
m=1
}
C {gf180mcu_fd_pr/diode_pd2nw_03v3.sym} -230 -50 2 1 {name=D4
model=diode_pd2nw_03v3
r_w=1.19u
r_l=40u
m=1
}
C {gf180mcu_fd_pr/diode_nd2ps_03v3.sym} -230 -250 2 1 {name=D5
model=diode_nd2ps_03v3
r_w=1.19u
r_l=40u
m=1
}
C {gf180mcu_fd_pr/diode_pd2nw_03v3.sym} -230 -350 2 1 {name=D6
model=diode_pd2nw_03v3
r_w=1.19u
r_l=40u
m=1
}
C {gf180mcu_fd_pr/diode_nd2ps_03v3.sym} 170 -90 2 0 {name=D7
model=diode_nd2ps_03v3
r_w=1.19u
r_l=40u
m=1
}
C {gf180mcu_fd_pr/diode_pd2nw_03v3.sym} 170 -190 2 0 {name=D8
model=diode_pd2nw_03v3
r_w=1.19u
r_l=40u
m=1
}
C {lab_wire.sym} 410 -230 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -90 -160 0 0 {name=p6 sig_type=std_logic lab=Vp}
C {lab_wire.sym} -230 -300 0 1 {name=p10 sig_type=std_logic lab=Vp}
C {lab_wire.sym} -230 0 0 1 {name=p11 sig_type=std_logic lab=Vm}
C {lab_wire.sym} -90 -120 0 0 {name=p12 sig_type=std_logic lab=Vm}
C {gf180mcu_fd_pr/pfet_03v3_dss.sym} -480 -350 0 0 {name=M1
L=0.3u
W=25u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
s_sab=0.28u 
d_sab=2.78u 
sa=0 sb=0 sd=0
model=pfet_03v3_dss
spiceprefix=X
}
C {gf180mcu_fd_pr/nfet_03v3_dss.sym} -480 -250 0 0 {name=M2
L=0.3u
W=25u
nf=1
m=8
d_sab=3.78u
s_sab=0.28u
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_dss
spiceprefix=X
}
C {gf180mcu_fd_pr/pfet_03v3_dss.sym} -480 -50 0 0 {name=M3
L=0.3u
W=25u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
s_sab=0.28u 
d_sab=2.78u 
sa=0 sb=0 sd=0
model=pfet_03v3_dss
spiceprefix=X
}
C {gf180mcu_fd_pr/nfet_03v3_dss.sym} -480 50 0 0 {name=M4
L=0.3u
W=25u
nf=1
m=8
d_sab=3.78u
s_sab=0.28u
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_dss
spiceprefix=X
}
C {gf180mcu_fd_pr/pfet_03v3_dss.sym} 390 -190 0 1 {name=M5
L=0.3u
W=25u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
s_sab=0.28u 
d_sab=2.78u 
sa=0 sb=0 sd=0
model=pfet_03v3_dss
spiceprefix=X
}
C {gf180mcu_fd_pr/nfet_03v3_dss.sym} 390 -90 0 1 {name=M6
L=0.3u
W=25u
nf=1
m=8
d_sab=3.78u
s_sab=0.28u
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_dss
spiceprefix=X
}
