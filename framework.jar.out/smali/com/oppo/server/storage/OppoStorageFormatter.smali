.class public Lcom/oppo/server/storage/OppoStorageFormatter;
.super Landroid/app/Service;
.source "OppoStorageFormatter.java"


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName; = null

.field private static final MSG_FORAMT_DATA:I = 0x3

.field private static final MSG_FORAMT_EXTERNAL:I = 0x2

.field private static final MSG_FORAMT_INTERNAL:I = 0x1

.field public static final OPPO_FORMAT_ACTION_EXTRA:Ljava/lang/String; = "com.oppo.storage.format.ACTION_EXTRA"

.field public static final OPPO_FORMAT_DATA:I = 0x4

.field public static final OPPO_FORMAT_EXTERNAL_SD:I = 0x2

.field public static final OPPO_FORMAT_INTERNAL_SD:I = 0x1

.field public static final OPPO_FORMAT_NULL:I = 0x0

.field private static final OPPO_FORMAT_TIMESPACE:I = 0x2710

.field private static final OPPO_FORMAT_TRIES:I = 0xa

.field static final TAG:Ljava/lang/String; = "OppoStorageFormatter"


# instance fields
.field private mFormatData_Require:Z

.field private mFormatExternalSD_OK:Z

.field private mFormatExternalSD_Require:Z

.field private mFormatExternalSD_Tries:I

.field private mFormatInternalSD_OK:Z

.field private mFormatInternalSD_Require:Z

.field private mFormatInternalSD_Tries:I

.field private mFormatParam:I

.field private mHandler:Landroid/os/Handler;

.field private mHasSdCard:Z

.field private mMountService:Landroid/os/storage/IMountService;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/oppo/server/storage/OppoStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/server/storage/OppoStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z

    .line 40
    iput-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z

    .line 41
    iput-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatData_Require:Z

    .line 43
    iput-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z

    .line 44
    iput-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z

    .line 46
    iput v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    .line 47
    iput v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    .line 61
    iput v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatParam:I

    .line 64
    iput-object v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 66
    iput-object v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 71
    iput-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mHasSdCard:Z

    .line 74
    new-instance v0, Lcom/oppo/server/storage/OppoStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/oppo/server/storage/OppoStorageFormatter$1;-><init>(Lcom/oppo/server/storage/OppoStorageFormatter;)V

    iput-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Lcom/oppo/server/storage/OppoStorageFormatter$2;

    invoke-direct {v0, p0}, Lcom/oppo/server/storage/OppoStorageFormatter$2;-><init>(Lcom/oppo/server/storage/OppoStorageFormatter;)V

    iput-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/server/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/server/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/server/storage/OppoStorageFormatter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oppo/server/storage/OppoStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    return v0
.end method

.method static synthetic access$208(Lcom/oppo/server/storage/OppoStorageFormatter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/server/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mHasSdCard:Z

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/server/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/server/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z

    return v0
.end method

.method static synthetic access$502(Lcom/oppo/server/storage/OppoStorageFormatter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oppo/server/storage/OppoStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    return v0
.end method

.method static synthetic access$608(Lcom/oppo/server/storage/OppoStorageFormatter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/server/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatData_Require:Z

    return v0
.end method

.method static synthetic access$800(Lcom/oppo/server/storage/OppoStorageFormatter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private hasSDCard()Z
    .locals 2

    .prologue
    .line 380
    invoke-static {}, Loppo/os/Environment;->getExternalSdState()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, status:Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    const/4 v1, 0x1

    .line 384
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method doOppoFormat()V
    .locals 4

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/oppo/server/storage/OppoStorageFormatter;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "OppoStorageFormatter"

    const-string v1, "hasSDCard true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mHasSdCard:Z

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 220
    return-void

    .line 206
    :cond_0
    const-string v0, "OppoStorageFormatter"

    const-string v1, "hasSDCard false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mHasSdCard:Z

    goto :goto_0
.end method

.method fail(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 318
    const-string v0, "OppoStorageFormatter"

    invoke-virtual {p0}, Lcom/oppo/server/storage/OppoStorageFormatter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method formatExternalSD()V
    .locals 7

    .prologue
    .line 323
    invoke-static {}, Loppo/os/Environment;->getExternalSdDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, extStoragePath:Ljava/lang/String;
    invoke-static {}, Loppo/os/Environment;->getExternalSdState()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, status:Ljava/lang/String;
    const-string/jumbo v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    :cond_0
    const-string v4, "OppoStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unmounting exteranl sd...:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcom/oppo/server/storage/OppoStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 330
    .local v2, mountService:Landroid/os/storage/IMountService;
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v2, v1, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :goto_0
    return-void

    .line 331
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "OppoStorageFormatter"

    const-string v5, "Failed talking with mount service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 334
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_1
    const-string/jumbo v4, "nofs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 337
    :cond_2
    const-string v4, "OppoStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "formating exteranl sd...:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p0}, Lcom/oppo/server/storage/OppoStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 339
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    if-eqz v2, :cond_3

    .line 340
    new-instance v4, Lcom/oppo/server/storage/OppoStorageFormatter$4;

    invoke-direct {v4, p0, v2, v1}, Lcom/oppo/server/storage/OppoStorageFormatter$4;-><init>(Lcom/oppo/server/storage/OppoStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/oppo/server/storage/OppoStorageFormatter$4;->start()V

    goto :goto_0

    .line 361
    :cond_3
    const-string v4, "OppoStorageFormatter"

    const-string v5, "Unable to locate IMountService"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_4
    const-string v4, "bad_removal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 364
    const v4, 0x1040471

    invoke-virtual {p0, v4}, Lcom/oppo/server/storage/OppoStorageFormatter;->fail(I)V

    goto :goto_0

    .line 365
    :cond_5
    const-string v4, "checking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 366
    const v4, 0x1040472

    invoke-virtual {p0, v4}, Lcom/oppo/server/storage/OppoStorageFormatter;->fail(I)V

    goto :goto_0

    .line 367
    :cond_6
    const-string/jumbo v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 368
    const v4, 0x1040473

    invoke-virtual {p0, v4}, Lcom/oppo/server/storage/OppoStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 369
    :cond_7
    const-string/jumbo v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 370
    const v4, 0x1040474

    invoke-virtual {p0, v4}, Lcom/oppo/server/storage/OppoStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 372
    :cond_8
    const v4, 0x1040475

    invoke-virtual {p0, v4}, Lcom/oppo/server/storage/OppoStorageFormatter;->fail(I)V

    .line 373
    const-string v4, "OppoStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method formatInternalSD()V
    .locals 8

    .prologue
    .line 260
    invoke-static {}, Loppo/os/Environment;->getExternalSdDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, extStoragePath_oppo:Ljava/lang/String;
    invoke-static {}, Loppo/os/Environment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, extStoragePath:Ljava/lang/String;
    invoke-static {}, Loppo/os/Environment;->getInternalSdState()Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, status:Ljava/lang/String;
    const-string/jumbo v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "mounted_ro"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 265
    :cond_0
    const-string v5, "OppoStorageFormatter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unmounting internal sd...:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0}, Lcom/oppo/server/storage/OppoStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 268
    .local v3, mountService:Landroid/os/storage/IMountService;
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v3, v1, v5, v6}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v3           #mountService:Landroid/os/storage/IMountService;
    :goto_0
    return-void

    .line 269
    .restart local v3       #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "OppoStorageFormatter"

    const-string v6, "Failed talking with mount service"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 272
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #mountService:Landroid/os/storage/IMountService;
    :cond_1
    const-string/jumbo v5, "nofs"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "unmounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "unmountable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 275
    :cond_2
    const-string v5, "OppoStorageFormatter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "formating internal sd...:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0}, Lcom/oppo/server/storage/OppoStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 277
    .restart local v3       #mountService:Landroid/os/storage/IMountService;
    if-eqz v3, :cond_3

    .line 278
    new-instance v5, Lcom/oppo/server/storage/OppoStorageFormatter$3;

    invoke-direct {v5, p0, v3, v1, v2}, Lcom/oppo/server/storage/OppoStorageFormatter$3;-><init>(Lcom/oppo/server/storage/OppoStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/oppo/server/storage/OppoStorageFormatter$3;->start()V

    goto :goto_0

    .line 301
    :cond_3
    const-string v5, "OppoStorageFormatter"

    const-string v6, "Unable to locate IMountService"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    .end local v3           #mountService:Landroid/os/storage/IMountService;
    :cond_4
    const-string v5, "bad_removal"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 304
    const v5, 0x1040471

    invoke-virtual {p0, v5}, Lcom/oppo/server/storage/OppoStorageFormatter;->fail(I)V

    goto :goto_0

    .line 305
    :cond_5
    const-string v5, "checking"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 306
    const v5, 0x1040472

    invoke-virtual {p0, v5}, Lcom/oppo/server/storage/OppoStorageFormatter;->fail(I)V

    goto :goto_0

    .line 307
    :cond_6
    const-string/jumbo v5, "removed"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 308
    const v5, 0x1040473

    invoke-virtual {p0, v5}, Lcom/oppo/server/storage/OppoStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 309
    :cond_7
    const-string/jumbo v5, "shared"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 310
    const v5, 0x1040474

    invoke-virtual {p0, v5}, Lcom/oppo/server/storage/OppoStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 312
    :cond_8
    const v5, 0x1040475

    invoke-virtual {p0, v5}, Lcom/oppo/server/storage/OppoStorageFormatter;->fail(I)V

    .line 313
    const-string v5, "OppoStorageFormatter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown storage state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 249
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 250
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 251
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 256
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 253
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    const-string v1, "OppoStorageFormatter"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 135
    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 136
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Lcom/oppo/server/storage/OppoStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 137
    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 140
    :cond_0
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/oppo/server/storage/OppoStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 142
    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 143
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z

    .line 225
    iput-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z

    .line 226
    iput-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatData_Require:Z

    .line 228
    iput-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z

    .line 229
    iput-boolean v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z

    .line 231
    iput v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    .line 232
    iput v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    .line 234
    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 239
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 240
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 147
    iput-boolean v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z

    .line 148
    iput-boolean v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z

    .line 149
    iput-boolean v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatData_Require:Z

    .line 151
    iput-boolean v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z

    .line 152
    iput-boolean v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z

    .line 154
    iput v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    .line 155
    iput v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    .line 157
    const-string v0, "com.oppo.storage.format.ACTION_EXTRA"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatParam:I

    .line 158
    const-string v0, "OppoStorageFormatter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFormatParam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatParam:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatParam:I

    and-int/lit8 v0, v0, 0x1

    if-ne v3, v0, :cond_0

    .line 162
    iput-boolean v3, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z

    .line 165
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatParam:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_1

    .line 167
    iput-boolean v3, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z

    .line 170
    :cond_1
    const/4 v0, 0x4

    iget v1, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatParam:I

    and-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_2

    .line 172
    iput-boolean v3, p0, Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatData_Require:Z

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/server/storage/OppoStorageFormatter;->doOppoFormat()V

    .line 177
    const/4 v0, 0x3

    return v0
.end method
