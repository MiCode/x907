.class Landroid/view/IndicateMenuView$MenuView;
.super Landroid/view/ViewGroup;
.source "IndicateMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IndicateMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuView"
.end annotation


# static fields
.field private static final STATUS_BAR_HEIGHT:I = 0x19

.field private static final TRIANGLE_DIVIDER_LEFT_REDUNDANCY:I = -0x1

.field private static final TRIANGLE_DIVIDER_RIGHT_REDUNDANCY:I = 0x1

.field private static final TRIANGLE_MARGIN_VERTICAL_ABOVE:I = -0x13

.field private static final TRIANGLE_MARGIN_VERTICAL_BELOW:I = -0xc

.field private static final TRIANGLE_MIN_SIDE_OFFSET:I = 0x14

.field private static final WINDOW_POSITION_VERTICAL_OFFSET_ABOVE:I = 0xd

.field private static final WINDOW_POSITION_VERTICAL_OFFSET_BELOW:I = -0xf


# instance fields
.field private mAbove:Z

.field private mDrawableBin:Landroid/view/IndicateMenuView$DrawableRecyleBin;

.field private mLastX:I

.field private mLastY:I

.field private mReady:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mStatusBarHeight:I

.field private mTempCoor:[I

.field private mTriangleDivide:I

.field private mTriangleDrawable:Landroid/graphics/drawable/Drawable;

.field private mTriangleNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrianglePaddingLeft:I

.field private mTrianglePaddingTop:I

.field private mTrianglePressDrawable:Landroid/graphics/drawable/Drawable;

.field private mTriangleState:Landroid/view/IndicateMenuView$INDICATOR_STATE;

.field private mTriangleVisible:Z

.field private mUIThreadId:J

.field private mWindow:Landroid/widget/PopupWindow;

.field final synthetic this$0:Landroid/view/IndicateMenuView;


# direct methods
.method public constructor <init>(Landroid/view/IndicateMenuView;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 217
    iput-object p1, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    .line 218
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 188
    iput-boolean v2, p0, Landroid/view/IndicateMenuView$MenuView;->mAbove:Z

    .line 190
    sget-object v0, Landroid/view/IndicateMenuView$INDICATOR_STATE;->NORMAL:Landroid/view/IndicateMenuView$INDICATOR_STATE;

    iput-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleState:Landroid/view/IndicateMenuView$INDICATOR_STATE;

    .line 191
    iput v1, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDivide:I

    .line 198
    iput-boolean v2, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleVisible:Z

    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTempCoor:[I

    .line 205
    iput-boolean v1, p0, Landroid/view/IndicateMenuView$MenuView;->mReady:Z

    .line 207
    new-instance v0, Landroid/view/IndicateMenuView$MenuView$1;

    invoke-direct {v0, p0}, Landroid/view/IndicateMenuView$MenuView$1;-><init>(Landroid/view/IndicateMenuView$MenuView;)V

    iput-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mShowRunnable:Ljava/lang/Runnable;

    .line 220
    invoke-direct {p0}, Landroid/view/IndicateMenuView$MenuView;->initialize()V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/view/IndicateMenuView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 223
    iput-object p1, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    .line 224
    invoke-direct {p0, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 188
    iput-boolean v2, p0, Landroid/view/IndicateMenuView$MenuView;->mAbove:Z

    .line 190
    sget-object v0, Landroid/view/IndicateMenuView$INDICATOR_STATE;->NORMAL:Landroid/view/IndicateMenuView$INDICATOR_STATE;

    iput-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleState:Landroid/view/IndicateMenuView$INDICATOR_STATE;

    .line 191
    iput v1, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDivide:I

    .line 198
    iput-boolean v2, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleVisible:Z

    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTempCoor:[I

    .line 205
    iput-boolean v1, p0, Landroid/view/IndicateMenuView$MenuView;->mReady:Z

    .line 207
    new-instance v0, Landroid/view/IndicateMenuView$MenuView$1;

    invoke-direct {v0, p0}, Landroid/view/IndicateMenuView$MenuView$1;-><init>(Landroid/view/IndicateMenuView$MenuView;)V

    iput-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mShowRunnable:Ljava/lang/Runnable;

    .line 226
    invoke-direct {p0}, Landroid/view/IndicateMenuView$MenuView;->initialize()V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/view/IndicateMenuView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 229
    iput-object p1, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    .line 230
    invoke-direct {p0, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    iput-boolean v2, p0, Landroid/view/IndicateMenuView$MenuView;->mAbove:Z

    .line 190
    sget-object v0, Landroid/view/IndicateMenuView$INDICATOR_STATE;->NORMAL:Landroid/view/IndicateMenuView$INDICATOR_STATE;

    iput-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleState:Landroid/view/IndicateMenuView$INDICATOR_STATE;

    .line 191
    iput v1, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDivide:I

    .line 198
    iput-boolean v2, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleVisible:Z

    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTempCoor:[I

    .line 205
    iput-boolean v1, p0, Landroid/view/IndicateMenuView$MenuView;->mReady:Z

    .line 207
    new-instance v0, Landroid/view/IndicateMenuView$MenuView$1;

    invoke-direct {v0, p0}, Landroid/view/IndicateMenuView$MenuView$1;-><init>(Landroid/view/IndicateMenuView$MenuView;)V

    iput-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mShowRunnable:Ljava/lang/Runnable;

    .line 232
    invoke-direct {p0}, Landroid/view/IndicateMenuView$MenuView;->initialize()V

    .line 233
    return-void
.end method

.method static synthetic access$100(Landroid/view/IndicateMenuView$MenuView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mShowRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/IndicateMenuView$MenuView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/view/IndicateMenuView$MenuView;->showImmediately()V

    return-void
.end method

.method private computeDrawableType(II)Landroid/view/IndicateMenuView$DRAWABLE_TYPE;
    .locals 2
    .parameter "index"
    .parameter "count"

    .prologue
    const/4 v1, 0x1

    .line 830
    const/4 v0, 0x0

    .line 832
    .local v0, type:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;
    if-ge p2, v1, :cond_0

    .line 844
    :goto_0
    return-object v0

    .line 834
    :cond_0
    if-ne p2, v1, :cond_1

    .line 835
    sget-object v0, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;->ONLY_ONE:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    goto :goto_0

    .line 836
    :cond_1
    if-nez p1, :cond_2

    .line 837
    sget-object v0, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;->LEFT:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    goto :goto_0

    .line 838
    :cond_2
    add-int/lit8 v1, p2, -0x1

    if-ne p1, v1, :cond_3

    .line 839
    sget-object v0, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;->RIGHT:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    goto :goto_0

    .line 841
    :cond_3
    sget-object v0, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;->MIDDLE:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    goto :goto_0
.end method

.method private drawTriangle(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 609
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->isTriangleVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    :goto_0
    return-void

    .line 614
    :cond_0
    iget v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTrianglePaddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Landroid/view/IndicateMenuView$MenuView;->mTrianglePaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 616
    sget-object v0, Landroid/view/IndicateMenuView$1;->$SwitchMap$android$view$IndicateMenuView$INDICATOR_STATE:[I

    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleState:Landroid/view/IndicateMenuView$INDICATOR_STATE;

    invoke-virtual {v1}, Landroid/view/IndicateMenuView$INDICATOR_STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 618
    :pswitch_0
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 622
    :pswitch_1
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTrianglePressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 626
    :pswitch_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 627
    iget v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDivide:I

    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 630
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 631
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 633
    iget v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDivide:I

    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 635
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTrianglePressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 639
    :pswitch_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 640
    iget v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDivide:I

    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 642
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 643
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 645
    iget v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDivide:I

    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 648
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTrianglePressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 616
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getWindowHeight()I
    .locals 3

    .prologue
    .line 452
    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v1}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/IndicateMenuImpl;->getTotalItemHeight()I

    move-result v1

    invoke-static {}, Landroid/view/IndicateMenuView;->access$900()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Landroid/view/IndicateMenuView;->access$1000()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x13

    add-int/lit8 v0, v1, -0xc

    .line 458
    .local v0, windowHeight:I
    return v0
.end method

.method private getWindowWidth()I
    .locals 2

    .prologue
    .line 446
    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v1}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/IndicateMenuImpl;->getTotalItemWidth()I

    move-result v0

    .line 448
    .local v0, windowWidth:I
    return v0
.end method

.method private initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 236
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/IndicateMenuView$MenuView;->mUIThreadId:J

    .line 238
    invoke-direct {p0}, Landroid/view/IndicateMenuView$MenuView;->updateScreenSize()V

    .line 239
    invoke-direct {p0}, Landroid/view/IndicateMenuView$MenuView;->initializeTriangle()V

    .line 241
    new-instance v1, Landroid/view/IndicateMenuView$DrawableRecyleBin;

    iget-object v2, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/IndicateMenuView$DrawableRecyleBin;-><init>(Landroid/view/IndicateMenuView;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/view/IndicateMenuView$MenuView;->mDrawableBin:Landroid/view/IndicateMenuView$DrawableRecyleBin;

    .line 243
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 244
    .local v0, scale:F
    const/high16 v1, 0x41c8

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/view/IndicateMenuView$MenuView;->mStatusBarHeight:I

    .line 246
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    .line 247
    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setIgnoreInputDock(Z)V

    .line 249
    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 250
    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 251
    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 252
    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 255
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/IndicateMenuView$MenuView;->setWillNotDraw(Z)V

    .line 257
    return-void
.end method

.method private declared-synchronized initializeTriangle()V
    .locals 2

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/view/IndicateMenuView$MenuView;->mAbove:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-static {}, Landroid/view/IndicateMenuView;->access$300()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDrawable:Landroid/graphics/drawable/Drawable;

    .line 266
    :goto_0
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/view/IndicateMenuView$MenuView;->obtainNormalTriangle(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/view/IndicateMenuView$MenuView;->obtainPressTriangle(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTrianglePressDrawable:Landroid/graphics/drawable/Drawable;

    .line 269
    sget-object v0, Landroid/view/IndicateMenuView$INDICATOR_STATE;->NORMAL:Landroid/view/IndicateMenuView$INDICATOR_STATE;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/IndicateMenuView$MenuView;->setTriangleState(Landroid/view/IndicateMenuView$INDICATOR_STATE;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 263
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/view/IndicateMenuView;->access$400()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isWindowFullScreen()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 331
    const/4 v1, 0x0

    .line 333
    .local v1, isFullScreen:Z
    iget-object v5, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v5}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v0, v2

    .line 334
    .local v0, baseView:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 336
    .local v3, rootView:Landroid/view/View;
    if-nez v3, :cond_2

    .line 338
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    if-eqz v2, :cond_0

    instance-of v5, v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 339
    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 340
    .local v4, wparams:Landroid/view/WindowManager$LayoutParams;
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x400

    const/16 v6, 0x400

    if-ne v5, v6, :cond_3

    const/4 v1, 0x1

    .line 345
    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #rootView:Landroid/view/View;
    .end local v4           #wparams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_2
    return v1

    .line 333
    .end local v0           #baseView:Landroid/view/View;
    :cond_1
    iget-object v5, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v5}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/IndicateMenuImpl;->getBaseView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 336
    .restart local v0       #baseView:Landroid/view/View;
    .restart local v3       #rootView:Landroid/view/View;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    goto :goto_1

    .line 340
    .restart local v2       #params:Landroid/view/ViewGroup$LayoutParams;
    .restart local v4       #wparams:Landroid/view/WindowManager$LayoutParams;
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private isWindowSupport()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 313
    const/4 v4, 0x0

    .line 315
    .local v4, windowSupports:Z
    iget-object v5, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v5}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v0, v1

    .line 316
    .local v0, baseView:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 318
    .local v2, rootView:Landroid/view/View;
    if-nez v2, :cond_3

    .line 320
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    if-eqz v1, :cond_1

    instance-of v5, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_1

    move-object v3, v1

    .line 321
    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 322
    .local v3, windowParams:Landroid/view/WindowManager$LayoutParams;
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_0

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-le v5, v6, :cond_4

    :cond_0
    const/4 v4, 0x1

    .line 327
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #rootView:Landroid/view/View;
    .end local v3           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_2
    return v4

    .line 315
    .end local v0           #baseView:Landroid/view/View;
    :cond_2
    iget-object v5, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v5}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/IndicateMenuImpl;->getBaseView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 318
    .restart local v0       #baseView:Landroid/view/View;
    .restart local v2       #rootView:Landroid/view/View;
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_1

    .line 322
    .restart local v1       #params:Landroid/view/ViewGroup$LayoutParams;
    .restart local v3       #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private obtainNormalTriangle(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "drawable"

    .prologue
    const/4 v5, 0x0

    .line 273
    const/4 v1, 0x0

    .line 275
    .local v1, normalDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v3, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 276
    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .line 277
    .local v2, stateListDrawable:Landroid/graphics/drawable/StateListDrawable;
    invoke-static {}, Landroid/view/IndicateMenuView;->access$500()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v0

    .line 279
    .local v0, index:I
    const/4 v3, -0x1

    if-ne v3, v0, :cond_1

    const/4 v1, 0x0

    .line 282
    :goto_0
    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 289
    .end local v0           #index:I
    .end local v2           #stateListDrawable:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return-object v1

    .line 279
    .restart local v0       #index:I
    .restart local v2       #stateListDrawable:Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private obtainPressTriangle(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "drawable"

    .prologue
    const/4 v5, 0x0

    .line 293
    const/4 v1, 0x0

    .line 295
    .local v1, pressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v3, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 296
    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .line 297
    .local v2, stateListDrawable:Landroid/graphics/drawable/StateListDrawable;
    invoke-static {}, Landroid/view/IndicateMenuView;->access$600()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v0

    .line 299
    .local v0, index:I
    const/4 v3, -0x1

    if-ne v3, v0, :cond_1

    const/4 v1, 0x0

    .line 302
    :goto_0
    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 309
    .end local v0           #index:I
    .end local v2           #stateListDrawable:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return-object v1

    .line 299
    .restart local v0       #index:I
    .restart local v2       #stateListDrawable:Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private resizeWindow(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 537
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 538
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 540
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 543
    :cond_0
    return-void
.end method

.method private showImmediately()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 401
    invoke-direct {p0}, Landroid/view/IndicateMenuView$MenuView;->isWindowSupport()Z

    move-result v6

    if-nez v6, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v6, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mHasVisibleItem:Z
    invoke-static {v6}, Landroid/view/IndicateMenuView;->access$800(Landroid/view/IndicateMenuView;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 409
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 412
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->invalidate()V

    .line 414
    iget-object v6, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v6}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v6

    if-nez v6, :cond_2

    move v0, v5

    .line 417
    .local v0, indicatorPadding:I
    :goto_1
    invoke-direct {p0}, Landroid/view/IndicateMenuView$MenuView;->getWindowWidth()I

    move-result v2

    .line 418
    .local v2, windowWidth:I
    invoke-direct {p0}, Landroid/view/IndicateMenuView$MenuView;->getWindowHeight()I

    move-result v1

    .line 420
    .local v1, windowHeight:I
    iget v3, p0, Landroid/view/IndicateMenuView$MenuView;->mLastX:I

    .local v3, x:I
    iget v4, p0, Landroid/view/IndicateMenuView$MenuView;->mLastY:I

    .line 421
    .local v4, y:I
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->isTriangleVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 422
    iget v6, p0, Landroid/view/IndicateMenuView$MenuView;->mTrianglePaddingLeft:I

    iget-object v7, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    .line 428
    :goto_2
    iget-boolean v6, p0, Landroid/view/IndicateMenuView$MenuView;->mAbove:Z

    if-eqz v6, :cond_4

    .line 429
    add-int v6, v1, v0

    sub-int v6, v4, v6

    add-int/lit8 v4, v6, 0xd

    .line 436
    :goto_3
    iget-object v6, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-nez v6, :cond_5

    .line 437
    iget-object v6, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v6}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/IndicateMenuImpl;->getBaseView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 438
    iget-object v6, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    iget-object v7, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v7}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/IndicateMenuImpl;->getBaseView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 414
    .end local v0           #indicatorPadding:I
    .end local v1           #windowHeight:I
    .end local v2           #windowWidth:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_2
    iget-object v6, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v6}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/IndicateMenuImpl;->getIndicatorPadding()I

    move-result v0

    goto :goto_1

    .line 425
    .restart local v0       #indicatorPadding:I
    .restart local v1       #windowHeight:I
    .restart local v2       #windowWidth:I
    .restart local v3       #x:I
    .restart local v4       #y:I
    :cond_3
    shr-int/lit8 v6, v2, 0x1

    sub-int/2addr v3, v6

    goto :goto_2

    .line 432
    :cond_4
    add-int v6, v4, v0

    add-int/lit8 v4, v6, -0xf

    goto :goto_3

    .line 441
    :cond_5
    iget-object v5, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    iget-object v7, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0
.end method

.method private updateScreenSize()V
    .locals 3

    .prologue
    .line 349
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 351
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/view/IndicateMenuView$MenuView;->mScreenWidth:I

    .line 352
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/view/IndicateMenuView$MenuView;->mScreenHeight:I

    .line 353
    return-void
.end method

.method private willWindowBeAbove(II)Z
    .locals 7
    .parameter "y"
    .parameter "windowHeight"

    .prologue
    const/4 v5, 0x0

    .line 553
    iget-object v6, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v6}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v6

    if-nez v6, :cond_0

    move v1, v5

    .line 554
    .local v1, indicatorPadding:I
    :goto_0
    invoke-direct {p0}, Landroid/view/IndicateMenuView$MenuView;->isWindowFullScreen()Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v5

    .line 555
    .local v2, statusBarHeight:I
    :goto_1
    invoke-static {}, Landroid/view/IndicateMenuView;->access$1000()I

    move-result v5

    add-int/lit8 v3, v5, -0xc

    .line 556
    .local v3, triangleBelow:I
    if-lt v2, v3, :cond_2

    sub-int v4, p2, v3

    .line 560
    .local v4, windowHeightExceptTriangleBelow:I
    :goto_2
    sub-int v5, p1, v1

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0xd

    if-ge v5, v2, :cond_3

    .line 563
    const/4 v0, 0x0

    .line 568
    .local v0, above:Z
    :goto_3
    return v0

    .line 553
    .end local v0           #above:Z
    .end local v1           #indicatorPadding:I
    .end local v2           #statusBarHeight:I
    .end local v3           #triangleBelow:I
    .end local v4           #windowHeightExceptTriangleBelow:I
    :cond_0
    iget-object v6, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v6}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/IndicateMenuImpl;->getIndicatorPadding()I

    move-result v1

    goto :goto_0

    .line 554
    .restart local v1       #indicatorPadding:I
    :cond_1
    iget v2, p0, Landroid/view/IndicateMenuView$MenuView;->mStatusBarHeight:I

    goto :goto_1

    .line 556
    .restart local v2       #statusBarHeight:I
    .restart local v3       #triangleBelow:I
    :cond_2
    sub-int v4, p2, v2

    goto :goto_2

    .line 565
    .restart local v4       #windowHeightExceptTriangleBelow:I
    :cond_3
    const/4 v0, 0x1

    .restart local v0       #above:Z
    goto :goto_3
.end method

.method private willWindowBeBelow(II)Z
    .locals 4
    .parameter "y"
    .parameter "windowHeight"

    .prologue
    .line 579
    iget-object v2, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v2}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 583
    .local v1, indicatorPadding:I
    :goto_0
    add-int v2, p1, v1

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, -0xf

    iget v3, p0, Landroid/view/IndicateMenuView$MenuView;->mScreenHeight:I

    if-le v2, v3, :cond_1

    .line 585
    const/4 v0, 0x0

    .line 590
    .local v0, below:Z
    :goto_1
    return v0

    .line 579
    .end local v0           #below:Z
    .end local v1           #indicatorPadding:I
    :cond_0
    iget-object v2, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v2}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/IndicateMenuImpl;->getIndicatorPadding()I

    move-result v1

    goto :goto_0

    .line 587
    .restart local v1       #indicatorPadding:I
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #below:Z
    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 463
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 599
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    :goto_0
    return-void

    .line 603
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 605
    invoke-direct {p0, p1}, Landroid/view/IndicateMenuView$MenuView;->drawTriangle(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getTriangleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrianglePaddingLeft()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTrianglePaddingLeft:I

    return v0
.end method

.method public getTrianglePaddingTop()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTrianglePaddingTop:I

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Landroid/view/IndicateMenuView$MenuView;->mReady:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isTriangleVisible()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 733
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->getChildCount()I

    move-result v3

    .line 735
    .local v3, count:I
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    .line 736
    .local v8, parentLeft:I
    iget v13, p0, Landroid/view/View;->mPaddingTop:I

    invoke-static {}, Landroid/view/IndicateMenuView;->access$1000()I

    move-result v14

    add-int/2addr v13, v14

    add-int/lit8 v9, v13, -0xc

    .line 740
    .local v9, parentTop:I
    move v1, v8

    .line 742
    .local v1, childLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v3, :cond_5

    .line 743
    invoke-virtual {p0, v5}, Landroid/view/IndicateMenuView$MenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 744
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_0

    .line 745
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    instance-of v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v13, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v7, v13

    .line 749
    .local v7, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 750
    .local v12, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 752
    .local v4, height:I
    if-nez v7, :cond_2

    const/4 v6, 0x0

    .line 753
    .local v6, leftMargin:I
    :goto_2
    if-nez v7, :cond_3

    const/4 v10, 0x0

    .line 754
    .local v10, rightMargin:I
    :goto_3
    if-nez v7, :cond_4

    const/4 v11, 0x0

    .line 756
    .local v11, topMargin:I
    :goto_4
    add-int/2addr v1, v6

    .line 757
    add-int v2, v9, v11

    .line 759
    .local v2, childTop:I
    add-int v13, v1, v12

    add-int v14, v2, v4

    invoke-virtual {v0, v1, v2, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 762
    add-int v13, v12, v10

    add-int/2addr v1, v13

    .line 742
    .end local v2           #childTop:I
    .end local v4           #height:I
    .end local v6           #leftMargin:I
    .end local v7           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v10           #rightMargin:I
    .end local v11           #topMargin:I
    .end local v12           #width:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 745
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 752
    .restart local v4       #height:I
    .restart local v7       #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v12       #width:I
    :cond_2
    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 753
    .restart local v6       #leftMargin:I
    :cond_3
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    .line 754
    .restart local v10       #rightMargin:I
    :cond_4
    iget v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_4

    .line 766
    .end local v0           #child:Landroid/view/View;
    .end local v4           #height:I
    .end local v6           #leftMargin:I
    .end local v7           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v10           #rightMargin:I
    .end local v12           #width:I
    :cond_5
    const/4 v13, 0x1

    iput-boolean v13, p0, Landroid/view/IndicateMenuView$MenuView;->mReady:Z

    .line 767
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 678
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->getChildCount()I

    move-result v6

    .line 680
    .local v6, count:I
    const/4 v10, 0x0

    .line 681
    .local v10, maxHeight:I
    const/4 v11, 0x0

    .line 684
    .local v11, maxWidth:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_5

    .line 685
    invoke-virtual {p0, v8}, Landroid/view/IndicateMenuView$MenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 686
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 687
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v9, v0

    .line 691
    .local v9, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_1
    if-eqz v9, :cond_2

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 692
    invoke-virtual/range {v0 .. v5}, Landroid/view/IndicateMenuView$MenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 698
    :goto_2
    if-nez v9, :cond_3

    move v7, v3

    .line 700
    .local v7, horizontalMargin:I
    :goto_3
    if-nez v9, :cond_4

    move v12, v3

    .line 703
    .local v12, verticalMargin:I
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v7

    add-int/2addr v11, v0

    .line 704
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v12

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 684
    .end local v7           #horizontalMargin:I
    .end local v9           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12           #verticalMargin:I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 687
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 695
    .restart local v9       #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/IndicateMenuView$MenuView;->measureChild(Landroid/view/View;II)V

    goto :goto_2

    .line 698
    :cond_3
    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v7, v0, v2

    goto :goto_3

    .line 700
    .restart local v7       #horizontalMargin:I
    :cond_4
    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v12, v0, v2

    goto :goto_4

    .line 708
    .end local v1           #child:Landroid/view/View;
    .end local v7           #horizontalMargin:I
    .end local v9           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    if-lez v10, :cond_6

    if-lez v11, :cond_6

    .line 710
    invoke-static {}, Landroid/view/IndicateMenuView;->access$900()I

    move-result v0

    invoke-static {}, Landroid/view/IndicateMenuView;->access$1000()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v10, v0

    .line 712
    add-int/lit8 v10, v10, -0x1f

    .line 716
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v0, v2

    add-int/2addr v11, v0

    .line 717
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v0, v2

    add-int/2addr v10, v0

    .line 720
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 721
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 724
    :cond_6
    invoke-virtual {p0, v11, v10}, Landroid/view/IndicateMenuView$MenuView;->setMeasuredDimension(II)V

    .line 726
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/view/IndicateMenuView$MenuView;->resizeWindow(II)V

    .line 727
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 771
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 773
    invoke-direct {p0}, Landroid/view/IndicateMenuView$MenuView;->updateScreenSize()V

    .line 774
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 660
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 662
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->getHeight()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 664
    :cond_0
    iget-object v3, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v3}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 665
    iget-object v3, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v3}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/IndicateMenuImpl;->close()V

    .line 672
    :cond_1
    :goto_0
    return v2

    .line 667
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 668
    iget-object v3, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v3}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 669
    iget-object v3, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v3}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/IndicateMenuImpl;->close()V

    goto :goto_0

    .line 672
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized refresh()V
    .locals 9

    .prologue
    .line 777
    monitor-enter p0

    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Landroid/view/IndicateMenuView$MenuView;->mReady:Z

    .line 779
    iget-object v7, p0, Landroid/view/IndicateMenuView$MenuView;->mDrawableBin:Landroid/view/IndicateMenuView$DrawableRecyleBin;

    invoke-virtual {v7}, Landroid/view/IndicateMenuView$DrawableRecyleBin;->reset()V

    .line 780
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->getChildCount()I

    move-result v2

    .line 781
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 782
    invoke-virtual {p0, v4}, Landroid/view/IndicateMenuView$MenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 783
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 784
    iget-object v7, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mRecycler:Landroid/view/IndicateMenuView$ItemRecycleBin;
    invoke-static {v7}, Landroid/view/IndicateMenuView;->access$1300(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuView$ItemRecycleBin;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/IndicateMenuView$ItemRecycleBin;->push(Landroid/view/View;)V

    .line 781
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 787
    .end local v1           #child:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->removeAllViews()V

    .line 789
    iget-object v7, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v7}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/IndicateMenuImpl;->getVisibleItems()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 791
    .local v6, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/IndicateMenuItemImpl;>;"
    if-nez v6, :cond_2

    .line 812
    :goto_1
    monitor-exit p0

    return-void

    .line 795
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 796
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_5

    .line 797
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/IndicateMenuItemImpl;

    .line 798
    .local v5, menuItem:Landroid/view/IndicateMenuItemImpl;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/IndicateMenuItemImpl;->isVisible()Z

    move-result v7

    if-nez v7, :cond_4

    .line 796
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 801
    :cond_4
    iget-object v7, p0, Landroid/view/IndicateMenuView$MenuView;->mDrawableBin:Landroid/view/IndicateMenuView$DrawableRecyleBin;

    invoke-direct {p0, v4, v2}, Landroid/view/IndicateMenuView$MenuView;->computeDrawableType(II)Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/IndicateMenuView$DrawableRecyleBin;->get(Landroid/view/IndicateMenuView$DRAWABLE_TYPE;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 803
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mRecycler:Landroid/view/IndicateMenuView$ItemRecycleBin;
    invoke-static {v7}, Landroid/view/IndicateMenuView;->access$1300(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuView$ItemRecycleBin;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/IndicateMenuView$ItemRecycleBin;->pop()Landroid/view/IndicateMenuView$MenuItemView;

    move-result-object v0

    .line 804
    .local v0, button:Landroid/view/IndicateMenuView$MenuItemView;
    invoke-virtual {v0, v5}, Landroid/view/IndicateMenuView$MenuItemView;->setMenuItem(Landroid/view/IndicateMenuItemImpl;)V

    .line 805
    invoke-virtual {v0, v3}, Landroid/view/IndicateMenuView$MenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 806
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/IndicateMenuView$MenuItemView;->setPressed(Z)V

    .line 808
    invoke-virtual {p0, v0}, Landroid/view/IndicateMenuView$MenuView;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 777
    .end local v0           #button:Landroid/view/IndicateMenuView$MenuItemView;
    .end local v2           #count:I
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #i:I
    .end local v5           #menuItem:Landroid/view/IndicateMenuItemImpl;
    .end local v6           #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/IndicateMenuItemImpl;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 811
    .restart local v2       #count:I
    .restart local v4       #i:I
    .restart local v6       #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/IndicateMenuItemImpl;>;"
    :cond_5
    :try_start_2
    invoke-direct {p0}, Landroid/view/IndicateMenuView$MenuView;->initializeTriangle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 389
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 390
    return-void
.end method

.method public setTriangleState(Landroid/view/IndicateMenuView$INDICATOR_STATE;I)V
    .locals 0
    .parameter "state"
    .parameter "divide"

    .prologue
    .line 372
    iput-object p1, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleState:Landroid/view/IndicateMenuView$INDICATOR_STATE;

    .line 373
    iput p2, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDivide:I

    .line 374
    return-void
.end method

.method public setTriangleVisible(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 356
    iget-boolean v0, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleVisible:Z

    if-ne v0, p1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 359
    :cond_0
    iput-boolean p1, p0, Landroid/view/IndicateMenuView$MenuView;->mTriangleVisible:Z

    .line 360
    iget-wide v0, p0, Landroid/view/IndicateMenuView$MenuView;->mUIThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 361
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->invalidate()V

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->postInvalidate()V

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 393
    iget-wide v0, p0, Landroid/view/IndicateMenuView$MenuView;->mUIThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 394
    invoke-direct {p0}, Landroid/view/IndicateMenuView$MenuView;->showImmediately()V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/IndicateMenuView$MenuView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public update(Landroid/view/IndicateMenuItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 815
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->getChildCount()I

    move-result v2

    .line 816
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 817
    invoke-virtual {p0, v3}, Landroid/view/IndicateMenuView$MenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 818
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v4, v0, Landroid/view/IndicateMenuView$MenuItemView;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 819
    check-cast v1, Landroid/view/IndicateMenuView$MenuItemView;

    .line 820
    .local v1, childItemView:Landroid/view/IndicateMenuView$MenuItemView;
    #getter for: Landroid/view/IndicateMenuView$MenuItemView;->mMenuItem:Landroid/view/IndicateMenuItemImpl;
    invoke-static {v1}, Landroid/view/IndicateMenuView$MenuItemView;->access$1400(Landroid/view/IndicateMenuView$MenuItemView;)Landroid/view/IndicateMenuItemImpl;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 821
    invoke-virtual {v1}, Landroid/view/IndicateMenuView$MenuItemView;->updateStatus()V

    .line 822
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuView;->postInvalidate()V

    .line 827
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childItemView:Landroid/view/IndicateMenuView$MenuItemView;
    :cond_0
    return-void

    .line 816
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public updatePosition(IILandroid/view/IndicateMenuImpl$Position;)V
    .locals 17
    .parameter "x"
    .parameter "y"
    .parameter "position"

    .prologue
    .line 470
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/IndicateMenuView$MenuView;->mLastX:I

    .line 471
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/IndicateMenuView$MenuView;->mLastY:I

    .line 473
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/IndicateMenuView$MenuView;->mTempCoor:[I

    .line 474
    .local v10, windowCoors:[I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #calls: Landroid/view/IndicateMenuView;->getBaseWindowLocation([I)V
    invoke-static {v15, v10}, Landroid/view/IndicateMenuView;->access$1100(Landroid/view/IndicateMenuView;[I)V

    .line 475
    const/4 v15, 0x0

    aget v15, v10, v15

    add-int v13, p1, v15

    .line 476
    .local v13, windowX:I
    const/4 v15, 0x1

    aget v15, v10, v15

    add-int v14, p2, v15

    .line 478
    .local v14, windowY:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/IndicateMenuView$MenuView;->isTriangleVisible()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 481
    invoke-direct/range {p0 .. p0}, Landroid/view/IndicateMenuView$MenuView;->getWindowWidth()I

    move-result v12

    .line 482
    .local v12, windowWidth:I
    invoke-direct/range {p0 .. p0}, Landroid/view/IndicateMenuView$MenuView;->getWindowHeight()I

    move-result v11

    .line 484
    .local v11, windowHeight:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v15}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v15

    if-nez v15, :cond_5

    const/4 v4, 0x0

    .line 487
    .local v4, indicatorPadding:I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/IndicateMenuView$MenuView;->mAbove:Z

    .line 488
    .local v2, above:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Landroid/view/IndicateMenuView$MenuView;->willWindowBeAbove(II)Z

    move-result v15

    if-nez v15, :cond_6

    .line 489
    const/4 v2, 0x0

    .line 494
    :goto_1
    if-eqz v2, :cond_0

    sget-object v15, Landroid/view/IndicateMenuImpl$Position;->Below:Landroid/view/IndicateMenuImpl$Position;

    move-object/from16 v0, p3

    if-ne v0, v15, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Landroid/view/IndicateMenuView$MenuView;->willWindowBeBelow(II)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 496
    const/4 v2, 0x0

    .line 498
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/view/IndicateMenuView$MenuView;->mAbove:Z

    if-eq v15, v2, :cond_1

    .line 499
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/IndicateMenuView$MenuView;->mAbove:Z

    .line 500
    invoke-direct/range {p0 .. p0}, Landroid/view/IndicateMenuView$MenuView;->initializeTriangle()V

    .line 503
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 504
    .local v9, width:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/IndicateMenuView$MenuView;->mTriangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 506
    .local v3, height:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPaddingLeft:I

    sub-int v15, v12, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    shr-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v16, v0

    add-int v6, v15, v16

    .line 508
    .local v6, leftMiddleLength:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPaddingLeft:I

    sub-int v15, v12, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    shr-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v16, v0

    add-int v7, v15, v16

    .line 511
    .local v7, rightMiddleLength:I
    if-ge v13, v6, :cond_7

    .line 512
    shr-int/lit8 v15, v9, 0x1

    sub-int v5, v13, v15

    .line 519
    .local v5, left:I
    :goto_2
    const/16 v15, 0x14

    if-ge v5, v15, :cond_9

    .line 520
    const/16 v5, 0x14

    .line 525
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/view/IndicateMenuView$MenuView;->mAbove:Z

    if-eqz v15, :cond_a

    sub-int v8, v11, v3

    .line 527
    .local v8, top:I
    :goto_4
    move-object/from16 v0, p0

    iput v5, v0, Landroid/view/IndicateMenuView$MenuView;->mTrianglePaddingLeft:I

    .line 528
    move-object/from16 v0, p0

    iput v8, v0, Landroid/view/IndicateMenuView$MenuView;->mTrianglePaddingTop:I

    .line 531
    .end local v2           #above:Z
    .end local v3           #height:I
    .end local v4           #indicatorPadding:I
    .end local v5           #left:I
    .end local v6           #leftMiddleLength:I
    .end local v7           #rightMiddleLength:I
    .end local v8           #top:I
    .end local v9           #width:I
    .end local v11           #windowHeight:I
    .end local v12           #windowWidth:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/IndicateMenuView$MenuView;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 532
    invoke-virtual/range {p0 .. p0}, Landroid/view/IndicateMenuView$MenuView;->show()V

    .line 534
    :cond_4
    return-void

    .line 484
    .restart local v11       #windowHeight:I
    .restart local v12       #windowWidth:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v15}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/IndicateMenuImpl;->getIndicatorPadding()I

    move-result v4

    goto/16 :goto_0

    .line 491
    .restart local v2       #above:Z
    .restart local v4       #indicatorPadding:I
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 513
    .restart local v3       #height:I
    .restart local v6       #leftMiddleLength:I
    .restart local v7       #rightMiddleLength:I
    .restart local v9       #width:I
    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/IndicateMenuView$MenuView;->mScreenWidth:I

    sub-int/2addr v15, v7

    if-le v13, v15, :cond_8

    .line 514
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/IndicateMenuView$MenuView;->mScreenWidth:I

    sub-int/2addr v15, v13

    sub-int v15, v12, v15

    shr-int/lit8 v16, v9, 0x1

    sub-int v5, v15, v16

    .restart local v5       #left:I
    goto :goto_2

    .line 516
    .end local v5           #left:I
    :cond_8
    shr-int/lit8 v15, v9, 0x1

    sub-int v5, v6, v15

    .restart local v5       #left:I
    goto :goto_2

    .line 521
    :cond_9
    add-int v15, v5, v9

    add-int/lit8 v16, v12, -0x14

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    .line 522
    add-int/lit8 v15, v12, -0x14

    sub-int v5, v15, v9

    goto :goto_3

    .line 525
    :cond_a
    const/4 v8, 0x0

    goto :goto_4
.end method

.method public willBeAbove(I)Z
    .locals 3
    .parameter "y"

    .prologue
    .line 546
    invoke-direct {p0}, Landroid/view/IndicateMenuView$MenuView;->getWindowHeight()I

    move-result v1

    .line 547
    .local v1, windowHeight:I
    iget-object v2, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #calls: Landroid/view/IndicateMenuView;->getBaseWindowTop()I
    invoke-static {v2}, Landroid/view/IndicateMenuView;->access$1200(Landroid/view/IndicateMenuView;)I

    move-result v0

    .line 549
    .local v0, baseWindowTop:I
    add-int v2, v0, p1

    invoke-direct {p0, v2, v1}, Landroid/view/IndicateMenuView$MenuView;->willWindowBeAbove(II)Z

    move-result v2

    return v2
.end method

.method public willBeBelow(I)Z
    .locals 3
    .parameter "y"

    .prologue
    .line 572
    invoke-direct {p0}, Landroid/view/IndicateMenuView$MenuView;->getWindowHeight()I

    move-result v1

    .line 573
    .local v1, windowHeight:I
    iget-object v2, p0, Landroid/view/IndicateMenuView$MenuView;->this$0:Landroid/view/IndicateMenuView;

    #calls: Landroid/view/IndicateMenuView;->getBaseWindowTop()I
    invoke-static {v2}, Landroid/view/IndicateMenuView;->access$1200(Landroid/view/IndicateMenuView;)I

    move-result v0

    .line 575
    .local v0, baseWindowTop:I
    add-int v2, v0, p1

    invoke-direct {p0, v2, v1}, Landroid/view/IndicateMenuView$MenuView;->willWindowBeBelow(II)Z

    move-result v2

    return v2
.end method
