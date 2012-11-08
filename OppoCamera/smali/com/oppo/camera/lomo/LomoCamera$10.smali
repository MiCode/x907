.class Lcom/oppo/camera/lomo/LomoCamera$10;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/lomo/LomoCamera;->setViewVisible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCamera;


# direct methods
.method constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2172
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$10;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$10;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mPanelView:Lcom/oppo/camera/lomo/PanelView;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$9700(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/PanelView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/lomo/PanelView;->setAnimationState(Z)V

    .line 2186
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2181
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$10;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mPanelView:Lcom/oppo/camera/lomo/PanelView;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$9700(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/PanelView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/lomo/PanelView;->setAnimationState(Z)V

    .line 2177
    return-void
.end method
