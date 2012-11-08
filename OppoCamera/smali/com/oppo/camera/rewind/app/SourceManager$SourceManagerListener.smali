.class public interface abstract Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;
.super Ljava/lang/Object;
.source "SourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/SourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SourceManagerListener"
.end annotation


# virtual methods
.method public abstract onBackgroundReady(ILcom/scalado/base/Image;)V
.end method

.method public abstract onEntryReady(I)V
.end method

.method public abstract onThumbnailReady(ILcom/scalado/base/Image;)V
.end method
