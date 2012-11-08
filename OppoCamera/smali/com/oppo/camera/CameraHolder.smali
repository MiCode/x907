.class public Lcom/oppo/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field public static CAMERA:Ljava/lang/String;

.field public static VIDEO:Ljava/lang/String;

.field private static sHolder:Lcom/oppo/camera/CameraHolder;


# instance fields
.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mKeepBeforeTime:J

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "camera"

    sput-object v0, Lcom/oppo/camera/CameraHolder;->CAMERA:Ljava/lang/String;

    .line 68
    const-string v0, "video"

    sput-object v0, Lcom/oppo/camera/CameraHolder;->VIDEO:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oppo/camera/CameraHolder;->mKeepBeforeTime:J

    .line 56
    const/4 v2, 0x0

    iput v2, p0, Lcom/oppo/camera/CameraHolder;->mCameraId:I

    .line 101
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraHolder"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance v2, Lcom/oppo/camera/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/oppo/camera/CameraHolder$MyHandler;-><init>(Lcom/oppo/camera/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oppo/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 104
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/oppo/camera/CameraHolder;->mNumberOfCameras:I

    .line 105
    iget v2, p0, Lcom/oppo/camera/CameraHolder;->mNumberOfCameras:I

    new-array v2, v2, [Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/oppo/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 106
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/oppo/camera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/oppo/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v2, v1

    .line 108
    iget-object v2, p0, Lcom/oppo/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/camera/CameraHolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oppo/camera/CameraHolder;->releaseCamera()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/oppo/camera/CameraHolder;
    .locals 2

    .prologue
    .line 70
    const-class v1, Lcom/oppo/camera/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oppo/camera/CameraHolder;->sHolder:Lcom/oppo/camera/CameraHolder;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/oppo/camera/CameraHolder;

    invoke-direct {v0}, Lcom/oppo/camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/oppo/camera/CameraHolder;->sHolder:Lcom/oppo/camera/CameraHolder;

    .line 73
    :cond_0
    sget-object v0, Lcom/oppo/camera/CameraHolder;->sHolder:Lcom/oppo/camera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized releaseCamera()V
    .locals 7

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 195
    .local v1, now:J
    iget-wide v3, p0, Lcom/oppo/camera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/oppo/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/oppo/camera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :goto_0
    monitor-exit p0

    return-void

    .line 206
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/oppo/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 208
    :try_start_2
    iget-object v3, p0, Lcom/oppo/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 213
    :cond_1
    :goto_1
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, p0, Lcom/oppo/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 214
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/camera/CameraHolder;->mCameraId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 194
    .end local v1           #now:J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 209
    .restart local v1       #now:J
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "CameraHolder"

    const-string v4, "Release Camera error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/oppo/camera/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public open(I)Landroid/hardware/Camera;
    .locals 1
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/CameraHolder;->open(II)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized open(II)Landroid/hardware/Camera;
    .locals 3
    .parameter "cameraId"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oppo/camera/CameraHolder;->mCameraId:I

    if-eq v1, p1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/oppo/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/CameraHolder;->mCameraId:I

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 143
    :try_start_1
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 144
    iput p1, p0, Lcom/oppo/camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    :try_start_2
    iget-object v1, p0, Lcom/oppo/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oppo/camera/CameraHolder;->mKeepBeforeTime:J

    .line 162
    iget-object v1, p0, Lcom/oppo/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v1, "CameraHolder"

    const-string v2, "Fail to connect Camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 152
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/oppo/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 157
    :try_start_5
    iget-object v1, p0, Lcom/oppo/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/oppo/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 153
    :catch_1
    move-exception v0

    .line 154
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CameraHolder"

    const-string v2, "reconnect failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/CameraHolder;->releaseCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
