.class Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;
.super Ljava/lang/Object;
.source "OppoFPDUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoFPDUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AirplaneModeHelper"
.end annotation


# instance fields
.field private mListener:Landroid/telephony/PhoneStateListener;

.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field private mState:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 424
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mState:I

    .line 508
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mListener:Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 424
    iget v0, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mState:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 424
    iput p1, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private quitLooper()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mLooper:Landroid/os/Looper;

    .line 430
    return-void
.end method

.method private waitStateTo(I)V
    .locals 5
    .parameter "targetState"

    .prologue
    .line 460
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;-><init>(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 486
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 487
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mLock:Ljava/lang/Object;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    iget v1, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mState:I

    if-eq v1, p1, :cond_0

    .line 500
    const-string v1, "OppoFPDUtils"

    const-string v2, "wait target state timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->quitLooper()V

    .line 504
    return-void

    .line 497
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 494
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public applyAirplaneMode(Landroid/content/Context;)V
    .locals 9
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 435
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 438
    .local v3, start:J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 439
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v5, "airplane_mode_on"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 442
    .local v2, on:Z
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "state"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    const/high16 v5, 0x2000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 445
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 446
    if-eqz v2, :cond_0

    .line 448
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->waitStateTo(I)V

    .line 451
    :cond_0
    const-string v5, "OppoFPDUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wait applying airplane mode for ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #on:Z
    :cond_1
    move v2, v6

    .line 439
    goto :goto_0
.end method
