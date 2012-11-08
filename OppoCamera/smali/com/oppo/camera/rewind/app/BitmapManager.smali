.class public Lcom/oppo/camera/rewind/app/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# instance fields
.field private mAvailableBitmaps:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmaps:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mConfig:Landroid/graphics/Bitmap$Config;

.field private mHeight:I

.field private mScreen:Landroid/graphics/Bitmap;

.field private mSemaphore:Ljava/util/concurrent/Semaphore;

.field private mSize:I

.field private mSyncObj:Ljava/lang/Object;

.field private mWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "size"

    .prologue
    const/4 v2, -0x1

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mBitmaps:Ljava/util/Vector;

    .line 12
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mAvailableBitmaps:Ljava/util/Vector;

    .line 13
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 16
    iput v2, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mWidth:I

    .line 17
    iput v2, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mHeight:I

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSyncObj:Ljava/lang/Object;

    .line 22
    iput p1, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSize:I

    .line 23
    return-void
.end method

.method private privateRelease(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 199
    if-nez p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mBitmaps:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mAvailableBitmaps:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mAvailableBitmaps:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mAvailableBitmaps:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mAvailableBitmaps:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 210
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 168
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mBitmaps:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 170
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mAvailableBitmaps:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 171
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 174
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 173
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mAvailableBitmaps:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 174
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    return-void
.end method

.method public contains(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 193
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mBitmaps:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createBitmaps(IILandroid/graphics/Bitmap$Config;)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "config"

    .prologue
    .line 31
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v5

    .line 32
    :try_start_0
    iget v4, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mWidth:I

    if-ne p1, v4, :cond_0

    iget v4, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mHeight:I

    if-ne p2, v4, :cond_0

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mConfig:Landroid/graphics/Bitmap$Config;

    if-ne p3, v4, :cond_0

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mBitmaps:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iget v6, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSize:I

    if-ne v4, v6, :cond_0

    .line 33
    monitor-exit v5

    .line 58
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mAvailableBitmaps:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 37
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 49
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 39
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mWidth:I

    .line 40
    iput p2, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mHeight:I

    .line 41
    iput-object p3, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 42
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mBitmaps:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 43
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mAvailableBitmaps:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 44
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget v4, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSize:I

    if-ge v1, v4, :cond_2

    .line 45
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mBitmaps:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mAvailableBitmaps:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 49
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 52
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mScreen:Landroid/graphics/Bitmap;

    .line 53
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v3

    .line 55
    .local v3, ie:Ljava/lang/InterruptedException;
    const-string v4, "BitmapManager"

    const-string v5, "Failed to get semaphore."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public display(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, oldScreen:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 99
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/rewind/app/BitmapManager;->contains(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    invoke-virtual {p0, p1}, Lcom/oppo/camera/rewind/app/BitmapManager;->release(Landroid/graphics/Bitmap;)V

    .line 101
    monitor-exit v3

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :try_start_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 106
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mScreen:Landroid/graphics/Bitmap;

    .line 107
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mScreen:Landroid/graphics/Bitmap;

    .line 108
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    :goto_1
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p0, v1}, Lcom/oppo/camera/rewind/app/BitmapManager;->release(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, ie:Ljava/lang/InterruptedException;
    const-string v2, "BitmapManager"

    const-string v3, "Failed to get semaphore."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public displayAndLock(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, oldScreen:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 138
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/rewind/app/BitmapManager;->contains(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    invoke-virtual {p0, p1}, Lcom/oppo/camera/rewind/app/BitmapManager;->release(Landroid/graphics/Bitmap;)V

    .line 140
    monitor-exit v3

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :try_start_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 145
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mScreen:Landroid/graphics/Bitmap;

    .line 146
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mScreen:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    :goto_1
    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0, v1}, Lcom/oppo/camera/rewind/app/BitmapManager;->release(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, ie:Ljava/lang/InterruptedException;
    const-string v2, "BitmapManager"

    const-string v3, "Failed to get semaphore."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mAvailableBitmaps:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mAvailableBitmaps:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 71
    :cond_0
    monitor-exit v3

    .line 72
    return-object v1

    .line 71
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public lockDisplayed()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 127
    .local v1, screen:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 128
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mScreen:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-object v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, ie:Ljava/lang/InterruptedException;
    const-string v2, "BitmapManager"

    const-string v3, "Failed to get semaphore."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public release(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/BitmapManager;->privateRelease(Landroid/graphics/Bitmap;)V

    .line 86
    monitor-exit v1

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlockDisplayed()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/BitmapManager;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 160
    return-void
.end method
