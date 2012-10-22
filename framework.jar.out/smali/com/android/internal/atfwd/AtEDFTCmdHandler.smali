.class public Lcom/android/internal/atfwd/AtEDFTCmdHandler;
.super Lcom/android/internal/atfwd/AtCmdBaseHandler;
.source "AtEDFTCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/atfwd/AtEDFTCmdHandler$storageListener;,
        Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    }
.end annotation


# static fields
.field private static final ACTION_KEYBOARD_LIGHT:I = 0x5

.field private static final ACTION_LCM_SCREEN:I = 0x0

.field private static final ACTION_MASTER_CLEAR:I = 0xd

.field private static final ACTION_VIBRATE:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "AtEDFTCmdHandler"

.field private static final blpath:Ljava/lang/String; = "/sys/class/leds/button-backlight/brightness"

.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static final sVibratePattern:[J


# instance fields
.field private final DELAY_TO_CLEAR:I

.field private final MASTER_CLEAR:I

.field private contx:Landroid/content/Context;

.field private volatile isCleared:Z

.field private lastformat_result:Z

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/internal/atfwd/AtEDFTCmdHandler$storageListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private mountService:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->sVibratePattern:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmdBaseHandler;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object v1, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mVibrator:Landroid/os/Vibrator;

    .line 67
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->DELAY_TO_CLEAR:I

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->MASTER_CLEAR:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->isCleared:Z

    .line 417
    new-instance v0, Lcom/android/internal/atfwd/AtEDFTCmdHandler$1;

    invoke-direct {v0, p0}, Lcom/android/internal/atfwd/AtEDFTCmdHandler$1;-><init>(Lcom/android/internal/atfwd/AtEDFTCmdHandler;)V

    iput-object v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mHandler:Landroid/os/Handler;

    .line 77
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mVibrator:Landroid/os/Vibrator;

    .line 78
    iput-object p1, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->contx:Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/android/internal/atfwd/AtEDFTCmdHandler$storageListener;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/atfwd/AtEDFTCmdHandler$storageListener;-><init>(Lcom/android/internal/atfwd/AtEDFTCmdHandler;Lcom/android/internal/atfwd/AtEDFTCmdHandler$1;)V

    iput-object v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mListener:Lcom/android/internal/atfwd/AtEDFTCmdHandler$storageListener;

    .line 82
    const-string/jumbo v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 83
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mountService:Landroid/os/storage/IMountService;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/atfwd/AtEDFTCmdHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->formatStorage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/atfwd/AtEDFTCmdHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->masterClear()V

    return-void
.end method

.method static acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 199
    sget-object v1, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 203
    :cond_0
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 206
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "Eng"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 212
    sget-object v1, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method private formatStorage(Ljava/lang/String;)V
    .locals 5
    .parameter "dir"

    .prologue
    .line 388
    iget-object v2, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mountService:Landroid/os/storage/IMountService;

    if-eqz v2, :cond_2

    .line 389
    const/4 v1, 0x0

    .line 390
    .local v1, retry:I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 392
    :try_start_0
    const-string v2, "AtEDFTCmdHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "formatStorage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v2, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mountService:Landroid/os/storage/IMountService;

    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    move-result v0

    .line 394
    .local v0, res:I
    if-nez v0, :cond_0

    .line 396
    const-string v2, "AtEDFTCmdHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " success "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->lastformat_result:Z

    .line 415
    .end local v0           #res:I
    .end local v1           #retry:I
    :goto_1
    return-void

    .line 401
    .restart local v0       #res:I
    .restart local v1       #retry:I
    :cond_0
    const-string v2, "AtEDFTCmdHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " faided"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v0           #res:I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->lastformat_result:Z

    goto :goto_1

    .line 412
    .end local v1           #retry:I
    :cond_2
    const-string v2, "AtEDFTCmdHandler"

    const-string/jumbo v3, "mountService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 404
    .restart local v1       #retry:I
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private handleInternal(Ljava/lang/String;)V
    .locals 2
    .parameter "dir"

    .prologue
    .line 374
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getInternalSdState()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, status:Ljava/lang/String;
    const-string/jumbo v1, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->formatStorage(Ljava/lang/String;)V

    .line 384
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->unmountStorage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized masterClear()V
    .locals 3

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->isCleared:Z

    if-nez v0, :cond_0

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->isCleared:Z

    .line 433
    const-string v0, "AtEDFTCmdHandler"

    const-string v1, "begin to master clear"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->contx:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :cond_0
    monitor-exit p0

    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static releaseCpuLock()V
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 218
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 220
    :cond_0
    return-void
.end method

.method private static setBrightness(I)V
    .locals 5
    .parameter "brightness"

    .prologue
    .line 225
    :try_start_0
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 226
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 228
    invoke-interface {v1, p0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 233
    .local v0, doe:Landroid/os/RemoteException;
    const-string v2, "AtEDFTCmdHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in setBrightness "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setbuttonlight(Ljava/lang/String;)V
    .locals 6
    .parameter "value"

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 242
    .local v1, fw:Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/sys/class/leds/button-backlight/brightness"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 243
    .end local v1           #fw:Ljava/io/FileWriter;
    .local v2, fw:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 250
    if-eqz v2, :cond_0

    .line 251
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 252
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 258
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    :cond_1
    :goto_0
    return-void

    .line 254
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 256
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_0

    .line 244
    :catch_1
    move-exception v0

    .line 245
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v3, "AtEDFTCmdHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blpath does not exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    if-eqz v1, :cond_1

    .line 251
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 252
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 254
    :catch_2
    move-exception v3

    goto :goto_0

    .line 246
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 247
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v3, "AtEDFTCmdHandler"

    const-string v4, "Error writing blpath file at /sys/class/leds/button-backlight/brightness"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 250
    if-eqz v1, :cond_1

    .line 251
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 252
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 254
    :catch_4
    move-exception v3

    goto :goto_0

    .line 249
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 250
    :goto_3
    if-eqz v1, :cond_2

    .line 251
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 252
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 255
    :cond_2
    :goto_4
    throw v3

    .line 254
    :catch_5
    move-exception v4

    goto :goto_4

    .line 249
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_3

    .line 246
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_2

    .line 244
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_1
.end method

.method private unmountStorage(Ljava/lang/String;)V
    .locals 3
    .parameter "dir"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mountService:Landroid/os/storage/IMountService;

    if-eqz v0, :cond_0

    .line 361
    :try_start_0
    const-string v0, "AtEDFTCmdHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unmountStorage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mountService:Landroid/os/storage/IMountService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    const-string v0, "AtEDFTCmdHandler"

    const-string/jumbo v1, "mountService == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "+EDFT"

    return-object v0
.end method

.method public handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 12
    .parameter "cmd"

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x1

    .line 88
    const/4 v3, 0x0

    .line 91
    .local v3, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const/4 v5, 0x0

    .line 94
    .local v5, valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    :try_start_0
    new-instance v6, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;

    invoke-direct {v6, p0, p1}, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;-><init>(Lcom/android/internal/atfwd/AtEDFTCmdHandler;Lcom/android/internal/atfwd/AtCmd;)V
    :try_end_0
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .end local v5           #valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    .local v6, valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    :try_start_1
    invoke-virtual {v6}, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->getAction()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 183
    const-string v7, "AtEDFTCmdHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error Action "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->getAction()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v4, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v7, 0x0

    const-string v8, "+CME ERROR: 1"

    invoke-direct {v4, v7, v8}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .local v4, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    move-object v3, v4

    .end local v4           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :goto_0
    move-object v5, v6

    .line 191
    .end local v6           #valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    :goto_1
    return-object v3

    .line 98
    .end local v5           #valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    .restart local v6       #valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    :sswitch_0
    invoke-virtual {v6}, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->getParams()I

    move-result v7

    if-nez v7, :cond_0

    .line 100
    const-string v7, "AtEDFTCmdHandler"

    const-string v8, "+EDFT: stop viberate"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v7, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v7}, Landroid/os/Vibrator;->cancel()V

    .line 102
    invoke-static {}, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->releaseCpuLock()V

    .line 110
    :goto_2
    new-instance v4, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v4       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    move-object v3, v4

    .line 111
    .end local v4           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_0

    .line 106
    :cond_0
    const-string v7, "AtEDFTCmdHandler"

    const-string v8, "+EDFT: start viberate"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v7, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->contx:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 108
    iget-object v7, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mVibrator:Landroid/os/Vibrator;

    sget-object v8, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->sVibratePattern:[J

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_1
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 187
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 188
    .end local v6           #valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    .local v0, e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    :goto_3
    const-string v7, "AtEDFTCmdHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing command "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v3, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const-string v7, "+CME ERROR: 25"

    invoke-direct {v3, v11, v7}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_1

    .line 113
    .end local v0           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
    .end local v5           #valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    .restart local v6       #valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    :sswitch_1
    :try_start_2
    invoke-virtual {v6}, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->getParams()I

    move-result v7

    if-nez v7, :cond_1

    .line 115
    const-string v7, "AtEDFTCmdHandler"

    const-string v8, "+EDFT: turn off screen backlight"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->setBrightness(I)V

    .line 123
    :goto_4
    new-instance v4, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v4       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    move-object v3, v4

    .line 124
    .end local v4           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_0

    .line 120
    :cond_1
    const-string v7, "AtEDFTCmdHandler"

    const-string v8, "+EDFT: turn on screen backlight"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/16 v7, 0xff

    invoke-static {v7}, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->setBrightness(I)V

    goto :goto_4

    .line 126
    :sswitch_2
    invoke-virtual {v6}, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->getParams()I

    move-result v7

    if-nez v7, :cond_2

    .line 128
    const-string v7, "AtEDFTCmdHandler"

    const-string v8, "+EDFT: turn off button light"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v7, "0"

    invoke-static {v7}, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->setbuttonlight(Ljava/lang/String;)V

    .line 136
    :goto_5
    new-instance v4, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v4       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    move-object v3, v4

    .line 137
    .end local v4           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto/16 :goto_0

    .line 133
    :cond_2
    const-string v7, "AtEDFTCmdHandler"

    const-string v8, "+EDFT: turn on button light"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v7, "255"

    invoke-static {v7}, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->setbuttonlight(Ljava/lang/String;)V

    goto :goto_5

    .line 139
    :sswitch_3
    invoke-virtual {v6}, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->getParams()I

    move-result v7

    if-ne v7, v8, :cond_3

    .line 142
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->lastformat_result:Z

    .line 145
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getExternalSdDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, mExternalSd:Ljava/lang/String;
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, internalDir:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mListener:Lcom/android/internal/atfwd/AtEDFTCmdHandler$storageListener;

    invoke-virtual {v7, v2}, Lcom/android/internal/atfwd/AtEDFTCmdHandler$storageListener;->setEXCLUDE_SD_PATH(Ljava/lang/String;)V

    .line 152
    iget-object v7, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v8, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mListener:Lcom/android/internal/atfwd/AtEDFTCmdHandler$storageListener;

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 154
    invoke-direct {p0, v1}, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->handleInternal(Ljava/lang/String;)V

    .line 158
    new-instance v4, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v4       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    move-object v3, v4

    .line 159
    .end local v4           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto/16 :goto_0

    .line 160
    .end local v1           #internalDir:Ljava/lang/String;
    .end local v2           #mExternalSd:Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->getParams()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 162
    new-instance v4, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " format:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->lastformat_result:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v4       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    move-object v3, v4

    .end local v4           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto/16 :goto_0

    .line 164
    :cond_4
    invoke-virtual {v6}, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->getParams()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 167
    iget-boolean v7, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->lastformat_result:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->isCleared:Z

    if-nez v7, :cond_5

    .line 168
    iget-object v7, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v8, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mListener:Lcom/android/internal/atfwd/AtEDFTCmdHandler$storageListener;

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 169
    new-instance v4, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 170
    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v4       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    const-wide/16 v9, 0x1f4

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v3, v4

    .end local v4           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto/16 :goto_0

    .line 173
    :cond_5
    :try_start_4
    const-string v7, "AtEDFTCmdHandler"

    const-string v8, "Error factory restore."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v4, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v7, 0x0

    const-string v8, "+CME ERROR: 1"

    invoke-direct {v4, v7, v8}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v4       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    move-object v3, v4

    .end local v4           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto/16 :goto_0

    .line 179
    :cond_6
    new-instance v4, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v7, 0x0

    const-string v8, "+CME ERROR: 1"

    invoke-direct {v4, v7, v8}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v4       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    move-object v3, v4

    .line 181
    .end local v4           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto/16 :goto_0

    .line 187
    .end local v6           #valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    :catch_1
    move-exception v0

    goto/16 :goto_3

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .end local v5           #valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    .restart local v4       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v6       #valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    :catch_2
    move-exception v0

    move-object v5, v6

    .end local v6           #valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
    move-object v3, v4

    .end local v4           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto/16 :goto_3

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_0
        0xd -> :sswitch_3
    .end sparse-switch
.end method
