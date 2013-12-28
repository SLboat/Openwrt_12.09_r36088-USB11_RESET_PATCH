Openwrt_12.09_r36088-USB11_RESET_PATCH
======================================

A simple patch for the already 12.09 office version not backport

## What's this
This a usb rest bin patch for openwrt.

## Only work for
* 12.09(r36088)-ar71xx
;http://downloads.openwrt.org/attitude_adjustment/12.09/ar71xx/generic/

## Another Way
* If you dont even wana use the patch,you can try our compile mod firmware which is base on r36088,can use all the package of r36088
 get it from http://www.wr703.com/

## How to use
### Check you version

there are lot way to check

* you can see it in luci
* or you can see it in thel shell,it will look like this

```bash
root@OpenWrt:~# cat /etc/openwrt_release 
DISTRIB_ID="OpenWrt"
DISTRIB_RELEASE="12.09"
DISTRIB_REVISION="r36088"
DISTRIB_CODENAME="attitude_adjustment"
DISTRIB_TARGET="ar71xx/generic"
DISTRIB_DESCRIPTION="OpenWrt Attitude Adjustment 12.09"
```

### Use the bin patch

* first you need find a way to replace the patch file[/bin_patch/ath9k_hw.ko] to your [12.09-aa-r36088] at [/lib/module/3.3.8] (i use winscp doing this)

* then you reboot the Router, see how it going


### How to check if successful

* by use md5sum for check,this is patch version

```bash
root@OpenWrt:/# md5sum /lib/modules/3.3.8/ath9k_hw.ko 
466809e38d2c9ecacfb1bb39a8492b4b  /lib/modules/3.3.8/ath9k_hw.ko
```

* and this should be orgin version

```bash
root@OpenWrt:/# md5sum /lib/modules/3.3.8/ath9k_hw.ko 
466809e38d2c9ecacfb1bb39a8492b4b  /lib/modules/3.3.8/ath9k_hw.ko
```

### thanks to
* Thx to Carambola2,and all the guy(Squonk,lsoltero,pepe2k,mips) to research this.
* Thx Pete Howe help this document be can readable
