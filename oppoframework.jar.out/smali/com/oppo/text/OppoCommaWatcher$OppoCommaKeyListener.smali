.class public Lcom/oppo/text/OppoCommaWatcher$OppoCommaKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "OppoCommaWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/text/OppoCommaWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OppoCommaKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/text/OppoCommaWatcher;


# direct methods
.method protected constructor <init>(Lcom/oppo/text/OppoCommaWatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaKeyListener;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputType()I
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 348
    const/16 v0, 0x43

    if-ne p3, v0, :cond_1

    .line 353
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 350
    :cond_1
    const/16 v0, 0x42

    if-ne p3, v0, :cond_0

    goto :goto_0
.end method
