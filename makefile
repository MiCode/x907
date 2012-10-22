#
# Makefile for finder
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_finder.zip

#
local-miui-modified-apps := 

# All apps from original ZIP, but has smali files chanded
local-modified-apps := 

# All apks from MIUI
local-miui-removed-apps := 

# All apps need to be removed from original ZIP file


# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:=

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

local-apktool := other/tools/apktool

include $(PORT_BUILD)/porting.mk



# To define any local-target
local-zip-misc: