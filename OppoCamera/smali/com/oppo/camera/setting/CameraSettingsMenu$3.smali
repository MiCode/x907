.class Lcom/oppo/camera/setting/CameraSettingsMenu$3;
.super Ljava/lang/Object;
.source "CameraSettingsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 127
    iput-object p1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$3;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$3;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    #getter for: Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsExpand:Z
    invoke-static {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$500(Lcom/oppo/camera/setting/CameraSettingsMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$3;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->hideAllViews()V

    .line 134
    :cond_0
    return-void
.end method
