.class Lcom/oppo/camera/lomo/LomoCameraLayout$4;
.super Ljava/lang/Object;
.source "LomoCameraLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCameraLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;


# direct methods
.method constructor <init>(Lcom/oppo/camera/lomo/LomoCameraLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$4;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$4;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mPanelView:Lcom/oppo/camera/lomo/PanelView;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$200(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/PanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/PanelView;->stopRollGear()V

    .line 329
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 323
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 317
    return-void
.end method
