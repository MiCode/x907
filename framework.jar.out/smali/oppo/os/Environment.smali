.class public Loppo/os/Environment;
.super Landroid/os/Environment;
.source "Environment.java"


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

    invoke-static {v0, v1}, Loppo/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Loppo/os/Environment;->UCLIENT_STORAGE_DIRECTORY:Ljava/io/File;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Loppo/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 85
    const-string v0, "EXTERNAL_STORAGE"

    const-string v1, "/sdcard"

    invoke-static {v0, v1}, Loppo/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Loppo/os/Environment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 134
    const-string v0, "EXTERNAL_STORAGE"

    const-string v1, "/sdcard"

    invoke-static {v0, v1}, Loppo/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Loppo/os/Environment;->INTERNAL_SD_STORAGE_DIRECTORY:Ljava/io/File;

    .line 169
    const-string v0, "EXTERNAL_STORAGE2"

    const-string/jumbo v1, "mnt/sdcard2"

    invoke-static {v0, v1}, Loppo/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Loppo/os/Environment;->EXTERNAL_SD_STORAGE_DIRECTORY:Ljava/io/File;

    .line 206
    sget-object v0, Loppo/os/Environment;->INTERNAL_SD_STORAGE_DIRECTORY:Ljava/io/File;

    sput-object v0, Loppo/os/Environment;->mThirdApkInstallPosition:Ljava/io/File;

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
    .line 189
    sget-object v0, Loppo/os/Environment;->EXTERNAL_SD_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalSdState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Loppo/os/Environment;->getExternalSdDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Loppo/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalSdDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Loppo/os/Environment;->INTERNAL_SD_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getInternalSdState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Loppo/os/Environment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Loppo/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Loppo/os/Environment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getInternalStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    :try_start_0
    sget-object v1, Loppo/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 124
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Loppo/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 127
    :cond_0
    sget-object v1, Loppo/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Loppo/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

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

.method public static getScreenShotDirectoryPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 264
    const-string v3, "EXTERNAL_STORAGE"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v2, "/sdcard"

    .line 266
    .local v2, prefix:Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10404ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, folderName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .end local v0           #folderName:Ljava/lang/String;
    .end local v2           #prefix:Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 265
    goto :goto_0
.end method

.method protected static getStorageState(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter "hFile"

    .prologue
    .line 251
    :try_start_0
    sget-object v1, Loppo/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 252
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Loppo/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 255
    :cond_0
    sget-object v1, Loppo/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 257
    :goto_0
    return-object v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    goto :goto_0
.end method

.method public static getThirdApkInstallPosition()Ljava/io/File;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Loppo/os/Environment;->mThirdApkInstallPosition:Ljava/io/File;

    return-object v0
.end method

.method public static getUClientStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Loppo/os/Environment;->UCLIENT_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getUClientStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    :try_start_0
    sget-object v1, Loppo/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 76
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Loppo/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 79
    :cond_0
    sget-object v1, Loppo/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Loppo/os/Environment;->getUClientStorageDirectory()Ljava/io/File;

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

    .line 214
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 215
    .local v2, res:Landroid/content/res/Resources;
    invoke-static {}, Loppo/os/Environment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, internal:Ljava/lang/String;
    invoke-static {}, Loppo/os/Environment;->getExternalSdDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, external:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .local v3, result:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const v5, 0x104068b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 229
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 224
    .restart local p0
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 225
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
    .line 234
    invoke-static {}, Loppo/os/Environment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, inter:Ljava/lang/String;
    invoke-static {}, Loppo/os/Environment;->getExternalSdDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, exter:Ljava/lang/String;
    const-string v3, "hyzeng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Loppo/os/Environment;->pathConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v3, "hyzeng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Loppo/os/Environment;->pathConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/media"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, path:Ljava/lang/String;
    const-string v3, "hyzeng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Loppo/os/Environment;->pathConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/photo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    const-string v3, "hyzeng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Loppo/os/Environment;->pathConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method
