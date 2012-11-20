.class public Lcom/oppo/test/ScreenLockManager;
.super Ljava/lang/Object;
.source "ScreenLockManager.java"


# static fields
.field public static final ALARM_LOCK:I = 0x3

.field public static final ANIMATION_LOCK:I = 0x0

.field public static final CHARGER_LOCK:I = 0x1

.field public static final SWITCH_LOCK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FPDWakeLock"


# instance fields
.field private mLocks:[Lcom/oppo/test/FPDWakeLock;


# direct methods
.method public constructor <init>(Lcom/oppo/test/ReleaseListener;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oppo/test/FPDWakeLock;

    iput-object v0, p0, Lcom/oppo/test/ScreenLockManager;->mLocks:[Lcom/oppo/test/FPDWakeLock;

    .line 18
    iget-object v0, p0, Lcom/oppo/test/ScreenLockManager;->mLocks:[Lcom/oppo/test/FPDWakeLock;

    const/4 v1, 0x0

    new-instance v2, Lcom/oppo/test/FPDWakeLock;

    const-string v3, "animation"

    invoke-direct {v2, v3, p1}, Lcom/oppo/test/FPDWakeLock;-><init>(Ljava/lang/String;Lcom/oppo/test/ReleaseListener;)V

    aput-object v2, v0, v1

    .line 19
    iget-object v0, p0, Lcom/oppo/test/ScreenLockManager;->mLocks:[Lcom/oppo/test/FPDWakeLock;

    const/4 v1, 0x1

    new-instance v2, Lcom/oppo/test/FPDWakeLock;

    const-string v3, "charger"

    invoke-direct {v2, v3, p1}, Lcom/oppo/test/FPDWakeLock;-><init>(Ljava/lang/String;Lcom/oppo/test/ReleaseListener;)V

    aput-object v2, v0, v1

    .line 20
    iget-object v0, p0, Lcom/oppo/test/ScreenLockManager;->mLocks:[Lcom/oppo/test/FPDWakeLock;

    const/4 v1, 0x2

    new-instance v2, Lcom/oppo/test/FPDWakeLock;

    const-string v3, "switch"

    invoke-direct {v2, v3, p1}, Lcom/oppo/test/FPDWakeLock;-><init>(Ljava/lang/String;Lcom/oppo/test/ReleaseListener;)V

    aput-object v2, v0, v1

    .line 21
    iget-object v0, p0, Lcom/oppo/test/ScreenLockManager;->mLocks:[Lcom/oppo/test/FPDWakeLock;

    const/4 v1, 0x3

    new-instance v2, Lcom/oppo/test/FPDWakeLock;

    const-string v3, "alarm"

    invoke-direct {v2, v3, p1}, Lcom/oppo/test/FPDWakeLock;-><init>(Ljava/lang/String;Lcom/oppo/test/ReleaseListener;)V

    aput-object v2, v0, v1

    .line 22
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/oppo/test/FPDWakeLock;

    iput-object v0, p0, Lcom/oppo/test/ScreenLockManager;->mLocks:[Lcom/oppo/test/FPDWakeLock;

    .line 27
    return-void
.end method

.method public getFPDLock(I)Lcom/oppo/test/FPDWakeLock;
    .locals 1
    .parameter "type"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oppo/test/ScreenLockManager;->mLocks:[Lcom/oppo/test/FPDWakeLock;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isAnyOneHeld()Z
    .locals 6

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oppo/test/ScreenLockManager;->mLocks:[Lcom/oppo/test/FPDWakeLock;

    .local v0, arr$:[Lcom/oppo/test/FPDWakeLock;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 45
    .local v2, l:Lcom/oppo/test/FPDWakeLock;
    invoke-virtual {v2}, Lcom/oppo/test/FPDWakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    const-string v4, "FPDWakeLock"

    invoke-virtual {v2}, Lcom/oppo/test/FPDWakeLock;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v4, 0x1

    .line 55
    .end local v2           #l:Lcom/oppo/test/FPDWakeLock;
    :goto_1
    return v4

    .line 43
    .restart local v2       #l:Lcom/oppo/test/FPDWakeLock;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v2           #l:Lcom/oppo/test/FPDWakeLock;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
