.class Lcom/oppo/camera/lomo/LomoCamera$16;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;


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
    .line 2486
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$16;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageMounted()V
    .locals 0

    .prologue
    .line 2500
    return-void
.end method

.method public onStorageUnmount()V
    .locals 2

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$16;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$2500(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    move-result-object v0

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-ne v0, v1, :cond_0

    .line 2492
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$16;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->stopSweep()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$11200(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 2494
    :cond_0
    return-void
.end method
