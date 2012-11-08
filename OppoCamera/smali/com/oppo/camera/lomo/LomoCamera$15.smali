.class Lcom/oppo/camera/lomo/LomoCamera$15;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCamera;
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
    .line 2478
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$15;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2482
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$15;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->startSweep()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$11100(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 2483
    return-void
.end method
