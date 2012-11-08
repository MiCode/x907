.class Lcom/oppo/camera/lomo/LomoCamera$7;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;


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
    .line 846
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCameraFace()V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->setLomoCameraFace()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$3900(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 891
    return-void
.end method

.method public setPreviewEffect(II)V
    .locals 3
    .parameter "mainMenu"
    .parameter "subItem"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mStyleId:I
    invoke-static {v0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->access$2902(Lcom/oppo/camera/lomo/LomoCamera;I)I

    .line 877
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I
    invoke-static {v0, p2}, Lcom/oppo/camera/lomo/LomoCamera;->access$3002(Lcom/oppo/camera/lomo/LomoCamera;I)I

    .line 878
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->FILTER:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$2502(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$ShotMode;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    .line 879
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->setPreviewCallback()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$3500(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 880
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mStyleId:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$2900(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mStyleId:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$2900(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mFilterHandler:Lcom/oppo/camera/lomo/FilterHandler;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$3700(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/FilterHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/camera/lomo/FilterHandler;->getFilterById(I)Lcom/oppo/camera/lomo/filters/Filter;

    move-result-object v1

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$3602(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/filters/Filter;)Lcom/oppo/camera/lomo/filters/Filter;

    .line 885
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->refreshEffect()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$3800(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 886
    return-void

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mFilterHandler:Lcom/oppo/camera/lomo/FilterHandler;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$3700(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/FilterHandler;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/oppo/camera/lomo/FilterHandler;->getFilterById(I)Lcom/oppo/camera/lomo/filters/Filter;

    move-result-object v1

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$3602(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/filters/Filter;)Lcom/oppo/camera/lomo/filters/Filter;

    goto :goto_0
.end method

.method public setShotMode(II)V
    .locals 2
    .parameter "mainMeun"
    .parameter "subItem"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->initShotMode()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$2400(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 852
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$2500(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    move-result-object v0

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->FILTER:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v0, v1, :cond_0

    .line 853
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->stopPreview()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$2600(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 854
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->closeCamera()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$2700(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 855
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->restartPreview()Z
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$2800(Lcom/oppo/camera/lomo/LomoCamera;)Z

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mStyleId:I
    invoke-static {v0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->access$2902(Lcom/oppo/camera/lomo/LomoCamera;I)I

    .line 858
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I
    invoke-static {v0, p2}, Lcom/oppo/camera/lomo/LomoCamera;->access$3002(Lcom/oppo/camera/lomo/LomoCamera;I)I

    .line 859
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->saveLomoEffect()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$3100(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 860
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$2500(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    move-result-object v0

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-ne v0, v1, :cond_1

    .line 861
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->showPanoramaTips()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$3200(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$1200(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$2500(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    move-result-object v0

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v0, v1, :cond_2

    .line 864
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->turnOnContiniousAF()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$3300(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 866
    :cond_2
    return-void
.end method

.method public setViewVisibles()V
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$7;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->setViewVisible()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$3400(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 871
    return-void
.end method
