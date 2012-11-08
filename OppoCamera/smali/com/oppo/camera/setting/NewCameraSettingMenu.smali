.class public Lcom/oppo/camera/setting/NewCameraSettingMenu;
.super Lcom/oppo/camera/setting/SettingMenuBase;
.source "NewCameraSettingMenu.java"


# static fields
.field private static final ITEM_ICONS:[I

.field private static final ITEM_VALUES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/camera/setting/NewCameraSettingMenu;->ITEM_ICONS:[I

    .line 49
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oppo/camera/setting/NewCameraSettingMenu;->ITEM_VALUES:[I

    return-void

    .line 48
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x6t 0x7ft
        0x1t 0x0t 0x6t 0x7ft
        0x4t 0x0t 0x6t 0x7ft
        0x2t 0x0t 0x6t 0x7ft
        0x3t 0x0t 0x6t 0x7ft
        0x5t 0x0t 0x6t 0x7ft
    .end array-data

    .line 49
    :array_1
    .array-data 0x4
        0x6t 0x0t 0x6t 0x7ft
        0x7t 0x0t 0x6t 0x7ft
        0x8t 0x0t 0x6t 0x7ft
        0x9t 0x0t 0x6t 0x7ft
        0xat 0x0t 0x6t 0x7ft
        0xbt 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/setting/SettingMenuBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-virtual {p0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, keys:[Ljava/lang/String;
    sget-object v1, Lcom/oppo/camera/setting/NewCameraSettingMenu;->ITEM_ICONS:[I

    sget-object v2, Lcom/oppo/camera/setting/NewCameraSettingMenu;->ITEM_VALUES:[I

    invoke-virtual {p0, v1, v2, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->init([I[I[Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private onCameraIdChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 123
    const-string v0, "camera_face_front"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showScreenHint(I)V

    .line 128
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 126
    :cond_0
    const v0, 0x7f0a004a

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showScreenHint(I)V

    goto :goto_0
.end method

.method private onFaceBeautyfyModeChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 173
    const-string v0, "camera_face_beautify_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const v0, 0x7f0a0050

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showScreenHint(I)V

    .line 175
    const-string v0, "camera_face_beautify_on"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    const v0, 0x7f0a004f

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showScreenHint(I)V

    .line 178
    const-string v0, "camera_face_beautify_off"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onFlashModeChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 132
    const-string v0, "camera_flash_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const v0, 0x7f0a005b

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showScreenHint(I)V

    .line 134
    const-string v0, "on"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v0, "camera_flash_auto"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const v0, 0x7f0a005d

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showScreenHint(I)V

    .line 137
    const-string v0, "auto"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    const v0, 0x7f0a005c

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showScreenHint(I)V

    .line 140
    const-string v0, "off"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onHdrModeChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 145
    const-string v0, "camera_hdr_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showScreenHint(I)V

    .line 150
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void

    .line 148
    :cond_0
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showScreenHint(I)V

    goto :goto_0
.end method

.method private onSoundModeChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 154
    const-string v0, "camera_sound_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const v0, 0x7f0a004b

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showScreenHint(I)V

    .line 156
    const-string v0, "on"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showScreenHint(I)V

    .line 159
    const-string v0, "off"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onTimerModeChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 164
    const-string v0, "camera_timer_on_5"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showScreenHint(I)V

    .line 169
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void

    .line 167
    :cond_0
    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showScreenHint(I)V

    goto :goto_0
.end method


# virtual methods
.method public OnSettingsChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 107
    const-string v0, "key_camera_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->onCameraIdChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v0, "key_camera_flash"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->onFlashModeChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    const-string v0, "key_camera_hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->onHdrModeChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_3
    const-string v0, "key_camera_sound"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->onSoundModeChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_4
    const-string v0, "key_camera_timer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->onTimerModeChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_5
    const-string v0, "key_face_beautify"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->onFaceBeautyfyModeChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected actionDown(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 198
    const-string v0, "key_camera_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "key_camera_id"

    const v1, 0x7f02005a

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setDrawable(Ljava/lang/String;I)V

    .line 201
    :cond_0
    return-void
.end method

.method protected actionUp(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 205
    const-string v0, "key_camera_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "key_camera_id"

    const v1, 0x7f020057

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setDrawable(Ljava/lang/String;I)V

    .line 207
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->invalidate()V

    .line 209
    :cond_0
    return-void
.end method

.method public initSettings(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cameraId"
    .parameter "flashMode"
    .parameter "featureMode"
    .parameter "soundMode"
    .parameter "timerMode"
    .parameter "faceBeautyfyMode"

    .prologue
    const/4 v2, 0x1

    .line 60
    if-ne p1, v2, :cond_0

    .line 61
    const-string v0, "key_camera_id"

    const-string v1, "camera_face_front"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_0
    const-string v0, "on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "key_camera_flash"

    const-string v1, "camera_flash_on"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_1
    const-string v0, "camera_timer_on_5"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    const-string v0, "key_camera_timer"

    const-string v1, "camera_timer_on_5"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_2
    const-string v0, "camera_face_beautify_on"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    const-string v0, "key_face_beautify"

    const-string v1, "camera_face_beautify_on"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_3
    if-ne p3, v2, :cond_5

    .line 91
    const-string v0, "key_camera_hdr"

    const-string v1, "camera_hdr_on"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_4
    const-string v0, "on"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 98
    const-string v0, "key_camera_sound"

    const-string v1, "camera_sound_on"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_5
    return-void

    .line 63
    :cond_0
    const-string v0, "key_camera_id"

    const-string v1, "camera_face_back"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    const-string v0, "auto"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    const-string v0, "key_camera_flash"

    const-string v1, "camera_flash_auto"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_2
    const-string v0, "key_camera_flash"

    const-string v1, "camera_flash_off"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_3
    const-string v0, "key_camera_timer"

    const-string v1, "camera_timer_off"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 86
    :cond_4
    const-string v0, "key_face_beautify"

    const-string v1, "camera_face_beautify_off"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 93
    :cond_5
    const-string v0, "key_camera_hdr"

    const-string v1, "camera_hdr_off"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 100
    :cond_6
    const-string v0, "key_camera_sound"

    const-string v1, "camera_sound_off"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method protected onSettingItemCreated(Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 214
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 2
    .parameter "flashMode"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingItemMap:Ljava/util/HashMap;

    const-string v1, "key_camera_flash"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->setAlpha(I)V

    .line 184
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    const-string v0, "key_camera_flash"

    const-string v1, "camera_flash_on"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    const-string v0, "key_camera_flash"

    const-string v1, "camera_flash_auto"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_2
    const-string v0, "key_camera_flash"

    const-string v1, "camera_flash_off"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingItemMap:Ljava/util/HashMap;

    const-string v1, "key_camera_hdr"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_hdr_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingItemMap:Ljava/util/HashMap;

    const-string v1, "key_camera_flash"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->setAlpha(I)V

    goto :goto_0
.end method
