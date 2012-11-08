.class Lcom/oppo/camera/lomo/LomoCamera$MainHandler;
.super Landroid/os/Handler;
.source "LomoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCamera;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 1390
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1435
    :cond_0
    :goto_0
    return-void

    .line 1392
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/LomoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1393
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/LomoCamera;->finish()V

    goto :goto_0

    .line 1396
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->changeCameraFace()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$6500(Lcom/oppo/camera/lomo/LomoCamera;)V

    goto :goto_0

    .line 1399
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v0, v0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v0, v0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->startAnimation()V

    goto :goto_0

    .line 1404
    :pswitch_3
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v0, v0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v0, v0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    goto :goto_0

    .line 1409
    :pswitch_4
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMenuLayout:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$6600(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->turnOnContiniousAF()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$3300(Lcom/oppo/camera/lomo/LomoCamera;)V

    goto :goto_0

    .line 1415
    :pswitch_5
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->enableButtons()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$4600(Lcom/oppo/camera/lomo/LomoCamera;)V

    goto :goto_0

    .line 1418
    :pswitch_6
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mBurstCount:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$4700(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$5200(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/BurstHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/BurstHandler;->hideBurstImageReviewer()V

    .line 1420
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mIsPictureTaken:Z
    invoke-static {v0, v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$1802(Lcom/oppo/camera/lomo/LomoCamera;Z)Z

    .line 1421
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mIsBurstReviewOver:Z
    invoke-static {v0, v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$6702(Lcom/oppo/camera/lomo/LomoCamera;Z)Z

    .line 1422
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    const/4 v1, 0x0

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$6800(Lcom/oppo/camera/lomo/LomoCamera;[I)Z

    .line 1423
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mBurstCount:I
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$4702(Lcom/oppo/camera/lomo/LomoCamera;I)I

    goto :goto_0

    .line 1427
    :pswitch_7
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->FINISH:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$6902(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$FocusState;)Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    .line 1428
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->doSnapAfterFocusFinished()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$7000(Lcom/oppo/camera/lomo/LomoCamera;)V

    goto/16 :goto_0

    .line 1431
    :pswitch_8
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->closeCamera()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$2700(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 1432
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->showCameraErrorAndFinish()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$5600(Lcom/oppo/camera/lomo/LomoCamera;)V

    goto/16 :goto_0

    .line 1390
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
