.class Lcom/android/internal/policy/impl/UnsettleEventObserver$OppoParadiseContent;
.super Landroid/database/ContentObserver;
.source "UnsettleEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UnsettleEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OppoParadiseContent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/UnsettleEventObserver;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$OppoParadiseContent;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    .line 187
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 192
    new-instance v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$OppoParadiseThread;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$OppoParadiseContent;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnsettleEventObserver$OppoParadiseThread;-><init>(Lcom/android/internal/policy/impl/UnsettleEventObserver;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnsettleEventObserver$OppoParadiseThread;->start()V

    .line 193
    return-void
.end method
