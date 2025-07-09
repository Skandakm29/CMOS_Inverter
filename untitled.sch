v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 -60 170 -60 {lab=vout}
C {inv.sym} -30 -40 0 0 {name=x1}
C {vsource.sym} -370 80 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -310 80 0 0 {name=V2 value="pulse(0 1.8 0 1n 1n 1u 2u)" savecurrent=false}
C {lab_pin.sym} -370 50 1 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -310 50 1 0 {name=p2 sig_type=std_logic lab=A}
C {gnd.sym} -310 110 0 0 {name=l1 lab=GND}
C {gnd.sym} -370 110 0 0 {name=l2 lab=GND}
C {gnd.sym} -180 -20 1 0 {name=l3 lab=GND}
C {lab_pin.sym} -180 -60 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -180 -40 0 0 {name=p4 sig_type=std_logic lab=A}
C {lab_pin.sym} 170 -60 2 0 {name=p5 sig_type=std_logic lab=vout}
C {sky130_fd_pr/corner.sym} 310 100 0 0 {name=CORNER1 only_toplevel=false corner=tt}
C {code_shown.sym} 130 120 0 0 {name=s1 only_toplevel=false value="
.control
tran 0.1u 10u
plot v(A) v(vout)
.endc
"}
