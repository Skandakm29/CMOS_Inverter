v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 40 -30 40 {lab=Gnd}
N -30 40 -30 70 {lab=Gnd}
N -50 70 -30 70 {lab=Gnd}
N -50 -70 -20 -70 {lab=Vdd}
N -20 -100 -20 -70 {lab=Vdd}
N -50 -100 -20 -100 {lab=Vdd}
N -50 -40 -50 10 {lab=xxx}
N -90 -70 -90 40 {lab=A}
N -120 -10 -90 -10 {lab=A}
N -50 -10 -20 -10 {lab=xxx}
N -50 70 -50 90 {lab=Gnd}
N -50 -130 -50 -100 {lab=Vdd}
C {sky130_fd_pr/nfet_01v8.sym} -70 40 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_nf.sym} -70 -70 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {iopin.sym} -20 -10 0 0 {name=p1 lab=vout}
C {ipin.sym} -120 -10 0 0 {name=p2 lab=A}
C {ipin.sym} -50 -130 1 0 {name=p3 lab=Vdd}
C {ipin.sym} -50 90 3 0 {name=p4 lab=Gnd}
