.class Lcom/oppo/camera/OppoCamera$19;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;


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
    .line 3000
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$19;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged()V
    .locals 2

    .prologue
    .line 3011
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$19;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$400(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/utils/PlayEffectSound;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3012
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$19;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$400(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/utils/PlayEffectSound;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 3014
    :cond_0
    return-void
.end method

.method public onTimeOut()V
    .locals 2

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$19;->this$0:Lcom/oppo/camera/OppoCamera;

    const/4 v1, 0x1

    #calls: Lcom/oppo/camera/OppoCamera;->setTimerBtnEnable(Z)V
    invoke-static {v0, v1}, Lcom/oppo/camera/OppoCamera;->access$7500(Lcom/oppo/camera/OppoCamera;Z)V

    .line 3006
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$19;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->handleTakePicture()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$2800(Lcom/oppo/camera/OppoCamera;)V

    .line 3007
    return-void
.end method
