.class Lcom/oppo/camera/lomo/BurstHandler$4;
.super Ljava/lang/Object;
.source "BurstHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 315
    iput-object p1, p0, Lcom/oppo/camera/lomo/BurstHandler$4;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler$4;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    #getter for: Lcom/oppo/camera/lomo/BurstHandler;->mIsthumnailsSlideDown:Z
    invoke-static {v0}, Lcom/oppo/camera/lomo/BurstHandler;->access$600(Lcom/oppo/camera/lomo/BurstHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler$4;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    #calls: Lcom/oppo/camera/lomo/BurstHandler;->thumbnailsSlideUp()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/BurstHandler;->access$700(Lcom/oppo/camera/lomo/BurstHandler;)V

    .line 323
    :cond_0
    return-void
.end method
