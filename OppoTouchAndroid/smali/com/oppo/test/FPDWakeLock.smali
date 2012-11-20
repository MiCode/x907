.class Lcom/oppo/test/FPDWakeLock;
.super Ljava/lang/Object;
.source "ScreenLockManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FPDWakeLock"

.field private static mListener:Lcom/oppo/test/ReleaseListener;


# instance fields
.field private mCount:I

.field private mHandler:Landroid/os/Handler;

.field private mHeld:Z

.field private mRefCounted:Z

.field mReleaser:Ljava/lang/Runnable;

.field private mSyncLock:Ljava/lang/Object;

.field private mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/oppo/test/ReleaseListener;)V
    .locals 2
    .parameter "tag"
    .parameter "l"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/oppo/test/FPDWakeLock$1;

    invoke-direct {v0, p0}, Lcom/oppo/test/FPDWakeLock$1;-><init>(Lcom/oppo/test/FPDWakeLock;)V

    iput-object v0, p0, Lcom/oppo/test/FPDWakeLock;->mReleaser:Ljava/lang/Runnable;

    .line 83
    iput v1, p0, Lcom/oppo/test/FPDWakeLock;->mCount:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/test/FPDWakeLock;->mRefCounted:Z

    .line 85
    iput-boolean v1, p0, Lcom/oppo/test/FPDWakeLock;->mHeld:Z

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/test/FPDWakeLock;->mHandler:Landroid/os/Handler;

    .line 66
    iput-object p1, p0, Lcom/oppo/test/FPDWakeLock;->mTag:Ljava/lang/String;

    .line 67
    sput-object p2, Lcom/oppo/test/FPDWakeLock;->mListener:Lcom/oppo/test/ReleaseListener;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/test/FPDWakeLock;->mSyncLock:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method private release(I)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 135
    iget-object v1, p0, Lcom/oppo/test/FPDWakeLock;->mSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/test/FPDWakeLock;->mRefCounted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/test/FPDWakeLock;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/test/FPDWakeLock;->mCount:I

    if-nez v0, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/test/FPDWakeLock;->mHeld:Z

    .line 142
    :cond_1
    iget v0, p0, Lcom/oppo/test/FPDWakeLock;->mCount:I

    if-gez v0, :cond_2

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/test/FPDWakeLock;->mHeld:Z

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/test/FPDWakeLock;->mCount:I

    .line 147
    const-string v0, "FPDWakeLock"

    const-string v2, "released too many times"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2
    monitor-exit v1

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public acquire()V
    .locals 4

    .prologue
    .line 94
    iget-object v1, p0, Lcom/oppo/test/FPDWakeLock;->mSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/test/FPDWakeLock;->mRefCounted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/test/FPDWakeLock;->mCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/oppo/test/FPDWakeLock;->mCount:I

    if-nez v0, :cond_1

    .line 99
    :cond_0
    const-string v0, "FPDWakeLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/test/FPDWakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/test/FPDWakeLock;->mHeld:Z

    .line 102
    :cond_1
    monitor-exit v1

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public acquire(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/oppo/test/FPDWakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/oppo/test/FPDWakeLock;->acquire()V

    .line 110
    iget-object v0, p0, Lcom/oppo/test/FPDWakeLock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/test/FPDWakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/oppo/test/FPDWakeLock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/test/FPDWakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    iget-object v0, p0, Lcom/oppo/test/FPDWakeLock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/test/FPDWakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public isHeld()Z
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/oppo/test/FPDWakeLock;->mSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/test/FPDWakeLock;->mHeld:Z

    monitor-exit v1

    return v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 123
    const-string v0, "FPDWakeLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/test/FPDWakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/test/FPDWakeLock;->release(I)V

    .line 126
    sget-object v0, Lcom/oppo/test/FPDWakeLock;->mListener:Lcom/oppo/test/ReleaseListener;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/oppo/test/FPDWakeLock;->mListener:Lcom/oppo/test/ReleaseListener;

    invoke-interface {v0}, Lcom/oppo/test/ReleaseListener;->onReleased()V

    .line 131
    :cond_0
    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/oppo/test/FPDWakeLock;->mRefCounted:Z

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/oppo/test/FPDWakeLock;->mSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/test/FPDWakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " held="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/oppo/test/FPDWakeLock;->mHeld:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", refCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/oppo/test/FPDWakeLock;->mCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
