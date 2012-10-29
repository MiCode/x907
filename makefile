#
# Makefile for finder
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_finder.zip

#
local-miui-modified-apps := Phone MiuiGallery Settings

# All apps from original ZIP, but has smali files chanded
local-modified-apps := SettingsProvider

# All apks from MIUI
local-miui-removed-apps := SettingsProvider MediaProvider Stk

# All apps need to be removed from original ZIP file
local-phone-apps := SettingsProvider ApplicationsProvider MediaProvider DefaultContainerService CertInstaller DrmProvider \
                    SharedStorageBackup OppoCamera UserDictionaryProvider Stk Wiper Provision LiveWallpapersPicker \
                    BackupRestoreConfirmation LiveWallpapers WAPPushManager VpnDialogs 

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:=

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

# Apktool for finder
override APKTOOL := other/tools/apktool

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	@echo replace bootanimation
	cp other/bootanimation out/ZIP/system/bin/bootanimation

	@echo remove useless files
	rm out/ZIP/system/media/poweroff.mp3
	rm out/ZIP/system/media/poweron.mp3
	rm out/ZIP/system/media/rbootanimation.zip
