.class Lcom/oppo/camera/setting/IconsPanelController$2;
.super Ljava/lang/Object;
.source "IconsPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/setting/IconsPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/setting/IconsPanelController;


# direct methods
.method constructor <init>(Lcom/oppo/camera/setting/IconsPanelController;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/oppo/camera/setting/IconsPanelController$2;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController$2;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->initTrack()V
    invoke-static {v0}, Lcom/oppo/camera/setting/IconsPanelController;->access$600(Lcom/oppo/camera/setting/IconsPanelController;)V

    .line 326
    return-void
.end method
