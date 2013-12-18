== What's this ==
This a usb rest bin patch for openwrt.
== Only work for ==
* 12.09(r36088)
;http://downloads.openwrt.org/attitude_adjustment/12.09/
== How to use ==
=== use the bin patch ===
* first you need find a way to replace this file to you [12.09-aa] at /lib/module/3.3.8
: i use winscp doing this
* then you reboot the route,see how it going
=== How to check if sucessful ===
* by use md5sum for check,this is patch version
```bash root@OpenWrt_SLboat_Mod:/# md5sum /lib/modules/3.3.8/ath9k_hw.ko 
466809e38d2c9ecacfb1bb39a8492b4b  /lib/modules/3.3.8/ath9k_hw.ko
'''
* and this should be orgin verison
'''bash root@OpenWrt_SLboat_Mod:/# md5sum /lib/modules/3.3.8/ath9k_hw.ko 
466809e38d2c9ecacfb1bb39a8492b4b  /lib/modules/3.3.8/ath9k_hw.ko
'''
=== thanks to ===
Thx to Carambola2,and all the guy(Squonk,lsoltero,pepe2k,mips) to reasearch this.
