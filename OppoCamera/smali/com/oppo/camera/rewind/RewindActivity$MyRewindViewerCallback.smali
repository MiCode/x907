.class Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRewindViewerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 938
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 938
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;-><init>(Lcom/oppo/camera/rewind/RewindActivity;)V

    return-void
.end method


# virtual methods
.method public onAllImagesAdded()V
    .locals 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    new-instance v1, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback$1;-><init>(Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 944
    return-void
.end method

.method public onEndHideWheel()V
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$3900(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 963
    return-void
.end method

.method public onEndShowWheel()V
    .locals 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$3900(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 967
    return-void
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 955
    return-void
.end method

.method public onFaceDetecionComplete(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 946
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    new-instance v1, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback$2;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback$2;-><init>(Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;I)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 953
    return-void
.end method

.method public onSaved(Ljava/lang/String;)V
    .locals 4
    .parameter "filename"

    .prologue
    .line 957
    new-instance v0, Lcom/oppo/camera/rewind/RewindActivity$MediaScannerNotifier;

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/RewindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "image/jpeg"

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/oppo/camera/rewind/RewindActivity$MediaScannerNotifier;-><init>(Lcom/oppo/camera/rewind/RewindActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->refreshThumbNail()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$3800(Lcom/oppo/camera/rewind/RewindActivity;)V

    .line 959
    return-void
.end method

.method public onStartHideWheel()V
    .locals 2

    .prologue
    .line 970
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$3900(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 971
    return-void
.end method

.method public onStartShowWheel()V
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$3900(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 975
    return-void
.end method
