.class Lcom/oppo/camera/lomo/LomoCamera$11;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 2298
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$11;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$11;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mEffectChangeHint:Lcom/oppo/camera/utils/OnScreenHint;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$9800(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/utils/OnScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/utils/OnScreenHint;->cancel()V

    .line 2301
    return-void
.end method
