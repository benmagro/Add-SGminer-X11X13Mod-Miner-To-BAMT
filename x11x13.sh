#!/bin/sh
mine stop
sleep 5
cp x11.patch /tmp/
cp x13.patch /tmp/
cd /opt/miners/
git clone https://github.com/lasybear/sph-sgminer_x11mod.git sgminer-x11X13mod
cd /opt/miners/sgminer-x11X13mod
cp /opt/miners/sgminer-4.1.0-sph/ADL_SDK/* /opt/miners/sgminer-x11X13mod/ADL_SDK/
make clean
sleep 5
chmod +x autogen.sh
./autogen.sh
sleep 2
CFLAGS="-O2 -Wall -march=native -I /opt/AMDAPP/include/" LDFLAGS="-L/opt/AMDAPP/lib/x86" ./configure --enable-opencl
sleep 5
make install
sleep 5
clear
cp example.conf /etc/bamt/sgminer-x11mod.conf
cp example.conf /etc/bamt/sgminer-x13mod.conf
cd /etc/bamt/
patch /etc/bamt/bamt.conf <<.
116a117,118
>   cgminer_opts: --api-listen --config /etc/bamt/sgminer-x11mod.conf
>   cgminer_opts: --api-listen --config /etc/bamt/sgminer-x13mod.conf
124a127
>   # Sgminer X11 Mod "DRK" and X13 Mod "BOST"
129a133
>   miner-sgminer-x11X13mod: 1
.
patch /opt/bamt/common.pl <<.
1477a1478,1480
>       } elsif (\${\$conf}{'settings'}{'miner-sgminer-x11X13mod'}) {
>         \$cmd = "cd /opt/miners/sgminer-x11X13mod/;/usr/bin/screen -d -m -S sgminer-x11X13 /opt/miners/sgminer-x11X13mod/sgminer \$args";
>         \$miner = "sgminer-x11X13";
.
cd /etc/bamt/
mv /tmp/x11.patch /etc/bamt/
mv /tmp/x13.patch /etc/bamt/
cd /etc/bamt/
patch /etc/bamt/sgminer-x11mod.conf < x11.patch
patch /etc/bamt/sgminer-x13mod.conf < x13.patch
rm x11.patch
rm x13.patch
echo 'X11 X13 Mod Miner Installed.'
echo 'Please review your /etc/bamt/bamt.conf to enable.'
echo 'Configure /etc/bamt/sgminer-x11mod.conf with pool'
echo 'Configure /etc/bamt/sgminer-x13mod.conf with pool'
