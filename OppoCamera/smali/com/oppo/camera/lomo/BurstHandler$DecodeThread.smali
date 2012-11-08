.class Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;
.super Ljava/lang/Thread;
.source "BurstHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/BurstHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeThread"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private mData:[B

.field private mDegree:I

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/oppo/camera/lomo/BurstHandler;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/lomo/BurstHandler;Landroid/os/Handler;[BI)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "data"
    .parameter "degree"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;->mHandler:Landroid/os/Handler;

    .line 48
    iput-object p3, p0, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;->mData:[B

    .line 49
    iput p4, p0, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;->mDegree:I

    .line 50
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 54
    iget-object v3, p0, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    #getter for: Lcom/oppo/camera/lomo/BurstHandler;->mRecycling:Z
    invoke-static {v3}, Lcom/oppo/camera/lomo/BurstHandler;->access$000(Lcom/oppo/camera/lomo/BurstHandler;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 58
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x4

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 59
    iget-object v3, p0, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;->mData:[B

    iget-object v4, p0, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;->mData:[B

    array-length v4, v4

    invoke-static {v3, v5, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;->bitmap:Landroid/graphics/Bitmap;

    .line 60
    iget-object v3, p0, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;->bitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;->mDegree:I

    neg-int v4, v4

    invoke-static {v3, v4, v5}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;->bitmap:Landroid/graphics/Bitmap;

    .line 61
    iget-object v3, p0, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 62
    .local v1, message:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "bitmap"

    iget-object v4, p0, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 65
    iget-object v3, p0, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
