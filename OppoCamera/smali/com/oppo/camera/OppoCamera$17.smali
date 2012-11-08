.class Lcom/oppo/camera/OppoCamera$17;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;


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
    .line 2983
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$17;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowHintView(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2988
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$17;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->showHintView(I)V
    invoke-static {v0, p1}, Lcom/oppo/camera/OppoCamera;->access$9200(Lcom/oppo/camera/OppoCamera;I)V

    .line 2989
    return-void
.end method
