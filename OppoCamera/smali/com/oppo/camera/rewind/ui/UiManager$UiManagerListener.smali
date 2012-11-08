.class public interface abstract Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;
.super Ljava/lang/Object;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/ui/UiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UiManagerListener"
.end annotation


# virtual methods
.method public abstract needsDrawing()Z
.end method

.method public abstract onDeselect(Lcom/oppo/camera/rewind/ui/Widget;)V
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public abstract onIndexFocused(Lcom/oppo/camera/rewind/ui/Widget;I)V
.end method

.method public abstract onIndexSelected(Lcom/oppo/camera/rewind/ui/Widget;I)V
.end method

.method public abstract onNoneSelected()V
.end method

.method public abstract onSelected(Lcom/oppo/camera/rewind/ui/Widget;)V
.end method
