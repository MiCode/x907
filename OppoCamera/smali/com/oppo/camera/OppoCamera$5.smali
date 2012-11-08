.class Lcom/oppo/camera/OppoCamera$5;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;


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
    .line 546
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$5;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 550
    const-string v0, "key_camera_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$5;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->handleCameraIdChanged(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/oppo/camera/OppoCamera;->access$2900(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    const-string v0, "key_camera_flash"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$5;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->handleFlashModeChanged(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/oppo/camera/OppoCamera;->access$3000(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_2
    const-string v0, "key_camera_hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 555
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$5;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->handleHdrModeChanged(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/oppo/camera/OppoCamera;->access$3100(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_3
    const-string v0, "key_camera_sound"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 557
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$5;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->handleSoundModeChanged(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/oppo/camera/OppoCamera;->access$3200(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_4
    const-string v0, "key_camera_timer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 559
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$5;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->handleTimerModeChanged(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/oppo/camera/OppoCamera;->access$3300(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_5
    const-string v0, "key_face_beautify"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$5;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->handleFaceBeautifyModeChanged(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/oppo/camera/OppoCamera;->access$3400(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V

    goto :goto_0
.end method
