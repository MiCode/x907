.class Lcom/oppo/camera/OppoCamera$10;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1500
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$10;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$10;->this$0:Lcom/oppo/camera/OppoCamera;

    const-string v1, "com.oppo.camera.OppoVideo"

    #calls: Lcom/oppo/camera/OppoCamera;->activityChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/OppoCamera;->access$5300(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V

    .line 1505
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$10;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-virtual {v0}, Lcom/oppo/camera/OppoCamera;->finish()V

    .line 1506
    return-void
.end method
