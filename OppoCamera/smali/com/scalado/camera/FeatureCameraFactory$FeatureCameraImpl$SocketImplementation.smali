.class public Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;
.super Ljava/lang/Object;
.source "FeatureCameraFactory.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/scalado/camera/Feature$FeatureSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SocketImplementation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;
    }
.end annotation


# instance fields
.field private final BUFFER_MUTEX:Ljava/lang/Object;

.field private applicationBuffers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field private applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

.field private applicationPreviewCBisOneShot:Z

.field private featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

.field private isReceivingCallbacks:Z

.field private isUsingInternalBuffers:Z

.field private mPreviewImage:Lcom/scalado/base/Image;

.field private pluginPreviewCBs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/camera/Camera$ImageCallback;",
            ">;"
        }
    .end annotation
.end field

.field private reAddBuffers:Z

.field final synthetic this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

.field public useBufferWorkAround:Z


# direct methods
.method protected constructor <init>(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    .line 127
    iput-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    .line 128
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->pluginPreviewCBs:Ljava/util/Vector;

    .line 129
    iput-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    .line 130
    iput-boolean v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    .line 132
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationBuffers:Ljava/util/Vector;

    .line 134
    iput-boolean v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->useBufferWorkAround:Z

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->BUFFER_MUTEX:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;Lcom/scalado/camera/Camera$ImageCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->addPluginPreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;Lcom/scalado/camera/Camera$ImageCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->removePluginPreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V

    return-void
.end method

.method static synthetic access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    return-object v0
.end method

.method private addPluginPreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->pluginPreviewCBs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->pluginPreviewCBs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-direct {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setInternalCallback()V

    .line 204
    :cond_0
    return-void
.end method

.method private removePluginPreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->pluginPreviewCBs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->pluginPreviewCBs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 209
    invoke-direct {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setInternalCallback()V

    .line 211
    :cond_0
    return-void
.end method

.method private setInternalCallback()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 278
    iget-boolean v9, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->reAddBuffers:Z

    if-nez v9, :cond_1

    .line 279
    iget-object v9, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->BUFFER_MUTEX:Ljava/lang/Object;

    monitor-enter v9

    .line 280
    :try_start_0
    iget-boolean v10, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    if-eqz v10, :cond_2

    .line 281
    iget-object v10, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    if-nez v10, :cond_2

    .line 282
    iget-object v10, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    if-nez v10, :cond_2

    .line 283
    iget-object v10, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->pluginPreviewCBs:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    move v6, v7

    .line 285
    .local v6, turnOffCallbacks:Z
    :goto_0
    if-eqz v6, :cond_3

    .line 286
    const-string v8, "ScaladoCameraFramework"

    const-string v10, "Turning off preview callback"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v8, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v8}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 288
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    .line 289
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    .line 279
    :cond_0
    :goto_1
    monitor-exit v9

    .line 329
    .end local v6           #turnOffCallbacks:Z
    :cond_1
    return-void

    :cond_2
    move v6, v8

    .line 283
    goto :goto_0

    .line 293
    .restart local v6       #turnOffCallbacks:Z
    :cond_3
    iget-boolean v10, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    if-nez v10, :cond_7

    .line 294
    iget-object v10, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    if-nez v10, :cond_4

    .line 295
    iget-object v10, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->pluginPreviewCBs:Ljava/util/Vector;

    .line 296
    invoke-virtual {v10}, Ljava/util/Vector;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 298
    .local v7, turnOnCallbacks:Z
    :cond_4
    :goto_2
    if-eqz v7, :cond_0

    .line 299
    const-string v8, "ScaladoCameraFramework"

    const-string v10, "Turning on preview callback"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v8, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-virtual {v8}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v1

    .line 301
    .local v1, parameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewSize()Lcom/scalado/base/Size;

    move-result-object v4

    .line 303
    .local v4, previewSize:Lcom/scalado/base/Size;
    iget-object v8, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    if-nez v8, :cond_5

    .line 306
    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewFormat()I

    move-result v8

    .line 305
    invoke-static {v8}, Lcom/scalado/camera/utils/Translators;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v2

    .line 307
    .local v2, previewConfig:Lcom/scalado/base/Image$Config;
    new-instance v8, Lcom/scalado/base/Image;

    .line 308
    invoke-direct {v8, v4, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 307
    iput-object v8, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    .line 311
    .end local v2           #previewConfig:Lcom/scalado/base/Image$Config;
    :cond_5
    iget-boolean v8, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    if-eqz v8, :cond_6

    .line 312
    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    .line 313
    .local v3, previewHeight:I
    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    .line 314
    .local v5, previewWidth:I
    mul-int v8, v3, v5

    .line 316
    iget-object v10, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v10}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v10

    .line 317
    invoke-virtual {v10}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 318
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v10

    .line 316
    invoke-static {v10}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v10

    .line 314
    mul-int/2addr v8, v10

    div-int/lit8 v0, v8, 0x8

    .line 320
    .local v0, bufferSize:I
    iget-object v8, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v8}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v8

    new-array v10, v0, [B

    invoke-virtual {v8, v10}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 321
    iget-object v8, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v8}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v8

    new-array v10, v0, [B

    invoke-virtual {v8, v10}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 323
    .end local v0           #bufferSize:I
    .end local v3           #previewHeight:I
    .end local v5           #previewWidth:I
    :cond_6
    iget-object v8, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v8}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 324
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    goto/16 :goto_1

    .line 279
    .end local v1           #parameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    .end local v4           #previewSize:Lcom/scalado/base/Size;
    .end local v6           #turnOffCallbacks:Z
    .end local v7           #turnOnCallbacks:Z
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v6       #turnOffCallbacks:Z
    :cond_7
    move v7, v8

    .line 296
    goto :goto_2
.end method


# virtual methods
.method public addApplicationPreviewBuffer([B)V
    .locals 3
    .parameter "buffer"

    .prologue
    const/4 v2, 0x0

    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 146
    const-string v1, "Callback buffer must not be null!"

    .line 145
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationBuffers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationBuffers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 155
    iget-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 159
    iput-boolean v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    .line 160
    iput-boolean v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 164
    invoke-direct {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setInternalCallback()V

    .line 166
    :cond_2
    return-void
.end method

.method protected clearCallbackBuffers()V
    .locals 3

    .prologue
    .line 579
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->BUFFER_MUTEX:Ljava/lang/Object;

    monitor-enter v1

    .line 580
    :try_start_0
    const-string v0, "ScaladoCameraFramework"

    const-string v2, "Clearing buffers!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->reAddBuffers:Z

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    .line 579
    :cond_0
    monitor-exit v1

    .line 592
    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V
    .locals 2
    .parameter "cbk"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    .line 530
    invoke-static {p1, v1}, Lcom/scalado/camera/FeatureCameraFactory$AutoFocusCallbackAdapter;->createAutofocusCallbackAdapter(Lcom/scalado/camera/Camera$AutoFocusCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$AutoFocusCallbackAdapter;

    move-result-object v1

    .line 529
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 532
    return-void
.end method

.method public doCancelAutoFocus()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 537
    return-void
.end method

.method public doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V
    .locals 5
    .parameter

    .prologue
    .line 541
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->BUFFER_MUTEX:Ljava/lang/Object;

    monitor-enter v1

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    if-eqz v0, :cond_2

    .line 545
    invoke-interface {p1}, Lcom/scalado/camera/Camera$Parameters;->getPreviewSize()Lcom/scalado/base/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    .line 546
    invoke-virtual {v2}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    .line 545
    if-ne v0, v2, :cond_0

    .line 547
    invoke-interface {p1}, Lcom/scalado/camera/Camera$Parameters;->getPreviewSize()Lcom/scalado/base/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    .line 548
    invoke-virtual {v2}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    .line 547
    if-ne v0, v2, :cond_0

    .line 549
    invoke-interface {p1}, Lcom/scalado/camera/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    .line 550
    iget-object v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    .line 551
    invoke-virtual {v2}, Lcom/scalado/base/Image;->getConfig()Lcom/scalado/base/Image$Config;

    move-result-object v2

    .line 550
    invoke-static {v2}, Lcom/scalado/camera/utils/Translators;->translateFromScaladoImageConfig(Lcom/scalado/base/Image$Config;)I

    move-result v2

    .line 548
    if-eq v0, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 553
    :goto_0
    if-eqz v0, :cond_1

    .line 554
    invoke-virtual {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->clearCallbackBuffers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-interface {p1}, Lcom/scalado/camera/Camera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 564
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->reAddCallbackBuffers()V

    .line 541
    monitor-exit v1

    .line 566
    return-void

    .line 548
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    const-string v2, "ScaladoCameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed changing camera parameters: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v0, "ScaladoCameraFramework"

    invoke-interface {p1}, Lcom/scalado/camera/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public doStartSmoothZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 571
    return-void
.end method

.method public doStopSmoothZoom()V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    .line 576
    return-void
.end method

.method public doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$1(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getBurstTotalCaptures()I

    move-result v0

    .line 336
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$1(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getMaxBurstTotalCaptures()I

    move-result v1

    .line 337
    iget-object v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v2}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$1(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v2

    invoke-interface {v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->getExposureBracketing()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 338
    iget-object v3, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v3}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$1(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v3

    .line 339
    invoke-interface {v3}, Lcom/scalado/camera/FeatureCamera$Parameters;->isExposureBracketingSupported()Z

    move-result v3

    .line 341
    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v4}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$1(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v4

    invoke-interface {v4}, Lcom/scalado/camera/FeatureCamera$Parameters;->isSWBurstForced()Z

    move-result v4

    if-nez v4, :cond_0

    .line 342
    if-gt v0, v1, :cond_0

    .line 343
    const/4 v0, 0x1

    if-le v2, v0, :cond_1

    if-nez v3, :cond_1

    .line 345
    :cond_0
    new-instance v0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;-><init>(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;Landroid/hardware/Camera;Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 347
    invoke-virtual {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->capture()V

    .line 366
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->useBufferWorkAround:Z

    if-eqz v0, :cond_2

    .line 350
    invoke-virtual {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->clearCallbackBuffers()V

    .line 352
    :cond_2
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Taking picture!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    .line 354
    invoke-static {p1, v1}, Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;->createShutterCallbackAdapter(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    .line 357
    invoke-static {p2, v2}, Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;->createPictureCallbackAdapter(Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

    move-result-object v2

    .line 361
    iget-object v3, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    .line 360
    invoke-static {p3, v3}, Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;->createPictureCallbackAdapter(Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

    move-result-object v3

    .line 364
    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    .line 363
    invoke-static {p4, v4}, Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;->createPictureCallbackAdapter(Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

    move-result-object v4

    .line 353
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 216
    const/4 v2, 0x0

    .line 218
    .local v2, localImageRef:Lcom/scalado/base/Image;
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->BUFFER_MUTEX:Ljava/lang/Object;

    monitor-enter v5

    .line 219
    :try_start_0
    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    if-eqz v4, :cond_1

    .line 220
    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->pluginPreviewCBs:Ljava/util/Vector;

    .line 221
    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 222
    :cond_0
    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 223
    .local v0, imageDataBuffer:Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 224
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 232
    iget-object v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    .line 218
    .end local v0           #imageDataBuffer:Ljava/nio/ByteBuffer;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->pluginPreviewCBs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 236
    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->pluginPreviewCBs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 237
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/scalado/camera/Camera$ImageCallback;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 242
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/scalado/camera/Camera$ImageCallback;>;"
    :cond_2
    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    if-eqz v4, :cond_3

    .line 243
    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    .line 244
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    .line 243
    invoke-interface {v4, v2, v5}, Lcom/scalado/camera/Camera$ImageCallback;->onImage(Lcom/scalado/base/Image;Lcom/scalado/camera/Camera;)V

    .line 247
    :cond_3
    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    if-eqz v4, :cond_4

    .line 250
    iget-boolean v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCBisOneShot:Z

    if-eqz v4, :cond_7

    .line 251
    iget-object v3, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    .line 252
    .local v3, temp:Lcom/scalado/camera/Camera$PreviewCallback;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    .line 253
    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-interface {v3, p1, v4}, Lcom/scalado/camera/Camera$PreviewCallback;->onPreviewFrame([BLcom/scalado/camera/Camera;)V

    .line 263
    .end local v3           #temp:Lcom/scalado/camera/Camera$PreviewCallback;
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    if-eqz v4, :cond_5

    .line 264
    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 266
    :cond_5
    return-void

    .line 218
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 238
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/scalado/camera/Camera$ImageCallback;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/camera/Camera$ImageCallback;

    .line 239
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-interface {v4, v2, v5}, Lcom/scalado/camera/Camera$ImageCallback;->onImage(Lcom/scalado/base/Image;Lcom/scalado/camera/Camera;)V

    goto :goto_0

    .line 255
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/scalado/camera/Camera$ImageCallback;>;"
    :cond_7
    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    .line 256
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    .line 255
    invoke-interface {v4, p1, v5}, Lcom/scalado/camera/Camera$PreviewCallback;->onPreviewFrame([BLcom/scalado/camera/Camera;)V

    goto :goto_1
.end method

.method protected reAddCallbackBuffers()V
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->reAddBuffers:Z

    if-eqz v0, :cond_0

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->reAddBuffers:Z

    .line 597
    invoke-direct {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setInternalCallback()V

    .line 599
    :cond_0
    return-void
.end method

.method public setApplicationPreviewCallback(Lcom/scalado/camera/Camera$PreviewCallback;Z)V
    .locals 2
    .parameter "cb"
    .parameter "oneshot"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    .line 177
    iput-boolean p2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCBisOneShot:Z

    .line 179
    if-nez p1, :cond_0

    .line 182
    iget-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 184
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationBuffers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setInternalCallback()V

    .line 191
    return-void
.end method

.method public setFeaturePreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    .line 196
    invoke-direct {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setInternalCallback()V

    .line 197
    return-void
.end method
