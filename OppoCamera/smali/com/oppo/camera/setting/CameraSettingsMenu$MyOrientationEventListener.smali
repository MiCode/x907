.class Lcom/oppo/camera/setting/CameraSettingsMenu$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "CameraSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/setting/CameraSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/setting/CameraSettingsMenu;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$MyOrientationEventListener;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    .line 255
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 256
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 262
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$MyOrientationEventListener;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    invoke-static {p1}, Lcom/oppo/camera/utils/ImageUtil;->roundOrientation(I)I

    move-result v2

    #setter for: Lcom/oppo/camera/setting/CameraSettingsMenu;->mOrientation:I
    invoke-static {v1, v2}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$802(Lcom/oppo/camera/setting/CameraSettingsMenu;I)I

    .line 269
    const/4 v0, 0x0

    .line 271
    .local v0, orientationCompensation:I
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$MyOrientationEventListener;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    #getter for: Lcom/oppo/camera/setting/CameraSettingsMenu;->mOrientation:I
    invoke-static {v1}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$800(Lcom/oppo/camera/setting/CameraSettingsMenu;)I

    move-result v2

    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$MyOrientationEventListener;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    #getter for: Lcom/oppo/camera/setting/CameraSettingsMenu;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$900(Lcom/oppo/camera/setting/CameraSettingsMenu;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/oppo/camera/utils/ImageUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    add-int v0, v2, v1

    .line 273
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$MyOrientationEventListener;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    #getter for: Lcom/oppo/camera/setting/CameraSettingsMenu;->mOrientationCompensation:I
    invoke-static {v1}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$1000(Lcom/oppo/camera/setting/CameraSettingsMenu;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$MyOrientationEventListener;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    #setter for: Lcom/oppo/camera/setting/CameraSettingsMenu;->mOrientationCompensation:I
    invoke-static {v1, v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$1002(Lcom/oppo/camera/setting/CameraSettingsMenu;I)I

    .line 276
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$MyOrientationEventListener;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    iget-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu$MyOrientationEventListener;->this$0:Lcom/oppo/camera/setting/CameraSettingsMenu;

    #getter for: Lcom/oppo/camera/setting/CameraSettingsMenu;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$1000(Lcom/oppo/camera/setting/CameraSettingsMenu;)I

    move-result v2

    #calls: Lcom/oppo/camera/setting/CameraSettingsMenu;->setOrientationIndicator(I)V
    invoke-static {v1, v2}, Lcom/oppo/camera/setting/CameraSettingsMenu;->access$1100(Lcom/oppo/camera/setting/CameraSettingsMenu;I)V

    goto :goto_0
.end method
