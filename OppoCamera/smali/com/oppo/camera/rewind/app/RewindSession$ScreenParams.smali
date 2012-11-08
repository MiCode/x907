.class Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;
.super Ljava/lang/Object;
.source "RewindSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenParams"
.end annotation


# instance fields
.field private mDirty:Z

.field private mFx:I

.field private mZoomLvl:F

.field private mZoomRect:Lcom/scalado/base/Rect;

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindSession;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;)V
    .locals 1
    .parameter

    .prologue
    .line 987
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 988
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;

    .line 989
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F

    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mDirty:Z

    .line 991
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mFx:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 987
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/scalado/base/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 987
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->setZoom(Lcom/scalado/base/Rect;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)Lcom/scalado/base/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 987
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mDirty:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 987
    iget v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mFx:I

    return v0
.end method

.method static synthetic access$2102(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 987
    iput p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mFx:I

    return p1
.end method

.method static synthetic access$2300(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 987
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->isDefaultZoom()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 987
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->copyFrom(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 987
    iget v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F

    return v0
.end method

.method static synthetic access$602(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 987
    iput p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F

    return p1
.end method

.method private copyFrom(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 1013
    iget-object v0, p1, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession;->copyRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession;->access$2500(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1014
    iget v0, p1, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F

    iput v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F

    .line 1015
    iget v0, p1, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mFx:I

    iput v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mFx:I

    .line 1016
    return-void
.end method

.method private isDefaultZoom()Z
    .locals 2

    .prologue
    .line 1029
    iget v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setZoom(Lcom/scalado/base/Rect;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 1019
    if-eqz p1, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindSession;->access$2600(Lcom/oppo/camera/rewind/app/RewindSession;)Lcom/oppo/camera/rewind/app/CoordTransform;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/rewind/app/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1021
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F

    .line 1022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mDirty:Z

    .line 1026
    :goto_0
    return-void

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession;->mCurScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindSession;->access$2700(Lcom/oppo/camera/rewind/app/RewindSession;)Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    move-result-object v0

    const/high16 v1, 0x3f80

    iput v1, v0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;
    .locals 2

    .prologue
    .line 994
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-direct {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;)V

    .line 995
    .local v0, newParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;
    invoke-direct {v0, p0}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->copyFrom(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)V

    .line 996
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->clone()Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/high16 v5, 0x3f80

    const/4 v3, 0x0

    .line 1000
    instance-of v4, p1, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    if-nez v4, :cond_0

    .line 1010
    :goto_0
    return v3

    :cond_0
    move-object v0, p1

    .line 1003
    check-cast v0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    .line 1005
    .local v0, params:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;
    iget v4, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    iget v4, v0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 1006
    iget v4, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F

    iget v5, v0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    move v1, v2

    .line 1010
    .local v1, zoomSame:Z
    :goto_1
    if-eqz v1, :cond_3

    iget v4, v0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mFx:I

    iget v5, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mFx:I

    if-ne v4, v5, :cond_3

    :goto_2
    move v3, v2

    goto :goto_0

    .end local v1           #zoomSame:Z
    :cond_1
    move v1, v3

    .line 1006
    goto :goto_1

    .line 1008
    :cond_2
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;

    iget-object v5, v0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    .restart local v1       #zoomSame:Z
    goto :goto_1

    :cond_3
    move v2, v3

    .line 1010
    goto :goto_2
.end method
