.class public Lcom/oppo/widget/OppoClipListView;
.super Lcom/oppo/widget/OppoListView;
.source "OppoClipListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoClipListView$OnClipListener;
    }
.end annotation


# static fields
.field public static final CLIP_MODE:I = 0x2

.field public static final SORT_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoClipListView"


# instance fields
.field private CLIP_LIMIT_X:I

.field private CLIP_LIMIT_Y:I

.field private final LOGD:Z

.field private MODE:I

.field private final NONE_MODE:I

.field private audioManager:Landroid/media/AudioManager;

.field context:Landroid/content/Context;

.field dragger:Landroid/view/View;

.field private mClipListener:Lcom/oppo/widget/OppoClipListView$OnClipListener;

.field mCooradinatesLocateInWindow:[I

.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragPointX:I

.field private mDragPointY:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mFirstDragPos:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field public portrait:Z

.field scale:Landroid/graphics/Matrix;

.field scaleFactor:F

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoClipListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoClipListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-boolean v2, p0, Lcom/oppo/widget/OppoClipListView;->LOGD:Z

    .line 43
    iput v0, p0, Lcom/oppo/widget/OppoClipListView;->NONE_MODE:I

    .line 47
    iput v0, p0, Lcom/oppo/widget/OppoClipListView;->MODE:I

    .line 48
    iput v0, p0, Lcom/oppo/widget/OppoClipListView;->CLIP_LIMIT_X:I

    .line 49
    iput v0, p0, Lcom/oppo/widget/OppoClipListView;->CLIP_LIMIT_Y:I

    .line 51
    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    .line 52
    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowManager:Landroid/view/WindowManager;

    .line 53
    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 63
    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mClipListener:Lcom/oppo/widget/OppoClipListView$OnClipListener;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mTempRect:Landroid/graphics/Rect;

    .line 69
    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoClipListView;->context:Landroid/content/Context;

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mCooradinatesLocateInWindow:[I

    .line 76
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoClipListView;->scale:Landroid/graphics/Matrix;

    .line 77
    const v0, 0x3fa66666

    iput v0, p0, Lcom/oppo/widget/OppoClipListView;->scaleFactor:F

    .line 79
    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->audioManager:Landroid/media/AudioManager;

    .line 80
    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->windowManager:Landroid/view/WindowManager;

    .line 94
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoClipListView;->setListMode(I)V

    .line 95
    return-void
.end method

.method private dragView(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v3, 0x3e

    .line 343
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f4ccccd

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 345
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/oppo/widget/OppoClipListView;->mDragPointX:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 346
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/oppo/widget/OppoClipListView;->mDragPointY:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/oppo/widget/OppoClipListView;->mCoordOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 349
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v0, v3, :cond_0

    .line 350
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    :cond_1
    return-void
.end method

.method private getScreenPortrait()Z
    .locals 3

    .prologue
    .line 380
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->windowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->windowManager:Landroid/view/WindowManager;

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 386
    .local v0, rotation:I
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 388
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoClipListView;->portrait:Z

    .line 393
    :goto_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoClipListView;->portrait:Z

    return v1

    .line 390
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoClipListView;->portrait:Z

    goto :goto_0
.end method

.method private startDragging(Landroid/graphics/Bitmap;II)V
    .locals 4
    .parameter "bm"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, -0x2

    .line 284
    invoke-direct {p0}, Lcom/oppo/widget/OppoClipListView;->stopDragging()V

    .line 286
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_0

    .line 287
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 288
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 290
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 291
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 292
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x398

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 297
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 298
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x10302ae

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/oppo/widget/OppoClipListView;->mDragPointX:I

    sub-int v2, p2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 303
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/oppo/widget/OppoClipListView;->mDragPointY:I

    sub-int v2, p3, v2

    iget v3, p0, Lcom/oppo/widget/OppoClipListView;->mCoordOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 305
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 306
    .local v0, v:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 307
    iput-object p1, p0, Lcom/oppo/widget/OppoClipListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 309
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowManager:Landroid/view/WindowManager;

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iput-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    .line 316
    return-void
.end method

.method private stopDragging()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 322
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iput-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 328
    iput-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 330
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelClip()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/oppo/widget/OppoClipListView;->stopDragging()V

    .line 334
    return-void
.end method

.method public getOnClipListener()Lcom/oppo/widget/OppoClipListView$OnClipListener;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mClipListener:Lcom/oppo/widget/OppoClipListView$OnClipListener;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 156
    iget v9, p0, Lcom/oppo/widget/OppoClipListView;->MODE:I

    if-ne v9, v11, :cond_1

    .line 232
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_1
    return v8

    .line 160
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v6, v9

    .line 163
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v7, v9

    .line 164
    .local v7, y:I
    invoke-virtual {p0, v6, v7}, Lcom/oppo/widget/OppoClipListView;->pointToPosition(II)I

    move-result v3

    .line 165
    .local v3, itemnum:I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_0

    .line 169
    iput v3, p0, Lcom/oppo/widget/OppoClipListView;->mFirstDragPos:I

    .line 172
    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoClipListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 173
    .local v2, item:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v6, v9

    iput v9, p0, Lcom/oppo/widget/OppoClipListView;->mDragPointX:I

    .line 174
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v7, v9

    iput v9, p0, Lcom/oppo/widget/OppoClipListView;->mDragPointY:I

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v9, v7

    iput v9, p0, Lcom/oppo/widget/OppoClipListView;->mCoordOffset:I

    .line 176
    const-string v9, "drag_view"

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/oppo/widget/OppoClipListView;->dragger:Landroid/view/View;

    .line 178
    iget-object v9, p0, Lcom/oppo/widget/OppoClipListView;->dragger:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 182
    iget-object v9, p0, Lcom/oppo/widget/OppoClipListView;->dragger:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 186
    iget-object v9, p0, Lcom/oppo/widget/OppoClipListView;->dragger:Landroid/view/View;

    iget-object v10, p0, Lcom/oppo/widget/OppoClipListView;->mCooradinatesLocateInWindow:[I

    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 191
    iget-object v9, p0, Lcom/oppo/widget/OppoClipListView;->mCooradinatesLocateInWindow:[I

    aget v9, v9, v8

    if-le v6, v9, :cond_2

    .line 192
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 193
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 194
    iget-object v9, p0, Lcom/oppo/widget/OppoClipListView;->dragger:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setPressed(Z)V

    .line 196
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 197
    .local v4, originalBg:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    invoke-virtual {v2}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v5

    .line 200
    .local v5, willNotCache:Z
    invoke-virtual {v2, v8}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 202
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v1

    .line 204
    .local v1, color:I
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 206
    const v9, 0x10802e0

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 207
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 214
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v6, v7}, Lcom/oppo/widget/OppoClipListView;->startDragging(Landroid/graphics/Bitmap;II)V

    .line 219
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 220
    invoke-virtual {v2, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 221
    invoke-virtual {v2, v5}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 222
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 227
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #color:I
    .end local v4           #originalBg:Landroid/graphics/drawable/Drawable;
    .end local v5           #willNotCache:Z
    :cond_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoClipListView;->stopDragging()V

    goto/16 :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 237
    iget v2, p0, Lcom/oppo/widget/OppoClipListView;->MODE:I

    if-ne v2, v1, :cond_2

    .line 274
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 241
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 243
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 267
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/oppo/widget/OppoClipListView;->dragView(II)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->dragger:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 248
    invoke-direct {p0}, Lcom/oppo/widget/OppoClipListView;->stopDragging()V

    .line 250
    invoke-direct {p0}, Lcom/oppo/widget/OppoClipListView;->getScreenPortrait()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mClipListener:Lcom/oppo/widget/OppoClipListView$OnClipListener;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoClipListView;->CLIP_LIMIT_Y:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipListView;->playSoundEffect()V

    .line 253
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mClipListener:Lcom/oppo/widget/OppoClipListView$OnClipListener;

    iget v3, p0, Lcom/oppo/widget/OppoClipListView;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget v5, p0, Lcom/oppo/widget/OppoClipListView;->mFirstDragPos:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/oppo/widget/OppoClipListView$OnClipListener;->onClip(Landroid/widget/AdapterView;IJ)V

    goto :goto_0

    .line 257
    :cond_3
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mClipListener:Lcom/oppo/widget/OppoClipListView$OnClipListener;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoClipListView;->CLIP_LIMIT_X:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipListView;->playSoundEffect()V

    .line 259
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mClipListener:Lcom/oppo/widget/OppoClipListView$OnClipListener;

    iget v3, p0, Lcom/oppo/widget/OppoClipListView;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget v5, p0, Lcom/oppo/widget/OppoClipListView;->mFirstDragPos:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/oppo/widget/OppoClipListView$OnClipListener;->onClip(Landroid/widget/AdapterView;IJ)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public playSoundEffect()V
    .locals 6

    .prologue
    const/4 v4, 0x5

    .line 145
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->audioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->context:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/oppo/widget/OppoClipListView;->audioManager:Landroid/media/AudioManager;

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 149
    .local v0, totalvolumeLevel:I
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 150
    .local v1, volumeLevel:I
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->audioManager:Landroid/media/AudioManager;

    const/16 v3, 0xb

    int-to-float v4, v1

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 151
    return-void
.end method

.method public setClipMargin(II)V
    .locals 0
    .parameter "marginX"
    .parameter "marginY"

    .prologue
    .line 134
    iput p1, p0, Lcom/oppo/widget/OppoClipListView;->CLIP_LIMIT_X:I

    .line 135
    iput p2, p0, Lcom/oppo/widget/OppoClipListView;->CLIP_LIMIT_Y:I

    .line 136
    return-void
.end method

.method public setClipMarginX(I)V
    .locals 0
    .parameter "marginX"

    .prologue
    .line 113
    iput p1, p0, Lcom/oppo/widget/OppoClipListView;->CLIP_LIMIT_X:I

    .line 114
    return-void
.end method

.method public setClipMarginY(I)V
    .locals 0
    .parameter "marginY"

    .prologue
    .line 124
    iput p1, p0, Lcom/oppo/widget/OppoClipListView;->CLIP_LIMIT_Y:I

    .line 125
    return-void
.end method

.method public setListMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 103
    iput p1, p0, Lcom/oppo/widget/OppoClipListView;->MODE:I

    .line 104
    return-void
.end method

.method public setOnClipListener(Lcom/oppo/widget/OppoClipListView$OnClipListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/oppo/widget/OppoClipListView;->mClipListener:Lcom/oppo/widget/OppoClipListView$OnClipListener;

    .line 364
    return-void
.end method
