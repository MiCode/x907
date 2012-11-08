.class Lcom/oppo/camera/lomo/LomoCamera$19;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCamera;


# direct methods
.method constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2847
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$19;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 2850
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$19;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$2500(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    move-result-object v0

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-ne v0, v1, :cond_1

    .line 2854
    :cond_0
    :goto_0
    return-void

    .line 2851
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$19;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$2500(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    move-result-object v0

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->FILTER:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-ne v0, v1, :cond_0

    .line 2852
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    goto :goto_0
.end method
