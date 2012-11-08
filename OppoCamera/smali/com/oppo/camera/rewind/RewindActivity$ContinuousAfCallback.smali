.class final Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Landroid/hardware/Camera$ContinuousAfCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContinuousAfCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1373
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1373
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;-><init>(Lcom/oppo/camera/rewind/RewindActivity;)V

    return-void
.end method


# virtual methods
.method public onContinuousAf(ILandroid/hardware/Camera;)V
    .locals 4
    .parameter "cafState"
    .parameter "camera"

    .prologue
    const/4 v2, 0x3

    .line 1375
    packed-switch p1, :pswitch_data_0

    .line 1397
    :goto_0
    return-void

    .line 1377
    :pswitch_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    const/4 v2, 0x1

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mFocusState:I
    invoke-static {v1, v2}, Lcom/oppo/camera/rewind/RewindActivity;->access$5802(Lcom/oppo/camera/rewind/RewindActivity;I)I

    .line 1378
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFocusView:Lcom/oppo/camera/views/FocusView;
    invoke-static {v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$5900(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/views/FocusView;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0xf0

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/views/FocusView;->setPosition(II)V

    .line 1379
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFocusView:Lcom/oppo/camera/views/FocusView;
    invoke-static {v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$5900(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/views/FocusView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/views/FocusView;->showStart()V

    goto :goto_0

    .line 1383
    :pswitch_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mFocusState:I
    invoke-static {v1, v2}, Lcom/oppo/camera/rewind/RewindActivity;->access$5802(Lcom/oppo/camera/rewind/RewindActivity;I)I

    .line 1386
    const/4 v0, 0x0

    .line 1387
    .local v0, focused:Z
    if-ne p1, v2, :cond_0

    .line 1388
    const/4 v0, 0x1

    .line 1390
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->playFocusSound(Z)V
    invoke-static {v1, v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$6000(Lcom/oppo/camera/rewind/RewindActivity;Z)V

    goto :goto_0

    .line 1375
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
