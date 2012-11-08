.class final Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyJpegCallback"
.end annotation


# instance fields
.field private mInProgress:Z

.field private mNumPicturesInBurst:I

.field private mNumPicturesLeft:I

.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;Landroid/location/Location;I)V
    .locals 1
    .parameter
    .parameter "loc"
    .parameter "numPicturesInBurst"

    .prologue
    .line 777
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 775
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->mInProgress:Z

    .line 778
    iput p3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->mNumPicturesLeft:I

    .line 779
    iput p3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->mNumPicturesInBurst:I

    .line 780
    return-void
.end method

.method static synthetic access$1200(Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->cancel()V

    return-void
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->mInProgress:Z

    .line 818
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 2
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->mInProgress:Z

    if-nez v0, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->mNumPicturesInBurst:I

    iget v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->mNumPicturesLeft:I

    if-ne v0, v1, :cond_2

    .line 790
    :cond_2
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->mNumPicturesLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->mNumPicturesLeft:I

    .line 791
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->mNumPicturesLeft:I

    if-ltz v0, :cond_3

    .line 792
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$3300(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/app/RewindApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/app/RewindApp;->onPictureTaken([B)V

    .line 794
    :cond_3
    sget-object v0, Lcom/oppo/camera/rewind/RewindActivity;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 805
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->mNumPicturesLeft:I

    if-nez v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mBurstJpegCallback:Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$1102(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;)Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;

    .line 809
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$3300(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/app/RewindApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->onCaptureComplete()V

    .line 810
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Blaze generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Full Android on Blaze or SDP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mCameraInterface:Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$3400(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->release()V

    goto :goto_0
.end method
