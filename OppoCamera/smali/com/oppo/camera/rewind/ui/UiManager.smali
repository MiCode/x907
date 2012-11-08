.class public Lcom/oppo/camera/rewind/ui/UiManager;
.super Ljava/lang/Object;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/ui/UiManager$1;,
        Lcom/oppo/camera/rewind/ui/UiManager$WidgetEvent;,
        Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;,
        Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;
    }
.end annotation


# instance fields
.field private mAnimIvl:J

.field private mAnimationTimer:Ljava/util/Timer;

.field private mCurTime:J

.field private mDirty:Z

.field private mDirtyArea:Landroid/graphics/Rect;

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDirtyRectSet:Z

.field private mDownModalWidget:Lcom/oppo/camera/rewind/ui/Widget;

.field private mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

.field private mDrawOrder:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/ui/Widget;",
            ">;"
        }
    .end annotation
.end field

.field private mFullyInvalidated:Z

.field private mHolder:Landroid/view/SurfaceHolder;

.field mListener:Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;

.field private mLstDrawT:J

.field private mModalWidgets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/ui/Widget;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionCounter:I

.field private mMotionIvl:I

.field private mOnUpWidgets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/ui/Widget;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectClosest:Z

.field private mSize:Lcom/scalado/base/Size;

.field private final mSyncObj:Ljava/lang/Object;

.field private mTimerTask:Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchDown:Z

.field private mWidgetRequests:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/ui/UiManager$WidgetEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/ui/Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mMotionIvl:I

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mTmpRect:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgetRequests:Ljava/util/Vector;

    .line 41
    iput-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    .line 42
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    .line 45
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mAnimIvl:J

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDirtyRect:Landroid/graphics/Rect;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDirtyRectSet:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    .line 50
    iput-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    .line 716
    return-void
.end method

.method static synthetic access$1000(Lcom/oppo/camera/rewind/ui/UiManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->updateDirtyArea()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oppo/camera/rewind/ui/UiManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->privateDraw()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/camera/rewind/ui/UiManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oppo/camera/rewind/ui/UiManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mCurTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/oppo/camera/rewind/ui/UiManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mTouchDown:Z

    return v0
.end method

.method static synthetic access$600(Lcom/oppo/camera/rewind/ui/UiManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mLstDrawT:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/oppo/camera/rewind/ui/UiManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mAnimIvl:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/oppo/camera/rewind/ui/UiManager;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/camera/rewind/ui/UiManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDirty:Z

    return v0
.end method

.method static synthetic access$902(Lcom/oppo/camera/rewind/ui/UiManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDirty:Z

    return p1
.end method

.method private getModal()Lcom/oppo/camera/rewind/ui/Widget;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    const/4 v0, 0x0

    .line 621
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/ui/Widget;

    goto :goto_0
.end method

.method private invalidateFully()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 424
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/ui/Widget;

    .line 425
    .local v1, w:Lcom/oppo/camera/rewind/ui/Widget;
    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/Widget;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    invoke-virtual {p0, v1}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirty(Lcom/oppo/camera/rewind/ui/Widget;)V

    goto :goto_0

    .line 429
    .end local v1           #w:Lcom/oppo/camera/rewind/ui/Widget;
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 430
    return-void
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 221
    iput-boolean v11, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mTouchDown:Z

    .line 222
    iput-object v12, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    .line 223
    iput-object v12, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownModalWidget:Lcom/oppo/camera/rewind/ui/Widget;

    .line 224
    iput-boolean v10, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSelectClosest:Z

    .line 225
    iput-boolean v10, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDirty:Z

    .line 226
    iput v10, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mMotionCounter:I

    .line 227
    const/4 v6, 0x0

    .line 228
    .local v6, ret:Z
    const/4 v0, 0x1

    .line 229
    .local v0, checkAllWidgets:Z
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->getModal()Lcom/oppo/camera/rewind/ui/Widget;

    move-result-object v5

    .line 230
    .local v5, modal:Lcom/oppo/camera/rewind/ui/Widget;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/oppo/camera/rewind/ui/Widget;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 231
    invoke-virtual {v5, p1}, Lcom/oppo/camera/rewind/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 232
    if-nez v6, :cond_7

    .line 233
    iget-object v10, v5, Lcom/oppo/camera/rewind/ui/Widget;->mCfg:Lcom/oppo/camera/rewind/ui/Widget$Config;

    iget-boolean v10, v10, Lcom/oppo/camera/rewind/ui/Widget$Config;->mOnTopDeselectOnDown:Z

    if-nez v10, :cond_6

    .line 234
    iput-object v5, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownModalWidget:Lcom/oppo/camera/rewind/ui/Widget;

    .line 235
    iput-object v5, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    .line 236
    const/4 v0, 0x0

    .line 241
    :goto_0
    const/4 v6, 0x1

    .line 247
    :goto_1
    invoke-virtual {v5}, Lcom/oppo/camera/rewind/ui/Widget;->isMoving()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->startAnimation()V

    .line 250
    :cond_0
    invoke-virtual {p0, v5}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirty(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 253
    :cond_1
    if-eqz v0, :cond_a

    .line 254
    iget-object v10, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/camera/rewind/ui/Widget;

    .line 255
    .local v7, w:Lcom/oppo/camera/rewind/ui/Widget;
    invoke-virtual {v7}, Lcom/oppo/camera/rewind/ui/Widget;->isInteractible()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eq v7, v5, :cond_2

    invoke-virtual {v7, p1}, Lcom/oppo/camera/rewind/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 256
    invoke-virtual {v7}, Lcom/oppo/camera/rewind/ui/Widget;->isMoving()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 257
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->startAnimation()V

    .line 259
    :cond_3
    iput-object v7, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    .line 260
    invoke-virtual {p0, v7}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirty(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 261
    const/4 v6, 0x1

    .line 265
    .end local v7           #w:Lcom/oppo/camera/rewind/ui/Widget;
    :cond_4
    if-nez v6, :cond_a

    .line 266
    const v3, 0x7f7fffff

    .line 267
    .local v3, dMin:F
    const/4 v1, 0x0

    .line 268
    .local v1, closest:Lcom/oppo/camera/rewind/ui/Widget;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 269
    .local v8, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 271
    .local v9, y:I
    iget-object v10, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/camera/rewind/ui/Widget;

    .line 272
    .restart local v7       #w:Lcom/oppo/camera/rewind/ui/Widget;
    invoke-virtual {v7, v8, v9}, Lcom/oppo/camera/rewind/ui/Widget;->distance(II)F

    move-result v2

    .line 273
    .local v2, d:F
    invoke-virtual {v7}, Lcom/oppo/camera/rewind/ui/Widget;->isInteractible()Z

    move-result v10

    if-eqz v10, :cond_5

    if-eq v7, v5, :cond_5

    cmpg-float v10, v2, v3

    if-gez v10, :cond_5

    .line 274
    move-object v1, v7

    .line 275
    move v3, v2

    goto :goto_2

    .line 238
    .end local v1           #closest:Lcom/oppo/camera/rewind/ui/Widget;
    .end local v2           #d:F
    .end local v3           #dMin:F
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #w:Lcom/oppo/camera/rewind/ui/Widget;
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_6
    invoke-virtual {p0, v5}, Lcom/oppo/camera/rewind/ui/UiManager;->removeModal(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 239
    iget-object v10, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mListener:Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;

    invoke-interface {v10, v5}, Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;->onDeselect(Lcom/oppo/camera/rewind/ui/Widget;)V

    goto/16 :goto_0

    .line 243
    :cond_7
    iput-object v5, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownModalWidget:Lcom/oppo/camera/rewind/ui/Widget;

    .line 244
    iput-object v5, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    .line 245
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 278
    .restart local v1       #closest:Lcom/oppo/camera/rewind/ui/Widget;
    .restart local v3       #dMin:F
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v8       #x:I
    .restart local v9       #y:I
    :cond_8
    if-eqz v1, :cond_a

    const v10, 0x7f7fffff

    cmpg-float v10, v3, v10

    if-gez v10, :cond_a

    .line 279
    iput-boolean v11, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSelectClosest:Z

    .line 280
    invoke-virtual {v1, p1}, Lcom/oppo/camera/rewind/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 281
    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/Widget;->isMoving()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 282
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->startAnimation()V

    .line 284
    :cond_9
    iput-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    .line 285
    invoke-virtual {p0, v1}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirty(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 286
    const/4 v6, 0x1

    .line 290
    .end local v1           #closest:Lcom/oppo/camera/rewind/ui/Widget;
    .end local v3           #dMin:F
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_a
    return v6
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 294
    iget v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mMotionIvl:I

    if-lez v1, :cond_2

    .line 295
    iget v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mMotionCounter:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mMotionCounter:I

    iget v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mMotionIvl:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 296
    iget v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mMotionCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mMotionCounter:I

    .line 297
    const/4 v0, 0x1

    .line 311
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    iget v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mMotionCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mMotionCounter:I

    .line 301
    :cond_2
    const/4 v0, 0x0

    .line 302
    .local v0, ret:Z
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/Widget;->isInteractible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/rewind/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/Widget;->isMoving()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->startAnimation()V

    .line 307
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    invoke-virtual {p0, v1}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirty(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 308
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 315
    const/4 v2, 0x0

    .line 316
    .local v2, ret:Z
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    if-eqz v4, :cond_1

    .line 317
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/ui/Widget;->isInteractible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    invoke-virtual {v4, p1}, Lcom/oppo/camera/rewind/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 318
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/ui/Widget;->isMoving()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->startAnimation()V

    .line 321
    :cond_0
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    invoke-virtual {p0, v4}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirty(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 322
    const/4 v2, 0x1

    .line 325
    :cond_1
    if-nez v2, :cond_2

    .line 326
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownModalWidget:Lcom/oppo/camera/rewind/ui/Widget;

    if-eqz v4, :cond_4

    .line 327
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownModalWidget:Lcom/oppo/camera/rewind/ui/Widget;

    invoke-virtual {p0, v4}, Lcom/oppo/camera/rewind/ui/UiManager;->removeModal(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 328
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->requestDraw()V

    .line 329
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mListener:Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;

    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownModalWidget:Lcom/oppo/camera/rewind/ui/Widget;

    invoke-interface {v4, v5}, Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;->onDeselect(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 330
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownModalWidget:Lcom/oppo/camera/rewind/ui/Widget;

    invoke-virtual {p0, v4}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirty(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 331
    const/4 v2, 0x1

    .line 346
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mListener:Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;

    if-eqz v4, :cond_3

    .line 347
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mListener:Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;

    invoke-interface {v4}, Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;->onNoneSelected()V

    .line 349
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 350
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/rewind/ui/Widget;

    .line 351
    .local v3, w:Lcom/oppo/camera/rewind/ui/Widget;
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgetRequests:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/rewind/ui/UiManager$WidgetEvent;

    #getter for: Lcom/oppo/camera/rewind/ui/UiManager$WidgetEvent;->mEvent:I
    invoke-static {v4}, Lcom/oppo/camera/rewind/ui/UiManager$WidgetEvent;->access$000(Lcom/oppo/camera/rewind/ui/UiManager$WidgetEvent;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 349
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 333
    .end local v0           #i:I
    .end local v3           #w:Lcom/oppo/camera/rewind/ui/Widget;
    :cond_4
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/rewind/ui/Widget;

    .line 334
    .restart local v3       #w:Lcom/oppo/camera/rewind/ui/Widget;
    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/Widget;->isInteractible()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/oppo/camera/rewind/ui/Widget;->mCfg:Lcom/oppo/camera/rewind/ui/Widget$Config;

    iget-boolean v4, v4, Lcom/oppo/camera/rewind/ui/Widget$Config;->mHideOnOut:Z

    if-eqz v4, :cond_5

    .line 335
    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/Widget;->onOut()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 336
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->requestDraw()V

    .line 337
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mListener:Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;

    invoke-interface {v4, v3}, Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;->onDeselect(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 338
    invoke-virtual {p0, v3}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirty(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 339
    const/4 v2, 0x1

    .line 340
    goto :goto_0

    .line 353
    .end local v1           #i$:Ljava/util/Iterator;
    .restart local v0       #i:I
    :pswitch_0
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    .line 354
    invoke-virtual {p0, v3}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirty(Lcom/oppo/camera/rewind/ui/Widget;)V

    goto :goto_2

    .line 357
    :pswitch_1
    iput-boolean v6, v3, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    .line 358
    invoke-virtual {p0, v3}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirty(Lcom/oppo/camera/rewind/ui/Widget;)V

    goto :goto_2

    .line 362
    .end local v3           #w:Lcom/oppo/camera/rewind/ui/Widget;
    :cond_6
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 363
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgetRequests:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 364
    iput-boolean v6, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mTouchDown:Z

    .line 365
    iput-object v7, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    .line 366
    iput-object v7, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownModalWidget:Lcom/oppo/camera/rewind/ui/Widget;

    .line 367
    iput-boolean v6, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSelectClosest:Z

    .line 368
    return v2

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private privateDraw()Z
    .locals 8

    .prologue
    .line 435
    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v5

    .line 440
    :try_start_0
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 441
    .local v0, canvas:Landroid/graphics/Canvas;
    if-nez v0, :cond_0

    .line 442
    const-string v4, "UiManager"

    const-string v6, "Failed to lock canvas."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v4, 0x0

    monitor-exit v5

    .line 480
    :goto_0
    return v4

    .line 446
    :cond_0
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mListener:Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;

    invoke-interface {v4, v0}, Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;->onDraw(Landroid/graphics/Canvas;)V

    .line 447
    const/4 v2, 0x0

    .line 448
    .local v2, n:I
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/rewind/ui/Widget;

    .line 460
    .local v3, w:Lcom/oppo/camera/rewind/ui/Widget;
    instance-of v4, v3, Lcom/oppo/camera/rewind/ui/SelectionRect;

    if-eqz v4, :cond_2

    .line 461
    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/Widget;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/Widget;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 462
    invoke-virtual {v3, v0}, Lcom/oppo/camera/rewind/ui/Widget;->draw(Landroid/graphics/Canvas;)V

    .line 463
    iget-object v4, v3, Lcom/oppo/camera/rewind/ui/Widget;->mPrevBBox:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 464
    iget-object v4, v3, Lcom/oppo/camera/rewind/ui/Widget;->mPrevBBox:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/oppo/camera/rewind/ui/Widget;->boundingBox(Landroid/graphics/Rect;)V

    .line 465
    add-int/lit8 v2, v2, 0x1

    .line 475
    :cond_1
    :goto_2
    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/Widget;->setClean()V

    goto :goto_1

    .line 479
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #n:I
    .end local v3           #w:Lcom/oppo/camera/rewind/ui/Widget;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 468
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #n:I
    .restart local v3       #w:Lcom/oppo/camera/rewind/ui/Widget;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/Widget;->isVisible()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/Widget;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 469
    :cond_3
    invoke-virtual {v3, v0}, Lcom/oppo/camera/rewind/ui/Widget;->draw(Landroid/graphics/Canvas;)V

    .line 470
    iget-object v4, v3, Lcom/oppo/camera/rewind/ui/Widget;->mPrevBBox:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 471
    iget-object v4, v3, Lcom/oppo/camera/rewind/ui/Widget;->mPrevBBox:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/oppo/camera/rewind/ui/Widget;->boundingBox(Landroid/graphics/Rect;)V

    .line 472
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 477
    .end local v3           #w:Lcom/oppo/camera/rewind/ui/Widget;
    :cond_4
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 478
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mLstDrawT:J

    .line 479
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private startAnimation()V
    .locals 6

    .prologue
    .line 660
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    .line 662
    new-instance v0, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;-><init>(Lcom/oppo/camera/rewind/ui/UiManager;Lcom/oppo/camera/rewind/ui/UiManager$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mTimerTask:Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;

    .line 663
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mTimerTask:Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;

    iget-wide v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mAnimIvl:J

    iget-wide v4, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mAnimIvl:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 665
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 668
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 670
    iput-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    .line 671
    iput-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mTimerTask:Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;

    .line 673
    :cond_0
    return-void
.end method

.method private update()Z
    .locals 6

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, doDraw:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 487
    .local v2, t:J
    iput-wide v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mCurTime:J

    .line 488
    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/rewind/ui/Widget;

    .line 489
    .local v4, w:Lcom/oppo/camera/rewind/ui/Widget;
    invoke-virtual {v4}, Lcom/oppo/camera/rewind/ui/Widget;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/ui/Widget;->isMoving()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 490
    invoke-virtual {v4, v2, v3}, Lcom/oppo/camera/rewind/ui/Widget;->update(J)V

    .line 491
    invoke-virtual {p0, v4}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirty(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 492
    const/4 v0, 0x1

    goto :goto_0

    .line 495
    .end local v4           #w:Lcom/oppo/camera/rewind/ui/Widget;
    :cond_1
    return v0
.end method

.method private final updateDirtyArea()V
    .locals 4

    .prologue
    .line 627
    iget-boolean v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mFullyInvalidated:Z

    if-eqz v2, :cond_1

    .line 629
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->invalidateFully()V

    .line 650
    :cond_0
    return-void

    .line 631
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 632
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/ui/Widget;

    .line 633
    .local v1, w:Lcom/oppo/camera/rewind/ui/Widget;
    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/Widget;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 634
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/ui/Widget;->boundingBox(Landroid/graphics/Rect;)V

    .line 635
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/oppo/camera/rewind/ui/Widget;->mPrevBBox:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 639
    .end local v1           #w:Lcom/oppo/camera/rewind/ui/Widget;
    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/ui/Widget;

    .line 640
    .restart local v1       #w:Lcom/oppo/camera/rewind/ui/Widget;
    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/Widget;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/Widget;->isDirty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 641
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 642
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/ui/Widget;->boundingBox(Landroid/graphics/Rect;)V

    .line 643
    iget-object v2, v1, Lcom/oppo/camera/rewind/ui/Widget;->mPrevBBox:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 645
    :cond_5
    invoke-virtual {p0, v1}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirty(Lcom/oppo/camera/rewind/ui/Widget;)V

    goto :goto_1
.end method


# virtual methods
.method public addWidget(Lcom/oppo/camera/rewind/ui/Widget;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    monitor-exit v1

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dims()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    return-object v0
.end method

.method public drawFirst(Lcom/oppo/camera/rewind/ui/Widget;)V
    .locals 3
    .parameter "w"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 122
    :cond_0
    monitor-exit v1

    .line 124
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hide(Lcom/oppo/camera/rewind/ui/Widget;)V
    .locals 5
    .parameter "w"

    .prologue
    .line 545
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 546
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mTouchDown:Z

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgetRequests:Ljava/util/Vector;

    new-instance v2, Lcom/oppo/camera/rewind/ui/UiManager$WidgetEvent;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/oppo/camera/rewind/ui/UiManager$WidgetEvent;-><init>(Lcom/oppo/camera/rewind/ui/UiManager;ILcom/oppo/camera/rewind/ui/UiManager$1;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 553
    :goto_0
    monitor-exit v1

    .line 555
    return-void

    .line 550
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    .line 551
    invoke-virtual {p0, p1}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirty(Lcom/oppo/camera/rewind/ui/Widget;)V

    goto :goto_0

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isForcedDown()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSelectClosest:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onDND(Lcom/oppo/camera/rewind/ui/Widget;Lcom/oppo/camera/rewind/ui/Item;Lcom/oppo/camera/rewind/ui/Widget;)V
    .locals 0
    .parameter "src"
    .parameter "item"
    .parameter "dst"

    .prologue
    .line 593
    return-void
.end method

.method onIndexFocused(Lcom/oppo/camera/rewind/ui/Widget;I)V
    .locals 1
    .parameter "w"
    .parameter "index"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mListener:Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mListener:Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;

    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;->onIndexFocused(Lcom/oppo/camera/rewind/ui/Widget;I)V

    .line 609
    :cond_0
    return-void
.end method

.method onIndexSelected(Lcom/oppo/camera/rewind/ui/Widget;I)V
    .locals 1
    .parameter "w"
    .parameter "index"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mListener:Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mListener:Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;

    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;->onIndexSelected(Lcom/oppo/camera/rewind/ui/Widget;I)V

    .line 615
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 372
    const/4 v1, 0x0

    .line 374
    .local v1, ret:Z
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 375
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->getModal()Lcom/oppo/camera/rewind/ui/Widget;

    move-result-object v0

    .line 376
    .local v0, modal:Lcom/oppo/camera/rewind/ui/Widget;
    packed-switch p1, :pswitch_data_0

    .line 383
    :cond_0
    :goto_0
    monitor-exit v3

    .line 385
    return v1

    .line 378
    :pswitch_0
    if-eqz v0, :cond_0

    .line 379
    const/4 v1, 0x1

    goto :goto_0

    .line 383
    .end local v0           #modal:Lcom/oppo/camera/rewind/ui/Widget;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 376
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 389
    const/4 v1, 0x0

    .line 391
    .local v1, ret:Z
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 392
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->getModal()Lcom/oppo/camera/rewind/ui/Widget;

    move-result-object v0

    .line 393
    .local v0, modal:Lcom/oppo/camera/rewind/ui/Widget;
    packed-switch p1, :pswitch_data_0

    .line 404
    :cond_0
    :goto_0
    monitor-exit v3

    .line 406
    return v1

    .line 395
    :pswitch_0
    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/Widget;->minimize()V

    .line 397
    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/ui/UiManager;->removeModal(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 398
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->requestDraw()V

    .line 399
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mListener:Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;

    invoke-interface {v2, v0}, Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;->onDeselect(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 400
    const/4 v1, 0x1

    goto :goto_0

    .line 404
    .end local v0           #modal:Lcom/oppo/camera/rewind/ui/Widget;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 393
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method onSelected(Lcom/oppo/camera/rewind/ui/Widget;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mListener:Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mListener:Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;

    invoke-interface {v0, p1}, Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;->onSelected(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 603
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 187
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mFullyInvalidated:Z

    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, ret:Z
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 191
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDirtyRectSet:Z

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 210
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->update()Z

    .line 215
    monitor-exit v2

    .line 217
    return v0

    .line 194
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/ui/UiManager;->onTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 195
    goto :goto_0

    .line 197
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/ui/UiManager;->onTouchMove(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 198
    goto :goto_0

    .line 200
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/ui/UiManager;->onTouchUp(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 201
    goto :goto_0

    .line 203
    :pswitch_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mTouchDown:Z

    .line 204
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownWidget:Lcom/oppo/camera/rewind/ui/Widget;

    .line 205
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDownModalWidget:Lcom/oppo/camera/rewind/ui/Widget;

    .line 206
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSelectClosest:Z

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method putOnTop(Lcom/oppo/camera/rewind/ui/Widget;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_0
    return-void
.end method

.method public putUnder(Lcom/oppo/camera/rewind/ui/Widget;Lcom/oppo/camera/rewind/ui/Widget;)V
    .locals 3
    .parameter "w"
    .parameter "target"

    .prologue
    .line 128
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    monitor-exit v2

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 135
    .local v0, i:I
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v1, v0, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 136
    monitor-exit v2

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeModal(Lcom/oppo/camera/rewind/ui/Widget;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 585
    :cond_0
    return-void
.end method

.method public removeWidget(Lcom/oppo/camera/rewind/ui/Widget;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    monitor-exit v1

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestDraw()V
    .locals 2

    .prologue
    .line 512
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 513
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mDirty:Z

    .line 514
    monitor-exit v1

    .line 515
    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDirty(Lcom/oppo/camera/rewind/ui/Widget;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 559
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 562
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p1, Lcom/oppo/camera/rewind/ui/Widget;->mDirty:Z

    .line 563
    invoke-virtual {p0, p1}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirtyRec(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 564
    monitor-exit v1

    .line 566
    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDirtyRec(Lcom/oppo/camera/rewind/ui/Widget;)V
    .locals 3
    .parameter "w"

    .prologue
    .line 569
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/oppo/camera/rewind/ui/Widget;->mDirty:Z

    .line 570
    iget-object v2, p1, Lcom/oppo/camera/rewind/ui/Widget;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/ui/Widget;

    .line 571
    .local v0, child:Lcom/oppo/camera/rewind/ui/Widget;
    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirtyRec(Lcom/oppo/camera/rewind/ui/Widget;)V

    goto :goto_0

    .line 573
    .end local v0           #child:Lcom/oppo/camera/rewind/ui/Widget;
    :cond_0
    return-void
.end method

.method public setListener(Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mListener:Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;

    .line 90
    return-void
.end method

.method public setSize(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 144
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 145
    monitor-exit v1

    .line 147
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iput-object p1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    .line 157
    monitor-exit v1

    .line 159
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method show(Lcom/oppo/camera/rewind/ui/Widget;)V
    .locals 5
    .parameter "w"

    .prologue
    .line 531
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mTouchDown:Z

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mWidgetRequests:Ljava/util/Vector;

    new-instance v2, Lcom/oppo/camera/rewind/ui/UiManager$WidgetEvent;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/oppo/camera/rewind/ui/UiManager$WidgetEvent;-><init>(Lcom/oppo/camera/rewind/ui/UiManager;ILcom/oppo/camera/rewind/ui/UiManager$1;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 539
    :goto_0
    monitor-exit v1

    .line 541
    return-void

    .line 536
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    .line 537
    invoke-virtual {p0, p1}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirty(Lcom/oppo/camera/rewind/ui/Widget;)V

    goto :goto_0

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 163
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->startAnimation()V

    .line 165
    monitor-exit v1

    .line 167
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 171
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/ui/Widget;

    .line 173
    .local v1, w:Lcom/oppo/camera/rewind/ui/Widget;
    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/Widget;->minimize()V

    .line 174
    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/Widget;->recycle()V

    goto :goto_0

    .line 178
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #w:Lcom/oppo/camera/rewind/ui/Widget;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 176
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 177
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/UiManager;->stopAnimation()V

    .line 178
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    return-void
.end method
