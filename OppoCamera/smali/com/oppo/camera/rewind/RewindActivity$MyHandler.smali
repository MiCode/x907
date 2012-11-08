.class Lcom/oppo/camera/rewind/RewindActivity$MyHandler;
.super Landroid/os/Handler;
.source "RewindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 997
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 997
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;-><init>(Lcom/oppo/camera/rewind/RewindActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 999
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1001
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/RewindActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1002
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1003
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    const-class v2, Lcom/oppo/camera/lomo/LomoCamera;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1004
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1005
    const-string v1, "exitTotal"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1006
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/rewind/RewindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1009
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->onStartShowWheel()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$4100(Lcom/oppo/camera/rewind/RewindActivity;)V

    goto :goto_0

    .line 1012
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->onEndShowWheel()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$4200(Lcom/oppo/camera/rewind/RewindActivity;)V

    goto :goto_0

    .line 1015
    :pswitch_3
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->onStartHideWheel()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$4300(Lcom/oppo/camera/rewind/RewindActivity;)V

    goto :goto_0

    .line 1018
    :pswitch_4
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->onEndHideWheel()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$4400(Lcom/oppo/camera/rewind/RewindActivity;)V

    goto :goto_0

    .line 1021
    :pswitch_5
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$1800(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v1

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$1802(Lcom/oppo/camera/rewind/RewindActivity;Lcom/scalado/camera/FeatureCamera$Parameters;)Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 1023
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$1800(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    const-string v1, "continuous"

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$1800(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/hardware/Camera$Parameters;->setTouchIndexAec(II)V

    .line 1025
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$1800(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/hardware/Camera$Parameters;->setTouchIndexAf(II)V

    .line 1026
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->doSafeSetParameters()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$4500(Lcom/oppo/camera/rewind/RewindActivity;)V

    .line 1027
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    sget-object v1, Lcom/oppo/camera/rewind/RewindActivity;->ON:Ljava/lang/String;

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mContinuousAfState:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$4602(Lcom/oppo/camera/rewind/RewindActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 999
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
