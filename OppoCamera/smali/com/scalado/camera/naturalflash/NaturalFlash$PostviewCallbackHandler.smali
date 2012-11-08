.class Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;
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
    name = "PostviewCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/naturalflash/NaturalFlash;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;-><init>(Lcom/scalado/camera/naturalflash/NaturalFlash;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 4
    .parameter "postview"
    .parameter "camera"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mPostviewImages:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$20(Lcom/scalado/camera/naturalflash/NaturalFlash;)Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lcom/scalado/base/Image;

    iget-object v2, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mDims:Lcom/scalado/base/Size;
    invoke-static {v2}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$21(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/base/Size;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v3}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$22(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/base/Image$Config;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCapturedPostviews:I
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$23(Lcom/scalado/camera/naturalflash/NaturalFlash;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCapturedPostviews:I
    invoke-static {v0, v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$24(Lcom/scalado/camera/naturalflash/NaturalFlash;I)V

    .line 242
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCapturedPostviews:I
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$23(Lcom/scalado/camera/naturalflash/NaturalFlash;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$25(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$26(Lcom/scalado/camera/naturalflash/NaturalFlash;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewWorkerClass;

    iget-object v2, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    iget-object v3, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mPostviewImages:Ljava/util/Vector;
    invoke-static {v3}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$20(Lcom/scalado/camera/naturalflash/NaturalFlash;)Ljava/util/Vector;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewWorkerClass;-><init>(Lcom/scalado/camera/naturalflash/NaturalFlash;Ljava/util/Vector;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 245
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    const/4 v1, 0x0

    #setter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mPostviewImages:Ljava/util/Vector;
    invoke-static {v0, v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$27(Lcom/scalado/camera/naturalflash/NaturalFlash;Ljava/util/Vector;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mNaturalFlashListener:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$18(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mNaturalFlashListener:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$18(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCapturedPostviews:I
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$23(Lcom/scalado/camera/naturalflash/NaturalFlash;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;->onIntermediatePostview([BI)V

    .line 252
    :cond_1
    return-void
.end method
