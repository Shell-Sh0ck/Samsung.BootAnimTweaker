This is a magisk module that replaces the bootanimation binary file in /system/bin and it also mounts lib boot. libbootanimation.so in /system/lib64. bin, bootanimation depends on it. All binaries and libraries were taken and compiled from the official AOSP android 14-release.
After installing the module, add your zip archive with animations to the directory where the official boot animations are located *.qmg

### Bootanmination format
https://android.googlesource.com/platform/frameworks/base/+/refs/heads/android14-release/cmds/bootanimation/FORMAT.md
