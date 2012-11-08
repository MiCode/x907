.class Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;
.super Ljava/lang/Object;
.source "SingleImageLowLight.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JpegCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;-><init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 5
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$10(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mPostviewCallbackhandler:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;
    invoke-static {v0}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$8(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;->mHasBeenCalled:Z

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$11(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;

    iget-object v2, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    new-instance v3, Lcom/scalado/base/Buffer;

    invoke-direct {v3, p1}, Lcom/scalado/base/Buffer;-><init>([B)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;-><init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/base/Buffer;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$13(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$11(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegWorkerClass;

    iget-object v2, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    new-instance v3, Lcom/scalado/base/Buffer;

    invoke-direct {v3, p1}, Lcom/scalado/base/Buffer;-><init>([B)V

    invoke-direct {v1, v2, v3}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegWorkerClass;-><init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/base/Buffer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mListener:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;
    invoke-static {v0}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$12(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mListener:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;
    invoke-static {v0}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$12(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;->onNormalExposureJpeg([B)V

    .line 216
    :cond_2
    return-void
.end method
