.class public interface abstract Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;
.super Ljava/lang/Object;
.source "PanoramaHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/PanoramaHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PanoramaListener"
.end annotation


# virtual methods
.method public abstract onDirectionChanged()V
.end method

.method public abstract onDirectionConfirmed(Lcom/scalado/caps/autorama/Direction;)V
.end method

.method public abstract onFrameAdded(I)V
.end method

.method public abstract onPanoramaGenerated(Ljava/lang/String;)V
.end method

.method public abstract onTrackerProgressUpdate(I)V
.end method
