MODPATH=/data/adb/modules/Vayu_Fix_Overlay

set_perm_recursive $MODPATH/system/vendor/overlay 0 0 0755 0644

touch $MODPATH/system/vendor/overlay/SystemUIOverlayVayu.apk

if [ -n "$KSU" ]; then
  /system/bin/cmd overlay enable Vayu_Fix_Overlay com.android.systemui 2>/dev/null
fi
