.class public Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
.super Ljava/lang/Object;
.source "IconsPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/setting/IconsPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconPosition"
.end annotation


# instance fields
.field mLeft:F

.field mTop:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x3d90

    .line 928
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 929
    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;->mLeft:F

    .line 930
    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;->mTop:F

    .line 931
    return-void
.end method
