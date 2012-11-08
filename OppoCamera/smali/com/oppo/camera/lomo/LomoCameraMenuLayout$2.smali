.class Lcom/oppo/camera/lomo/LomoCameraMenuLayout$2;
.super Ljava/lang/Object;
.source "LomoCameraMenuLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;


# direct methods
.method constructor <init>(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$2;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$2;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSpecialCameraLayout:Lcom/oppo/camera/lomo/LomoCameraLayout;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$300(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$2;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mMainMenuId:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$2;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$200(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/lomo/LomoCameraLayout;->showSubMenu(II)V

    .line 243
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 237
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 233
    return-void
.end method
