.class Lcom/oppo/camera/rewind/app/RewindApp$Loading;
.super Lcom/oppo/camera/rewind/app/RewindApp$ReceivingImages;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Loading"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindApp;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;)V
    .locals 1
    .parameter

    .prologue
    .line 869
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp$Loading;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/rewind/app/RewindApp$ReceivingImages;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 869
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp$Loading;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected end()V
    .locals 0

    .prologue
    .line 878
    return-void
.end method

.method protected start()V
    .locals 3

    .prologue
    .line 871
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$Loading;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v1, 0x1

    #setter for: Lcom/oppo/camera/rewind/app/RewindApp;->mSourcesLoaded:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$2302(Lcom/oppo/camera/rewind/app/RewindApp;Z)Z

    .line 872
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$Loading;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const-string v1, "Loading..."

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->showLtw(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$2400(Lcom/oppo/camera/rewind/app/RewindApp;Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$Loading;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->stopPreview()V

    .line 874
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindApp$JpegLoader;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$Loading;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/rewind/app/RewindApp$JpegLoader;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp$JpegLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 875
    return-void
.end method
