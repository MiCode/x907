.class Lcom/oppo/camera/utils/OnScreenHint$2;
.super Ljava/lang/Object;
.source "OnScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/utils/OnScreenHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/utils/OnScreenHint;


# direct methods
.method constructor <init>(Lcom/oppo/camera/utils/OnScreenHint;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/oppo/camera/utils/OnScreenHint$2;->this$0:Lcom/oppo/camera/utils/OnScreenHint;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/oppo/camera/utils/OnScreenHint$2;->this$0:Lcom/oppo/camera/utils/OnScreenHint;

    #calls: Lcom/oppo/camera/utils/OnScreenHint;->handleHide()V
    invoke-static {v0}, Lcom/oppo/camera/utils/OnScreenHint;->access$100(Lcom/oppo/camera/utils/OnScreenHint;)V

    .line 195
    return-void
.end method
