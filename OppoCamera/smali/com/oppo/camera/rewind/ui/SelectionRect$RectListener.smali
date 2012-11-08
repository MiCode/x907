.class public interface abstract Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;
.super Ljava/lang/Object;
.source "SelectionRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/ui/SelectionRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RectListener"
.end annotation


# virtual methods
.method public abstract onRectChanged(Landroid/graphics/Rect;)V
.end method

.method public abstract onSelected(Lcom/oppo/camera/rewind/ui/SelectionRect;)V
.end method

.method public abstract validateRect(Landroid/graphics/Rect;)Z
.end method
