Device repository for Meizu M2 Mini (MoKee)
===========================

Getting Started
---------------

Initialize a repository with CyanogenMode:

    repo init -u git://github.com/divis1969/android.git -b mkl-mr1-meilan2

Optinally use a specific manifest (not a tip):

    repo init -u git://github.com/divis1969/android.git -b mkl-mr1-meilan2 -m meilan2-mkl-mr1-v0.1.xml

Build the code:

    source build/envsetup.sh
    breakfast meilan2
    make -j 4 showcommands bacon 2>&1 | tee build.log

Flash the phone:
https://github.com/divis1969/android_device_meizu_meilan2/wiki/%D0%9F%D1%80%D0%BE%D1%88%D0%B8%D0%B2%D0%BA%D0%B0-%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D0%B0

Current state
-------------

- Recovery is fully functional
- Update package generation
- Mokee boots
- Touch, screen, keyboard, central key are working
- Wifi is working
- Camera is working
    - Preview
    - Still image capturing
    - Video Recording
- Audio is working
- Telephony is working
    - USIM (3G) supported
    - Incoming/outgoung call
    - Data connection (3G/2G)
- GPS is working
- BT is working (discovery and connect were tested only)

Known Issues
-------------
All issues: https://github.com/divis1969/android_device_meizu_meilan2/issues

Change log
----------

### v0.1
- Bring up based on CyanogemMod v0.9 for meilan2

