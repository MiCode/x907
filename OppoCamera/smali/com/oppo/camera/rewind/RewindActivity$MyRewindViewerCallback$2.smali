.class Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback$2;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;->onFaceDetecionComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 946
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback$2;->this$1:Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;

    iput p2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback$2;->val$index:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback$2;->this$1:Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;

    iget-object v0, v0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mIndexSelector:Lcom/oppo/camera/rewind/IndexSelector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$3500(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/IndexSelector;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback$2;->val$index:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/IndexSelector;->check(I)V

    .line 949
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback$2;->this$1:Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;

    iget-object v0, v0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mTopbar:Lcom/oppo/camera/rewind/Topbar;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$3600(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/Topbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/Topbar;->show()V

    .line 950
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback$2;->this$1:Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;

    iget-object v0, v0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->showRewindControlBar()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$3700(Lcom/oppo/camera/rewind/RewindActivity;)V

    .line 951
    return-void
.end method
