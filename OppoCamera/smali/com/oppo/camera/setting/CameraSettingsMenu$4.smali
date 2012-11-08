.class Lcom/oppo/camera/setting/CameraSettingsMenu$4;
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
    .line 197
    iput-object p1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$4;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$4;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    #getter for: Lcom/oppo/camera/setting/CameraSettingsMenu;->mExpandBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$000(Lcom/oppo/camera/setting/CameraSettingsMenu;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 210
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 205
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 201
    return-void
.end method
