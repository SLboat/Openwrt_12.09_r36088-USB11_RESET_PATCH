#! /bin/sh

md5s() {
        cat "$@" | (
                md5sum 2>/dev/null ||
                md5
        ) | awk '{print $1}'
}

HASH=$(md5s /lib/modules/3.3.8/ath9k_hw.ko)

if [ $HASH == "466809e38d2c9ecacfb1bb39a8492b4b" ]; then
	echo "You are using the patch version,enjoy it!"
elif [ $HASH == "4fdb0f9b1f306cc587e7b200d3fe35b7"]; then
	echo "Not Patched,But you are using the 12.09-r36088 origin version,So it can be patch"
	echo "The Patch is easy,replace the [ath9k_hw.ko] to your [/lib/module/3.3.8/ath9k_hw.ko]"
else
	echo "I cant recognition this version,so it better not use the patch"
fi