.class public Lcom/oppo/widget/OppoClipBoardView;
.super Landroid/widget/GridView;
.source "OppoClipBoardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoClipBoardView$DropListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoClipBoardView"


# instance fields
.field private PASTE_AREA_BOUND_X:I

.field private PASTE_AREA_BOUND_Y:I

.field private audioManager:Landroid/media/AudioManager;

.field dragger:Landroid/view/View;

.field isDragging:Z

.field mCooradinatesLocateInWindow:[I

.field private mCoordOffsetY:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragOffsetX:I

.field private mDragOffsetY:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/oppo/widget/OppoClipBoardView$DropListener;

.field private mFirstDragPos:I

.field protected mScrollX:I

.field protected mScrollY:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private portrait:Z

.field scale:Landroid/graphics/Matrix;

.field scaleFactor:F

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mTempRect:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->scale:Landroid/graphics/Matrix;

    .line 87
    const v0, 0x3f8ccccd

    iput v0, p0, Lcom/oppo/widget/OppoClipBoardView;->scaleFactor:F

    .line 89
    iput-boolean v2, p0, Lcom/oppo/widget/OppoClipBoardView;->isDragging:Z

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mCooradinatesLocateInWindow:[I

    .line 98
    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->dragger:Landroid/view/View;

    .line 100
    iput v2, p0, Lcom/oppo/widget/OppoClipBoardView;->PASTE_AREA_BOUND_X:I

    .line 101
    iput v2, p0, Lcom/oppo/widget/OppoClipBoardView;->PASTE_AREA_BOUND_Y:I

    .line 103
    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->audioManager:Landroid/media/AudioManager;

    .line 104
    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->windowManager:Landroid/view/WindowManager;

    .line 122
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 123
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 125
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 126
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 127
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x398

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 133
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 134
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x10302b1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 136
    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipBoardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowManager:Landroid/view/WindowManager;

    .line 137
    return-void
.end method

.method private dragView(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v3, 0x3e

    .line 275
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f4ccccd

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 280
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragOffsetX:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 281
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/oppo/widget/OppoClipBoardView;->mCoordOffsetY:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragOffsetY:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 283
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v0, v3, :cond_2

    .line 284
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private endDragging()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 168
    iput-object v2, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    iput-object v2, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragView:Landroid/widget/ImageView;

    .line 178
    :cond_1
    return-void
.end method

.method private getScreenPortrait()Z
    .locals 3

    .prologue
    .line 379
    iget-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->windowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipBoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->windowManager:Landroid/view/WindowManager;

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 385
    .local v0, rotation:I
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 387
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoClipBoardView;->portrait:Z

    .line 392
    :goto_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoClipBoardView;->portrait:Z

    return v1

    .line 389
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoClipBoardView;->portrait:Z

    goto :goto_0
.end method

.method private startDragging(Landroid/graphics/Bitmap;II)V
    .locals 5
    .parameter "bm"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v4, 0x32

    .line 147
    invoke-direct {p0}, Lcom/oppo/widget/OppoClipBoardView;->endDragging()V

    .line 148
    iget-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragOffsetX:I

    sub-int v2, p2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 149
    iget-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/oppo/widget/OppoClipBoardView;->mCoordOffsetY:I

    add-int/2addr v2, p3

    iget v3, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragOffsetY:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 150
    iget-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v1, v4, :cond_0

    .line 151
    iget-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 153
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipBoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, v:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    iput-object p1, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 157
    iget-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oppo/widget/OppoClipBoardView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragView:Landroid/widget/ImageView;

    .line 159
    return-void
.end method


# virtual methods
.method public cancelClip()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/oppo/widget/OppoClipBoardView;->endDragging()V

    .line 182
    return-void
.end method

.method public getDropListener()Lcom/oppo/widget/OppoClipBoardView$DropListener;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoardView;->mDropListener:Lcom/oppo/widget/OppoClipBoardView$DropListener;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 264
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    :goto_1
    return v10

    .line 189
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v8, v11

    .line 190
    .local v8, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v9, v11

    .line 193
    .local v9, y:I
    invoke-virtual {p0, v8, v9}, Lcom/oppo/widget/OppoClipBoardView;->pointToPosition(II)I

    move-result v4

    .line 194
    .local v4, itemnum:I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_0

    .line 198
    iput v4, p0, Lcom/oppo/widget/OppoClipBoardView;->mFirstDragPos:I

    .line 200
    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipBoardView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v4, v11

    invoke-virtual {p0, v11}, Lcom/oppo/widget/OppoClipBoardView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 201
    .local v3, item:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 206
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v11, v8, v11

    iput v11, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragOffsetX:I

    .line 207
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v11, v9, v11

    iput v11, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragOffsetY:I

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v11, v11

    sub-int/2addr v11, v9

    iput v11, p0, Lcom/oppo/widget/OppoClipBoardView;->mCoordOffsetY:I

    .line 210
    const-string v11, "drag_view"

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/oppo/widget/OppoClipBoardView;->dragger:Landroid/view/View;

    .line 211
    iget-object v11, p0, Lcom/oppo/widget/OppoClipBoardView;->dragger:Landroid/view/View;

    if-eqz v11, :cond_0

    .line 214
    iget-object v11, p0, Lcom/oppo/widget/OppoClipBoardView;->dragger:Landroid/view/View;

    iget-object v12, p0, Lcom/oppo/widget/OppoClipBoardView;->mCooradinatesLocateInWindow:[I

    invoke-virtual {v11, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 216
    iget-object v6, p0, Lcom/oppo/widget/OppoClipBoardView;->mTempRect:Landroid/graphics/Rect;

    .line 217
    .local v6, r:Landroid/graphics/Rect;
    invoke-virtual {v3, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    float-to-int v2, v11

    .line 223
    .local v2, fixX:I
    iget-object v11, p0, Lcom/oppo/widget/OppoClipBoardView;->mCooradinatesLocateInWindow:[I

    aget v11, v11, v10

    if-le v2, v11, :cond_2

    .line 224
    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 225
    invoke-virtual {v3, v10}, Landroid/view/View;->setPressed(Z)V

    .line 226
    iget-object v11, p0, Lcom/oppo/widget/OppoClipBoardView;->dragger:Landroid/view/View;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setPressed(Z)V

    .line 228
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 229
    .local v5, originalBg:Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    invoke-virtual {v3}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v7

    .line 232
    .local v7, willNotCache:Z
    invoke-virtual {v3, v10}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 234
    invoke-virtual {v3}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v1

    .line 235
    .local v1, color:I
    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {v3}, Landroid/view/View;->destroyDrawingCache()V

    .line 241
    :cond_1
    const v11, 0x10802f3

    invoke-virtual {v3, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 242
    invoke-virtual {v3}, Landroid/view/View;->buildDrawingCache()V

    .line 246
    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v2, v9}, Lcom/oppo/widget/OppoClipBoardView;->startDragging(Landroid/graphics/Bitmap;II)V

    .line 251
    invoke-virtual {v3}, Landroid/view/View;->destroyDrawingCache()V

    .line 252
    invoke-virtual {v3, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 253
    invoke-virtual {v3, v7}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 254
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 259
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #color:I
    .end local v5           #originalBg:Landroid/graphics/drawable/Drawable;
    .end local v7           #willNotCache:Z
    :cond_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoClipBoardView;->endDragging()V

    goto/16 :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 296
    iget-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 298
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 325
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 327
    .end local v0           #action:I
    :goto_1
    return v1

    .line 302
    .restart local v0       #action:I
    :pswitch_0
    iget-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->dragger:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 303
    invoke-direct {p0}, Lcom/oppo/widget/OppoClipBoardView;->endDragging()V

    .line 305
    invoke-direct {p0}, Lcom/oppo/widget/OppoClipBoardView;->getScreenPortrait()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->mDropListener:Lcom/oppo/widget/OppoClipBoardView$DropListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/oppo/widget/OppoClipBoardView;->PASTE_AREA_BOUND_Y:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipBoardView;->playSoundEffect()V

    .line 308
    iget-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->mDropListener:Lcom/oppo/widget/OppoClipBoardView$DropListener;

    iget v2, p0, Lcom/oppo/widget/OppoClipBoardView;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipBoardView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget v4, p0, Lcom/oppo/widget/OppoClipBoardView;->mFirstDragPos:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/oppo/widget/OppoClipBoardView$DropListener;->drop(Landroid/widget/AdapterView;IJ)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->mDropListener:Lcom/oppo/widget/OppoClipBoardView$DropListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/oppo/widget/OppoClipBoardView;->PASTE_AREA_BOUND_X:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipBoardView;->playSoundEffect()V

    .line 314
    iget-object v1, p0, Lcom/oppo/widget/OppoClipBoardView;->mDropListener:Lcom/oppo/widget/OppoClipBoardView$DropListener;

    iget v2, p0, Lcom/oppo/widget/OppoClipBoardView;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipBoardView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget v4, p0, Lcom/oppo/widget/OppoClipBoardView;->mFirstDragPos:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/oppo/widget/OppoClipBoardView$DropListener;->drop(Landroid/widget/AdapterView;IJ)V

    goto :goto_0

    .line 322
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoClipBoardView;->dragView(II)V

    goto :goto_0

    .line 327
    .end local v0           #action:I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public playSoundEffect()V
    .locals 6

    .prologue
    const/4 v4, 0x5

    .line 400
    iget-object v2, p0, Lcom/oppo/widget/OppoClipBoardView;->audioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipBoardView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/oppo/widget/OppoClipBoardView;->audioManager:Landroid/media/AudioManager;

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoClipBoardView;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 404
    .local v0, totalvolumeLevel:I
    iget-object v2, p0, Lcom/oppo/widget/OppoClipBoardView;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 405
    .local v1, volumeLevel:I
    iget-object v2, p0, Lcom/oppo/widget/OppoClipBoardView;->audioManager:Landroid/media/AudioManager;

    const/16 v3, 0xb

    int-to-float v4, v1

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 406
    return-void
.end method

.method public setClipMargin(II)V
    .locals 0
    .parameter "marginX"
    .parameter "marginY"

    .prologue
    .line 359
    iput p1, p0, Lcom/oppo/widget/OppoClipBoardView;->PASTE_AREA_BOUND_X:I

    .line 360
    iput p2, p0, Lcom/oppo/widget/OppoClipBoardView;->PASTE_AREA_BOUND_Y:I

    .line 361
    return-void
.end method

.method public setClipMarginX(I)V
    .locals 0
    .parameter "marginX"

    .prologue
    .line 338
    iput p1, p0, Lcom/oppo/widget/OppoClipBoardView;->PASTE_AREA_BOUND_X:I

    .line 339
    return-void
.end method

.method public setClipMarginY(I)V
    .locals 0
    .parameter "marginY"

    .prologue
    .line 349
    iput p1, p0, Lcom/oppo/widget/OppoClipBoardView;->PASTE_AREA_BOUND_Y:I

    .line 350
    return-void
.end method

.method public setDropListener(Lcom/oppo/widget/OppoClipBoardView$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/oppo/widget/OppoClipBoardView;->mDropListener:Lcom/oppo/widget/OppoClipBoardView$DropListener;

    .line 367
    return-void
.end method
