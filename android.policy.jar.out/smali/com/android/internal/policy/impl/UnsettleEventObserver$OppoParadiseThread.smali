.class Lcom/android/internal/policy/impl/UnsettleEventObserver$OppoParadiseThread;
.super Ljava/lang/Thread;
.source "UnsettleEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UnsettleEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OppoParadiseThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UnsettleEventObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$OppoParadiseThread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$OppoParadiseThread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->getOppoParadiseCount()I

    move-result v0

    .line 292
    .local v0, count:I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oppo.oppoparadise"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, oppoParadiseIntent:Landroid/content/Intent;
    const-string v2, "pakeageName"

    const-string v3, "com.oppo.tribune"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v2, "number"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$OppoParadiseThread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v2, v2, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 297
    return-void
.end method
