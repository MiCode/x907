.class Lcom/oppo/camera/OppoCamera$4;
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
    .line 469
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$4;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$4;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-virtual {v0}, Lcom/oppo/camera/OppoCamera;->keepScreenOnAwhile()V

    .line 474
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$4;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->handleTakePicture()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$2800(Lcom/oppo/camera/OppoCamera;)V

    .line 475
    return-void
.end method
