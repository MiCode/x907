.class Lcom/oppo/camera/rewind/Topbar$MyFadeOutListener;
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
    name = "MyFadeOutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/Topbar;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/Topbar;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/oppo/camera/rewind/Topbar$MyFadeOutListener;->this$0:Lcom/oppo/camera/rewind/Topbar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/Topbar;Lcom/oppo/camera/rewind/Topbar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/Topbar$MyFadeOutListener;-><init>(Lcom/oppo/camera/rewind/Topbar;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oppo/camera/rewind/Topbar$MyFadeOutListener;->this$0:Lcom/oppo/camera/rewind/Topbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/Topbar;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/oppo/camera/rewind/Topbar$MyFadeOutListener;->this$0:Lcom/oppo/camera/rewind/Topbar;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/camera/rewind/Topbar;->mState:I
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/Topbar;->access$302(Lcom/oppo/camera/rewind/Topbar;I)I

    .line 178
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 181
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 184
    return-void
.end method
