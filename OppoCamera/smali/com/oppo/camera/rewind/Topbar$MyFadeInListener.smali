.class Lcom/oppo/camera/rewind/Topbar$MyFadeInListener;
.super Ljava/lang/Object;
.source "Topbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/Topbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFadeInListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/Topbar;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/Topbar;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/oppo/camera/rewind/Topbar$MyFadeInListener;->this$0:Lcom/oppo/camera/rewind/Topbar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/Topbar;Lcom/oppo/camera/rewind/Topbar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/Topbar$MyFadeInListener;-><init>(Lcom/oppo/camera/rewind/Topbar;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/oppo/camera/rewind/Topbar$MyFadeInListener;->this$0:Lcom/oppo/camera/rewind/Topbar;

    #setter for: Lcom/oppo/camera/rewind/Topbar;->mState:I
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/Topbar;->access$302(Lcom/oppo/camera/rewind/Topbar;I)I

    .line 158
    iget-object v0, p0, Lcom/oppo/camera/rewind/Topbar$MyFadeInListener;->this$0:Lcom/oppo/camera/rewind/Topbar;

    #getter for: Lcom/oppo/camera/rewind/Topbar;->mFadeOutRequest:Z
    invoke-static {v0}, Lcom/oppo/camera/rewind/Topbar;->access$400(Lcom/oppo/camera/rewind/Topbar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/oppo/camera/rewind/Topbar$MyFadeInListener;->this$0:Lcom/oppo/camera/rewind/Topbar;

    #setter for: Lcom/oppo/camera/rewind/Topbar;->mFadeOutRequest:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/Topbar;->access$402(Lcom/oppo/camera/rewind/Topbar;Z)Z

    .line 160
    iget-object v0, p0, Lcom/oppo/camera/rewind/Topbar$MyFadeInListener;->this$0:Lcom/oppo/camera/rewind/Topbar;

    #calls: Lcom/oppo/camera/rewind/Topbar;->fadeOut()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/Topbar;->access$500(Lcom/oppo/camera/rewind/Topbar;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 166
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 169
    return-void
.end method
