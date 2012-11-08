.class Lcom/oppo/camera/panorama/PanoramaProgressBar$1;
.super Ljava/lang/Object;
.source "PanoramaProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/panorama/PanoramaProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/panorama/PanoramaProgressBar;


# direct methods
.method constructor <init>(Lcom/oppo/camera/panorama/PanoramaProgressBar;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar$1;->this$0:Lcom/oppo/camera/panorama/PanoramaProgressBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar$1;->this$0:Lcom/oppo/camera/panorama/PanoramaProgressBar;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFast:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->access$002(Lcom/oppo/camera/panorama/PanoramaProgressBar;Z)Z

    .line 67
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar$1;->this$0:Lcom/oppo/camera/panorama/PanoramaProgressBar;

    #getter for: Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFastHint:Lcom/oppo/camera/utils/OnScreenHint;
    invoke-static {v0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->access$100(Lcom/oppo/camera/panorama/PanoramaProgressBar;)Lcom/oppo/camera/utils/OnScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/utils/OnScreenHint;->cancel()V

    .line 68
    return-void
.end method
