** Library name: ECE555
** Cell name: NOR_2bit
** View name: schematic
.subckt NOR_2bit in<0> in<1> out vdd vss
mp5 out in<0> net1 vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp0 net1 in<1> vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mn3 out in<1> vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn2 vss in<0> out vss nmos_rvt w=27e-9 l=20e-9 nfin=1
.ends NOR_2bit
** End of subcircuit definition.

** Library name: ECE555
** Cell name: INV
** View name: schematic
.subckt INV in out vdd vss
mn0 out in vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mp1 out in vdd vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
.ends INV
** End of subcircuit definition.

** Library name: ECE555
** Cell name: XNOR_2bit
** View name: schematic
.subckt XNOR_2bit in<0> in<1> out vdd vss
mn5 vss in<1> net6 vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn4 net6 net3 out vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn3 out in<0> net5 vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn2 net5 net2 vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn1 net2 in<1> vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn0 net3 in<0> vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mp13 net2 in<1> vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp12 net3 in<0> vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp11 net4 in<1> out vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp10 vdd net2 net4 vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp9 net4 in<0> vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp8 out net3 net4 vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
.ends XNOR_2bit
** End of subcircuit definition.

** Library name: ECE555
** Cell name: NAND_2bit
** View name: schematic
.subckt NAND_2bit in<0> in<1> out vdd vss
mp1 out in<0> vdd vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
mp0 vdd in<1> out vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
mn4 net1 in<1> vss vss nmos_rvt w=108e-9 l=20e-9 nfin=4
mn3 out in<0> net1 vss nmos_rvt w=108e-9 l=20e-9 nfin=4
.ends NAND_2bit
** End of subcircuit definition.

** Library name: ECE555
** Cell name: MULTIPLIER_2bit
** View name: schematic
.subckt MULTIPLIER_2bit out<0> out<1> w<0> w<1> x<0> x<1> vdd vss
xi14 net2 net1 out<0> vdd vss NOR_2bit
xi13 net2 out<1> vdd vss INV
xi12 x<1> w<1> net1 vdd vss XNOR_2bit
xi11 x<0> w<0> net2 vdd vss NAND_2bit
.ends MULTIPLIER_2bit
** End of subcircuit definition.

** Library name: ECE555
** Cell name: xor
** View name: schematic
.subckt xor a b out vdd vss
mn6 out net1 vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn5 vss a net6 vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn4 net6 net3 net1 vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn3 net1 b net5 vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn2 net5 net2 vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn1 net2 a vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn0 net3 b vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mp13 net2 a vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp12 net3 b vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp11 net4 a net1 vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp10 vdd net2 net4 vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp9 net4 b vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp8 net1 net3 net4 vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp7 out net1 vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
.ends xor
** End of subcircuit definition.

** Library name: ECE555
** Cell name: AND
** View name: schematic
.subckt AND in1 in2 out vdd vss
mn0 net1 in2 vss vss nmos_rvt w=108e-9 l=20e-9 nfin=4
mn1 net2 in1 net1 vss nmos_rvt w=108e-9 l=20e-9 nfin=4
mn2 out net2 vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mp5 out net2 vdd vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
mp4 vdd in2 net2 vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
mp3 net2 in1 vdd vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
.ends AND
** End of subcircuit definition.

** Library name: ECE555
** Cell name: OR
** View name: schematic
.subckt OR a b out vdd vss
mp2 out net2 vdd vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
mp1 net2 b net1 vdd pmos_rvt w=108e-9 l=20e-9 nfin=4
mp0 net1 a vdd vdd pmos_rvt w=108e-9 l=20e-9 nfin=4
mn5 out net2 vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn4 vss a net2 vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn3 net2 b vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
.ends OR
** End of subcircuit definition.

** Library name: ECE555
** Cell name: ADDER
** View name: schematic
.subckt ADDER a b cin cout s vdd vss
xi1 net1 cin s vdd vss xor
xi0 a b net1 vdd vss xor
xi3 a b net3 vdd vss AND
xi2 net1 cin net2 vdd vss AND
xi4 net2 net3 cout vdd vss OR
.ends ADDER
** End of subcircuit definition.

** Library name: ECE555
** Cell name: ADDER_2bit
** View name: schematic
.subckt ADDER_2bit a<1> a<0> b<1> b<0> cin cout s<1> s<0> vdd vss
xi2 a<1> b<1> net3 cout s<1> vdd vss ADDER
xi0 a<0> b<0> cin net3 s<0> vdd vss ADDER
.ends ADDER_2bit
** End of subcircuit definition.

** Library name: ECE555
** Cell name: ADDER_3bit
** View name: schematic
.subckt ADDER_3bit a<2> a<1> a<0> b<2> b<1> b<0> cin cout s<2> s<1> s<0> vdd vss
xi2 a<2> b<2> net2 cout s<2> vdd vss ADDER
xi1 a<1> b<1> net1 net2 s<1> vdd vss ADDER
xi0 a<0> b<0> cin net1 s<0> vdd vss ADDER
.ends ADDER_3bit
** End of subcircuit definition.

** Library name: ECE555
** Cell name: ACTIVATION_2bit
** View name: schematic
.subckt ACTIVATION_2bit in1 in2 out sel vdd vss
xi8 sel net1 vdd vss INV
xi5 net4 net6 out vdd vss OR
xi7 in2 sel net6 vdd vss AND
xi6 in1 net1 net4 vdd vss AND
.ends ACTIVATION_2bit
** End of subcircuit definition.

** Library name: ECE555
** Cell name: ACTIVATION
** View name: schematic
.subckt ACTIVATION in1<2> in1<1> in1<0> in2<2> in2<1> in2<0> out<2> out<1> out<0> vdd vss
xi7 in1<1> in2<1> out<1> in1<2> vdd vss ACTIVATION_2bit
xi6 in1<2> in2<2> out<2> in1<2> vdd vss ACTIVATION_2bit
xi8 in1<0> in2<0> out<0> in1<2> vdd vss ACTIVATION_2bit
.ends ACTIVATION
** End of subcircuit definition.

** Library name: ECE555
** Cell name: NEURON_2bit
** View name: schematic
xi1 out2<0> out2<1> w1<0> w1<1> x<0> x<1> vdd vss MULTIPLIER_2bit
xi0 out<0> out<1> w0<0> w0<1> x<0> x<1> vdd vss MULTIPLIER_2bit
xi2 out<1> out<0> out2<1> out2<0> vss s1<2> s1<1> s1<0> vdd vss ADDER_2bit
xi3 s1<2> s1<1> s1<0> w2<2> w2<1> w2<0> vss net1 y0<2> y0<1> y0<0> vdd vss ADDER_3bit
xi5 y0<2> y0<1> y0<0> net7 net7 net7 z0<2> z0<1> z0<0> vdd vss ACTIVATION
mn0 net7 vdd vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
.END