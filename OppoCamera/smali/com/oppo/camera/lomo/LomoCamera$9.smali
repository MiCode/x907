.class Lcom/oppo/camera/lomo/LomoCamera$9;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;


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
    .line 2006
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$9;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowHintView(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$9;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->showHintView(I)V
    invoke-static {v0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->access$9600(Lcom/oppo/camera/lomo/LomoCamera;I)V

    .line 2012
    return-void
.end method
