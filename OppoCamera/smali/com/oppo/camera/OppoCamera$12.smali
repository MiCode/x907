.class Lcom/oppo/camera/OppoCamera$12;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoCamera;
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
    .line 2861
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$12;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntermediateJpeg([BI)V
    .locals 3
    .parameter "data"
    .parameter "index"

    .prologue
    .line 2873
    const-string v0, "OppoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hdr index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2874
    if-nez p2, :cond_0

    .line 2875
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$12;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->doFeatureAnimation([B)V
    invoke-static {v0, p1}, Lcom/oppo/camera/OppoCamera;->access$9000(Lcom/oppo/camera/OppoCamera;[B)V

    .line 2877
    :cond_0
    return-void
.end method

.method public onIntermediatePostview([BI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2869
    return-void
.end method

.method public onIntermediateShutter(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2865
    return-void
.end method
