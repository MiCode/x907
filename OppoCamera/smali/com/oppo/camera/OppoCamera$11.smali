.class Lcom/oppo/camera/OppoCamera$11;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Lcom/scalado/camera/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoCamera;


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2841
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$11;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 2845
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$11;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mFeatureMode:I
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$1500(Lcom/oppo/camera/OppoCamera;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$11;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$3700(Lcom/oppo/camera/OppoCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$11;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraId:I
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$1600(Lcom/oppo/camera/OppoCamera;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2849
    :goto_0
    return-void

    .line 2848
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$11;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$400(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/utils/PlayEffectSound;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    goto :goto_0
.end method
