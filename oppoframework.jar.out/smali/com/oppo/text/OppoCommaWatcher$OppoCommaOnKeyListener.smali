.class public Lcom/oppo/text/OppoCommaWatcher$OppoCommaOnKeyListener;
.super Ljava/lang/Object;
.source "OppoCommaWatcher.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/text/OppoCommaWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OppoCommaOnKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/text/OppoCommaWatcher;


# direct methods
.method protected constructor <init>(Lcom/oppo/text/OppoCommaWatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaOnKeyListener;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 364
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaOnKeyListener;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    invoke-virtual {v0}, Lcom/oppo/text/OppoCommaWatcher;->refresh()V

    .line 366
    const/4 v0, 0x1

    .line 369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
