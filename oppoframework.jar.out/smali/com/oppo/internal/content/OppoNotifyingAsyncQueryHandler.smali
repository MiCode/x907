.class public Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "OppoNotifyingAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;
    }
.end annotation


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler;->setQueryListener(Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 71
    .local v0, listener:Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_1

    .line 73
    invoke-interface {v0, p1, p2, p3}, Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    if-eqz p3, :cond_0

    .line 77
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onQueryEntitiesComplete(ILjava/lang/Object;Landroid/content/EntityIterator;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "iterator"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 83
    .local v0, listener:Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_1

    .line 85
    invoke-interface {v0, p1, p2, p3}, Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;->onQueryEntitiesComplete(ILjava/lang/Object;Landroid/content/EntityIterator;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    if-eqz p3, :cond_0

    .line 89
    invoke-interface {p3}, Landroid/content/EntityIterator;->close()V

    goto :goto_0
.end method

.method public setQueryListener(Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 64
    return-void
.end method
