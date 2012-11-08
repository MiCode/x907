.class Lcom/oppo/camera/setting/IconsPanelController$3;
.super Ljava/lang/Object;
.source "IconsPanelController.java"

# interfaces
.implements Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/setting/IconsPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/setting/IconsPanelController;


# direct methods
.method constructor <init>(Lcom/oppo/camera/setting/IconsPanelController;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/oppo/camera/setting/IconsPanelController$3;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onArrowStateChanged(Z)V
    .locals 1
    .parameter "isExpand"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController$3;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/setting/IconsPanelController;->changeVisibility(Z)V

    .line 339
    return-void
.end method

.method public onMenuAnimationEnd()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController$3;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/IconsPanelController;->startArrangeIcons()V

    .line 334
    return-void
.end method
