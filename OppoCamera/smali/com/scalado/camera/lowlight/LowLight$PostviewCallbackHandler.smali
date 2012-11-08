.class Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;
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
    name = "PostviewCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/lowlight/LowLight;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/lowlight/LowLight;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;-><init>(Lcom/scalado/camera/lowlight/LowLight;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 4
    .parameter "postview"
    .parameter "camera"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mPostviewImages:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$21(Lcom/scalado/camera/lowlight/LowLight;)Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lcom/scalado/base/Image;

    iget-object v2, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mDims:Lcom/scalado/base/Size;
    invoke-static {v2}, Lcom/scalado/camera/lowlight/LowLight;->access$22(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/base/Size;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v3}, Lcom/scalado/camera/lowlight/LowLight;->access$23(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/base/Image$Config;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mCapturedPostviews:I
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$24(Lcom/scalado/camera/lowlight/LowLight;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/scalado/camera/lowlight/LowLight;->mCapturedPostviews:I
    invoke-static {v0, v1}, Lcom/scalado/camera/lowlight/LowLight;->access$25(Lcom/scalado/camera/lowlight/LowLight;I)V

    .line 245
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mCapturedPostviews:I
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$24(Lcom/scalado/camera/lowlight/LowLight;)I

    move-result v0

    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->TOTAL_CAPTURE_IMAGES:I
    invoke-static {v1}, Lcom/scalado/camera/lowlight/LowLight;->access$3(Lcom/scalado/camera/lowlight/LowLight;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$26(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$27(Lcom/scalado/camera/lowlight/LowLight;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/scalado/camera/lowlight/LowLight$PostviewWorkerClass;

    iget-object v2, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    iget-object v3, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mPostviewImages:Ljava/util/Vector;
    invoke-static {v3}, Lcom/scalado/camera/lowlight/LowLight;->access$21(Lcom/scalado/camera/lowlight/LowLight;)Ljava/util/Vector;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/camera/lowlight/LowLight$PostviewWorkerClass;-><init>(Lcom/scalado/camera/lowlight/LowLight;Ljava/util/Vector;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 248
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    const/4 v1, 0x0

    #setter for: Lcom/scalado/camera/lowlight/LowLight;->mPostviewImages:Ljava/util/Vector;
    invoke-static {v0, v1}, Lcom/scalado/camera/lowlight/LowLight;->access$28(Lcom/scalado/camera/lowlight/LowLight;Ljava/util/Vector;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mLowLightListener:Lcom/scalado/camera/lowlight/LowLight$LowLightListener;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$19(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$LowLightListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mLowLightListener:Lcom/scalado/camera/lowlight/LowLight$LowLightListener;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$19(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$LowLightListener;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mCapturedPostviews:I
    invoke-static {v1}, Lcom/scalado/camera/lowlight/LowLight;->access$24(Lcom/scalado/camera/lowlight/LowLight;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/scalado/camera/lowlight/LowLight$LowLightListener;->onIntermediatePostview([BI)V

    .line 255
    :cond_1
    return-void
.end method
