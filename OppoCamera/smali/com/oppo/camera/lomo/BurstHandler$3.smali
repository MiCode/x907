.class Lcom/oppo/camera/lomo/BurstHandler$3;
.super Ljava/lang/Object;
.source "BurstHandler.java"

# interfaces
.implements Lcom/oppo/ImageScaleView/ImageScaleView$OnSingleTapUpListener;


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
    .line 304
    iput-object p1, p0, Lcom/oppo/camera/lomo/BurstHandler$3;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler$3;->this$0:Lcom/oppo/camera/lomo/BurstHandler;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/BurstHandler;->changeThumbnailsState()V

    .line 308
    const/4 v0, 0x0

    return v0
.end method
