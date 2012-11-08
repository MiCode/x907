.class final Lcom/oppo/camera/lomo/LomoCamera$CameraErrorCb;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraErrorCb"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCamera;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$CameraErrorCb;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1338
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera$CameraErrorCb;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 1
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 1340
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 1342
    :cond_0
    return-void
.end method
