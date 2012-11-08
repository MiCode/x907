.class public Lcom/oppo/camera/rewind/Button;
.super Landroid/widget/ImageView;
.source "Button.java"

# interfaces
.implements Lcom/oppo/camera/rewind/app/ExtWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/Button$1;,
        Lcom/oppo/camera/rewind/Button$MyHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/oppo/camera/rewind/Button$MyHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Lcom/oppo/camera/rewind/Button$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/rewind/Button$MyHandler;-><init>(Lcom/oppo/camera/rewind/Button;Lcom/oppo/camera/rewind/Button$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/Button;->mHandler:Lcom/oppo/camera/rewind/Button$MyHandler;

    .line 21
    return-void
.end method


# virtual methods
.method public getRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "dst"

    .prologue
    .line 33
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oppo/camera/rewind/Button;->mHandler:Lcom/oppo/camera/rewind/Button$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/Button$MyHandler;->sendEmptyMessage(I)Z

    .line 29
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oppo/camera/rewind/Button;->mHandler:Lcom/oppo/camera/rewind/Button$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/Button$MyHandler;->sendEmptyMessage(I)Z

    .line 25
    return-void
.end method
