.class public Lcom/oppo/camera/rewind/ui/Background;
.super Lcom/oppo/camera/rewind/ui/Widget;
.source "Background.java"


# instance fields
.field private mBBox:Landroid/graphics/Rect;

.field private mIsMoving:Z


# direct methods
.method public constructor <init>(Lcom/oppo/camera/rewind/ui/UiManager;)V
    .locals 1
    .parameter "uiMgr"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/ui/Widget;-><init>(Lcom/oppo/camera/rewind/ui/UiManager;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Background;->mIsMoving:Z

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Background;->mBBox:Landroid/graphics/Rect;

    .line 16
    return-void
.end method


# virtual methods
.method public isMoving()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Background;->mIsMoving:Z

    return v0
.end method

.method public setMoving(Z)V
    .locals 0
    .parameter "moving"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/ui/Background;->mIsMoving:Z

    .line 28
    return-void
.end method
