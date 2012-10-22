.class Lcom/android/server/HDMIService;
.super Landroid/os/IHDMIService$Stub;
.source "HDMIService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HDMIService"


# instance fields
.field public final CAM_ON_BEFORE_HDMI:Ljava/lang/String;

.field public final MHL_IN_USE_BEFORE_CAM:Ljava/lang/String;

.field public final MHL_STATE_ON:Ljava/lang/String;

.field engineer_mode_hdcp:Z

.field engineer_mode_resolution:I

.field final m1280x720p50_16_9:I

.field final m1280x720p60_16_9:I

.field final m1440x480i60_16_9:I

.field final m1440x480i60_4_3:I

.field final m1440x576i50_16_9:I

.field final m1440x576i50_4_3:I

.field final m1920x1080i60_16_9:I

.field final m1920x1080p24_16_9:I

.field final m1920x1080p25_16_9:I

.field final m1920x1080p30_16_9:I

.field final m1920x1080p50_16_9:I

.field final m1920x1080p60_16_9:I

.field final m640x480p60_4_3:I

.field final m720x480p60_16_9:I

.field final m720x480p60_4_3:I

.field final m720x576p50_16_9:I

.field final m720x576p50_4_3:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHDMIModes:[I

.field private mHDMIUserOption:Z

.field private mListener:Lcom/android/server/HDMIListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 136
    invoke-direct {p0}, Landroid/os/IHDMIService$Stub;-><init>()V

    .line 54
    iput-boolean v5, p0, Lcom/android/server/HDMIService;->mHDMIUserOption:Z

    .line 57
    const-string v1, "CAM_ON_BEFOR_HDMI_PLUG_IN"

    iput-object v1, p0, Lcom/android/server/HDMIService;->CAM_ON_BEFORE_HDMI:Ljava/lang/String;

    .line 61
    const-string v1, "MHL_STATE_IS_ON_NOW"

    iput-object v1, p0, Lcom/android/server/HDMIService;->MHL_STATE_ON:Ljava/lang/String;

    .line 65
    const-string v1, "MHL_IN_USE_BEFORE_CAMERA"

    iput-object v1, p0, Lcom/android/server/HDMIService;->MHL_IN_USE_BEFORE_CAM:Ljava/lang/String;

    .line 68
    iput v5, p0, Lcom/android/server/HDMIService;->engineer_mode_resolution:I

    .line 69
    iput-boolean v6, p0, Lcom/android/server/HDMIService;->engineer_mode_hdcp:Z

    .line 71
    iput v6, p0, Lcom/android/server/HDMIService;->m640x480p60_4_3:I

    .line 72
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/HDMIService;->m720x480p60_4_3:I

    .line 73
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/HDMIService;->m720x480p60_16_9:I

    .line 74
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/HDMIService;->m1280x720p60_16_9:I

    .line 75
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080i60_16_9:I

    .line 76
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/server/HDMIService;->m1440x480i60_4_3:I

    .line 77
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/HDMIService;->m1440x480i60_16_9:I

    .line 78
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080p60_16_9:I

    .line 79
    const/16 v1, 0x11

    iput v1, p0, Lcom/android/server/HDMIService;->m720x576p50_4_3:I

    .line 80
    const/16 v1, 0x12

    iput v1, p0, Lcom/android/server/HDMIService;->m720x576p50_16_9:I

    .line 81
    const/16 v1, 0x13

    iput v1, p0, Lcom/android/server/HDMIService;->m1280x720p50_16_9:I

    .line 82
    const/16 v1, 0x15

    iput v1, p0, Lcom/android/server/HDMIService;->m1440x576i50_4_3:I

    .line 83
    const/16 v1, 0x16

    iput v1, p0, Lcom/android/server/HDMIService;->m1440x576i50_16_9:I

    .line 84
    const/16 v1, 0x1f

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080p50_16_9:I

    .line 85
    const/16 v1, 0x20

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080p24_16_9:I

    .line 86
    const/16 v1, 0x21

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080p25_16_9:I

    .line 87
    const/16 v1, 0x22

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080p30_16_9:I

    .line 158
    new-instance v1, Lcom/android/server/HDMIService$1;

    invoke-direct {v1, p0}, Lcom/android/server/HDMIService$1;-><init>(Lcom/android/server/HDMIService;)V

    iput-object v1, p0, Lcom/android/server/HDMIService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    iput-object p1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    .line 141
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/HDMIService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v7, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 143
    const-string v1, "ro.hdmi.enable"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "ctl.stop"

    const-string v2, "hdmid"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "ctl.start"

    const-string v2, "hdmid"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 150
    :cond_0
    new-instance v1, Lcom/android/server/HDMIListener;

    invoke-direct {v1, p0}, Lcom/android/server/HDMIListener;-><init>(Lcom/android/server/HDMIService;)V

    iput-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    .line 151
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HDMI_USEROPTION"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, hdmiUserOption:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "HDMI_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    iput-boolean v6, p0, Lcom/android/server/HDMIService;->mHDMIUserOption:Z

    .line 156
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HDMIService;)Lcom/android/server/HDMIListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    return-object v0
.end method

.method private isInHDMIModes(I)Z
    .locals 5
    .parameter "mode"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 310
    .local v3, tmode:I
    if-ne p1, v3, :cond_0

    .line 311
    const/4 v4, 0x1

    .line 313
    .end local v3           #tmode:I
    :goto_1
    return v4

    .line 309
    .restart local v3       #tmode:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v3           #tmode:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public broadcastEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "eventName"

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    const-string v1, "HDMIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public broadcastHDMIPluggedEvent(Z)V
    .locals 4
    .parameter "connected"

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    if-eqz p1, :cond_0

    .line 232
    const-string v1, "EDID"

    iget-object v2, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 234
    const-string v1, "HDMIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting Intent ACTION_HDMI_PLUGGED state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method getBestMode()I
    .locals 7

    .prologue
    .line 125
    const/4 v2, 0x0

    .local v2, bestOrder:I
    const/4 v1, 0x1

    .line 126
    .local v1, bestMode:I
    iget-object v0, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v5, v0, v3

    .line 127
    .local v5, mode:I
    invoke-virtual {p0, v5}, Lcom/android/server/HDMIService;->getModeOrder(I)I

    move-result v6

    .line 128
    .local v6, order:I
    if-le v6, v2, :cond_0

    .line 129
    move v2, v6

    .line 130
    move v1, v5

    .line 126
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    .end local v5           #mode:I
    .end local v6           #order:I
    :cond_1
    return v1
.end method

.method public getHDMIUserOption()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/server/HDMIService;->mHDMIUserOption:Z

    return v0
.end method

.method getModeOrder(I)I
    .locals 1
    .parameter "mode"

    .prologue
    .line 91
    sparse-switch p1, :sswitch_data_0

    .line 95
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    .line 98
    :sswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 100
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 103
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 106
    :sswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 108
    :sswitch_4
    const/4 v0, 0x6

    goto :goto_0

    .line 111
    :sswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 119
    :sswitch_6
    const/16 v0, 0x8

    goto :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x11 -> :sswitch_3
        0x12 -> :sswitch_3
        0x13 -> :sswitch_5
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x20 -> :sswitch_6
        0x21 -> :sswitch_6
        0x22 -> :sswitch_6
    .end sparse-switch
.end method

.method public getModes()[I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    return-object v0
.end method

.method public isHDMIConnected()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0}, Lcom/android/server/HDMIListener;->isHDMIConnected()Z

    move-result v0

    return v0
.end method

.method public notifyCamAndHDMIcollision()V
    .locals 1

    .prologue
    .line 390
    const-string v0, "CAM_ON_BEFOR_HDMI_PLUG_IN"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIService;->broadcastEvent(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public notifyHDMIAudioOff()V
    .locals 2

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, connected:Z
    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const-string v1, "HDMI_DISCONNECTED"

    invoke-virtual {p0, v1}, Lcom/android/server/HDMIService;->broadcastEvent(Ljava/lang/String;)V

    .line 307
    :cond_0
    return-void
.end method

.method public notifyHDMIAudioOn()V
    .locals 2

    .prologue
    .line 290
    const/4 v0, 0x1

    .line 291
    .local v0, connected:Z
    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    const/high16 v1, 0x40a0

    invoke-virtual {p0, v1}, Lcom/android/server/HDMIService;->setActionsafeHeightRatio(F)V

    .line 295
    const-string v1, "HDMI_CONNECTED"

    invoke-virtual {p0, v1}, Lcom/android/server/HDMIService;->broadcastEvent(Ljava/lang/String;)V

    .line 298
    :cond_0
    return-void
.end method

.method public notifyHDMIConnected([I)V
    .locals 3
    .parameter "modes"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    .line 244
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    monitor-enter v1

    .line 246
    :try_start_0
    iget v0, p0, Lcom/android/server/HDMIService;->engineer_mode_resolution:I

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getBestMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIListener;->changeDisplayMode(I)V

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIListener;->enableHDMIOutput(Z)V

    .line 252
    monitor-exit v1

    .line 260
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    iget v2, p0, Lcom/android/server/HDMIService;->engineer_mode_resolution:I

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIListener;->changeDisplayMode(I)V

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyHDMIDisconnected()V
    .locals 3

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    .line 267
    const-string v0, "HDMI_DISCONNECTED"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIService;->broadcastEvent(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIListener;->enableHDMIOutput(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIListener;->setHPD(Z)V

    .line 276
    iget-boolean v0, p0, Lcom/android/server/HDMIService;->engineer_mode_hdcp:Z

    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIService;->setHDCPOption(Z)I

    .line 279
    :cond_0
    monitor-exit v1

    .line 287
    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyMHLInUseBeforeCamera()V
    .locals 1

    .prologue
    .line 402
    const-string v0, "MHL_IN_USE_BEFORE_CAMERA"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIService;->broadcastEvent(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public notifyMHLStateOn()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIService;->setHDMIOutput(Z)V

    .line 397
    return-void
.end method

.method public setActionsafeHeightRatio(F)V
    .locals 1
    .parameter "asHeightRatio"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIListener;->setActionsafeHeightRatio(F)V

    .line 208
    return-void
.end method

.method public setActionsafeWidthRatio(F)V
    .locals 1
    .parameter "asWidthRatio"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIListener;->setActionsafeWidthRatio(F)V

    .line 204
    return-void
.end method

.method public setHDCPOption(Z)I
    .locals 2
    .parameter "option"

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    monitor-enter v1

    .line 382
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/HDMIService;->engineer_mode_hdcp:Z

    .line 383
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIListener;->setHDCP(Z)V

    .line 384
    monitor-exit v1

    .line 385
    const/4 v0, 0x0

    return v0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHDMIOutput(Z)V
    .locals 4
    .parameter "enableHDMI"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "HDMI_USEROPTION"

    if-eqz p1, :cond_1

    const-string v1, "HDMI_ON"

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    iput-boolean p1, p0, Lcom/android/server/HDMIService;->mHDMIUserOption:Z

    .line 189
    iget-object v2, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    monitor-enter v2

    .line 190
    if-nez p1, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, connected:Z
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/HDMIService;->broadcastHDMIPluggedEvent(Z)V

    .line 193
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/HDMIListener;->enableHDMIOutput(Z)V

    .line 197
    .end local v0           #connected:Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v1, p1}, Lcom/android/server/HDMIListener;->setHPD(Z)V

    .line 199
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    return-void

    .line 185
    :cond_1
    const-string v1, "HDMI_OFF"

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIListener;->changeDisplayMode(I)V

    .line 222
    return-void
.end method

.method public setResolution(I)I
    .locals 5
    .parameter "res"

    .prologue
    const/4 v1, -0x1

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, mode:I
    const-string v2, "HDMIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter into setResolution .\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    packed-switch p1, :pswitch_data_0

    .line 375
    :cond_0
    :goto_0
    return v1

    .line 329
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getBestMode()I

    move-result v0

    .line 367
    :goto_1
    iget-object v2, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    monitor-enter v2

    .line 371
    :try_start_0
    iput v0, p0, Lcom/android/server/HDMIService;->engineer_mode_resolution:I

    .line 372
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v1, v0}, Lcom/android/server/HDMIListener;->changeDisplayMode(I)V

    .line 373
    const-string v1, "HDMIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change Resolution to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    const/4 v1, 0x0

    goto :goto_0

    .line 332
    :pswitch_1
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/android/server/HDMIService;->isInHDMIModes(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    const/16 v0, 0x22

    goto :goto_1

    .line 334
    :cond_1
    const/16 v2, 0x21

    invoke-direct {p0, v2}, Lcom/android/server/HDMIService;->isInHDMIModes(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    const/16 v0, 0x21

    goto :goto_1

    .line 336
    :cond_2
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lcom/android/server/HDMIService;->isInHDMIModes(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    const/16 v0, 0x20

    goto :goto_1

    .line 343
    :pswitch_2
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/server/HDMIService;->isInHDMIModes(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    const/4 v0, 0x4

    goto :goto_1

    .line 345
    :cond_3
    const/16 v2, 0x13

    invoke-direct {p0, v2}, Lcom/android/server/HDMIService;->isInHDMIModes(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    const/16 v0, 0x13

    goto :goto_1

    .line 352
    :pswitch_3
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/HDMIService;->isInHDMIModes(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 353
    const/4 v0, 0x3

    goto :goto_1

    .line 354
    :cond_4
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/HDMIService;->isInHDMIModes(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 355
    const/4 v0, 0x2

    goto :goto_1

    .line 356
    :cond_5
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/android/server/HDMIService;->isInHDMIModes(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 357
    const/16 v0, 0x12

    goto :goto_1

    .line 358
    :cond_6
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/android/server/HDMIService;->isInHDMIModes(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const/16 v0, 0x11

    goto/16 :goto_1

    .line 374
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SHUTDOWN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    const-string v0, "HDMIService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method
