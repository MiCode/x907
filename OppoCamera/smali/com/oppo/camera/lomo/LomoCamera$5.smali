.class Lcom/oppo/camera/lomo/LomoCamera$5;
.super Ljava/lang/Thread;
.source "LomoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/lomo/LomoCamera;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCamera;


# direct methods
.method constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$5;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$5;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->startPreview()V
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$700(Lcom/oppo/camera/lomo/LomoCamera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :goto_0
    return-void

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 795
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$5;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    const/4 v2, 0x1

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mStartPreviewFail:Z
    invoke-static {v1, v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$602(Lcom/oppo/camera/lomo/LomoCamera;Z)Z

    goto :goto_0
.end method
