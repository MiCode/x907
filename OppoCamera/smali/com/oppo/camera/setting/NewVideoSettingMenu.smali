.class public Lcom/oppo/camera/setting/NewVideoSettingMenu;
.super Lcom/oppo/camera/setting/SettingMenuBase;
.source "NewVideoSettingMenu.java"


# static fields
.field private static final ITEM_ICONS:[I

.field private static final ITEM_VALUES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 41
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/camera/setting/NewVideoSettingMenu;->ITEM_ICONS:[I

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oppo/camera/setting/NewVideoSettingMenu;->ITEM_VALUES:[I

    return-void

    .line 41
    :array_0
    .array-data 0x4
        0xet 0x0t 0x6t 0x7ft
        0xft 0x0t 0x6t 0x7ft
        0x10t 0x0t 0x6t 0x7ft
        0x12t 0x0t 0x6t 0x7ft
    .end array-data

    .line 43
    :array_1
    .array-data 0x4
        0x13t 0x0t 0x6t 0x7ft
        0x14t 0x0t 0x6t 0x7ft
        0x15t 0x0t 0x6t 0x7ft
        0x17t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/setting/SettingMenuBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-virtual {p0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, keys:[Ljava/lang/String;
    sget-object v1, Lcom/oppo/camera/setting/NewVideoSettingMenu;->ITEM_ICONS:[I

    sget-object v2, Lcom/oppo/camera/setting/NewVideoSettingMenu;->ITEM_VALUES:[I

    invoke-virtual {p0, v1, v2, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->init([I[I[Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private onCameraFaceChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 105
    const-string v0, "video_face_front"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->showScreenHint(I)V

    .line 110
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void

    .line 108
    :cond_0
    const v0, 0x7f0a004a

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->showScreenHint(I)V

    goto :goto_0
.end method

.method private onFlashModeChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 114
    const-string v0, "video_flash_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->showScreenHint(I)V

    .line 116
    const-string v0, "on"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    const v0, 0x7f0a0061

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->showScreenHint(I)V

    .line 119
    const-string v0, "off"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRecordModeChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 144
    const-string v0, "video_record_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->showScreenHint(I)V

    .line 146
    const-string v0, "off"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->showScreenHint(I)V

    .line 149
    const-string v0, "on"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVideoFormatChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 134
    const-string v0, "video_format_mp4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const v0, 0x7f0a005e

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->showScreenHint(I)V

    .line 136
    const-string v0, ".mp4"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    const v0, 0x7f0a005f

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->showScreenHint(I)V

    .line 139
    const-string v0, ".3gp"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVideoSizeChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 124
    const-string v0, "video_size_1080p"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->showScreenHint(I)V

    .line 126
    const-string v0, "1080p"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->showScreenHint(I)V

    .line 129
    const-string v0, "720p"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public OnSettingsChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 91
    const-string v0, "key_video_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->onCameraFaceChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const-string v0, "key_video_flash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->onFlashModeChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_2
    const-string v0, "key_video_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->onVideoSizeChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_3
    const-string v0, "key_video_format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->onVideoFormatChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_4
    const-string v0, "key_video_record"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->onRecordModeChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected actionDown(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 155
    const-string v0, "key_video_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "key_video_id"

    const v1, 0x7f020069

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setDrawable(Ljava/lang/String;I)V

    .line 158
    :cond_0
    return-void
.end method

.method protected actionUp(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 162
    const-string v0, "key_video_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "key_video_id"

    const v1, 0x7f020068

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setDrawable(Ljava/lang/String;I)V

    .line 165
    :cond_0
    return-void
.end method

.method public initSettings(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "cameraId"
    .parameter "flashMode"
    .parameter "videSize"
    .parameter "recordMode"

    .prologue
    .line 54
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 55
    const-string v0, "key_video_id"

    const-string v1, "video_face_front"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_0
    const-string v0, "on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "key_video_flash"

    const-string v1, "video_flash_on"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_1
    const-string v0, "1080p"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    const-string v0, "key_video_size"

    const-string v1, "video_size_1080p"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_2
    const-string v0, "off"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    const-string v0, "key_video_record"

    const-string v1, "video_record_off"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_3
    return-void

    .line 57
    :cond_0
    const-string v0, "key_video_id"

    const-string v1, "video_face_back"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    const-string v0, "key_video_flash"

    const-string v1, "video_flash_off"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_2
    const-string v0, "key_video_size"

    const-string v1, "video_size_720p"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 85
    :cond_3
    const-string v0, "key_video_record"

    const-string v1, "video_record_on"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onSettingItemCreated(Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 171
    return-void
.end method
