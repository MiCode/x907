.class Lcom/oppo/test/FPDWakeLock$1;
.super Ljava/lang/Object;
.source "ScreenLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/test/FPDWakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/test/FPDWakeLock;


# direct methods
.method constructor <init>(Lcom/oppo/test/FPDWakeLock;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oppo/test/FPDWakeLock$1;->this$0:Lcom/oppo/test/FPDWakeLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oppo/test/FPDWakeLock$1;->this$0:Lcom/oppo/test/FPDWakeLock;

    invoke-virtual {v0}, Lcom/oppo/test/FPDWakeLock;->release()V

    .line 78
    return-void
.end method
