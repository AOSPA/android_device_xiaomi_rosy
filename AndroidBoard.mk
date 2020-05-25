LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ifeq ($(ADD_RADIO_FILES), true)
radio_dir := $(LOCAL_PATH)/radio
RADIO_FILES := $(shell cd $(radio_dir) ; ls)
$(foreach f, $(RADIO_FILES), \
    $(call add-radio-file,radio/$(f)))
endif

#radio file
$(call add-radio-file,firmware/NON-HLOS.bin)
$(call add-radio-file,firmware/adspso.bin)
$(call add-radio-file,firmware/cmnlib64_30.mbn)
$(call add-radio-file,firmware/cmnlib_30.mbn)
$(call add-radio-file,firmware/devcfg.mbn)
$(call add-radio-file,firmware/emmc_appsboot.mbn)
$(call add-radio-file,firmware/keymaster.mbn)
$(call add-radio-file,firmware/lksecapp.mbn)
$(call add-radio-file,firmware/rpm.mbn)
$(call add-radio-file,firmware/sbl1.mbn)
$(call add-radio-file,firmware/tz.mbn)
