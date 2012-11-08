.class Lcom/oppo/camera/setting/CameraSettingsMenu$1;
.super Ljava/lang/Object;
.source "CameraSettingsMenu.java"

# interfaces
.implements Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;


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
    .line 105
    iput-object p1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$1;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconInAnimationEnd(I)V
    .locals 2
    .parameter "selctedItem"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$1;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    #getter for: Lcom/oppo/camera/setting/CameraSettingsMenu;->mExpandBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$000(Lcom/oppo/camera/setting/CameraSettingsMenu;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$1;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    #calls: Lcom/oppo/camera/setting/CameraSettingsMenu;->enableRootView()V
    invoke-static {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$100(Lcom/oppo/camera/setting/CameraSettingsMenu;)V

    .line 111
    return-void
.end method

.method public onIconOutAnimationEnd()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$1;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    #calls: Lcom/oppo/camera/setting/CameraSettingsMenu;->hideMenu()V
    invoke-static {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$200(Lcom/oppo/camera/setting/CameraSettingsMenu;)V

    .line 116
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$1;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    #calls: Lcom/oppo/camera/setting/CameraSettingsMenu;->disableRootView()V
    invoke-static {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$300(Lcom/oppo/camera/setting/CameraSettingsMenu;)V

    .line 117
    return-void
.end method
