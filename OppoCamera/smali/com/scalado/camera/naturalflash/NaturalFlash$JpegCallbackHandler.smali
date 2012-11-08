.class Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;
.super Ljava/lang/Object;
.source "NaturalFlash.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/naturalflash/NaturalFlash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JpegCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/naturalflash/NaturalFlash;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;-><init>(Lcom/scalado/camera/naturalflash/NaturalFlash;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 5
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mSrcBuffers:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$28(Lcom/scalado/camera/naturalflash/NaturalFlash;)Ljava/util/Vector;

    move-result-object v1

    new-instance v2, Lcom/scalado/base/Buffer;

    invoke-direct {v2, p1}, Lcom/scalado/base/Buffer;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCapturedImages:I
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$19(Lcom/scalado/camera/naturalflash/NaturalFlash;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCapturedImages:I
    invoke-static {v1, v2}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$29(Lcom/scalado/camera/naturalflash/NaturalFlash;I)V

    .line 264
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCapturedImages:I
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$19(Lcom/scalado/camera/naturalflash/NaturalFlash;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 265
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$30(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$26(Lcom/scalado/camera/naturalflash/NaturalFlash;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegWorkerClass;

    iget-object v3, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    iget-object v4, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mSrcBuffers:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$28(Lcom/scalado/camera/naturalflash/NaturalFlash;)Ljava/util/Vector;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegWorkerClass;-><init>(Lcom/scalado/camera/naturalflash/NaturalFlash;Ljava/util/Vector;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$31(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Camera$ShutterCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$31(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Camera$ShutterCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/Camera$ShutterCallback;->onShutter()V

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$32(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$32(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v3}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$2(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    sget-object v2, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;->FINISHED:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;

    #setter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mState:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;
    invoke-static {v1, v2}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$13(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;)V

    .line 283
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mNaturalFlashListener:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$18(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 284
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mNaturalFlashListener:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$18(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCapturedImages:I
    invoke-static {v2}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$19(Lcom/scalado/camera/naturalflash/NaturalFlash;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, p1, v2}, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;->onIntermediateJpeg([BI)V

    .line 286
    :cond_4
    return-void

    .line 276
    :cond_5
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mInitFlash:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$6(Lcom/scalado/camera/naturalflash/NaturalFlash;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 278
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$2(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    .line 279
    .local v0, p:Lcom/scalado/camera/FeatureCamera$Parameters;
    const-string v1, "on"

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$2(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V

    goto :goto_0
.end method
