.class public Lcom/oppo/widget/OppoTabWidget;
.super Landroid/view/View;
.source "OppoTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;,
        Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_STATE_SET:[I = null

.field private static final STATE_FOCUSED:I = 0x1

.field private static final STATE_NOT_DEFINED:I = -0x1

.field private static final STATE_SELECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OppoTabWidget"

.field private static final mSuspension:Ljava/lang/String; = ".."


# instance fields
.field private mContentHeight:I

.field private mContentWidth:I

.field private mCurFocusTabIndex:I

.field private mCurIsLandMode:Z

.field private mCurScreenOrientation:I

.field private mDefaultTextSize:I

.field private mDefaultTextSizeLandscape:I

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mHeightRatioLand:F

.field private mHeightRatioPor:F

.field private mHlState:I

.field private mHlTabIconOffsetToNonHlTabIconInYDir:I

.field private mIconAndLabelMargin:I

.field private mIconHeight:I

.field private mIconHeightLandRatio:F

.field private mIconHeightPortRatio:F

.field private mIconMarginToTop:I

.field private mInitTabsAreaDone:Z

.field private mLabelFocusColor:I

.field private mLabelMarginToBottom:I

.field private mLabelNorColor:I

.field private mMultiTouch:Z

.field private mOldFocusTabIndex:I

.field private mOppoTabSpecsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectedTab:I

.field private mTabFocusedBg:Landroid/graphics/drawable/Drawable;

.field private mTabHlBg:Landroid/graphics/drawable/Drawable;

.field private mTabHlBgTransparentAreaWidth:I

.field private mTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

.field private mTabShinePng:Landroid/graphics/drawable/Drawable;

.field private mTabSideMargin:I

.field private mTabSideMarginRation:F

.field private mTabTopShadowHeight:I

.field private mTabWidgetAlignMode:I

.field private mTabWidgetBg:Landroid/graphics/drawable/Drawable;

.field private mTabWidgetCover:Landroid/graphics/drawable/Drawable;

.field private mWaitTouchUpFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/oppo/widget/OppoTabWidget;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 128
    const v0, 0x10103f4

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mSelectedTab:I

    .line 64
    const/4 v9, 0x1

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetAlignMode:I

    .line 66
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    .line 68
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mContentWidth:I

    .line 69
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    .line 70
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    .line 72
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    .line 73
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 75
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelNorColor:I

    .line 76
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelFocusColor:I

    .line 77
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSize:I

    .line 78
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSizeLandscape:I

    .line 79
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioPor:F

    .line 80
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioLand:F

    .line 81
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightPortRatio:F

    .line 82
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightLandRatio:F

    .line 83
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    .line 84
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mIconAndLabelMargin:I

    .line 85
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelMarginToBottom:I

    .line 86
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgTransparentAreaWidth:I

    .line 87
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mHlTabIconOffsetToNonHlTabIconInYDir:I

    .line 89
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    .line 91
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    .line 93
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMarginRation:F

    .line 94
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    .line 96
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    .line 98
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    .line 100
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    .line 101
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetCover:Landroid/graphics/drawable/Drawable;

    .line 102
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBg:Landroid/graphics/drawable/Drawable;

    .line 103
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mTabFocusedBg:Landroid/graphics/drawable/Drawable;

    .line 104
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mTabShinePng:Landroid/graphics/drawable/Drawable;

    .line 110
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    .line 112
    const/4 v9, -0x1

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 118
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mCurScreenOrientation:I

    .line 993
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoTabWidget;->mMultiTouch:Z

    .line 996
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    .line 997
    const/4 v9, -0x1

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    .line 135
    sget-object v9, Lcom/android/internal/R$styleable;->OppoTabWidget:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 140
    .local v1, appearance:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, alignMode:Ljava/lang/String;
    const-string v9, "bottom"

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_0

    .line 147
    const/4 v9, 0x1

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetAlignMode:I

    .line 158
    :goto_0
    const/4 v7, 0x1

    .line 160
    .local v7, oppo:Z
    if-eqz v7, :cond_1

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    .line 163
    .local v6, n:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v6, :cond_1

    .line 165
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 167
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 163
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 152
    .end local v2           #attr:I
    .end local v5           #i:I
    .end local v6           #n:I
    .end local v7           #oppo:Z
    :cond_0
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetAlignMode:I

    goto :goto_0

    .line 170
    .restart local v2       #attr:I
    .restart local v5       #i:I
    .restart local v6       #n:I
    .restart local v7       #oppo:Z
    :pswitch_0
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelNorColor:I

    goto :goto_2

    .line 174
    :pswitch_1
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelFocusColor:I

    goto :goto_2

    .line 178
    :pswitch_2
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioPor:F

    goto :goto_2

    .line 182
    :pswitch_3
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioLand:F

    goto :goto_2

    .line 186
    :pswitch_4
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightPortRatio:F

    goto :goto_2

    .line 190
    :pswitch_5
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightLandRatio:F

    goto :goto_2

    .line 194
    :pswitch_6
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    goto :goto_2

    .line 198
    :pswitch_7
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelMarginToBottom:I

    goto :goto_2

    .line 202
    :pswitch_8
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mIconAndLabelMargin:I

    goto :goto_2

    .line 206
    :pswitch_9
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgTransparentAreaWidth:I

    goto :goto_2

    .line 210
    :pswitch_a
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mHlTabIconOffsetToNonHlTabIconInYDir:I

    goto :goto_2

    .line 214
    :pswitch_b
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMarginRation:F

    goto :goto_2

    .line 224
    .end local v2           #attr:I
    .end local v5           #i:I
    .end local v6           #n:I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->getDrawables()V

    .line 227
    iget-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoTabWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050092

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 232
    .local v3, defaultTextSize:I
    if-lez v3, :cond_2

    .line 234
    iput v3, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSize:I

    .line 237
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050093

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 239
    .local v4, defaultTextSizeLandscape:I
    if-lez v4, :cond_3

    .line 241
    iput v4, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSizeLandscape:I

    .line 244
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050094

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 246
    .local v8, topShadowHeight:I
    if-lez v8, :cond_4

    .line 248
    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    .line 251
    :cond_4
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    .line 252
    iget-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 253
    iget-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSize:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 254
    iget-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelNorColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    iput-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 257
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoTabWidget;->setFocusable(Z)V

    .line 258
    invoke-virtual {p0, p0}, Lcom/oppo/widget/OppoTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 259
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private changeTabFocus(Z)Z
    .locals 3
    .parameter "toRight"

    .prologue
    .line 878
    iget-object v2, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 879
    .local v1, tabNum:I
    if-gtz v1, :cond_0

    .line 881
    const/4 v2, 0x0

    .line 902
    :goto_0
    return v2

    .line 883
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 884
    .local v0, curTabIndex:I
    if-eqz p1, :cond_2

    .line 886
    add-int/lit8 v0, v0, 0x1

    .line 887
    if-lt v0, v1, :cond_1

    .line 889
    const/4 v0, 0x0

    .line 891
    :cond_1
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoTabWidget;->procFocusChange(I)V

    .line 902
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 895
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 896
    if-gez v0, :cond_3

    .line 898
    add-int/lit8 v0, v1, -0x1

    .line 900
    :cond_3
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoTabWidget;->procFocusChange(I)V

    goto :goto_1
.end method

.method private drawFocusTabContent(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 562
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-nez v14, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 567
    .local v8, size:I
    if-lez v8, :cond_0

    .line 571
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-gez v14, :cond_2

    .line 573
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 575
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-lt v14, v8, :cond_3

    .line 577
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 580
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 583
    .local v11, tabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoTabWidget;->getHlTabBg()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 584
    .local v9, tabHlBg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/RectF;->top:F

    float-to-int v15, v15

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v14, v15, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 588
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 591
    const/4 v5, 0x0

    .line 592
    .local v5, iconLeft:I
    const/4 v7, 0x0

    .line 593
    .local v7, iconTop:I
    const/4 v6, 0x0

    .line 594
    .local v6, iconRight:I
    const/4 v4, 0x0

    .line 596
    .local v4, iconBottom:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-nez v14, :cond_6

    .line 598
    const/4 v13, 0x0

    .line 599
    .local v13, x:I
    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/RectF;->right:F

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    float-to-int v15, v15

    add-int v13, v14, v15

    .line 602
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    div-int/lit8 v14, v14, 0x2

    sub-int v5, v13, v14

    .line 603
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/widget/OppoTabWidget;->mHlTabIconOffsetToNonHlTabIconInYDir:I

    add-int v7, v14, v15

    .line 604
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    div-int/lit8 v14, v14, 0x2

    add-int v6, v13, v14

    .line 605
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    add-int v4, v14, v15

    .line 628
    .end local v13           #x:I
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1}, Lcom/oppo/widget/OppoTabWidget;->drawHlTabText(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Landroid/graphics/Canvas;)I

    move-result v2

    .line 629
    .local v2, adjustOffset:I
    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getNorTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 630
    .local v10, tabIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_0

    .line 632
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 634
    const/4 v14, 0x1

    new-array v3, v14, [I

    const/4 v14, 0x0

    const v15, 0x10100a1

    aput v15, v3, v14

    .line 636
    .local v3, focusDrawableState:[I
    invoke-virtual {v10, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 637
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 644
    .end local v3           #focusDrawableState:[I
    :cond_4
    if-gez v2, :cond_5

    .line 646
    add-int/2addr v5, v2

    .line 647
    add-int/2addr v6, v2

    .line 650
    :cond_5
    invoke-virtual {v10, v5, v7, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 651
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 609
    .end local v2           #adjustOffset:I
    .end local v10           #tabIcon:Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v15

    float-to-int v12, v14

    .line 610
    .local v12, tabSpecHeight:I
    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    add-int v5, v14, v15

    .line 611
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    add-int v7, v14, v15

    .line 612
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    add-int v6, v5, v14

    .line 613
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    add-int v4, v7, v14

    goto :goto_1
.end method

.method private drawHlTabText(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Landroid/graphics/Canvas;)I
    .locals 16
    .parameter "tabSpec"
    .parameter "canvas"

    .prologue
    .line 658
    const/4 v6, 0x0

    .line 659
    .local v6, tabLabel:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabLabel()Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 661
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 663
    :cond_0
    if-nez v6, :cond_1

    .line 665
    const/4 v1, 0x0

    .line 726
    :goto_0
    return v1

    .line 668
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mLabelFocusColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 670
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 671
    .local v9, textWidth:I
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v5

    .line 673
    .local v5, tabArea:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-eqz v13, :cond_2

    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v3, v13

    .line 677
    .local v3, maxTextWidth:I
    :goto_1
    if-le v9, v3, :cond_5

    .line 679
    const-string v12, ".."

    .line 680
    .local v12, tmpTabLabel:Ljava/lang/String;
    const/4 v2, 0x0

    .line 681
    .local v2, end:I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v2, v13, :cond_4

    .line 683
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    invoke-virtual {v6, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 684
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 685
    if-ge v9, v3, :cond_3

    .line 687
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 673
    .end local v2           #end:I
    .end local v3           #maxTextWidth:I
    .end local v12           #tmpTabLabel:Ljava/lang/String;
    :cond_2
    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgTransparentAreaWidth:I

    mul-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v3, v13

    goto :goto_1

    .line 691
    .restart local v2       #end:I
    .restart local v3       #maxTextWidth:I
    .restart local v12       #tmpTabLabel:Ljava/lang/String;
    :cond_3
    const/4 v13, 0x1

    if-le v2, v13, :cond_4

    .line 693
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    add-int/lit8 v15, v2, -0x1

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 694
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 700
    :cond_4
    move-object v6, v12

    .line 703
    .end local v2           #end:I
    .end local v12           #tmpTabLabel:Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    .line 704
    .local v10, textX:F
    const/4 v11, 0x0

    .line 705
    .local v11, textY:I
    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    float-to-int v7, v13

    .line 706
    .local v7, tabWidth:I
    const/4 v1, 0x0

    .line 707
    .local v1, adjustOffset:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-nez v13, :cond_6

    .line 709
    iget v13, v5, Landroid/graphics/RectF;->left:F

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float v10, v13, v14

    .line 710
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mLabelMarginToBottom:I

    sub-int v11, v13, v14

    .line 724
    :goto_3
    int-to-float v13, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v10, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 714
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    mul-int/lit8 v13, v13, 0x2

    sub-int v13, v7, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    sub-int v4, v13, v14

    .line 715
    .local v4, remainSpace:I
    sub-int v13, v4, v9

    div-int/lit8 v8, v13, 0x2

    .line 716
    .local v8, textOffset:I
    if-gez v8, :cond_7

    .line 718
    move v1, v8

    .line 720
    :cond_7
    iget v13, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    int-to-float v14, v8

    add-float v10, v13, v14

    .line 721
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    add-int v11, v13, v14

    goto :goto_3
.end method

.method private drawTabDevider(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 750
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 756
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_0

    .line 758
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 759
    .local v4, tabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-virtual {v4}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    const/high16 v6, 0x3f80

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 760
    .local v1, left:I
    add-int/lit8 v2, v1, 0x2

    .line 761
    .local v2, right:I
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    .line 763
    const-string v5, "OppoTabWidget"

    const-string v6, "drawTabDevider: there is no tab divider to draw!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 767
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    invoke-virtual {v4}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v5, v1, v6, v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 770
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 756
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private drawTabWidgetCover(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 374
    return-void
.end method

.method private drawUnFocusTabContent(Landroid/graphics/Canvas;Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;)I
    .locals 16
    .parameter "canvas"
    .parameter "tabSpec"

    .prologue
    .line 488
    if-nez p2, :cond_1

    .line 490
    const/4 v1, 0x0

    .line 557
    :cond_0
    :goto_0
    return v1

    .line 492
    :cond_1
    const/4 v6, 0x0

    .line 493
    .local v6, tabLabel:Ljava/lang/String;
    const/4 v1, 0x0

    .line 494
    .local v1, adjustOffset:I
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabLabel()Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 496
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 498
    :cond_2
    if-eqz v6, :cond_0

    .line 500
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mLabelNorColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 503
    .local v9, textWidth:I
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v5

    .line 504
    .local v5, tabArea:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-eqz v13, :cond_3

    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v3, v13

    .line 508
    .local v3, maxTextWidth:I
    :goto_1
    if-le v9, v3, :cond_6

    .line 510
    const-string v12, ".."

    .line 511
    .local v12, tmpTabLabel:Ljava/lang/String;
    const/4 v2, 0x0

    .line 512
    .local v2, end:I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v2, v13, :cond_5

    .line 514
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    invoke-virtual {v6, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 515
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 516
    if-ge v9, v3, :cond_4

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 504
    .end local v2           #end:I
    .end local v3           #maxTextWidth:I
    .end local v12           #tmpTabLabel:Ljava/lang/String;
    :cond_3
    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgTransparentAreaWidth:I

    mul-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v3, v13

    goto :goto_1

    .line 522
    .restart local v2       #end:I
    .restart local v3       #maxTextWidth:I
    .restart local v12       #tmpTabLabel:Ljava/lang/String;
    :cond_4
    const/4 v13, 0x1

    if-le v2, v13, :cond_5

    .line 524
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    add-int/lit8 v15, v2, -0x1

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 525
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 531
    :cond_5
    move-object v6, v12

    .line 533
    .end local v2           #end:I
    .end local v12           #tmpTabLabel:Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    .line 534
    .local v10, textX:F
    const/4 v11, 0x0

    .line 535
    .local v11, textY:F
    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    float-to-int v7, v13

    .line 536
    .local v7, tabWidth:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-nez v13, :cond_7

    .line 538
    iget v13, v5, Landroid/graphics/RectF;->left:F

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float v10, v13, v14

    .line 539
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mLabelMarginToBottom:I

    sub-int/2addr v13, v14

    int-to-float v11, v13

    .line 554
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v10, v11, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 543
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    mul-int/lit8 v13, v13, 0x2

    sub-int v13, v7, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    sub-int v4, v13, v14

    .line 544
    .local v4, remainSpace:I
    sub-int v13, v4, v9

    div-int/lit8 v8, v13, 0x2

    .line 546
    .local v8, textOffset:I
    if-gez v8, :cond_8

    .line 548
    move v1, v8

    .line 550
    :cond_8
    iget v13, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    int-to-float v14, v8

    add-float v10, v13, v14

    .line 551
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    add-int/2addr v13, v14

    int-to-float v11, v13

    goto :goto_3
.end method

.method private drawUnFocusTabsContent(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 418
    iget-object v11, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-nez v11, :cond_1

    .line 483
    :cond_0
    return-void

    .line 422
    :cond_1
    iget-object v11, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_0

    .line 427
    iget-object v11, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 428
    .local v6, size:I
    const/4 v2, 0x0

    .line 429
    .local v2, iconLeft:I
    const/4 v4, 0x0

    .line 430
    .local v4, iconTop:I
    const/4 v3, 0x0

    .line 431
    .local v3, iconRight:I
    const/4 v1, 0x0

    .line 432
    .local v1, iconBottom:I
    const/4 v5, 0x0

    .local v5, index:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 434
    iget v11, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-ne v11, v5, :cond_3

    .line 432
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 438
    :cond_3
    iget-object v11, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 439
    .local v8, tabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    iget-boolean v11, p0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-nez v11, :cond_6

    .line 441
    const/4 v10, 0x0

    .line 442
    .local v10, x:I
    invoke-virtual {v8}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    invoke-virtual {v8}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    float-to-int v12, v12

    add-int v10, v11, v12

    .line 445
    iget v11, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    div-int/lit8 v11, v11, 0x2

    sub-int v2, v10, v11

    .line 446
    iget v4, p0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    .line 447
    iget v11, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    div-int/lit8 v11, v11, 0x2

    add-int v3, v10, v11

    .line 448
    iget v11, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    iget v12, p0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    add-int v1, v11, v12

    .line 459
    .end local v10           #x:I
    :goto_2
    invoke-virtual {v8}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getNorTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 460
    .local v7, tabIcon:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1, v8}, Lcom/oppo/widget/OppoTabWidget;->drawUnFocusTabContent(Landroid/graphics/Canvas;Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;)I

    move-result v0

    .line 462
    .local v0, adjustOffset:I
    if-eqz v7, :cond_2

    .line 464
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 466
    sget-object v11, Lcom/oppo/widget/OppoTabWidget;->EMPTY_STATE_SET:[I

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 467
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 474
    :cond_4
    if-gez v0, :cond_5

    .line 476
    add-int/2addr v2, v0

    .line 477
    add-int/2addr v3, v0

    .line 479
    :cond_5
    invoke-virtual {v7, v2, v4, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 480
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 452
    .end local v0           #adjustOffset:I
    .end local v7           #tabIcon:Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-virtual {v8}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    float-to-int v9, v11

    .line 453
    .local v9, tabSpecHeight:I
    invoke-virtual {v8}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    iget v12, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    add-int v2, v11, v12

    .line 454
    iget v11, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    sub-int v11, v9, v11

    div-int/lit8 v11, v11, 0x2

    iget v12, p0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    add-int v4, v11, v12

    .line 455
    iget v11, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    add-int v3, v2, v11

    .line 456
    iget v11, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    add-int v1, v4, v11

    goto :goto_2
.end method

.method private getClickedTabIndex(II)I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, -0x1

    .line 1130
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 1151
    :cond_0
    :goto_0
    return v0

    .line 1135
    :cond_1
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1136
    .local v1, listSize:I
    if-lez v1, :cond_0

    .line 1141
    const v3, 0x7f7fffff

    .line 1142
    .local v3, nearestDis:F
    const/4 v2, -0x1

    .line 1143
    .local v2, nearest:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1145
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v4

    .line 1146
    .local v4, r:Landroid/graphics/RectF;
    iget v5, v4, Landroid/graphics/RectF;->left:F

    int-to-float v6, p1

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    iget v5, v4, Landroid/graphics/RectF;->right:F

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    iget v5, v4, Landroid/graphics/RectF;->top:F

    int-to-float v6, p2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 1143
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v4           #r:Landroid/graphics/RectF;
    :cond_3
    move v0, v2

    .line 1151
    goto :goto_0
.end method

.method private getDrawables()V
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 318
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x108061f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    .line 320
    const v1, 0x108061d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBg:Landroid/graphics/drawable/Drawable;

    .line 323
    const v1, 0x108061c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabFocusedBg:Landroid/graphics/drawable/Drawable;

    .line 325
    const v1, 0x1080620

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 326
    return-void
.end method

.method private getHlTabBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    packed-switch v0, :pswitch_data_0

    .line 743
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    .line 744
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBg:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    .line 737
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 740
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabFocusedBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 734
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initSizeInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 278
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 280
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 282
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 283
    .local v2, dWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 285
    .local v1, dHeight:I
    iput v2, p0, Lcom/oppo/widget/OppoTabWidget;->mContentWidth:I

    .line 286
    if-lt v2, v1, :cond_0

    .line 289
    iput-boolean v6, p0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    .line 290
    int-to-float v4, v2

    iget v5, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioLand:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    .line 291
    int-to-float v4, v2

    iget v5, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMarginRation:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    .line 292
    iget v4, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightLandRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    .line 294
    const/4 v4, 0x2

    iput v4, p0, Lcom/oppo/widget/OppoTabWidget;->mCurScreenOrientation:I

    .line 296
    iget-object v4, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSizeLandscape:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 310
    :goto_0
    iget-object v4, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 313
    return-void

    .line 301
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    .line 302
    int-to-float v4, v1

    iget v5, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioPor:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    .line 303
    int-to-float v4, v1

    iget v5, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMarginRation:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    .line 304
    iget v4, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightPortRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    .line 306
    iput v6, p0, Lcom/oppo/widget/OppoTabWidget;->mCurScreenOrientation:I

    .line 308
    iget-object v4, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method private initTabsArea()V
    .locals 13

    .prologue
    .line 379
    iget-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 380
    .local v5, size:I
    if-gtz v5, :cond_0

    .line 382
    const-string v9, "OppoTabWidget"

    const-string v10, "initTabsArea:mOppoTabSpecsList.size() <= 0, return."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_0
    return-void

    .line 385
    :cond_0
    iget v9, p0, Lcom/oppo/widget/OppoTabWidget;->mContentWidth:I

    div-int v7, v9, v5

    .line 386
    .local v7, tabWidth:I
    iget v6, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    .line 387
    .local v6, tabHeight:I
    const/4 v3, 0x0

    .line 388
    .local v3, left:I
    const/4 v8, 0x0

    .line 389
    .local v8, top:I
    const/4 v4, 0x0

    .line 390
    .local v4, right:I
    move v1, v6

    .line 391
    .local v1, bottom:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 393
    add-int v4, v3, v7

    .line 403
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v9, v3

    int-to-float v10, v8

    int-to-float v11, v4

    int-to-float v12, v1

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 404
    .local v0, area:Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    invoke-virtual {v9, v0}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabArea(Landroid/graphics/RectF;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 405
    move v3, v4

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 407
    .end local v0           #area:Landroid/graphics/RectF;
    :cond_1
    iget v9, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-gez v9, :cond_2

    .line 410
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 412
    :cond_2
    iget v9, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    iput v9, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    .line 413
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    goto :goto_0
.end method

.method private procFocusChange(I)V
    .locals 3
    .parameter "curTabIndex"

    .prologue
    .line 985
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoTabWidget;->requestFocusOnTab(I)V

    .line 986
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    iget v1, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;->onOppoTabSelectionChanged(IZ)V

    .line 990
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->requestFocus()Z

    .line 991
    return-void
.end method

.method private updateTabIcon(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "spec"
    .parameter "icon"

    .prologue
    .line 1391
    invoke-virtual {p1, p2, p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1392
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->postInvalidate()V

    .line 1393
    return-void
.end method

.method private updateTabLabel(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "spec"
    .parameter "label"

    .prologue
    .line 1372
    invoke-virtual {p1, p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabLabel(Ljava/lang/CharSequence;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1373
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->postInvalidate()V

    .line 1374
    return-void
.end method


# virtual methods
.method public addOppoTabSpec(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)V
    .locals 6
    .parameter "tabSpec"

    .prologue
    const/4 v4, 0x0

    .line 1290
    if-nez p1, :cond_1

    .line 1292
    const-string v3, "OppoTabWidget"

    const-string v4, "addOppoOppoTabSpec: null == tabSpec, return;"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1296
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->getIndicatorStrategy()Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;

    move-result-object v0

    .line 1297
    .local v0, indicatorStrategy:Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;
    if-nez v0, :cond_2

    .line 1299
    const-string v3, "OppoTabWidget"

    const-string v4, "addOppoTabSpec: null == indicatorStrategy, return;"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1302
    :cond_2
    const/4 v1, 0x0

    .line 1303
    .local v1, simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    const-string v2, ""

    .line 1304
    .local v2, tabLabel:Ljava/lang/String;
    instance-of v3, v0, Lcom/oppo/widget/OppoTabHost$LabelIndicatorStrategy;

    if-eqz v3, :cond_4

    .line 1307
    new-instance v1, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .end local v1           #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-direct {v1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;-><init>()V

    .line 1308
    .restart local v1       #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1310
    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1312
    :cond_3
    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabLabel(Ljava/lang/CharSequence;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1313
    iget-object v3, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1316
    :cond_4
    instance-of v3, v0, Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;

    if-eqz v3, :cond_6

    .line 1319
    new-instance v1, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .end local v1           #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-direct {v1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;-><init>()V

    .line 1320
    .restart local v1       #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1322
    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1324
    :cond_5
    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabLabel(Ljava/lang/CharSequence;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    move-result-object v3

    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1326
    iget-object v3, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1329
    :cond_6
    instance-of v3, v0, Lcom/oppo/widget/OppoTabHost$ViewIndicatorStrategy;

    if-eqz v3, :cond_0

    .line 1332
    new-instance v1, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .end local v1           #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-direct {v1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;-><init>()V

    .line 1333
    .restart local v1       #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    const-string v3, "not_support"

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabLabel(Ljava/lang/CharSequence;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1334
    iget-object v3, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addSimpleOppoTabSpec(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;)Z
    .locals 1
    .parameter "spec"

    .prologue
    .line 1360
    if-nez p1, :cond_0

    .line 1362
    const/4 v0, 0x0

    .line 1366
    :goto_0
    return v0

    .line 1365
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public focusCurrentTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1251
    if-gez p1, :cond_1

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 1261
    iput p1, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 1262
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    goto :goto_0
.end method

.method public getTabAlignMode()I
    .locals 1

    .prologue
    .line 1156
    iget v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetAlignMode:I

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1167
    const/4 v0, 0x0

    .line 1169
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public moveAndNotUp()V
    .locals 2

    .prologue
    .line 1001
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    if-eqz v0, :cond_0

    .line 1003
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    .line 1004
    const/4 v0, -0x1

    iget v1, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    if-ne v0, v1, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    goto :goto_0
.end method

.method public newSimpleOppoTabSpec(Ljava/lang/String;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    .locals 1
    .parameter "tag"

    .prologue
    .line 1355
    new-instance v0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    invoke-direct {v0}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;-><init>()V

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 779
    iput v2, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    .line 780
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v3, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iput v3, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    .line 789
    :cond_0
    iput-boolean v2, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    .line 790
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->initSizeInfo()V

    .line 791
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->getDrawables()V

    .line 792
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 794
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x1

    .line 331
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    if-eq v3, v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 335
    .local v0, curConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 339
    iput v3, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    .line 346
    .end local v0           #curConfig:Landroid/content/res/Configuration;
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 348
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTabWidget;->drawTabWidgetCover(Landroid/graphics/Canvas;)V

    .line 366
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 353
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTabWidget;->drawTabWidgetCover(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 357
    :cond_2
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    if-nez v1, :cond_3

    .line 359
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->initTabsArea()V

    .line 362
    :cond_3
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTabWidget;->drawUnFocusTabsContent(Landroid/graphics/Canvas;)V

    .line 363
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTabWidget;->drawTabWidgetCover(Landroid/graphics/Canvas;)V

    .line 364
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTabWidget;->drawFocusTabContent(Landroid/graphics/Canvas;)V

    .line 365
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTabWidget;->drawTabDevider(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 826
    if-eqz p2, :cond_0

    .line 828
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    .line 829
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->requestFocus()Z

    .line 830
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    .line 837
    :goto_0
    return-void

    .line 834
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    .line 835
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 909
    packed-switch p1, :pswitch_data_0

    .line 937
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 913
    :pswitch_0
    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    .line 916
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 917
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoTabWidget;->playSoundEffect(I)V

    goto :goto_0

    .line 924
    :pswitch_1
    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    .line 927
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 928
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoTabWidget;->playSoundEffect(I)V

    goto :goto_0

    .line 909
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 842
    if-nez p2, :cond_1

    .line 873
    :cond_0
    :goto_0
    return v1

    .line 848
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 849
    .local v0, action:I
    packed-switch p1, :pswitch_data_0

    .line 873
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 853
    :pswitch_0
    if-nez v0, :cond_0

    .line 855
    iput v1, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    .line 856
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoTabWidget;->changeTabFocus(Z)Z

    goto :goto_0

    .line 862
    :pswitch_1
    if-nez v0, :cond_0

    .line 864
    iput v1, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    .line 865
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoTabWidget;->changeTabFocus(Z)Z

    goto :goto_0

    .line 849
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 944
    iget-object v3, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 945
    .local v1, tabNum:I
    if-gtz v1, :cond_0

    .line 947
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 979
    :goto_0
    return v2

    .line 949
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 950
    .local v0, curTabIndex:I
    packed-switch p1, :pswitch_data_0

    .line 979
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 954
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    .line 955
    if-gez v0, :cond_1

    .line 957
    add-int/lit8 v0, v1, -0x1

    .line 959
    :cond_1
    iput v2, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    .line 960
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoTabWidget;->procFocusChange(I)V

    goto :goto_0

    .line 964
    :pswitch_1
    const-string v3, "OppoTabWidget"

    const-string v4, "onKeyUp:KEYCODE_DPAD_RIGHT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    add-int/lit8 v0, v0, 0x1

    .line 967
    if-lt v0, v1, :cond_2

    .line 969
    const/4 v0, 0x0

    .line 971
    :cond_2
    iput v2, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    .line 972
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoTabWidget;->procFocusChange(I)V

    goto :goto_0

    .line 950
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v2, 0x0

    .line 265
    iput v2, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    .line 266
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->initSizeInfo()V

    .line 269
    iget v0, p0, Lcom/oppo/widget/OppoTabWidget;->mContentWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoTabWidget;->setMeasuredDimension(II)V

    .line 270
    iput-boolean v2, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    .line 271
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->getDrawables()V

    .line 272
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->initTabsArea()V

    .line 274
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1017
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1018
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1020
    .local v2, y:I
    const/4 v0, 0x0

    .line 1021
    .local v0, clickTabIndex:I
    iput v4, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    .line 1023
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1125
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 1028
    :pswitch_1
    iput-boolean v5, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    .line 1030
    iput-boolean v4, p0, Lcom/oppo/widget/OppoTabWidget;->mMultiTouch:Z

    .line 1032
    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoTabWidget;->getClickedTabIndex(II)I

    move-result v0

    .line 1033
    if-eq v6, v0, :cond_0

    .line 1037
    iget v3, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-eq v3, v0, :cond_0

    .line 1039
    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 1040
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    goto :goto_0

    .line 1046
    :pswitch_2
    iput-boolean v5, p0, Lcom/oppo/widget/OppoTabWidget;->mMultiTouch:Z

    goto :goto_0

    .line 1051
    :pswitch_3
    iget-boolean v3, p0, Lcom/oppo/widget/OppoTabWidget;->mMultiTouch:Z

    if-nez v3, :cond_0

    .line 1055
    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoTabWidget;->getClickedTabIndex(II)I

    move-result v0

    .line 1056
    if-eq v6, v0, :cond_0

    .line 1060
    iget v3, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-eq v3, v0, :cond_0

    .line 1062
    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 1063
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    goto :goto_0

    .line 1073
    :pswitch_4
    iput-boolean v4, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    .line 1076
    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoTabWidget;->getClickedTabIndex(II)I

    move-result v0

    .line 1079
    if-ne v6, v0, :cond_2

    .line 1082
    iget v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 1090
    :goto_1
    iget v3, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-eq v3, v0, :cond_1

    .line 1092
    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 1093
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    .line 1096
    :cond_1
    iget v3, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    iput v3, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    .line 1098
    iget-object v3, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    if-eqz v3, :cond_0

    .line 1100
    iget-object v3, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    iget v4, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    invoke-interface {v3, v4, v5}, Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;->onOppoTabSelectionChanged(IZ)V

    goto :goto_0

    .line 1087
    :cond_2
    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoTabWidget;->playSoundEffect(I)V

    goto :goto_1

    .line 1106
    :pswitch_5
    iput-boolean v4, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    .line 1109
    iget v3, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-gez v3, :cond_3

    .line 1111
    iput v4, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 1113
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    .line 1114
    iget-object v3, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    if-eqz v3, :cond_0

    .line 1116
    iget-object v3, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    iget v4, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    invoke-interface {v3, v4, v5}, Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;->onOppoTabSelectionChanged(IZ)V

    goto :goto_0

    .line 1023
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 819
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    const/4 v0, 0x0

    .line 799
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 800
    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mHlState:I

    .line 802
    if-nez p1, :cond_0

    .line 812
    :goto_0
    return-void

    .line 807
    :cond_0
    iput-boolean v0, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    .line 808
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->initSizeInfo()V

    .line 809
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->getDrawables()V

    .line 810
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public removeAllOppoTabSpec()V
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1346
    return-void
.end method

.method public requestFocusOnTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1267
    if-gez p1, :cond_1

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 1275
    iput p1, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 1276
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1220
    if-gez p1, :cond_1

    .line 1233
    :cond_0
    :goto_0
    return-void

    .line 1224
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 1228
    iput p1, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 1230
    iget v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    .line 1232
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    goto :goto_0
.end method

.method public setDividerDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1188
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 1189
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 1179
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1283
    return-void
.end method

.method public setOppoTabSelectionListener(Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    .line 1351
    return-void
.end method

.method public updateTabIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "index"
    .parameter "icon"

    .prologue
    .line 1396
    iget-object v1, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1397
    .local v0, spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-direct {p0, v0, p2}, Lcom/oppo/widget/OppoTabWidget;->updateTabIcon(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Landroid/graphics/drawable/Drawable;)V

    .line 1398
    return-void
.end method

.method public updateTabIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "tag"
    .parameter "icon"

    .prologue
    .line 1401
    iget-object v2, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1402
    .local v1, spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1403
    invoke-direct {p0, v1, p2}, Lcom/oppo/widget/OppoTabWidget;->updateTabIcon(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Landroid/graphics/drawable/Drawable;)V

    .line 1407
    .end local v1           #spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    :cond_1
    return-void
.end method

.method public updateTabLabel(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "index"
    .parameter "label"

    .prologue
    .line 1377
    iget-object v1, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1378
    .local v0, spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-direct {p0, v0, p2}, Lcom/oppo/widget/OppoTabWidget;->updateTabLabel(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Ljava/lang/CharSequence;)V

    .line 1379
    return-void
.end method

.method public updateTabLabel(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "tag"
    .parameter "label"

    .prologue
    .line 1382
    iget-object v2, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1383
    .local v1, spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1384
    invoke-direct {p0, v1, p2}, Lcom/oppo/widget/OppoTabWidget;->updateTabLabel(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Ljava/lang/CharSequence;)V

    .line 1388
    .end local v1           #spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    :cond_1
    return-void
.end method
