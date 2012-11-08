.class Lcom/oppo/camera/OppoVideo$9;
.super Ljava/lang/Object;
.source "OppoVideo.java"

# interfaces
.implements Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoVideo;


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo$9;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowHintView(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$9;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRecording:Z
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$200(Lcom/oppo/camera/OppoVideo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$9;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->showHintView(I)V
    invoke-static {v0, p1}, Lcom/oppo/camera/OppoVideo;->access$300(Lcom/oppo/camera/OppoVideo;I)V

    .line 1741
    :cond_0
    return-void
.end method
