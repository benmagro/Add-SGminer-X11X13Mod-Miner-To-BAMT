Add-SGminer-X11X13Mod-Miner-To-BAMT
========================

This is script will install an optimised x11 and x13 algorithm miner within BAMT 1.6.0

#Minable Coins

##X11
- Darkcoin (DRK)
- X11Coin (XC)
- Logicoin (LGC)
- Hirocoin (HIC)
- MUNITI (MUN)
- Sync (SYNC)

##X13
- Boostcoin (BOST)
- MaruCoin (MARU)

#Instructions

```bash
git clone https://github.com/benmagro/Add-SGminer-X11X13Mod-Miner-To-BAMT.git
cd Add-SGminer-X11X13Mod-Miner-To-BAMT/
./x11x13.sh
```

Then review your bamt.conf and your sgminer-x11mod.conf and sgminer-x13mod.conf

#Settings

##Single MSI R9 280x 3.4 MH/s

"intensity" : "15",
"vector" : "1",
"worksize" : "256",
"kernel" : "x11mod",
"thread-concurrency" : "8192",
"lookup-gap" : "2",
"gpu-engine" : "1200",
"gpu-memclock" : "1500",
"gpu-powertune" : "20",
"gpu-vddc" : "1.200",
"gpu-threads" : "2"

##Sapphire R9 270x Vapor-X 10.43 MH/s (~2.08 MH/s per card)

"intensity" : "15",
"vectors" : "1",
"worksize" : "128",
"kernel" : "x11mod",
"thread-concurrency" : "8192",
"lookup-gap" : "2",
"gpu-engine" : "1150",
"gpu-memclock" : "1500",
"gpu-powertune" : "20",
"gpu-vddc" : "1.150",
"gpu-threads" : "2"

#Donate

BTC: 1GeA7ZeKV5yH68EkMQCLb2ygm9K4qotT2x
