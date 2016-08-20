$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/meizu/meilan2/meilan2-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/meizu/meilan2/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/meizu/meilan2/prebuilt/Image.gz-dtb
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

TARGET_OTA_ASSERT_DEVICE := meilan2,meizu_m2_mini,m2,M2

TARGET_PROVIDES_INIT_RC := true

PRODUCT_COPY_FILES += \
	device/meizu/meilan2/rootdir/init.rc:root/init.rc \
	device/meizu/meilan2/rootdir/enableswap.sh:root/enableswap.sh \
	device/meizu/meilan2/rootdir/init.mt6735.rc:root/init.mt6735.rc \
	device/meizu/meilan2/rootdir/init.ssd.rc:root/init.ssd.rc \
	device/meizu/meilan2/rootdir/init.xlog.rc:root/init.xlog.rc \
	device/meizu/meilan2/rootdir/init.usb.rc:root/init.usb.rc \
	device/meizu/meilan2/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
	device/meizu/meilan2/rootdir/init.aee.rc:root/init.aee.rc \
	device/meizu/meilan2/rootdir/init.project.rc:root/init.project.rc \
	device/meizu/meilan2/rootdir/init.modem.rc:root/init.modem.rc \
	device/meizu/meilan2/rootdir/fstab.mt6735:root/fstab.mt6735 \
	device/meizu/meilan2/rootdir/ueventd.rc:root/ueventd.rc \
	device/meizu/meilan2/etc/media_codecs.xml:system/etc/media_codecs.xml \
	device/meizu/meilan2/media_profiles.xml:system/etc/media_profiles.xml \
	frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
	frameworks/native/data/etc/android.hardware.audio.output.xml:system/etc/permissions/android.hardware.audio.output.xml \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
        frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
        frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
        frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
        frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
        frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

#PRODUCT_PACKAGES += \
#    libion \
#    libmockdrmcryptoplugin \
#    libaudio-resampler \
#    libtinycompress \
#    libtinyxml

# RIL
PRODUCT_PACKAGES += \
    gsm0710muxd

PRODUCT_PACKAGES += \
    Torch

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/meizu/meilan2/rootdir/etc/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \

# Audio componets from source
PRODUCT_PACKAGES += \
    audio.usb.default \
    audio.r_submix.default

# BT A2DP
PRODUCT_COPY_FILES += \
    vendor/meizu/meilan2/proprietary/vendor/lib/hw/audio.a2dp.blueangel.so:system/vendor/lib/hw/audio.a2dp.mt6735.so

# Audio componets from source
PRODUCT_PACKAGES += \
    EngineerMode \
    MtkCamera libDocVfbEngineLib_m81 libpanorama

PRODUCT_EXTRA_RECOVERY_KEYS += device/meizu/meilan2/meizu

#$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, build/target/product/aosp_arm64.mk)

#PRODUCT_NAME := cm_meilan2
#PRODUCT_DEVICE := meilan2
#PRODUCT_BRAND := CyaniogenMod
#PRODUCT_MODEL := CyaniogenMod on Meizu Meilan2

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
ro.debuggable=1 \
ro.adb.secure=0 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mtp \
ro.mount.fs=EXT4 \
debug.hwui.render_dirty_regions=false \
ro.sf.lcd_density=320 \
ro.hardware.bluetooth=blueangel \
persist.radio.multisim.config=dsds \
ro.mtk_lte_support=1 \
ro.telephony.ril_class=MediaTekRIL \
ro.telephony.ril.config=fakeiccid \
ro.telephony.sim.count=2 \
persist.gemini.sim_num=2 \
ril.current.share_modem=2 \
ro.mtk_gps_support=1 \
ro.mtk_agps_app=1 \
persist.debug.xlog.enable=1 \
cm.updater.type=plain \
cm.updater.uri=https://drive.google.com/uc?export=download&id=0Bwzrxcf3P6N6QnVsQXFfV2xjc1E \


# Removed for now
#ro.persist.partition.support=no \
#ro.cip.partition.support=no \
#persist.mtk.aee.aed=on \

# Properties below are copied from device (build.prop)
# but disabled for now
#PRODUCT_PROPERTY_OVERRIDES := \
#ro.com.android.dateformat=MM-dd-yyyy \
#ro.config.ringtone=Technology.ogg \
#ro.config.notification_sound=VideoRecord.ogg \
#ro.config.mms_sound=Triumph.ogg \
#ro.config.email_sound=VideoRecord.ogg \
#ro.config.calendar_sound=Doorbell.ogg \
#ro.config.alarm_alert=Morning_Dew.ogg \
#ro.carrier=unknown \
#ro.hwui.texture_cache_size=72 \
#ro.hwui.layer_cache_size=50 \
#ro.hwui.r_buffer_cache_size=8 \
#ro.hwui.path_cache_size=32 \
#ro.hwui.gradient_cache_size=3 \
#ro.hwui.drop_shadow_cache_size=6 \
#ro.hwui.fbo_cache_size=25 \
#ro.hwui.texture_cache_flushrate=0.4 \
#ro.hwui.text_small_cache_width=1024 \
#ro.hwui.text_small_cache_height=1024 \
#ro.hwui.text_large_cache_width=2048 \
#ro.hwui.text_large_cache_height=1024 \
#ro.bq.num_of_layer_used_by_sf=4 \
#persist.sys.timezone=Asia/Shanghai \
#persist.sys.meizu.region=cn \
#persist.sys.meizu.codepage=gbk \
#ro.meizu.setupwizard.flyme=true \
#ro.meizu.setupwizard.setlang=true \
#ro.meizu.region.enable=true \
#ro.meizu.contactmsg.auth=false \
#ro.meizu.customize.pccw=false \
#ro.meizu.autorecorder=true \
#ro.meizu.visualvoicemail=true \
#ro.meizu.security=false \
#ro.meizu.permanentkey=false \
#ro.meizu.sip.support=true \
#ro.meizu.voip.support=false \
#sys.meizu.m35x.white.config=false \
#sys.meizu.white.config=false \
#persist.sys.log-main.enable=0 \
#persist.sys.log-system.enable=0 \
#persist.sys.log-events.enable=0 \
#persist.sys.log-radio.enable=0 \
#persist.sys.use.flyme.icon=true \
#ro.adb.secure=1 \
#keyguard.no_require_sim=true \
#persist.sys.disable_blur_view=true \
#persist.sys.static_blur_mode=false \
#ro.debuggable=1 \
#ro.operator.optr=CUST \
#qemu.hw.mainkeys=1 \
#dalvik.vm.heapgrowthlimit=128m \
#dalvik.vm.heapsize=256m \
#ro.mediatek.chip_ver=S01 \
#ro.mediatek.version.release=ALPS.L1.MP3.V2_GINR6735.65C.L1_P48 \
#ro.mediatek.platform=MT6735 \
#ro.telephony.sim.count=2 \
#persist.radio.default.sim=0 \
#persist.radio.multisim.config=dsds \
#persist.md.perm.checked=to_upgrade \
#persist.gemini.sim_num=2 \
#ro.gemini.smart_sim_switch=false \
#ril.specific.sm_cause=0 \
#bgw.current3gband=0 \
#ril.external.md=0 \
#ro.mtk_cam_lomo_support=1 \
#ro.btstack=blueangel \
#ro.sf.hwrotation=0 \
#ril.current.share_modem=2 \
#curlockscreen=1 \
#ro.mediatek.gemini_support=true \
#persist.radio.fd.counter=15 \
#persist.radio.fd.off.counter=5 \
#persist.radio.fd.r8.counter=15 \
#persist.radio.fd.off.r8.counter=5 \
#drm.service.enabled=true \
#fmradio.driver.enable=1 \
#ril.first.md=1 \
#ril.flightmode.poweroffMD=1 \
#ril.telephony.mode=0 \
#dalvik.vm.mtk-stack-trace-file=/data/anr/mtk_traces.txt \
#mediatek.wlan.chip=CONSYS_MT6735 \
#mediatek.wlan.module.postfix=_consys_mt6735 \
#ril.read.imsi=1 \
#ril.radiooff.poweroffMD=0 \
#ro.frp.pst=/dev/block/platform/mtk-msdc.0/by-name/frp \
#ro.mediatek.version.branch=L1.MP3 \
#ro.mediatek.version.sdk=4 \
#ro.mtk_gemini_support=1 \
#ro.mtk_audenh_support=1 \
#ro.mtk_lossless_bt_audio=1 \
#ro.mtk_besloudness_support=1 \
#ro.mtk_bessurround_support=1 \
#ro.mtk_gemini_enhancement=1 \
#ro.mtk_wapi_support=1 \
#ro.mtk_bt_support=1 \
#ro.mtk_wappush_support=1 \
#ro.mtk_agps_app=1 \
#ro.mtk_wlan_support=1 \
#ro.mtk_gps_support=1 \
#ro.mtk_omacp_support=1 \
#ro.mtk_search_db_support=1 \
#ro.mtk_dialer_search_support=1 \
#ro.mtk_dhcpv6c_wifi=1 \
#ro.have_aacencode_feature=1 \
#ro.mtk_fd_support=1 \
#ro.mtk_oma_drm_support=1 \
#ro.mtk_cta_drm_support=1 \
#ro.mtk_widevine_drm_l3_support=1 \
#ro.mtk_eap_sim_aka=1 \
#ro.mtk_fm_recording_support=1 \
#ro.mtk_audio_ape_support=1 \
#ro.mtk_flv_playback_support=1 \
#ro.mtk_wmv_playback_support=1 \
#ro.mtk_send_rr_support=1 \
#ro.mtk_emmc_support=1 \
#ro.mtk_tetheringipv6_support=1 \
#ro.mtk_phone_number_geo=1 \
#ro.mtk_shared_sdcard=1 \
#ro.mtk_enable_md1=1 \
#ro.mtk_flight_mode_power_off_md=1 \
#ro.mtk_pq_support=2 \
#ro.mtk_miravision_support=1 \
#ro.mtk_miravision_image_dc=1 \
#ro.mtk_wfd_support=1 \
#ro.mtk_wfd_sink_support=1 \
#ro.mtk_wfd_sink_uibc_support=1 \
#ro.mtk_sim_hot_swap=1 \
#ro.mtk_thumbnail_play_support=1 \
#ro.mtk_bip_scws=1 \
#ro.mtk_cmcc_ft_precheck_support=1 \
#ro.mtk_world_phone=1 \
#ro.mtk_world_phone_policy=0 \
#ro.mtk_perfservice_support=1 \
#ro.mtk_sim_hot_swap_common_slot=1 \
#ro.mtk_cta_set=1 \
#ro.mtk_mobile_management=1 \
#ro.mtk_antibricking_level=2 \
#ro.mtk_cam_mfb_support=3 \
#ro.mtk_slow_motion_support=1 \
#ro.mtk_lte_support=1 \
#ro.mtk_cam_mav_support=1 \
#ro.mtk_cam_vfb=1 \
#ro.mtk_rild_read_imsi=1 \
#ro.sim_refresh_reset_by_modem=1 \
#ro.mtk_live_photo_support=1 \
#ro.mtk_motion_track_support=1 \
#ro.mtk_passpoint_r1_support=1 \
#ro.mtk_privacy_protection_lock=1 \
#ro.mtk_bg_power_saving_support=1 \
#ro.mtk_bg_power_saving_ui=1 \
#ro.have_aee_feature=1 \
#ro.sim_me_lock_mode=0 \
#wfd.dummy.enable=1 \
#ro.mediatek.project.path=device/ginreen/ginr6735_65c_l1 \
#persist.mtk.wcn.combo.chipid=-1 \
#service.wcn.driver.ready=no \
#ro.wind_project_definition=5 \
#ro.wind.pl.version=02 \
#ro.wind_project_feature=1 \
#ro.com.android.mobiledata=false \
#persist.radio.mobile.data=0,0 \
#persist.radio.mobile.enable=1,1 \
#persist.meta.dumpdata=0 \
#persist.sys.dalvik.vm.lib.2=libart.so \
#dalvik.vm.isa.arm64.features=default \
#dalvik.vm.isa.arm.features=default \
#dalvik.vm.dexopt-flags=m=y \
#net.bt.name=Android \
#dalvik.vm.stack-trace-file=/data/anr/traces.txt \


