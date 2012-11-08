.class Lcom/oppo/camera/lomo/BurstHandler$1;
.super Landroid/os/Handler;
.source "BurstHandler.java"


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
    .line 70
    iput-object p1, p0, Lcom/oppo/camera/lomo/BurstHandler$1;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x5

    .line 74
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler$1;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    #getter for: Lcom/oppo/camera/lomo/BurstHandler;->mRecycling:Z
    invoke-static {v2}, Lcom/oppo/camera/lomo/BurstHandler;->access$000(Lcom/oppo/camera/lomo/BurstHandler;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "bitmap"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 78
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler$1;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    #getter for: Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/oppo/camera/lomo/BurstHandler;->access$100(Lcom/oppo/camera/lomo/BurstHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler$1;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    #getter for: Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/oppo/camera/lomo/BurstHandler;->access$100(Lcom/oppo/camera/lomo/BurstHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 80
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 81
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler$1;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    #getter for: Lcom/oppo/camera/lomo/BurstHandler;->mRotateImageViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/oppo/camera/lomo/BurstHandler;->access$200(Lcom/oppo/camera/lomo/BurstHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/views/RotateImageView;

    iget-object v3, p0, Lcom/oppo/camera/lomo/BurstHandler$1;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    #getter for: Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/oppo/camera/lomo/BurstHandler;->access$100(Lcom/oppo/camera/lomo/BurstHandler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/views/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler$1;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    const/4 v3, 0x0

    #setter for: Lcom/oppo/camera/lomo/BurstHandler;->mIsImageReviewerShow:Z
    invoke-static {v2, v3}, Lcom/oppo/camera/lomo/BurstHandler;->access$302(Lcom/oppo/camera/lomo/BurstHandler;Z)Z

    .line 84
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler$1;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    #calls: Lcom/oppo/camera/lomo/BurstHandler;->showBurstImageReviewer()V
    invoke-static {v2}, Lcom/oppo/camera/lomo/BurstHandler;->access$400(Lcom/oppo/camera/lomo/BurstHandler;)V

    goto :goto_0
.end method
