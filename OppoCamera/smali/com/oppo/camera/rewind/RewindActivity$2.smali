.class Lcom/oppo/camera/rewind/RewindActivity$2;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$2;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowHintView(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$2;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->showHintView(I)V
    invoke-static {v0, p1}, Lcom/oppo/camera/rewind/RewindActivity;->access$400(Lcom/oppo/camera/rewind/RewindActivity;I)V

    .line 239
    return-void
.end method
