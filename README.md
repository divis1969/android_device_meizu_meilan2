Device repository for Meizu M2 Mini (CyanogenMod)
===========================

Getting Started
---------------

Initialize a repository with CyanogenMode:

    repo init -u git://github.com/divis1969/android.git -b cm-14.0-meilan2

Optinally use a specific manifest (not a tip):

    repo init -u git://github.com/divis1969/android.git -b meilan2 -m cm-14.0-meilan2-v0.2.xml

Build the code:

    source build/envsetup.sh
    breakfast meilan2
    make -j 4 bacon showcommands 2>&1 | tee build.log

Flash the phone:
https://github.com/divis1969/android_device_meizu_meilan2/wiki/%D0%9F%D1%80%D0%BE%D1%88%D0%B8%D0%B2%D0%BA%D0%B0-%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D0%B0

Current state
-------------

- Cyanogen boots
- Touch, screen, keyboard, central key are working
- Wifi is working
- Audio is partially working (see Known Issues)
- Telephony is working (see Known Issues)
    - USIM (3G) supported
    - Incoming/outgoung call
    - SMS, USSD
    - Data connectivity
- GPS
- Bluetooth (pairing only testes so far)
- Sensors

Known Issues
-------------
- Microphone (recording) is not working
- Telephony crashes eventually on call ringing (both incoming/outgoing) 
- Hardware OMX codecs are not working
- Camera is not working

All issues: https://github.com/divis1969/android_device_meizu_meilan2/issues

Change log
----------

### v0.2
- Meilan 2 bringup on Cyanogen 14 (continued)
  GPS bringup
  BT bringup
  Media codecs bringup (software only)
  External storage fix
  Magnetometer fix

### v0.1
- Meilan 2 bringup on Cyanogen 14

