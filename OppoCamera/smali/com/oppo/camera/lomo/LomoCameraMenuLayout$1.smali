.class Lcom/oppo/camera/lomo/LomoCameraMenuLayout$1;
.super Ljava/lang/Object;
.source "LomoCameraMenuLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCameraMenuLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;


# direct methods
.method constructor <init>(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$1;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$1;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mScreenHint:Lcom/oppo/camera/utils/OnScreenHint;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$000(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Lcom/oppo/camera/utils/OnScreenHint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$1;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mScreenHint:Lcom/oppo/camera/utils/OnScreenHint;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$000(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Lcom/oppo/camera/utils/OnScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/utils/OnScreenHint;->cancel()V

    .line 65
    :cond_0
    return-void
.end method
