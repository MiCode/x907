.class Landroid/view/View$MagnifierView;
.super Landroid/view/View;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierView"
.end annotation


# static fields
.field private static final OVAL_BOUND_PADDING_BOTTOM:I = 0xc

.field private static final OVAL_BOUND_PADDING_LEFT:I = 0xa

.field private static final OVAL_BOUND_PADDING_RIGHT:I = 0xb

.field private static final OVAL_BOUND_PADDING_TOP:I = 0x9

.field private static final RECT_BOUND_PADDING_BOTTOM:I = 0x11

.field private static final RECT_BOUND_PADDING_LEFT:I = 0xd

.field private static final RECT_BOUND_PADDING_RIGHT:I = 0xd

.field private static final RECT_BOUND_PADDING_TOP:I = 0x9


# instance fields
.field private mContainer:Landroid/widget/PopupWindow;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHalfHeightF:F

.field private mHalfWidthF:F

.field private mOffsetYScale:F

.field private mPath:Landroid/graphics/Path;

.field private mScale:F

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private mTouchRawX:F

.field private mTouchRawY:F

.field private mType:Landroid/view/View$MagnifierType;

.field private mWindowX:F

.field private mWindowY:F

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .parameter
    .parameter "width"
    .parameter "height"

    .prologue
    .line 15863
    iput-object p1, p0, Landroid/view/View$MagnifierView;->this$0:Landroid/view/View;

    .line 15864
    iget-object v0, p1, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15843
    sget-object v0, Landroid/view/View$MagnifierType;->Oval:Landroid/view/View$MagnifierType;

    iput-object v0, p0, Landroid/view/View$MagnifierView;->mType:Landroid/view/View$MagnifierType;

    .line 15844
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/view/View$MagnifierView;->mPath:Landroid/graphics/Path;

    .line 15859
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/View$MagnifierView;->mOffsetYScale:F

    .line 15865
    invoke-direct {p0, p2, p3}, Landroid/view/View$MagnifierView;->init(II)V

    .line 15866
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$MagnifierType;II)V
    .locals 1
    .parameter
    .parameter "type"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 15868
    iput-object p1, p0, Landroid/view/View$MagnifierView;->this$0:Landroid/view/View;

    .line 15869
    iget-object v0, p1, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15843
    sget-object v0, Landroid/view/View$MagnifierType;->Oval:Landroid/view/View$MagnifierType;

    iput-object v0, p0, Landroid/view/View$MagnifierView;->mType:Landroid/view/View$MagnifierType;

    .line 15844
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/view/View$MagnifierView;->mPath:Landroid/graphics/Path;

    .line 15859
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/View$MagnifierView;->mOffsetYScale:F

    .line 15870
    iput-object p2, p0, Landroid/view/View$MagnifierView;->mType:Landroid/view/View$MagnifierType;

    .line 15871
    invoke-direct {p0, p3, p4}, Landroid/view/View$MagnifierView;->init(II)V

    .line 15872
    return-void
.end method

.method static synthetic access$3200(Landroid/view/View$MagnifierView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15832
    invoke-direct {p0}, Landroid/view/View$MagnifierView;->moveTo()V

    return-void
.end method

.method static synthetic access$3400(Landroid/view/View$MagnifierView;FFFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 15832
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View$MagnifierView;->moveTo(FFFF)V

    return-void
.end method

.method private init(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x1

    .line 15875
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/view/View$MagnifierView;->this$0:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    .line 15877
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 15878
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 15880
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 15881
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 15882
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v1, 0x7e8

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 15885
    iget-object v0, p0, Landroid/view/View$MagnifierView;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/View;->access$2500(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15886
    iget-object v0, p0, Landroid/view/View$MagnifierView;->this$0:Landroid/view/View;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View$MagnifierView;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mMagnifierRes:I
    invoke-static {v2}, Landroid/view/View;->access$2600(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/view/View;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/view/View;->access$2502(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 15889
    :cond_0
    iget-object v0, p0, Landroid/view/View$MagnifierView;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/View;->access$2500(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View$MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 15890
    invoke-virtual {p0, p1, p2}, Landroid/view/View$MagnifierView;->resize(II)V

    .line 15891
    invoke-virtual {p0}, Landroid/view/View$MagnifierView;->invalidate()V

    .line 15892
    return-void
.end method

.method private isPositionVisible()Z
    .locals 1

    .prologue
    .line 15970
    iget-object v0, p0, Landroid/view/View$MagnifierView;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15971
    const/4 v0, 0x0

    .line 15974
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private moveTo()V
    .locals 5

    .prologue
    .line 15978
    invoke-direct {p0}, Landroid/view/View$MagnifierView;->isPositionVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15979
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15980
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/view/View$MagnifierView;->mTouchRawX:F

    iget v2, p0, Landroid/view/View$MagnifierView;->mTouchOffsetX:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Landroid/view/View$MagnifierView;->mTouchRawY:F

    iget v3, p0, Landroid/view/View$MagnifierView;->mTouchOffsetY:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 15983
    invoke-virtual {p0}, Landroid/view/View$MagnifierView;->invalidate()V

    .line 15988
    :cond_0
    :goto_0
    return-void

    .line 15986
    :cond_1
    invoke-virtual {p0}, Landroid/view/View$MagnifierView;->hide()V

    goto :goto_0
.end method

.method private moveTo(FFFF)V
    .locals 5
    .parameter "rawX"
    .parameter "rawY"
    .parameter "windowX"
    .parameter "windowY"

    .prologue
    const/high16 v1, 0x4000

    .line 15991
    iput p1, p0, Landroid/view/View$MagnifierView;->mTouchRawX:F

    .line 15992
    iput p2, p0, Landroid/view/View$MagnifierView;->mTouchRawY:F

    .line 15993
    iput p3, p0, Landroid/view/View$MagnifierView;->mWindowX:F

    .line 15994
    iput p4, p0, Landroid/view/View$MagnifierView;->mWindowY:F

    .line 15997
    iget v0, p0, Landroid/view/View$MagnifierView;->mHalfHeightF:F

    mul-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    .line 15998
    iget v0, p0, Landroid/view/View$MagnifierView;->mHalfHeightF:F

    mul-float/2addr v0, v1

    div-float v0, p2, v0

    iput v0, p0, Landroid/view/View$MagnifierView;->mOffsetYScale:F

    .line 16004
    :goto_0
    invoke-direct {p0}, Landroid/view/View$MagnifierView;->isPositionVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16005
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16006
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/view/View$MagnifierView;->mTouchRawX:F

    iget v2, p0, Landroid/view/View$MagnifierView;->mTouchOffsetX:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Landroid/view/View$MagnifierView;->mTouchRawY:F

    iget v3, p0, Landroid/view/View$MagnifierView;->mTouchOffsetY:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 16009
    invoke-virtual {p0}, Landroid/view/View$MagnifierView;->invalidate()V

    .line 16014
    :cond_0
    :goto_1
    return-void

    .line 16001
    :cond_1
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/View$MagnifierView;->mOffsetYScale:F

    goto :goto_0

    .line 16012
    :cond_2
    invoke-virtual {p0}, Landroid/view/View$MagnifierView;->hide()V

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 15962
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 15963
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 15966
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "c"

    .prologue
    .line 16019
    iget-object v9, p0, Landroid/view/View$MagnifierView;->this$0:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 16020
    .local v2, rootView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 16021
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16024
    const/4 v8, 0x0

    .line 16025
    .local v8, viewRootScrollY:I
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewRootImpl;

    .line 16026
    .local v7, viewRoot:Landroid/view/ViewRootImpl;
    if-eqz v7, :cond_0

    .line 16027
    iget v8, v7, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 16030
    :cond_0
    iget v9, p0, Landroid/view/View$MagnifierView;->mWindowX:F

    neg-float v4, v9

    .line 16031
    .local v4, transXBefore:F
    iget v9, p0, Landroid/view/View$MagnifierView;->mWindowY:F

    neg-float v9, v9

    int-to-float v10, v8

    sub-float v6, v9, v10

    .line 16032
    .local v6, transYBefore:F
    iget v3, p0, Landroid/view/View$MagnifierView;->mHalfWidthF:F

    .line 16033
    .local v3, transXAfter:F
    iget v9, p0, Landroid/view/View$MagnifierView;->mOffsetYScale:F

    const/high16 v10, 0x3f80

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_2

    iget v5, p0, Landroid/view/View$MagnifierView;->mHalfHeightF:F

    .line 16034
    .local v5, transYAfter:F
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 16035
    .local v1, mbmpTest:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16045
    .local v0, canvasTemp:Landroid/graphics/Canvas;
    iget-object v9, p0, Landroid/view/View$MagnifierView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 16046
    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16047
    iget v9, p0, Landroid/view/View$MagnifierView;->mScale:F

    iget v10, p0, Landroid/view/View$MagnifierView;->mScale:F

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 16048
    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16050
    invoke-virtual {v2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 16051
    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v1, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 16052
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 16055
    .end local v0           #canvasTemp:Landroid/graphics/Canvas;
    .end local v1           #mbmpTest:Landroid/graphics/Bitmap;
    .end local v3           #transXAfter:F
    .end local v4           #transXBefore:F
    .end local v5           #transYAfter:F
    .end local v6           #transYBefore:F
    .end local v7           #viewRoot:Landroid/view/ViewRootImpl;
    .end local v8           #viewRootScrollY:I
    :cond_1
    iget-object v9, p0, Landroid/view/View$MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v12}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v12

    iget-object v13, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16057
    iget-object v9, p0, Landroid/view/View$MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 16058
    return-void

    .line 16033
    .restart local v3       #transXAfter:F
    .restart local v4       #transXBefore:F
    .restart local v6       #transYBefore:F
    .restart local v7       #viewRoot:Landroid/view/ViewRootImpl;
    .restart local v8       #viewRootScrollY:I
    :cond_2
    iget v9, p0, Landroid/view/View$MagnifierView;->mHalfHeightF:F

    const/high16 v10, 0x3f80

    iget v11, p0, Landroid/view/View$MagnifierView;->mOffsetYScale:F

    iget v12, p0, Landroid/view/View$MagnifierView;->mOffsetYScale:F

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    iget v11, p0, Landroid/view/View$MagnifierView;->mHalfHeightF:F

    mul-float/2addr v10, v11

    add-float v5, v9, v10

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 15947
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View$MagnifierView;->resize(II)V

    .line 15948
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 16062
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16063
    const/4 v0, 0x1

    return v0
.end method

.method public resize(II)V
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v2, 0x4110

    const/high16 v1, 0x4000

    .line 15910
    move v7, p1

    .line 15911
    .local v7, dw:I
    move v6, p2

    .line 15912
    .local v6, dh:I
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 15913
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 15914
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 15917
    :cond_0
    invoke-virtual {p0, v7, v6}, Landroid/view/View$MagnifierView;->setMeasuredDimension(II)V

    .line 15918
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    if-eq v7, v0, :cond_1

    .line 15919
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 15920
    :cond_1
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    if-eq v6, v0, :cond_2

    .line 15921
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 15923
    :cond_2
    int-to-float v0, v7

    div-float/2addr v0, v1

    iput v0, p0, Landroid/view/View$MagnifierView;->mHalfWidthF:F

    .line 15924
    int-to-float v0, v6

    div-float/2addr v0, v1

    iput v0, p0, Landroid/view/View$MagnifierView;->mHalfHeightF:F

    .line 15926
    neg-int v0, v7

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/view/View$MagnifierView;->mTouchOffsetX:F

    .line 15927
    neg-int v0, v6

    int-to-float v0, v0

    iput v0, p0, Landroid/view/View$MagnifierView;->mTouchOffsetY:F

    .line 15929
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 15930
    sget-object v0, Landroid/view/View$16;->$SwitchMap$android$view$View$MagnifierType:[I

    iget-object v1, p0, Landroid/view/View$MagnifierView;->mType:Landroid/view/View$MagnifierType;

    invoke-virtual {v1}, Landroid/view/View$MagnifierType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 15943
    :goto_0
    return-void

    .line 15932
    :pswitch_0
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v3, 0x4120

    add-int/lit8 v4, v7, -0xb

    int-to-float v4, v4

    add-int/lit8 v5, v6, -0xc

    int-to-float v5, v5

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 15938
    :pswitch_1
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x4150

    add-int/lit8 v3, v7, -0xd

    int-to-float v3, v3

    add-int/lit8 v4, v6, -0x11

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 15930
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 15903
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 15904
    const p1, 0x103022e

    .line 15906
    :cond_0
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 15907
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 15895
    iget v0, p0, Landroid/view/View$MagnifierView;->mScale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 15900
    :goto_0
    return-void

    .line 15898
    :cond_0
    iput p1, p0, Landroid/view/View$MagnifierView;->mScale:F

    .line 15899
    invoke-virtual {p0}, Landroid/view/View$MagnifierView;->invalidate()V

    goto :goto_0
.end method

.method public show()V
    .locals 5

    .prologue
    .line 15951
    invoke-direct {p0}, Landroid/view/View$MagnifierView;->isPositionVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15952
    invoke-virtual {p0}, Landroid/view/View$MagnifierView;->hide()V

    .line 15959
    :goto_0
    return-void

    .line 15955
    :cond_0
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 15956
    iget-object v0, p0, Landroid/view/View$MagnifierView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    iget v2, p0, Landroid/view/View$MagnifierView;->mTouchRawX:F

    iget v3, p0, Landroid/view/View$MagnifierView;->mTouchOffsetX:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Landroid/view/View$MagnifierView;->mTouchRawY:F

    iget v4, p0, Landroid/view/View$MagnifierView;->mTouchOffsetY:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(III)V

    goto :goto_0
.end method
