* SPICE NETLIST
***************************************

.SUBCKT MULTIPLIER_2bit x<1> w<1> x<0> w<0> OUT<0> OUT<1>
** N=40 EP=6 IP=0 FDC=30
M0 OUT<1> 7 1 38 nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=5468 $Y=140 $D=1
M1 OUT<1> 7 2 40 pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=5468 $Y=680 $D=0
M2 15 x<1> 1 38 nmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=284 $Y=140 $D=5
M3 5 w<1> 15 38 nmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=500 $Y=140 $D=5
M4 1 w<1> 10 38 nmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=1148 $Y=140 $D=5
M5 10 x<1> 1 38 nmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=1364 $Y=140 $D=5
M6 6 5 10 38 nmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=1580 $Y=140 $D=5
M7 10 5 6 38 nmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=1796 $Y=140 $D=5
M8 1 x<1> 10 38 nmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=2012 $Y=140 $D=5
M9 10 w<1> 1 38 nmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=2228 $Y=140 $D=5
M10 1 6 OUT<0> 38 nmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=3092 $Y=140 $D=5
M11 OUT<0> 7 1 38 nmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=3308 $Y=140 $D=5
M12 1 x<0> 13 38 nmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=4172 $Y=140 $D=5
M13 13 x<0> 1 38 nmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=4388 $Y=140 $D=5
M14 7 w<0> 13 38 nmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=4604 $Y=140 $D=5
M15 13 w<0> 7 38 nmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=4820 $Y=140 $D=5
M16 5 x<1> 2 40 pmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=284 $Y=680 $D=4
M17 2 w<1> 5 40 pmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=500 $Y=680 $D=4
M18 16 w<1> 6 40 pmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=1148 $Y=680 $D=4
M19 2 x<1> 16 40 pmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=1364 $Y=680 $D=4
M20 6 5 2 40 pmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=1580 $Y=680 $D=4
M21 2 5 6 40 pmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=1796 $Y=680 $D=4
M22 17 x<1> 2 40 pmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=2012 $Y=680 $D=4
M23 6 w<1> 17 40 pmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=2228 $Y=680 $D=4
M24 2 6 11 40 pmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=2876 $Y=680 $D=4
M25 11 6 2 40 pmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=3092 $Y=680 $D=4
M26 OUT<0> 7 11 40 pmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=3308 $Y=680 $D=4
M27 11 7 OUT<0> 40 pmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=3524 $Y=680 $D=4
M28 2 x<0> 7 40 pmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=4388 $Y=680 $D=4
M29 7 w<0> 2 40 pmos_lvt L=2e-08 W=8.1e-08 nfin=3 $X=4604 $Y=680 $D=4
.ENDS
***************************************
