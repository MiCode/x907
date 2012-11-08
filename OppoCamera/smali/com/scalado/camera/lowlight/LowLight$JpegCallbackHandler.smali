.class Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;
.super Ljava/lang/Object;
.source "LowLight.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/lowlight/LowLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JpegCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/lowlight/LowLight;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/lowlight/LowLight;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;-><init>(Lcom/scalado/camera/lowlight/LowLight;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 4
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mSrcBuffers:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$29(Lcom/scalado/camera/lowlight/LowLight;)Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lcom/scalado/base/Buffer;

    invoke-direct {v1, p1}, Lcom/scalado/base/Buffer;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mCapturedImages:I
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$20(Lcom/scalado/camera/lowlight/LowLight;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/scalado/camera/lowlight/LowLight;->mCapturedImages:I
    invoke-static {v0, v1}, Lcom/scalado/camera/lowlight/LowLight;->access$30(Lcom/scalado/camera/lowlight/LowLight;I)V

    .line 266
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "lowlight:onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mLowLightListener:Lcom/scalado/camera/lowlight/LowLight$LowLightListener;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$19(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$LowLightListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mLowLightListener:Lcom/scalado/camera/lowlight/LowLight$LowLightListener;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$19(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$LowLightListener;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mCapturedImages:I
    invoke-static {v1}, Lcom/scalado/camera/lowlight/LowLight;->access$20(Lcom/scalado/camera/lowlight/LowLight;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/scalado/camera/lowlight/LowLight$LowLightListener;->onIntermediateJpeg([BI)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mCapturedImages:I
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$20(Lcom/scalado/camera/lowlight/LowLight;)I

    move-result v0

    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->TOTAL_CAPTURE_IMAGES:I
    invoke-static {v1}, Lcom/scalado/camera/lowlight/LowLight;->access$3(Lcom/scalado/camera/lowlight/LowLight;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 273
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$31(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "mExecutor.submit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$27(Lcom/scalado/camera/lowlight/LowLight;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/scalado/camera/lowlight/LowLight$JpegWorkerClass;

    iget-object v2, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    iget-object v3, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mSrcBuffers:Ljava/util/Vector;
    invoke-static {v3}, Lcom/scalado/camera/lowlight/LowLight;->access$29(Lcom/scalado/camera/lowlight/LowLight;)Ljava/util/Vector;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/camera/lowlight/LowLight$JpegWorkerClass;-><init>(Lcom/scalado/camera/lowlight/LowLight;Ljava/util/Vector;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$32(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Camera$ShutterCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$32(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Camera$ShutterCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/Camera$ShutterCallback;->onShutter()V

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$33(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$33(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v2}, Lcom/scalado/camera/lowlight/LowLight;->access$2(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    sget-object v1, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->FINISHED:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    #setter for: Lcom/scalado/camera/lowlight/LowLight;->mState:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;
    invoke-static {v0, v1}, Lcom/scalado/camera/lowlight/LowLight;->access$14(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/lowlight/LowLight$LowLightStates;)V

    .line 290
    :cond_4
    return-void
.end method
