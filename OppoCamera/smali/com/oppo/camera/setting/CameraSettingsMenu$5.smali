.class Lcom/oppo/camera/setting/CameraSettingsMenu$5;
.super Ljava/lang/Object;
.source "CameraSettingsMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/setting/CameraSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;


# direct methods
.method constructor <init>(Lcom/oppo/camera/setting/CameraSettingsMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$5;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$5;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    #getter for: Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsExpand:Z
    invoke-static {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$500(Lcom/oppo/camera/setting/CameraSettingsMenu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$5;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    #getter for: Lcom/oppo/camera/setting/CameraSettingsMenu;->mMenuAnimationListener:Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;
    invoke-static {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$600(Lcom/oppo/camera/setting/CameraSettingsMenu;)Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$5;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    #getter for: Lcom/oppo/camera/setting/CameraSettingsMenu;->mMenuAnimationListener:Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;
    invoke-static {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$600(Lcom/oppo/camera/setting/CameraSettingsMenu;)Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;->onMenuAnimationEnd()V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$5;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    #calls: Lcom/oppo/camera/setting/CameraSettingsMenu;->hideArrow()V
    invoke-static {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$700(Lcom/oppo/camera/setting/CameraSettingsMenu;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 221
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 217
    return-void
.end method
