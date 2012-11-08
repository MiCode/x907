.class Lcom/oppo/camera/OppoVideo$6;
.super Ljava/lang/Object;
.source "OppoVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 999
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo$6;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$6;->this$0:Lcom/oppo/camera/OppoVideo;

    const-string v1, "com.oppo.camera.OppoCamera"

    #calls: Lcom/oppo/camera/OppoVideo;->activityChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/OppoVideo;->access$3200(Lcom/oppo/camera/OppoVideo;Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$6;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-virtual {v0}, Lcom/oppo/camera/OppoVideo;->finish()V

    .line 1006
    return-void
.end method
