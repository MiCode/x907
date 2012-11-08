.class Lcom/oppo/camera/OppoCamera$6;
.super Ljava/lang/Thread;
.source "OppoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/OppoCamera;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoCamera;


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 899
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$6;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 902
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$6;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->startPreview()V
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$1100(Lcom/oppo/camera/OppoCamera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    :goto_0
    return-void

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 906
    const-string v1, "OppoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume restart preview :Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 907
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$6;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$2700(Lcom/oppo/camera/OppoCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
