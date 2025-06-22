#!/system/bin/sh

MODDIR=${0%/*}
BIND=/system/bin/bootanimation
LIB=/system/lib64/libbootanimation.so

# 1) Bind-mount бинарника
if [ -f "$MODDIR/system/bin/bootanimation" ]; then
  mount -o bind "$MODDIR/system/bin/bootanimation" "$BIND"
  chmod 755 "$BIND"
  chown root:shell "$BIND"
fi

# 2) Bind-mount библиотеки
if [ -f "$MODDIR/system/lib64/libbootanimation.so" ]; then
  mount -o bind "$MODDIR/system/lib64/libbootanimation.so" "$LIB"
  chmod 644 "$LIB"
  chown root:root "$LIB"
fi
