v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Using ideal capacitor for initial 
analysis, will replace with MOSCAP} 330 100 0 0 0.15 0.15 {}
T {Designed for 10uA bias current} -400 50 0 0 0.15 0.15 {}
N -270 -260 -270 -240 {lab=Vcc}
N -270 -260 -0 -260 {lab=Vcc}
N -0 -260 -0 -240 {lab=Vcc}
N -0 -260 300 -260 {lab=Vcc}
N 300 -260 310 -260 {lab=Vcc}
N 310 -260 310 -240 {lab=Vcc}
N 270 -210 310 -210 {lab=Vcc}
N 270 -260 270 -210 {lab=Vcc}
N -40 -210 0 -210 {lab=Vcc}
N -40 -260 -40 -210 {lab=Vcc}
N -300 -210 -270 -210 {lab=Vcc}
N -300 -260 -300 -210 {lab=Vcc}
N -300 -260 -270 -260 {lab=Vcc}
N -230 -210 -230 -200 {lab=Ib}
N -230 -200 40 -200 {lab=Ib}
N 40 -210 40 -200 {lab=Ib}
N 40 -200 350 -200 {lab=Ib}
N 350 -210 350 -200 {lab=Ib}
N -0 -180 0 -120 {lab=#net1}
N -120 -120 0 -120 {lab=#net1}
N -120 -120 -120 -90 {lab=#net1}
N 0 -120 120 -120 {lab=#net1}
N 120 -120 120 -90 {lab=#net1}
N 120 -30 120 30 {lab=#net2}
N -120 -30 -120 30 {lab=#net3}
N -120 90 -120 140 {lab=#net4}
N 120 90 120 140 {lab=#net5}
N 120 200 120 240 {lab=GND}
N -120 240 120 240 {lab=GND}
N -120 200 -120 240 {lab=GND}
N 0 240 0 300 {lab=GND}
N 120 10 270 10 {lab=#net2}
N 310 -180 310 -20 {lab=Vo}
N 310 40 310 240 {lab=GND}
N 120 240 310 240 {lab=GND}
N 120 170 170 170 {lab=GND}
N 170 170 170 240 {lab=GND}
N 120 60 170 60 {lab=GND}
N 170 60 170 170 {lab=GND}
N -160 60 -120 60 {lab=GND}
N -160 60 -160 240 {lab=GND}
N -160 240 -120 240 {lab=GND}
N -160 170 -120 170 {lab=GND}
N -80 60 -0 60 {lab=#net3}
N 0 60 80 60 {lab=#net3}
N 0 170 80 170 {lab=#net4}
N -80 170 0 170 {lab=#net4}
N -120 0 -50 0 {lab=#net3}
N -50 0 -50 60 {lab=#net3}
N -120 120 -60 120 {lab=#net4}
N -60 120 -50 120 {lab=#net4}
N -50 120 -50 170 {lab=#net4}
N 160 -60 180 -60 {lab=Vp}
N -180 -60 -160 -60 {lab=Vm}
N -270 -180 -270 80 {lab=Ib}
N -10 -300 -0 -300 {lab=Vcc}
N -0 -300 10 -300 {lab=Vcc}
N 10 -300 10 -260 {lab=Vcc}
N -10 300 -0 300 {lab=GND}
N -280 80 -270 80 {lab=Ib}
N 310 -60 340 -60 {lab=Vo}
N 100 -60 130 -60 {lab=Vcc}
N 100 -260 100 -60 {lab=Vcc}
N -120 -60 -100 -60 {lab=Vcc}
N -100 -260 -100 -60 {lab=Vcc}
N 310 10 320 10 {lab=GND}
N 320 10 320 60 {lab=GND}
N 310 60 320 60 {lab=GND}
N -230 -200 -230 -160 {lab=Ib}
N -270 -160 -230 -160 {lab=Ib}
N 290 -30 310 -30 {lab=Vo}
N 200 -30 230 -30 {lab=#net6}
N 200 -30 200 -10 {lab=#net6}
N 120 -10 140 -10 {lab=#net2}
C {gf180mcu_fd_pr/nfet_03v3.sym} -100 60 0 1 {name=M3
L=0.3u
W=3.1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {gf180mcu_fd_pr/pfet_03v3.sym} -140 -60 0 0 {name=M1
L=0.3u
W=5.5u
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
C {gf180mcu_fd_pr/nfet_03v3.sym} 100 60 0 0 {name=M4
L=0.3u
W=3.1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {gf180mcu_fd_pr/pfet_03v3.sym} 140 -60 0 1 {name=M2
L=0.3u
W=5.5u
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
C {gf180mcu_fd_pr/pfet_03v3.sym} 20 -210 0 1 {name=M5
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
C {gf180mcu_fd_pr/pfet_03v3.sym} 330 -210 0 1 {name=M6
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
C {gf180mcu_fd_pr/pfet_03v3.sym} -250 -210 0 1 {name=M8
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
C {gf180mcu_fd_pr/nfet_03v3.sym} 290 10 0 0 {name=M7
L=0.3u
W=6.25u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {gf180mcu_fd_pr/nfet_03v3.sym} -100 170 0 1 {name=M9
L=0.3u
W=3.1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {gf180mcu_fd_pr/nfet_03v3.sym} 100 170 0 0 {name=M10
L=0.3u
W=3.1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {capa.sym} 260 -30 1 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} -180 -60 0 0 {name=p1 lab=Vm}
C {ipin.sym} 180 -60 2 0 {name=p2 lab=Vp}
C {ipin.sym} -10 -300 0 0 {name=p3 lab=Vcc}
C {ipin.sym} -10 300 0 0 {name=p4 lab=GND}
C {opin.sym} -280 80 2 0 {name=p5 lab=Ib}
C {opin.sym} 340 -60 0 0 {name=p6 lab=Vo}
C {title.sym} -230 360 0 0 {name=l1 author="SHalindra Gunasekera"}
C {res.sym} 170 -10 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
