.class Lcom/oppo/camera/lomo/LomoCamera$6;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 806
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$6;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$6;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->refreshThumbNail()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$2300(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 811
    return-void
.end method
