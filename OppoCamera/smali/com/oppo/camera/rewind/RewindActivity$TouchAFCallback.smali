.class final Lcom/oppo/camera/rewind/RewindActivity$TouchAFCallback;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TouchAFCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$TouchAFCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1416
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/RewindActivity$TouchAFCallback;-><init>(Lcom/oppo/camera/rewind/RewindActivity;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$TouchAFCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    const/4 v1, 0x3

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mFocusState:I
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$5802(Lcom/oppo/camera/rewind/RewindActivity;I)I

    .line 1419
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$TouchAFCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->turnOnContiniousAFDelayed()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$6100(Lcom/oppo/camera/rewind/RewindActivity;)V

    .line 1420
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$TouchAFCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->playFocusSound(Z)V
    invoke-static {v0, p1}, Lcom/oppo/camera/rewind/RewindActivity;->access$6000(Lcom/oppo/camera/rewind/RewindActivity;Z)V

    .line 1421
    return-void
.end method
