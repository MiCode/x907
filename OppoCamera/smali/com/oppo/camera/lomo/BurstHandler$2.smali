.class Lcom/oppo/camera/lomo/BurstHandler$2;
.super Ljava/lang/Object;
.source "BurstHandler.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/lomo/BurstHandler;->thumbnailsSlideUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/BurstHandler;


# direct methods
.method constructor <init>(Lcom/oppo/camera/lomo/BurstHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/oppo/camera/lomo/BurstHandler$2;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler$2;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    #getter for: Lcom/oppo/camera/lomo/BurstHandler;->mBurstThumbnailLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/oppo/camera/lomo/BurstHandler;->access$500(Lcom/oppo/camera/lomo/BurstHandler;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 224
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 220
    return-void
.end method
