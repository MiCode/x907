.class public Lcom/oppo/os/OppoEnvironment;
.super Landroid/os/Environment;
.source "OppoEnvironment.java"


# static fields
.field private static final EXTERNAL_SD_STORAGE_DIRECTORY:Ljava/io/File;

.field private static final INTERNAL_SD_STORAGE_DIRECTORY:Ljava/io/File;

.field private static final INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

.field private static final UCLIENT_STORAGE_DIRECTORY:Ljava/io/File;

.field protected static mMntSvc:Landroid/os/storage/IMountService;

.field static final mThirdApkInstallPosition:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "EXTERNAL_STORAGE_UCLIENT"

    const-string v1, "/usb_client"

    invoke-static {v0, v1}, Lcom/oppo/os/OppoEnvironment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/oppo/os/OppoEnvironment;->UCLIENT_STORAGE_DIRECTORY:Ljava/io/File;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/os/OppoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 85
    const-string v0, "EXTERNAL_STORAGE"

    const-string v1, "/sdcard"

    invoke-static {v0, v1}, Lcom/oppo/os/OppoEnvironment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/oppo/os/OppoEnvironment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 135
    const-string v0, "EXTERNAL_STORAGE"

    const-string v1, "/sdcard"

    invoke-static {v0, v1}, Lcom/oppo/os/OppoEnvironment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/oppo/os/OppoEnvironment;->INTERNAL_SD_STORAGE_DIRECTORY:Ljava/io/File;

    .line 175
    const-string v0, "EXTERNAL_STORAGE2"

    const-string/jumbo v1, "mnt/sdcard2"

    invoke-static {v0, v1}, Lcom/oppo/os/OppoEnvironment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/oppo/os/OppoEnvironment;->EXTERNAL_SD_STORAGE_DIRECTORY:Ljava/io/File;

    .line 216
    sget-object v0, Lcom/oppo/os/OppoEnvironment;->INTERNAL_SD_STORAGE_DIRECTORY:Ljava/io/File;

    sput-object v0, Lcom/oppo/os/OppoEnvironment;->mThirdApkInstallPosition:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Environment;-><init>()V

    return-void
.end method

.method public static getExternalSdDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/oppo/os/OppoEnvironment;->EXTERNAL_SD_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalSdState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getExternalSdDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/os/OppoEnvironment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalSdDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/oppo/os/OppoEnvironment;->INTERNAL_SD_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getInternalSdState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/os/OppoEnvironment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/oppo/os/OppoEnvironment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getInternalStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    :try_start_0
    sget-object v1, Lcom/oppo/os/OppoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 124
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Lcom/oppo/os/OppoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 127
    :cond_0
    sget-object v1, Lcom/oppo/os/OppoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 129
    .local v0, rex:Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 128
    .end local v0           #rex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 129
    .restart local v0       #rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    goto :goto_0
.end method

.method protected static getStorageState(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter "hFile"

    .prologue
    .line 261
    :try_start_0
    sget-object v1, Lcom/oppo/os/OppoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 262
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Lcom/oppo/os/OppoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 265
    :cond_0
    sget-object v1, Lcom/oppo/os/OppoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 267
    :goto_0
    return-object v1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    goto :goto_0
.end method

.method public static getThirdApkInstallPosition()Ljava/io/File;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/oppo/os/OppoEnvironment;->mThirdApkInstallPosition:Ljava/io/File;

    return-object v0
.end method

.method public static getUClientStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/oppo/os/OppoEnvironment;->UCLIENT_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getUClientStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    :try_start_0
    sget-object v1, Lcom/oppo/os/OppoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 76
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Lcom/oppo/os/OppoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 79
    :cond_0
    sget-object v1, Lcom/oppo/os/OppoEnvironment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getUClientStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 81
    .local v0, rex:Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 80
    .end local v0           #rex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 81
    .restart local v0       #rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    goto :goto_0
.end method

.method public static pathConvert(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "path"

    .prologue
    const/4 v6, 0x0

    .line 224
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 225
    .local v2, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, internal:Ljava/lang/String;
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getExternalSdDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, external:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .local v3, result:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const v5, 0x104068b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 239
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 234
    .restart local p0
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 235
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const v5, 0x104068a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static test_pathConvert()V
    .locals 6

    .prologue
    .line 244
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, inter:Ljava/lang/String;
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getExternalSdDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, exter:Ljava/lang/String;
    const-string v3, "hyzeng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/oppo/os/OppoEnvironment;->pathConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v3, "hyzeng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/oppo/os/OppoEnvironment;->pathConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/media"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, path:Ljava/lang/String;
    const-string v3, "hyzeng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/oppo/os/OppoEnvironment;->pathConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/photo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    const-string v3, "hyzeng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/oppo/os/OppoEnvironment;->pathConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method
