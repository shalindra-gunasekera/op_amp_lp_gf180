v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Credit to Torsten Lehmann for the Generic Style Op Amp Test Bench} 160 260 0 0 0.15 0.15 {}
T {*stepped AC response code 
*(copy to code shown and uncomment)
*compose rin_vec values 1k 10k 100k

*set plotdb = ' '
*set plotph = ' '

*foreach r $&rin_vec
*	alterparam rin = $r
*	reset
*	ac dec 10 1 100Meg
	
*	let av = db(Vo/Vip)
*	let ph = cph(Vo)*180/PI	

*	set plotdb = ( $plotdb \{$curplot\}.av )
*	set plotph = ( $plotph \{$curplot\}.ph )

*	save av ph
*	write freqz.raw
*end

*set nolegend
*plot $plotdb xlabel 'Frequency (Hz)' ylabel 'Gain'
*plot $plotph xlabel 'Frequency (Hz)' ylabel 'Phase (degrees)'} 330 -330 0 0 0.2 0.2 {}
N 100 -140 140 -140 {lab=Vo}
N 10 -210 10 -180 {lab=VDD}
N -320 -210 -320 -160 {lab=VDD}
N 10 -100 10 -90 {lab=GND}
N -320 -100 -320 -70 {lab=GND}
N -250 -90 -250 -70 {lab=GND}
N 140 -70 140 -50 {lab=GND}
N 140 -140 140 -130 {lab=Vo}
N 140 -140 220 -140 {lab=Vo}
N -250 -160 -50 -160 {lab=Vip}
N -250 -160 -250 -150 {lab=Vip}
N -60 -120 -50 -120 {lab=Vim}
N 100 -140 100 -40 {lab=Vo}
N -60 -120 -60 -40 {lab=Vim}
N -130 -30 -110 -30 {lab=#net1}
N -150 -40 -150 -30 {lab=#net1}
N -130 -30 -130 -10 {lab=#net1}
N -130 50 -130 80 {lab=GND}
N -130 -120 -60 -120 {lab=Vim}
N -130 -120 -130 -110 {lab=Vim}
N -130 -110 -110 -110 {lab=Vim}
N -110 -110 -110 -100 {lab=Vim}
N -150 -110 -130 -110 {lab=Vim}
N -150 -110 -150 -100 {lab=Vim}
N -110 -40 -110 -30 {lab=#net1}
N 50 -140 100 -140 {lab=Vo}
N -150 -30 -130 -30 {lab=#net1}
N -60 -40 40 -40 {lab=Vim}
N -50 20 -50 40 {lab=VDD}
N -50 170 -50 180 {lab=GND}
N -10 -90 -10 -30 {lab=#net2}
N -10 30 -10 40 {lab=#net3}
C {op_amp_module.sym} 10 -30 0 0 {name=x1}
C {vsource.sym} -250 -120 0 0 {name=V1 value="dc = 1.665, ac=10m" savecurrent=false}
C {vsource.sym} -320 -130 0 0 {name=V2 value=3.3 savecurrent=false}
C {capa.sym} 140 -100 0 0 {name=C1
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -320 -70 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -120 -160 0 0 {name=p3 sig_type=std_logic lab=Vip}
C {code_shown.sym} -800 -570 0 0 {name=SPICE only_toplevel=false
value="
.op

.param CL=10p

*toggle low/hi Z paths
.param cin=1p rin=10k
.param lfb=1p rfb=1Meg
*note pico is smallest

*roughly where A_OL max is
.param dcb=1.665

.control
save all

*transient
*Set V1 to SINE(Adc A f)
*tran 10n 5u
*plot Vip Vo

*dc analysis
*dc V1 1.635 1.675 1e-4
*plot v(Vo) 3.3/2 ylabel 'Vo (V)'
*plot i(Vsense)
*plot deriv(v(Vo)) ylabel 'dVo/dVip (V/V)'

*ac analysis
*
* Set V1 to DC=1 AC=10m
* and V3 to around dcb
* Otherwise DC will saturate 
* 	if (Vim-Vip)*Av >Vdd
*

* Single run AC
ac dec 10 1 100Meg
plot db((Vo)/(Vip))
plot cph(Vo)*180/PI
.endc
"}
C {lab_wire.sym} 220 -140 0 0 {name=p4 sig_type=std_logic lab=Vo}
C {vdd.sym} -320 -210 0 0 {name=l8 lab=VDD}
C {vdd.sym} 10 -210 0 0 {name=l9 lab=VDD}
C {gnd.sym} -250 -70 0 0 {name=l2 lab=GND}
C {gnd.sym} 140 -50 0 0 {name=l5 lab=GND}
C {gnd.sym} 10 -90 0 0 {name=l3 lab=GND}
C {res.sym} 70 -40 1 0 {name=R2
value=\{rfb\}
footprint=1206
device=resistor
m=1}
C {res.sym} -150 -70 0 1 {name=R3
value=\{rin\}
footprint=1206
device=resistor
m=1}
C {vsource.sym} -130 20 0 0 {name=V3 value="dc=1.65" savecurrent=false}
C {lab_wire.sym} -110 -120 0 0 {name=p1 sig_type=std_logic lab=Vim}
C {title.sym} -330 250 0 0 {name=l10 author="Shalindra Gunasekera"}
C {gnd.sym} -130 80 0 0 {name=l11 lab=GND}
C {capa.sym} -110 -70 0 0 {name=C2
m=1
value=\{cin\}
footprint=1206
device="ceramic capacitor"}
C {devices/code_shown.sym} -430 -570 0 0 {name=SAVE only_toplevel=true
value="
.save all
.options savecurrents

*mainly for transistor probing

.save @m.xm1.m0[gm]
.save @m.xm3.m0[gm]
.save @m.xm9.m0[gm]
.save @m.xm6.m0[gm]
.save @m.xm7.m0[gm]

"}
C {devices/code_shown.sym} 250 80 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {beta_mul_SC_module.sym} -30 100 0 0 {name=x2}
C {gnd.sym} -50 180 0 0 {name=l4 lab=GND}
C {vdd.sym} -50 20 0 0 {name=l6 lab=VDD}
C {vsource.sym} -10 0 0 0 {name=Vsense value=0 savecurrent=false}
