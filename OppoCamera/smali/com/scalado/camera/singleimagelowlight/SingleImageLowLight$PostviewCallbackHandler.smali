.class Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;
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
    name = "PostviewCallbackHandler"
.end annotation


# instance fields
.field protected mHasBeenCalled:Z

.field final synthetic this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)V
    .locals 1
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;->mHasBeenCalled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;-><init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 5
    .parameter "postview"
    .parameter "camera"

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;->mHasBeenCalled:Z

    .line 189
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$10(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$11(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;

    iget-object v2, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    new-instance v3, Lcom/scalado/base/Buffer;

    invoke-direct {v3, p1}, Lcom/scalado/base/Buffer;-><init>([B)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;-><init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/base/Buffer;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mListener:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;
    invoke-static {v0}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$12(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mListener:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;
    invoke-static {v0}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$12(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;->onNormalExposurePostview([B)V

    .line 196
    :cond_1
    return-void
.end method
