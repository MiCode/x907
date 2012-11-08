.class Lcom/oppo/camera/lomo/BurstHandler$5;
.super Ljava/lang/Object;
.source "BurstHandler.java"

# interfaces
.implements Lcom/oppo/ImageScaleView/ImageScaleView$OnScrollOrReScaleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/BurstHandler;
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
    .line 339
    iput-object p1, p0, Lcom/oppo/camera/lomo/BurstHandler$5;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollOrReScale()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler$5;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    #getter for: Lcom/oppo/camera/lomo/BurstHandler;->mIsthumnailsSlideDown:Z
    invoke-static {v0}, Lcom/oppo/camera/lomo/BurstHandler;->access$600(Lcom/oppo/camera/lomo/BurstHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler$5;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    #calls: Lcom/oppo/camera/lomo/BurstHandler;->thumbnailsSlideUp()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/BurstHandler;->access$700(Lcom/oppo/camera/lomo/BurstHandler;)V

    .line 346
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
