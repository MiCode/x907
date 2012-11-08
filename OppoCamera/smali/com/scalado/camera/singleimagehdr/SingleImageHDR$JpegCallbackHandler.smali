.class Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;
.super Ljava/lang/Object;
.source "SingleImageHDR.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/singleimagehdr/SingleImageHDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JpegCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;-><init>(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 5
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 196
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "SingleImageHDR JpegCallbackHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$9(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mPostviewCallbackhandler:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewCallbackHandler;
    invoke-static {v0}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$7(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewCallbackHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewCallbackHandler;->mHasBeenCalled:Z

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$10(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewWorkerClass;

    iget-object v2, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    new-instance v3, Lcom/scalado/base/Buffer;

    invoke-direct {v3, p1}, Lcom/scalado/base/Buffer;-><init>([B)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewWorkerClass;-><init>(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/base/Buffer;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$12(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$10(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegWorkerClass;

    iget-object v2, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    new-instance v3, Lcom/scalado/base/Buffer;

    invoke-direct {v3, p1}, Lcom/scalado/base/Buffer;-><init>([B)V

    invoke-direct {v1, v2, v3}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegWorkerClass;-><init>(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/base/Buffer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mListener:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SingleImageHDRListener;
    invoke-static {v0}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$11(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SingleImageHDRListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mListener:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SingleImageHDRListener;
    invoke-static {v0}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$11(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SingleImageHDRListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SingleImageHDRListener;->onNormalExposureJpeg([B)V

    .line 211
    :cond_2
    return-void
.end method
