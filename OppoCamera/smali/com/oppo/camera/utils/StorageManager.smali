.class public Lcom/oppo/camera/utils/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;
    }
.end annotation


# instance fields
.field private isEJECT:Z

.field private mContext:Landroid/content/Context;

.field private mDidRegister:Z

.field private mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

.field private mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

.field private mPicturesRemaining:I

.field protected final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSavePath:Ljava/lang/String;

.field private mSaveUri:Landroid/net/Uri;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field protected mShotMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "sharedPreferences"
    .parameter "savePath"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/utils/StorageManager;->isEJECT:Z

    .line 39
    const-string v0, "normal"

    iput-object v0, p0, Lcom/oppo/camera/utils/StorageManager;->mShotMode:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/oppo/camera/utils/StorageManager$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/utils/StorageManager$1;-><init>(Lcom/oppo/camera/utils/StorageManager;)V

    iput-object v0, p0, Lcom/oppo/camera/utils/StorageManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object p1, p0, Lcom/oppo/camera/utils/StorageManager;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/oppo/camera/utils/StorageManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 53
    iput-object p3, p0, Lcom/oppo/camera/utils/StorageManager;->mSavePath:Ljava/lang/String;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/camera/utils/StorageManager;)Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oppo/camera/utils/StorageManager;->mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oppo/camera/utils/StorageManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/oppo/camera/utils/StorageManager;->isEJECT:Z

    return p1
.end method

.method private static checkInternalFsWritable()Z
    .locals 4

    .prologue
    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/DCIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    const/4 v2, 0x0

    .line 236
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    goto :goto_0
.end method

.method private getAvailableSpace()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/16 v6, -0xa

    .line 159
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getInternalSdState()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, state:Ljava/lang/String;
    const-string v7, "checking"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 162
    iput-boolean v8, p0, Lcom/oppo/camera/utils/StorageManager;->isEJECT:Z

    .line 163
    const/16 v6, -0x14

    .line 185
    :cond_0
    :goto_0
    return v6

    .line 165
    :cond_1
    iget-boolean v7, p0, Lcom/oppo/camera/utils/StorageManager;->isEJECT:Z

    if-nez v7, :cond_0

    .line 168
    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 170
    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Lcom/oppo/camera/utils/StorageManager;->isEJECT:Z

    .line 171
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, storageDirectory:Ljava/lang/String;
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 173
    .local v3, stat:Landroid/os/StatFs;
    const v0, 0x16e360

    .line 174
    .local v0, PICTURE_BYTES:I
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    const v7, 0x49b71b00

    div-float v2, v6, v7

    .line 175
    .local v2, remaining:F
    float-to-int v6, v2

    goto :goto_0

    .line 176
    .end local v0           #PICTURE_BYTES:I
    .end local v2           #remaining:F
    .end local v3           #stat:Landroid/os/StatFs;
    .end local v5           #storageDirectory:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 177
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    const-string v7, "StorageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CANNOT_STAT_ERROR :Exception = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static getInternalAvailableStorage()J
    .locals 7

    .prologue
    const-wide/16 v3, -0xa

    .line 82
    :try_start_0
    invoke-static {}, Lcom/oppo/camera/utils/StorageManager;->hasInternalStorage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 93
    .local v2, storageDirectory:Ljava/lang/String;
    :goto_0
    return-wide v3

    .line 85
    .end local v2           #storageDirectory:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .restart local v2       #storageDirectory:Ljava/lang/String;
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, stat:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v5

    goto :goto_0

    .line 89
    .end local v1           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v0

    .line 93
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static hasInternalStorage()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getInternalSdState()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, state:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    invoke-static {}, Lcom/oppo/camera/utils/StorageManager;->checkInternalFsWritable()Z

    move-result v1

    .line 213
    .local v1, writable:Z
    if-eqz v1, :cond_0

    .line 214
    const/4 v2, 0x1

    .line 219
    .end local v1           #writable:Z
    :cond_0
    return v2
.end method

.method private updateStorageHint()V
    .locals 3

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 191
    .local v0, noStorageText:I
    iget v1, p0, Lcom/oppo/camera/utils/StorageManager;->mPicturesRemaining:I

    const/16 v2, -0xa

    if-ne v1, v2, :cond_2

    .line 192
    const v0, 0x7f0a0025

    .line 203
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/utils/StorageManager;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 204
    iget-object v1, p0, Lcom/oppo/camera/utils/StorageManager;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    invoke-interface {v1, v0}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    .line 206
    :cond_1
    return-void

    .line 193
    :cond_2
    iget v1, p0, Lcom/oppo/camera/utils/StorageManager;->mPicturesRemaining:I

    const/16 v2, -0x14

    if-ne v1, v2, :cond_3

    .line 194
    const v0, 0x7f0a0022

    .line 195
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/utils/StorageManager;->isEJECT:Z

    goto :goto_0

    .line 196
    :cond_3
    iget v1, p0, Lcom/oppo/camera/utils/StorageManager;->mPicturesRemaining:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_4

    .line 197
    const v0, 0x7f0a0026

    goto :goto_0

    .line 198
    :cond_4
    iget v1, p0, Lcom/oppo/camera/utils/StorageManager;->mPicturesRemaining:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 199
    const-string v1, "multishot"

    iget-object v2, p0, Lcom/oppo/camera/utils/StorageManager;->mShotMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "panorama"

    iget-object v2, p0, Lcom/oppo/camera/utils/StorageManager;->mShotMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "rewind"

    iget-object v2, p0, Lcom/oppo/camera/utils/StorageManager;->mShotMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    :cond_5
    const v0, 0x7f0a0026

    goto :goto_0
.end method


# virtual methods
.method public checkStorage()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oppo/camera/utils/StorageManager;->getAvailableSpace()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/utils/StorageManager;->mPicturesRemaining:I

    .line 58
    invoke-direct {p0}, Lcom/oppo/camera/utils/StorageManager;->updateStorageHint()V

    .line 59
    return-void
.end method

.method public fileScan(Ljava/lang/String;)V
    .locals 4
    .parameter "fName"

    .prologue
    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":/."

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 242
    .local v0, data:Landroid/net/Uri;
    iget-object v1, p0, Lcom/oppo/camera/utils/StorageManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method public isStoragePlaceEnough()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/oppo/camera/utils/StorageManager;->checkStorage()V

    .line 143
    const-string v2, "StorageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPicturesRemaining = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oppo/camera/utils/StorageManager;->mPicturesRemaining:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    iget v2, p0, Lcom/oppo/camera/utils/StorageManager;->mPicturesRemaining:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    iget v2, p0, Lcom/oppo/camera/utils/StorageManager;->mPicturesRemaining:I

    if-lt v2, v0, :cond_3

    .line 147
    const-string v2, "multishot"

    iget-object v3, p0, Lcom/oppo/camera/utils/StorageManager;->mShotMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "panorama"

    iget-object v3, p0, Lcom/oppo/camera/utils/StorageManager;->mShotMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "rewind"

    iget-object v3, p0, Lcom/oppo/camera/utils/StorageManager;->mShotMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 148
    goto :goto_0

    :cond_3
    move v0, v1

    .line 153
    goto :goto_0
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 67
    iget-boolean v1, p0, Lcom/oppo/camera/utils/StorageManager;->mDidRegister:Z

    if-eqz v1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/oppo/camera/utils/StorageManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/camera/utils/StorageManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/utils/StorageManager;->mDidRegister:Z

    goto :goto_0
.end method

.method public setMountStateChangedListener(Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;)V
    .locals 0
    .parameter "mountStateChangedListener"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/oppo/camera/utils/StorageManager;->mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

    .line 255
    return-void
.end method

.method public setSaveUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "saveUri"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/oppo/camera/utils/StorageManager;->mSaveUri:Landroid/net/Uri;

    .line 138
    return-void
.end method

.method public setScreenHintListener(Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;)V
    .locals 0
    .parameter "onShowHintViewListener"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/oppo/camera/utils/StorageManager;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    .line 247
    return-void
.end method

.method public setShotMode(Ljava/lang/String;)V
    .locals 0
    .parameter "shotMode"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/oppo/camera/utils/StorageManager;->mShotMode:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public unRegisterReveiver()V
    .locals 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/oppo/camera/utils/StorageManager;->mDidRegister:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/oppo/camera/utils/StorageManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/camera/utils/StorageManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/utils/StorageManager;->mDidRegister:Z

    .line 103
    :cond_0
    return-void
.end method
