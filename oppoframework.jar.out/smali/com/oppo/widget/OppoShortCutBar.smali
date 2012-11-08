.class public Lcom/oppo/widget/OppoShortCutBar;
.super Landroid/view/View;
.source "OppoShortCutBar.java"

# interfaces
.implements Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoShortCutBar$OnShortCutItemClickListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final Default_Titles:[Ljava/lang/String; = null

.field private static MAX_CHILD_COUNT:I = 0x0

.field private static final MOVE_TOLERANCE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "OppoShortCutBar"


# instance fields
.field private IconSize:I

.field private final MIN_CHILD_COUNT:I

.field animationDuring:I

.field arcOffset:I

.field private buttonBgDisableDrawable:Landroid/graphics/drawable/Drawable;

.field private buttonBgDrawable:Landroid/graphics/drawable/Drawable;

.field private buttonBgHlDrawable:Landroid/graphics/drawable/Drawable;

.field private childLike:I

.field defaultLandTextSize:I

.field defaultTextSize:I

.field private distance:I

.field flp:Landroid/widget/FrameLayout$LayoutParams;

.field hideImeAction:Ljava/lang/String;

.field iFilter:Landroid/content/IntentFilter;

.field ifHideWhenInput:Z

.field interval:I

.field private isAnimation:Z

.field private isResetRegion:Z

.field private isSetPaddingColor:Z

.field keyMore:I

.field landScapeMode:Z

.field layoutResourceID:I

.field private mDefaultBgColor:I

.field private mDefaultPaddingColor:I

.field private mDirtyArea:Landroid/graphics/Rect;

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private final mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mKeyPressed:Z

.field private mLabelPaint:Landroid/graphics/Paint;

.field protected mListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoShortCutItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnShortCutItemClickedListener:Lcom/oppo/widget/OppoShortCutBar$OnShortCutItemClickListener;

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeparatorDrawableLand:Landroid/graphics/drawable/Drawable;

.field private mShortCutBarHeight:I

.field private mShortCutBarWidth:I

.field private mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

.field mShortCutList:Lcom/oppo/widget/OppoShortCutList;

.field private mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

.field private mXLast:I

.field private mYLast:I

.field myself:Lcom/oppo/widget/OppoShortCutBar;

.field private nCategory:I

.field private nChild:I

.field private nItemXMargin:I

.field private nItemYMargin:I

.field private optionalHeighth:I

.field relayoutWhenInput:Z

.field requestBottom:I

.field requestView:Landroid/view/View;

.field showImeAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x5

    sput v0, Lcom/oppo/widget/OppoShortCutBar;->MAX_CHILD_COUNT:I

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Ok"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Cancel"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/widget/OppoShortCutBar;->Default_Titles:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoShortCutBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 439
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "child"

    .prologue
    .line 427
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoShortCutBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 428
    invoke-virtual {p0, p2}, Lcom/oppo/widget/OppoShortCutBar;->setChild(I)V

    .line 429
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 25
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 280
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->MIN_CHILD_COUNT:I

    .line 76
    const v22, -0x333334

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mDefaultBgColor:I

    .line 77
    const v22, -0x19191a

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mDefaultPaddingColor:I

    .line 79
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->buttonBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->buttonBgHlDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->buttonBgDisableDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mSeparatorDrawableLand:Landroid/graphics/drawable/Drawable;

    .line 94
    const/16 v22, 0x3c

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->IconSize:I

    .line 95
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->optionalHeighth:I

    .line 96
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->distance:I

    .line 108
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    .line 109
    const/16 v22, 0x12

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->defaultTextSize:I

    .line 110
    const/16 v22, 0x15

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->defaultLandTextSize:I

    .line 115
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarWidth:I

    .line 116
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarHeight:I

    .line 119
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoShortCutBar;->isResetRegion:Z

    .line 124
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoShortCutBar;->isSetPaddingColor:Z

    .line 130
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    .line 135
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->childLike:I

    .line 140
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->nCategory:I

    .line 145
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    .line 151
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->nItemXMargin:I

    .line 152
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->nItemYMargin:I

    .line 153
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mItemWidth:I

    .line 154
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mItemHeight:I

    .line 159
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mXLast:I

    .line 160
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mYLast:I

    .line 161
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    .line 162
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mDirtyArea:Landroid/graphics/Rect;

    .line 163
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mKeyPressed:Z

    .line 173
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoShortCutBar;->isAnimation:Z

    .line 178
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 188
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->arcOffset:I

    .line 193
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->interval:I

    .line 198
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoShortCutBar;->landScapeMode:Z

    .line 201
    const-string v22, "com.oppo.android.INPUT_WINDOW_SHOWN"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->showImeAction:Ljava/lang/String;

    .line 202
    const-string v22, "com.oppo.android.INPUT_WINDOW_HIDDED"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->hideImeAction:Ljava/lang/String;

    .line 205
    new-instance v22, Landroid/content/IntentFilter;

    invoke-direct/range {v22 .. v22}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->iFilter:Landroid/content/IntentFilter;

    .line 208
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->flp:Landroid/widget/FrameLayout$LayoutParams;

    .line 211
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->requestView:Landroid/view/View;

    .line 212
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->requestBottom:I

    .line 213
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->myself:Lcom/oppo/widget/OppoShortCutBar;

    .line 218
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoShortCutBar;->relayoutWhenInput:Z

    .line 223
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoShortCutBar;->ifHideWhenInput:Z

    .line 228
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mShortCutList:Lcom/oppo/widget/OppoShortCutList;

    .line 233
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->keyMore:I

    .line 238
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoShortCutBar;->layoutResourceID:I

    .line 242
    new-instance v22, Lcom/oppo/widget/OppoShortCutBar$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoShortCutBar$1;-><init>(Lcom/oppo/widget/OppoShortCutBar;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 290
    const/4 v11, 0x2

    .line 291
    .local v11, child:I
    const/16 v16, 0x5

    .line 292
    .local v16, maxchild:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoShortCutBar;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x10500bf

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 293
    .local v20, textsize:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoShortCutBar;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x10600a0

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    .line 294
    .local v18, textcolor:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoShortCutBar;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x10600a1

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    .line 295
    .local v19, texthlcolor:I
    const/4 v12, 0x0

    .line 296
    .local v12, childlike:I
    const/4 v7, 0x0

    .line 297
    .local v7, animated:Z
    const/4 v13, 0x0

    .line 298
    .local v13, during:I
    const/4 v8, 0x0

    .line 299
    .local v8, arc:I
    const/4 v10, 0x2

    .line 300
    .local v10, category:I
    const/16 v17, 0x0

    .line 301
    .local v17, paddingcolor:I
    const/4 v15, -0x1

    .line 302
    .local v15, keymore:I
    const/16 v21, 0x0

    .line 305
    .local v21, widgetlayout:I
    sget-object v22, Lcom/android/internal/R$styleable;->ShortCutBar:[I

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 306
    .local v6, a:Landroid/content/res/TypedArray;
    if-eqz v6, :cond_1

    .line 307
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 308
    .local v5, N:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v5, :cond_0

    .line 309
    invoke-virtual {v6, v14}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    .line 310
    .local v9, attr:I
    packed-switch v9, :pswitch_data_0

    .line 308
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 312
    :pswitch_0
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    .line 313
    goto :goto_1

    .line 315
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v6, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 316
    goto :goto_1

    .line 318
    :pswitch_2
    sget v22, Lcom/oppo/widget/OppoShortCutBar;->MAX_CHILD_COUNT:I

    move/from16 v0, v22

    invoke-virtual {v6, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 319
    goto :goto_1

    .line 321
    :pswitch_3
    move/from16 v0, v20

    invoke-virtual {v6, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    .line 322
    goto :goto_1

    .line 324
    :pswitch_4
    move/from16 v0, v18

    invoke-virtual {v6, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 325
    goto :goto_1

    .line 327
    :pswitch_5
    move/from16 v0, v19

    invoke-virtual {v6, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    .line 328
    goto :goto_1

    .line 330
    :pswitch_6
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 331
    goto :goto_1

    .line 333
    :pswitch_7
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 334
    goto :goto_1

    .line 336
    :pswitch_8
    const/16 v22, 0x12c

    move/from16 v0, v22

    invoke-virtual {v6, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 337
    goto :goto_1

    .line 339
    :pswitch_9
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 340
    goto :goto_1

    .line 342
    :pswitch_a
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v6, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 343
    goto :goto_1

    .line 345
    :pswitch_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mDefaultPaddingColor:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v6, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .line 346
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoShortCutBar;->isSetPaddingColor:Z

    goto :goto_1

    .line 349
    :pswitch_c
    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v6, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 350
    goto/16 :goto_1

    .line 354
    .end local v9           #attr:I
    :cond_0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 358
    .end local v5           #N:I
    .end local v14           #i:I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutBar;->setLayoutResource(I)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoShortCutBar;->getLayoutResource()I

    move-result v22

    if-nez v22, :cond_2

    .line 362
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutBar;->setMaxChild(I)V

    .line 365
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oppo/widget/OppoShortCutBar;->setChildLike(I)V

    .line 368
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/oppo/widget/OppoShortCutBar;->setChild(I)V

    .line 369
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoShortCutBar;->invalidateItems()V

    .line 372
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutBar;->setTextSize(I)V

    .line 375
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutBar;->setTextColor(I)V

    .line 376
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutBar;->setTextHlColor(I)V

    .line 379
    sget-object v22, Lcom/oppo/widget/OppoShortCutBar;->Default_Titles:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutBar;->setText([Ljava/lang/CharSequence;)V

    .line 382
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/oppo/widget/OppoShortCutBar;->setAnimationEnable(Z)V

    .line 383
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/oppo/widget/OppoShortCutBar;->setAnimationDuring(I)V

    .line 386
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/oppo/widget/OppoShortCutBar;->setCategory(I)V

    .line 389
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/oppo/widget/OppoShortCutBar;->setArcHeight(I)V

    .line 392
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutBar;->setBackgroundPaddingColor(I)V

    .line 394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->childLike:I

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoShortCutBar;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1080174

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->buttonBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoShortCutBar;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1080177

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->buttonBgHlDrawable:Landroid/graphics/drawable/Drawable;

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoShortCutBar;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1080175

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->buttonBgDisableDrawable:Landroid/graphics/drawable/Drawable;

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 400
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_2

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/oppo/widget/OppoShortCutItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->buttonBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->buttonBgHlDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lcom/oppo/widget/OppoShortCutItem;->setBgDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/oppo/widget/OppoShortCutItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->buttonBgDisableDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->buttonBgDisableDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lcom/oppo/widget/OppoShortCutItem;->setDisableBgDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 400
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 409
    .end local v14           #i:I
    :cond_2
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mDirtyArea:Landroid/graphics/Rect;

    .line 412
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->childLike:I

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoShortCutBar;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1080106

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoShortCutBar;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1080107

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoShortCutBar;->mSeparatorDrawableLand:Landroid/graphics/drawable/Drawable;

    .line 417
    :cond_3
    return-void

    .line 310
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private drawShortCutItem(Landroid/graphics/Canvas;Lcom/oppo/widget/OppoShortCutItem;)V
    .locals 24
    .parameter "canvas"
    .parameter "shortCut"

    .prologue
    .line 1252
    const/4 v4, 0x0

    .line 1253
    .local v4, bg:Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 1255
    .local v17, textColor:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mKeyPressed:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1256
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getEnable()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1257
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemHlBg()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1258
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemLabelHlColor()I

    move-result v17

    .line 1276
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->childLike:I

    move/from16 v20, v0

    if-nez v20, :cond_9

    .line 1277
    const/4 v15, 0x4

    .line 1278
    .local v15, marginX:I
    const/16 v16, 0x4

    .line 1279
    .local v16, marginY:I
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemLabel()Ljava/lang/String;

    move-result-object v8

    .line 1280
    .local v8, itemLabel:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1282
    .local v7, itemIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoShortCutBar;->landScapeMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1283
    const/16 v15, 0x8

    .line 1284
    const/16 v16, 0x4

    .line 1302
    :goto_1
    if-eqz v4, :cond_0

    .line 1303
    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgLeft:I

    move/from16 v20, v0

    add-int v20, v20, v15

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgTop:I

    move/from16 v21, v0

    add-int v21, v21, v16

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgRight:I

    move/from16 v22, v0

    sub-int v22, v22, v15

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgBottom:I

    move/from16 v23, v0

    sub-int v23, v23, v16

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1305
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1308
    :cond_0
    if-eqz v7, :cond_8

    .line 1309
    move-object v6, v7

    .line 1310
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->bgWidth()I

    move-result v20

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    sub-int v20, v20, v21

    div-int/lit8 v12, v20, 0x2

    .line 1311
    .local v12, marginLeft:I
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->bgWidth()I

    move-result v20

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    sub-int v20, v20, v21

    sub-int v13, v20, v12

    .line 1313
    .local v13, marginRight:I
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->bgHeight()I

    move-result v20

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    sub-int v20, v20, v21

    div-int/lit8 v14, v20, 0x2

    .line 1314
    .local v14, marginTop:I
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->bgHeight()I

    move-result v20

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    sub-int v20, v20, v21

    sub-int v11, v20, v14

    .line 1316
    .local v11, marginBottom:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgLeft:I

    move/from16 v20, v0

    add-int v20, v20, v12

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgTop:I

    move/from16 v21, v0

    add-int v21, v21, v14

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgRight:I

    move/from16 v22, v0

    sub-int v22, v22, v13

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgBottom:I

    move/from16 v23, v0

    sub-int v23, v23, v11

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1320
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1456
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #itemIcon:Landroid/graphics/drawable/Drawable;
    .end local v8           #itemLabel:Ljava/lang/String;
    .end local v11           #marginBottom:I
    .end local v12           #marginLeft:I
    .end local v13           #marginRight:I
    .end local v14           #marginTop:I
    .end local v15           #marginX:I
    .end local v16           #marginY:I
    :cond_1
    :goto_2
    return-void

    .line 1261
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemDisableHlBg()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1262
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemLabelDisableColor()I

    move-result v17

    goto/16 :goto_0

    .line 1265
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getEnable()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1266
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemBg()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1267
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemLabelColor()I

    move-result v17

    goto/16 :goto_0

    .line 1270
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemDisableBg()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1271
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemLabelDisableColor()I

    move-result v17

    goto/16 :goto_0

    .line 1287
    .restart local v7       #itemIcon:Landroid/graphics/drawable/Drawable;
    .restart local v8       #itemLabel:Ljava/lang/String;
    .restart local v15       #marginX:I
    .restart local v16       #marginY:I
    :cond_5
    if-eqz v7, :cond_6

    .line 1288
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->bgWidth()I

    move-result v20

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    sub-int v20, v20, v21

    div-int/lit8 v15, v20, 0x4

    .line 1294
    :goto_3
    if-eqz v7, :cond_7

    .line 1295
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->bgHeight()I

    move-result v20

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    sub-int v20, v20, v21

    div-int/lit8 v16, v20, 0x4

    goto/16 :goto_1

    .line 1291
    :cond_6
    const/4 v15, 0x4

    goto :goto_3

    .line 1298
    :cond_7
    const/16 v16, 0x4

    goto/16 :goto_1

    .line 1322
    :cond_8
    if-eqz v8, :cond_1

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->defaultLandTextSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1325
    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->bgWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v22

    sub-float v21, v21, v22

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    add-float v18, v20, v21

    .line 1327
    .local v18, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v21, v0

    sub-int v5, v20, v21

    .line 1328
    .local v5, fontHeight:I
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->bgHeight()I

    move-result v20

    sub-int v20, v20, v5

    div-int/lit8 v16, v20, 0x2

    .line 1329
    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgTop:I

    move/from16 v20, v0

    add-int v20, v20, v16

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3f99999a

    div-float v21, v21, v22

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x40066666

    div-float v21, v21, v22

    add-float v20, v20, v21

    const/high16 v21, 0x4000

    add-float v19, v20, v21

    .line 1331
    .local v19, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1334
    .end local v5           #fontHeight:I
    .end local v7           #itemIcon:Landroid/graphics/drawable/Drawable;
    .end local v8           #itemLabel:Ljava/lang/String;
    .end local v15           #marginX:I
    .end local v16           #marginY:I
    .end local v18           #x:F
    .end local v19           #y:F
    :cond_9
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->childLike:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 1337
    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->childLike:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1340
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemLabel()Ljava/lang/String;

    move-result-object v8

    .line 1341
    .restart local v8       #itemLabel:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1343
    .restart local v7       #itemIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mKeyPressed:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1345
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getEnable()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 1346
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemHlIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1363
    :goto_4
    if-nez v7, :cond_a

    .line 1364
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1368
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v21, v0

    sub-int v5, v20, v21

    .line 1369
    .restart local v5       #fontHeight:I
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->width()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->distance:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v10, v20, 0x2

    .line 1371
    .local v10, margin:I
    if-eqz v4, :cond_b

    .line 1373
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemBgRect()Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1374
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1386
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->arcOffset:I

    move/from16 v20, v0

    add-int/lit8 v14, v20, 0x3

    .line 1387
    .restart local v14       #marginTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->IconSize:I

    move/from16 v20, v0

    add-int v11, v14, v20

    .line 1392
    .restart local v11       #marginBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoShortCutBar;->landScapeMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->defaultLandTextSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1395
    const/4 v9, 0x0

    .line 1396
    .local v9, labelWidth:F
    if-eqz v8, :cond_c

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 1402
    :cond_c
    const/4 v12, 0x0

    .line 1403
    .restart local v12       #marginLeft:I
    if-eqz v7, :cond_d

    .line 1407
    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgRight:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgLeft:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->IconSize:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    add-int/lit8 v20, v20, -0x4

    float-to-int v0, v9

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v12, v20, 0x2

    .line 1408
    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgTop:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->IconSize:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v14, v20, 0x2

    .line 1409
    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgLeft:I

    move/from16 v20, v0

    add-int v20, v20, v12

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgLeft:I

    move/from16 v21, v0

    add-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->IconSize:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->IconSize:I

    move/from16 v22, v0

    add-int v22, v22, v14

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v7, v0, v14, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1413
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1416
    :cond_d
    if-eqz v8, :cond_1

    .line 1417
    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgLeft:I

    move/from16 v20, v0

    add-int v20, v20, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->IconSize:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1418
    .restart local v18       #x:F
    int-to-float v0, v5

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v16, v20, v21

    .line 1419
    .local v16, marginY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarHeight:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v20, v20, v16

    const/high16 v21, 0x4000

    add-float v19, v20, v21

    .line 1421
    .restart local v19       #y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1349
    .end local v5           #fontHeight:I
    .end local v9           #labelWidth:F
    .end local v10           #margin:I
    .end local v11           #marginBottom:I
    .end local v12           #marginLeft:I
    .end local v14           #marginTop:I
    .end local v16           #marginY:F
    .end local v18           #x:F
    .end local v19           #y:F
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemDisableIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_4

    .line 1354
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getEnable()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 1355
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_4

    .line 1358
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getItemDisableIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_4

    .line 1425
    .restart local v5       #fontHeight:I
    .restart local v10       #margin:I
    .restart local v11       #marginBottom:I
    .restart local v14       #marginTop:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->defaultTextSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1427
    if-eqz v7, :cond_12

    .line 1431
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->distance:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->IconSize:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v12, v20, 0x2

    .line 1432
    .restart local v12       #marginLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->distance:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoShortCutBar;->IconSize:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v13, v20, v12

    .line 1435
    .restart local v13       #marginRight:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mLeft:I

    move/from16 v20, v0

    add-int v20, v20, v10

    add-int v20, v20, v12

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mRight:I

    move/from16 v21, v0

    sub-int v21, v21, v10

    sub-int v21, v21, v13

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v14, v1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1439
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1442
    .end local v12           #marginLeft:I
    .end local v13           #marginRight:I
    :cond_12
    if-eqz v8, :cond_1

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1445
    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/widget/OppoShortCutItem;->mLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->width()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v22

    sub-float v21, v21, v22

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    add-float v18, v20, v21

    .line 1447
    .restart local v18       #x:F
    int-to-float v0, v5

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v16, v20, v21

    .line 1448
    .restart local v16       #marginY:F
    int-to-float v0, v11

    move/from16 v20, v0

    add-float v20, v20, v16

    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoShortCutItem;->getDrawablePadding()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v19, v20, v21

    .line 1450
    .restart local v19       #y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method private fixCoreArea()V
    .locals 3

    .prologue
    .line 833
    const/4 v0, 0x4

    iput v0, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemXMargin:I

    .line 834
    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutBar;->landScapeMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 835
    iget v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemXMargin:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mItemWidth:I

    .line 841
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemYMargin:I

    .line 842
    iget v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarHeight:I

    iget v1, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemYMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mItemHeight:I

    .line 844
    return-void

    .line 838
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemXMargin:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mItemWidth:I

    goto :goto_0
.end method

.method private getMearsuredRect()V
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarWidth:I

    .line 645
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarHeight:I

    .line 647
    return-void
.end method

.method private invalidateItems()V
    .locals 3

    .prologue
    .line 448
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 450
    :cond_0
    iget v1, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 451
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    .line 452
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    if-ge v0, v1, :cond_1

    .line 453
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/oppo/widget/OppoShortCutItem;

    invoke-direct {v2, v0}, Lcom/oppo/widget/OppoShortCutItem;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private mapToItem(II)Lcom/oppo/widget/OppoShortCutItem;
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1635
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoShortCutItem;

    .line 1636
    .local v1, mItem:Lcom/oppo/widget/OppoShortCutItem;
    iget v2, v1, Lcom/oppo/widget/OppoShortCutItem;->mLeft:I

    if-gt v2, p1, :cond_0

    iget v2, v1, Lcom/oppo/widget/OppoShortCutItem;->mRight:I

    if-gt p1, v2, :cond_0

    iget v2, v1, Lcom/oppo/widget/OppoShortCutItem;->mTop:I

    if-gt v2, p2, :cond_0

    iget v2, v1, Lcom/oppo/widget/OppoShortCutItem;->mBottom:I

    if-gt p2, v2, :cond_0

    .line 1642
    .end local v1           #mItem:Lcom/oppo/widget/OppoShortCutItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private measuredItems()V
    .locals 11

    .prologue
    const/4 v5, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 463
    iget v3, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    if-ge v3, v5, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    if-lt v3, v4, :cond_0

    .line 469
    iget v3, p0, Lcom/oppo/widget/OppoShortCutBar;->childLike:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarHeight:I

    const/16 v4, 0x46

    if-le v3, v4, :cond_2

    .line 471
    const/16 v3, 0x40

    iput v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mItemHeight:I

    .line 473
    :cond_2
    const/4 v0, 0x0

    .line 475
    .local v0, bgWidght:I
    iget-boolean v3, p0, Lcom/oppo/widget/OppoShortCutBar;->landScapeMode:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    if-ne v3, v5, :cond_3

    .line 476
    iget v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarWidth:I

    iget v4, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    add-int/lit8 v4, v4, 0x1

    div-int v0, v3, v4

    .line 477
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/widget/OppoShortCutItem;

    iget v4, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemXMargin:I

    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemYMargin:I

    iget v6, p0, Lcom/oppo/widget/OppoShortCutBar;->arcOffset:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemXMargin:I

    iget v7, p0, Lcom/oppo/widget/OppoShortCutBar;->mItemWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemYMargin:I

    iget v8, p0, Lcom/oppo/widget/OppoShortCutBar;->arcOffset:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/oppo/widget/OppoShortCutBar;->mItemHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/oppo/widget/OppoShortCutItem;->setItemBounds(IIII)V

    .line 481
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/widget/OppoShortCutItem;

    iget v4, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemXMargin:I

    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->mItemWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemXMargin:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemYMargin:I

    iget v6, p0, Lcom/oppo/widget/OppoShortCutBar;->arcOffset:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemXMargin:I

    iget v7, p0, Lcom/oppo/widget/OppoShortCutBar;->mItemWidth:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemXMargin:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemYMargin:I

    iget v8, p0, Lcom/oppo/widget/OppoShortCutBar;->arcOffset:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/oppo/widget/OppoShortCutBar;->mItemHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/oppo/widget/OppoShortCutItem;->setItemBounds(IIII)V

    .line 486
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/widget/OppoShortCutItem;

    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarHeight:I

    invoke-virtual {v3, v9, v9, v4, v5}, Lcom/oppo/widget/OppoShortCutItem;->setItemBgBounds(IIII)V

    .line 490
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/widget/OppoShortCutItem;

    mul-int/lit8 v4, v0, 0x2

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarHeight:I

    invoke-virtual {v3, v4, v9, v5, v6}, Lcom/oppo/widget/OppoShortCutItem;->setItemBgBounds(IIII)V

    goto/16 :goto_0

    .line 496
    :cond_3
    iget v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarWidth:I

    iget v4, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    div-int v0, v3, v4

    .line 497
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    if-ge v1, v3, :cond_0

    .line 498
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutItem;

    .line 499
    .local v2, item:Lcom/oppo/widget/OppoShortCutItem;
    iget v3, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemXMargin:I

    iget v4, p0, Lcom/oppo/widget/OppoShortCutBar;->mItemWidth:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemXMargin:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemYMargin:I

    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->arcOffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemXMargin:I

    iget v6, p0, Lcom/oppo/widget/OppoShortCutBar;->mItemWidth:I

    add-int/lit8 v7, v1, 0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemXMargin:I

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    iget v6, p0, Lcom/oppo/widget/OppoShortCutBar;->nItemYMargin:I

    iget v7, p0, Lcom/oppo/widget/OppoShortCutBar;->arcOffset:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoShortCutBar;->mItemHeight:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/oppo/widget/OppoShortCutItem;->setItemBounds(IIII)V

    .line 504
    mul-int v3, v0, v1

    add-int/lit8 v4, v1, 0x1

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarHeight:I

    invoke-virtual {v2, v3, v9, v4, v5}, Lcom/oppo/widget/OppoShortCutItem;->setItemBgBounds(IIII)V

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private moveWithinKey(IILcom/oppo/widget/OppoShortCutItem;)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "item"

    .prologue
    .line 1588
    iget v0, p3, Lcom/oppo/widget/OppoShortCutItem;->mLeft:I

    if-gt v0, p1, :cond_0

    iget v0, p3, Lcom/oppo/widget/OppoShortCutItem;->mTop:I

    if-gt v0, p2, :cond_0

    iget v0, p3, Lcom/oppo/widget/OppoShortCutItem;->mRight:I

    if-lt v0, p1, :cond_0

    iget v0, p3, Lcom/oppo/widget/OppoShortCutItem;->mBottom:I

    if-lt v0, p2, :cond_0

    .line 1592
    const/4 v0, 0x1

    .line 1594
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onItemPress(IIZ)Lcom/oppo/widget/OppoShortCutItem;
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "movePress"

    .prologue
    .line 1607
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mKeyPressed:Z

    .line 1608
    const/4 v0, 0x0

    .line 1609
    .local v0, moveWithinPreviousKey:Z
    if-eqz p3, :cond_2

    .line 1610
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoShortCutBar;->mapToItem(II)Lcom/oppo/widget/OppoShortCutItem;

    move-result-object v1

    .line 1611
    .local v1, newShortCutItem:Lcom/oppo/widget/OppoShortCutItem;
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1612
    :cond_0
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    .line 1617
    .end local v1           #newShortCutItem:Lcom/oppo/widget/OppoShortCutItem;
    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    .line 1624
    :goto_1
    return-object v2

    .line 1614
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoShortCutBar;->mapToItem(II)Lcom/oppo/widget/OppoShortCutItem;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    goto :goto_0

    .line 1618
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mKeyPressed:Z

    .line 1620
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mDirtyArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    iget v3, v3, Lcom/oppo/widget/OppoShortCutItem;->mBgLeft:I

    iget-object v4, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    iget v4, v4, Lcom/oppo/widget/OppoShortCutItem;->mBgTop:I

    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    iget v5, v5, Lcom/oppo/widget/OppoShortCutItem;->mBgRight:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    iget v6, v6, Lcom/oppo/widget/OppoShortCutItem;->mBgBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 1622
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mDirtyArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoShortCutBar;->invalidate(Landroid/graphics/Rect;)V

    .line 1624
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    goto :goto_1
.end method

.method private onItemRelease(II)Lcom/oppo/widget/OppoShortCutItem;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 1567
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mKeyPressed:Z

    .line 1568
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    if-nez v1, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return-object v0

    .line 1569
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mDirtyArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    iget v2, v2, Lcom/oppo/widget/OppoShortCutItem;->mBgLeft:I

    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    iget v3, v3, Lcom/oppo/widget/OppoShortCutItem;->mBgTop:I

    iget-object v4, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    iget v4, v4, Lcom/oppo/widget/OppoShortCutItem;->mBgRight:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    iget v5, v5, Lcom/oppo/widget/OppoShortCutItem;->mBgBottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 1571
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mDirtyArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoShortCutBar;->invalidate(Landroid/graphics/Rect;)V

    .line 1573
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getPaddingTop()I

    move-result v2

    sub-int v2, p2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/widget/OppoShortCutBar;->moveWithinKey(IILcom/oppo/widget/OppoShortCutItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    goto :goto_0
.end method

.method private performanceShortCutItemClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1536
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoShortCutItem;->getEnable()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 1557
    :cond_1
    :goto_0
    return v1

    .line 1542
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mOnShortCutItemClickedListener:Lcom/oppo/widget/OppoShortCutBar$OnShortCutItemClickListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    if-eqz v3, :cond_1

    .line 1543
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoShortCutItem;->getItemId()I

    move-result v0

    .line 1546
    .local v0, id:I
    if-ltz v0, :cond_1

    .line 1548
    iget v1, p0, Lcom/oppo/widget/OppoShortCutBar;->keyMore:I

    if-ne v0, v1, :cond_4

    iget v1, p0, Lcom/oppo/widget/OppoShortCutBar;->keyMore:I

    if-lez v1, :cond_4

    .line 1549
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutList:Lcom/oppo/widget/OppoShortCutList;

    if-eqz v1, :cond_3

    .line 1550
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutList:Lcom/oppo/widget/OppoShortCutList;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoShortCutList;->show()V

    :cond_3
    move v1, v2

    .line 1552
    goto :goto_0

    .line 1554
    :cond_4
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mOnShortCutItemClickedListener:Lcom/oppo/widget/OppoShortCutBar$OnShortCutItemClickListener;

    invoke-interface {v1, p0, v0}, Lcom/oppo/widget/OppoShortCutBar$OnShortCutItemClickListener;->onShortCutItemClick(Landroid/view/View;I)V

    move v1, v2

    .line 1555
    goto :goto_0
.end method


# virtual methods
.method public add(ILjava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "label"

    .prologue
    .line 709
    iget v2, p0, Lcom/oppo/widget/OppoShortCutBar;->childLike:I

    if-lez v2, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 716
    iget v2, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    add-int/lit8 v2, v2, 0x1

    sget v3, Lcom/oppo/widget/OppoShortCutBar;->MAX_CHILD_COUNT:I

    if-gt v2, v3, :cond_0

    .line 718
    new-instance v1, Lcom/oppo/widget/OppoShortCutItem;

    invoke-direct {v1, p1}, Lcom/oppo/widget/OppoShortCutItem;-><init>(I)V

    .line 719
    .local v1, item:Lcom/oppo/widget/OppoShortCutItem;
    iput-object p2, v1, Lcom/oppo/widget/OppoShortCutItem;->mItemLabel:Ljava/lang/String;

    .line 720
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 722
    move v0, p1

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 723
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutItem;

    iput v0, v2, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 725
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    .line 727
    invoke-direct {p0}, Lcom/oppo/widget/OppoShortCutBar;->fixCoreArea()V

    .line 728
    invoke-direct {p0}, Lcom/oppo/widget/OppoShortCutBar;->measuredItems()V

    .line 729
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->invalidate()V

    goto :goto_0
.end method

.method public add(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "index"
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 675
    iget v2, p0, Lcom/oppo/widget/OppoShortCutBar;->childLike:I

    if-nez v2, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 682
    iget v2, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    add-int/lit8 v2, v2, 0x1

    sget v3, Lcom/oppo/widget/OppoShortCutBar;->MAX_CHILD_COUNT:I

    if-gt v2, v3, :cond_0

    .line 684
    new-instance v1, Lcom/oppo/widget/OppoShortCutItem;

    invoke-direct {v1, p1}, Lcom/oppo/widget/OppoShortCutItem;-><init>(I)V

    .line 685
    .local v1, item:Lcom/oppo/widget/OppoShortCutItem;
    iput-object p2, v1, Lcom/oppo/widget/OppoShortCutItem;->mItemLabel:Ljava/lang/String;

    .line 687
    if-eqz p3, :cond_2

    .line 688
    iput-object p3, v1, Lcom/oppo/widget/OppoShortCutItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    .line 689
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 691
    move v0, p1

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 692
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutItem;

    iput v0, v2, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 694
    :cond_3
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    .line 696
    invoke-direct {p0}, Lcom/oppo/widget/OppoShortCutBar;->fixCoreArea()V

    .line 697
    invoke-direct {p0}, Lcom/oppo/widget/OppoShortCutBar;->measuredItems()V

    .line 698
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->invalidate()V

    goto :goto_0
.end method

.method public addShortCutListItem(ILjava/lang/String;)V
    .locals 2
    .parameter "res"
    .parameter "label"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutList:Lcom/oppo/widget/OppoShortCutList;

    if-nez v0, :cond_0

    .line 739
    new-instance v0, Lcom/oppo/widget/OppoShortCutList;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoShortCutList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutList:Lcom/oppo/widget/OppoShortCutList;

    .line 740
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutList:Lcom/oppo/widget/OppoShortCutList;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoShortCutList;->setOnShortCutListSelectedListener(Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutList:Lcom/oppo/widget/OppoShortCutList;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/widget/OppoShortCutList;->addShortCutItem(ILjava/lang/String;)V

    .line 743
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutBar;->isSetPaddingColor:Z

    if-eqz v0, :cond_0

    .line 635
    iget v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mDefaultPaddingColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 637
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 638
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 1690
    iget v0, p0, Lcom/oppo/widget/OppoShortCutBar;->layoutResourceID:I

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mLabelPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getShortCutBarHeight()I
    .locals 1

    .prologue
    .line 655
    iget v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarHeight:I

    return v0
.end method

.method public getShortCutBarWidth()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarWidth:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1659
    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutBar;->ifHideWhenInput:Z

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->iFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->hideImeAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1661
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->iFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->showImeAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1662
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->iFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1664
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1665
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1676
    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutBar;->ifHideWhenInput:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1677
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1679
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1680
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 850
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 851
    iget v3, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    if-ge v3, v6, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    if-lt v3, v4, :cond_0

    .line 855
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v3, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    if-ge v2, v3, :cond_2

    .line 857
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/widget/OppoShortCutItem;

    invoke-direct {p0, p1, v3}, Lcom/oppo/widget/OppoShortCutBar;->drawShortCutItem(Landroid/graphics/Canvas;Lcom/oppo/widget/OppoShortCutItem;)V

    .line 855
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 861
    :cond_2
    const/4 v0, 0x0

    .line 863
    .local v0, curSeparator:Landroid/graphics/drawable/Drawable;
    iget-boolean v3, p0, Lcom/oppo/widget/OppoShortCutBar;->landScapeMode:Z

    if-eqz v3, :cond_3

    .line 864
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mSeparatorDrawableLand:Landroid/graphics/drawable/Drawable;

    .line 870
    :goto_2
    if-eqz v0, :cond_5

    iget v3, p0, Lcom/oppo/widget/OppoShortCutBar;->childLike:I

    if-lez v3, :cond_5

    .line 871
    const/4 v1, 0x0

    .line 872
    .local v1, dst:I
    iget-boolean v3, p0, Lcom/oppo/widget/OppoShortCutBar;->landScapeMode:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    if-ne v3, v6, :cond_4

    .line 873
    const/4 v2, 0x1

    :goto_3
    iget v3, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_5

    .line 874
    iget v3, p0, Lcom/oppo/widget/OppoShortCutBar;->interval:I

    mul-int/2addr v3, v2

    add-int/lit8 v4, v2, -0x1

    mul-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 876
    add-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarHeight:I

    invoke-virtual {v0, v1, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 877
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 873
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 867
    .end local v1           #dst:I
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 881
    .restart local v1       #dst:I
    :cond_4
    const/4 v2, 0x1

    :goto_4
    iget v3, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    if-ge v2, v3, :cond_5

    .line 882
    iget v3, p0, Lcom/oppo/widget/OppoShortCutBar;->interval:I

    mul-int/2addr v3, v2

    add-int/lit8 v4, v2, -0x1

    mul-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 884
    add-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarHeight:I

    invoke-virtual {v0, v1, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 885
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 881
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 889
    .end local v1           #dst:I
    :cond_5
    const/4 v0, 0x0

    .line 891
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 612
    invoke-direct {p0}, Lcom/oppo/widget/OppoShortCutBar;->getMearsuredRect()V

    .line 615
    invoke-direct {p0}, Lcom/oppo/widget/OppoShortCutBar;->fixCoreArea()V

    .line 617
    invoke-direct {p0}, Lcom/oppo/widget/OppoShortCutBar;->measuredItems()V

    .line 620
    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutBar;->isAnimation:Z

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_0

    .line 622
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/oppo/widget/OppoShortCutBar;->animationDuring:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 625
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoShortCutBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 630
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 631
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x2

    .line 520
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 522
    .local v4, wm:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 523
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 524
    .local v2, mScreenWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 526
    .local v1, mScreenHeight:I
    if-ge v2, v1, :cond_3

    .line 527
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oppo/widget/OppoShortCutBar;->landScapeMode:Z

    .line 528
    add-int/lit8 v5, v2, -0x8

    div-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/oppo/widget/OppoShortCutBar;->distance:I

    .line 529
    div-int/lit8 v5, v2, 0x5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutBar;->optionalHeighth:I

    .line 535
    :goto_0
    iget-boolean v5, p0, Lcom/oppo/widget/OppoShortCutBar;->landScapeMode:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    if-ne v5, v7, :cond_4

    .line 536
    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    iget v6, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    add-int/lit8 v6, v6, 0x1

    div-int/2addr v5, v6

    iput v5, p0, Lcom/oppo/widget/OppoShortCutBar;->interval:I

    .line 543
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_0

    .line 544
    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->nCategory:I

    if-nez v5, :cond_6

    .line 545
    iget-boolean v5, p0, Lcom/oppo/widget/OppoShortCutBar;->landScapeMode:Z

    if-eqz v5, :cond_5

    .line 546
    const v5, 0x1080105

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutBar;->setBackgroundResource(I)V

    .line 560
    :cond_0
    :goto_2
    iget-boolean v5, p0, Lcom/oppo/widget/OppoShortCutBar;->isResetRegion:Z

    if-eqz v5, :cond_9

    .line 562
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 563
    .local v3, param:Landroid/view/ViewGroup$LayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v9, :cond_1

    .line 564
    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarHeight:I

    if-nez v5, :cond_1

    .line 565
    iput v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarHeight:I

    .line 568
    :cond_1
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v8, :cond_7

    .line 570
    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->optionalHeighth:I

    iput v5, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarHeight:I

    .line 578
    :cond_2
    :goto_3
    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarWidth:I

    iget v6, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarHeight:I

    invoke-virtual {p0, v5, v6}, Lcom/oppo/widget/OppoShortCutBar;->setMeasuredDimension(II)V

    .line 603
    .end local v3           #param:Landroid/view/ViewGroup$LayoutParams;
    :goto_4
    return-void

    .line 531
    :cond_3
    iput-boolean v10, p0, Lcom/oppo/widget/OppoShortCutBar;->landScapeMode:Z

    .line 532
    add-int/lit8 v5, v1, -0x8

    div-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/oppo/widget/OppoShortCutBar;->distance:I

    .line 533
    div-int/lit8 v5, v1, 0x5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutBar;->optionalHeighth:I

    goto :goto_0

    .line 539
    :cond_4
    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    iget v6, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/oppo/widget/OppoShortCutBar;->interval:I

    goto :goto_1

    .line 549
    :cond_5
    const v5, 0x1080104

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutBar;->setBackgroundResource(I)V

    goto :goto_2

    .line 552
    :cond_6
    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->nCategory:I

    if-eq v5, v10, :cond_0

    .line 555
    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->nCategory:I

    if-ne v5, v7, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10600a3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutBar;->setBackgroundColor(I)V

    goto :goto_2

    .line 572
    .restart local v3       #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v5, v9, :cond_8

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v5, v8, :cond_2

    .line 573
    :cond_8
    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarWidth:I

    if-nez v5, :cond_2

    .line 574
    iput v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarWidth:I

    goto :goto_3

    .line 583
    .end local v3           #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->nCategory:I

    if-nez v5, :cond_a

    .line 584
    iget-boolean v5, p0, Lcom/oppo/widget/OppoShortCutBar;->landScapeMode:Z

    if-eqz v5, :cond_c

    .line 585
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10500be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutBar;->optionalHeighth:I

    .line 591
    :goto_5
    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->optionalHeighth:I

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 592
    invoke-virtual {p0, p1, p2}, Lcom/oppo/widget/OppoShortCutBar;->setMeasuredDimension(II)V

    .line 596
    :cond_a
    iget v5, p0, Lcom/oppo/widget/OppoShortCutBar;->nCategory:I

    if-ge v5, v7, :cond_b

    .line 597
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10500bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutBar;->setTextSize(I)V

    .line 600
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto/16 :goto_4

    .line 588
    :cond_c
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10500bd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutBar;->optionalHeighth:I

    goto :goto_5
.end method

.method public onShortCutListSelected(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mOnShortCutItemClickedListener:Lcom/oppo/widget/OppoShortCutBar$OnShortCutItemClickListener;

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mOnShortCutItemClickedListener:Lcom/oppo/widget/OppoShortCutBar$OnShortCutItemClickListener;

    iget v1, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    add-int/2addr v1, p1

    invoke-interface {v0, p0, v1}, Lcom/oppo/widget/OppoShortCutBar$OnShortCutItemClickListener;->onShortCutItemClick(Landroid/view/View;I)V

    .line 1527
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1469
    iget v4, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    if-ge v4, v5, :cond_0

    .line 1517
    :goto_0
    return v2

    .line 1472
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 1473
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1477
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1478
    iget v4, p0, Lcom/oppo/widget/OppoShortCutBar;->mXLast:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v6, :cond_1

    iget v4, p0, Lcom/oppo/widget/OppoShortCutBar;->mYLast:I

    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v6, :cond_1

    move v2, v3

    .line 1480
    goto :goto_0

    .line 1484
    :cond_1
    iput v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mXLast:I

    .line 1485
    iput v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mYLast:I

    .line 1487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v2, v3

    .line 1517
    goto :goto_0

    .line 1489
    :pswitch_1
    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/widget/OppoShortCutBar;->onItemPress(IIZ)Lcom/oppo/widget/OppoShortCutItem;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    goto :goto_1

    .line 1494
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoShortCutBar;->onItemRelease(II)Lcom/oppo/widget/OppoShortCutItem;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutDown:Lcom/oppo/widget/OppoShortCutItem;

    .line 1495
    invoke-direct {p0}, Lcom/oppo/widget/OppoShortCutBar;->performanceShortCutItemClick()Z

    goto :goto_1

    .line 1500
    :pswitch_3
    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_2

    goto :goto_1

    .line 1487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public remove(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 752
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    iget v1, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 756
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 758
    move v0, p1

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 759
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoShortCutItem;

    iput v0, v1, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 761
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    .line 763
    invoke-direct {p0}, Lcom/oppo/widget/OppoShortCutBar;->fixCoreArea()V

    .line 764
    invoke-direct {p0}, Lcom/oppo/widget/OppoShortCutBar;->measuredItems()V

    .line 766
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->invalidate()V

    goto :goto_0
.end method

.method public requestLayoutWhenInput(Landroid/view/View;)V
    .locals 3
    .parameter "whichView"

    .prologue
    const/4 v2, 0x1

    .line 1223
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutBar;->requestView:Landroid/view/View;

    .line 1224
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1226
    .local v0, l:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v1, p0, Lcom/oppo/widget/OppoShortCutBar;->requestBottom:I

    .line 1228
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->requestView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1229
    iput-boolean v2, p0, Lcom/oppo/widget/OppoShortCutBar;->relayoutWhenInput:Z

    .line 1231
    :cond_0
    iput-boolean v2, p0, Lcom/oppo/widget/OppoShortCutBar;->ifHideWhenInput:Z

    .line 1232
    return-void
.end method

.method public setAnimationDuring(I)V
    .locals 0
    .parameter "during"

    .prologue
    .line 1175
    iput p1, p0, Lcom/oppo/widget/OppoShortCutBar;->animationDuring:I

    .line 1176
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .parameter "animate"

    .prologue
    .line 1167
    iput-boolean p1, p0, Lcom/oppo/widget/OppoShortCutBar;->isAnimation:Z

    .line 1168
    return-void
.end method

.method public setArcHeight(I)V
    .locals 0
    .parameter "arc"

    .prologue
    .line 1183
    iput p1, p0, Lcom/oppo/widget/OppoShortCutBar;->arcOffset:I

    .line 1188
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 1004
    iput p1, p0, Lcom/oppo/widget/OppoShortCutBar;->mDefaultBgColor:I

    .line 1005
    iget v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mDefaultBgColor:I

    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1006
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    .line 1025
    iget v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarWidth:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1026
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1027
    return-void
.end method

.method public setBackgroundPaddingColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 1015
    iput p1, p0, Lcom/oppo/widget/OppoShortCutBar;->mDefaultPaddingColor:I

    .line 1016
    return-void
.end method

.method public setCategory(I)V
    .locals 0
    .parameter "category"

    .prologue
    .line 1206
    iput p1, p0, Lcom/oppo/widget/OppoShortCutBar;->nCategory:I

    .line 1207
    return-void
.end method

.method public setChild(I)V
    .locals 1
    .parameter "child"

    .prologue
    .line 899
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 908
    :goto_0
    return-void

    .line 903
    :cond_0
    sget v0, Lcom/oppo/widget/OppoShortCutBar;->MAX_CHILD_COUNT:I

    if-le p1, v0, :cond_1

    .line 904
    sget v0, Lcom/oppo/widget/OppoShortCutBar;->MAX_CHILD_COUNT:I

    iput v0, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    goto :goto_0

    .line 906
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    goto :goto_0
.end method

.method public setChildLike(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 917
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoShortCutBar;->childLike:I

    goto :goto_0
.end method

.method public setEnable(IZ)V
    .locals 6
    .parameter "index"
    .parameter "enable"

    .prologue
    .line 1718
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 1724
    :cond_0
    :goto_0
    return-void

    .line 1721
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoShortCutItem;

    .line 1722
    .local v0, item:Lcom/oppo/widget/OppoShortCutItem;
    invoke-virtual {v0, p2}, Lcom/oppo/widget/OppoShortCutItem;->setEnable(Z)V

    .line 1723
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgLeft:I

    iget v3, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgTop:I

    iget v4, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgRight:I

    add-int/lit8 v4, v4, 0x1

    iget v5, v0, Lcom/oppo/widget/OppoShortCutItem;->mBgBottom:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoShortCutBar;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 784
    iput p1, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarHeight:I

    .line 785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoShortCutBar;->isResetRegion:Z

    .line 786
    return-void
.end method

.method public setHideWhenInput(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1195
    iput-boolean p1, p0, Lcom/oppo/widget/OppoShortCutBar;->ifHideWhenInput:Z

    .line 1196
    return-void
.end method

.method public setItemBg([Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "bgs"

    .prologue
    .line 1057
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1073
    :cond_0
    return-void

    .line 1060
    :cond_1
    if-nez p1, :cond_2

    .line 1061
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    if-ge v1, v2, :cond_0

    .line 1062
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutItem;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/oppo/widget/OppoShortCutItem;->mItemBg:Landroid/graphics/drawable/Drawable;

    .line 1061
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1066
    .end local v1           #i:I
    :cond_2
    const/4 v0, 0x0

    .line 1069
    .local v0, N:I
    iget v2, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    array-length v3, p1

    if-ge v2, v3, :cond_3

    iget v0, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    .line 1070
    :goto_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 1071
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutItem;

    aget-object v3, p1, v1

    iput-object v3, v2, Lcom/oppo/widget/OppoShortCutItem;->mItemBg:Landroid/graphics/drawable/Drawable;

    .line 1070
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1069
    .end local v1           #i:I
    :cond_3
    array-length v0, p1

    goto :goto_1
.end method

.method public setItemDisableHlBg([Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "hlbgs"

    .prologue
    .line 1105
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1123
    :cond_0
    return-void

    .line 1109
    :cond_1
    if-nez p1, :cond_2

    .line 1110
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    if-ge v1, v2, :cond_0

    .line 1111
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutItem;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/oppo/widget/OppoShortCutItem;->mItemDisableHlBg:Landroid/graphics/drawable/Drawable;

    .line 1110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1116
    .end local v1           #i:I
    :cond_2
    const/4 v0, 0x0

    .line 1119
    .local v0, N:I
    iget v2, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    array-length v3, p1

    if-ge v2, v3, :cond_3

    iget v0, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    .line 1120
    :goto_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 1121
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutItem;

    aget-object v3, p1, v1

    iput-object v3, v2, Lcom/oppo/widget/OppoShortCutItem;->mItemDisableHlBg:Landroid/graphics/drawable/Drawable;

    .line 1120
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1119
    .end local v1           #i:I
    :cond_3
    array-length v0, p1

    goto :goto_1
.end method

.method public setItemHlBg([Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "hlbgs"

    .prologue
    .line 1080
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1098
    :cond_0
    return-void

    .line 1084
    :cond_1
    if-nez p1, :cond_2

    .line 1085
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    if-ge v1, v2, :cond_0

    .line 1086
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutItem;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/oppo/widget/OppoShortCutItem;->mItemHlBg:Landroid/graphics/drawable/Drawable;

    .line 1085
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1091
    .end local v1           #i:I
    :cond_2
    const/4 v0, 0x0

    .line 1094
    .local v0, N:I
    iget v2, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    array-length v3, p1

    if-ge v2, v3, :cond_3

    iget v0, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    .line 1095
    :goto_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 1096
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutItem;

    aget-object v3, p1, v1

    iput-object v3, v2, Lcom/oppo/widget/OppoShortCutItem;->mItemHlBg:Landroid/graphics/drawable/Drawable;

    .line 1095
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1094
    .end local v1           #i:I
    :cond_3
    array-length v0, p1

    goto :goto_1
.end method

.method public setItemHlIcon([Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "hlIcons"

    .prologue
    .line 1148
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1160
    :cond_0
    return-void

    .line 1151
    :cond_1
    const/4 v0, 0x0

    .line 1154
    .local v0, N:I
    iget v2, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    array-length v3, p1

    if-ge v2, v3, :cond_2

    iget v0, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    .line 1155
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 1156
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutItem;

    aget-object v3, p1, v1

    iput-object v3, v2, Lcom/oppo/widget/OppoShortCutItem;->mItemHlIcon:Landroid/graphics/drawable/Drawable;

    .line 1158
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutItem;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/oppo/widget/OppoShortCutItem;->mItemBg:Landroid/graphics/drawable/Drawable;

    .line 1155
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1154
    .end local v1           #i:I
    :cond_2
    array-length v0, p1

    goto :goto_0
.end method

.method public setItemIcon([Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "icons"

    .prologue
    .line 1131
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1141
    :cond_0
    return-void

    .line 1134
    :cond_1
    const/4 v0, 0x0

    .line 1137
    .local v0, N:I
    iget v2, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    array-length v3, p1

    if-ge v2, v3, :cond_2

    iget v0, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    .line 1138
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 1139
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutItem;

    aget-object v3, p1, v1

    iput-object v3, v2, Lcom/oppo/widget/OppoShortCutItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    .line 1138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1137
    .end local v1           #i:I
    :cond_2
    array-length v0, p1

    goto :goto_0
.end method

.method public setKeyMore(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1215
    iput p1, p0, Lcom/oppo/widget/OppoShortCutBar;->keyMore:I

    .line 1216
    return-void
.end method

.method public setLandTextSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1045
    if-eqz p1, :cond_0

    if-gez p1, :cond_1

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoShortCutBar;->defaultLandTextSize:I

    goto :goto_0
.end method

.method public setLayoutResource(I)V
    .locals 2
    .parameter "layoutResource"

    .prologue
    .line 1703
    iput p1, p0, Lcom/oppo/widget/OppoShortCutBar;->layoutResourceID:I

    .line 1705
    iget v1, p0, Lcom/oppo/widget/OppoShortCutBar;->layoutResourceID:I

    if-eqz v1, :cond_0

    .line 1707
    new-instance v0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;-><init>(Landroid/content/Context;)V

    .line 1708
    .local v0, xkbl:Lcom/oppo/widget/OppoXmlShortCutItemLoader;
    iget v1, p0, Lcom/oppo/widget/OppoShortCutBar;->layoutResourceID:I

    invoke-virtual {v0, v1, p0}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->loadShortCutBar(ILcom/oppo/widget/OppoShortCutBar;)V

    .line 1710
    .end local v0           #xkbl:Lcom/oppo/widget/OppoXmlShortCutItemLoader;
    :cond_0
    return-void
.end method

.method public setMaxChild(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 930
    sget v0, Lcom/oppo/widget/OppoShortCutBar;->MAX_CHILD_COUNT:I

    if-le p1, v0, :cond_0

    .line 931
    sput p1, Lcom/oppo/widget/OppoShortCutBar;->MAX_CHILD_COUNT:I

    .line 932
    :cond_0
    return-void
.end method

.method public setOnShortCutItemClickListener(Lcom/oppo/widget/OppoShortCutBar$OnShortCutItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutBar;->mOnShortCutItemClickedListener:Lcom/oppo/widget/OppoShortCutBar$OnShortCutItemClickListener;

    .line 1241
    return-void
.end method

.method public setText(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "child"
    .parameter "cs"

    .prologue
    .line 942
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 949
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 945
    .restart local p2
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoShortCutItem;

    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, v0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public setText([Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "cs"

    .prologue
    .line 958
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 970
    :cond_0
    return-void

    .line 962
    :cond_1
    const/4 v0, 0x0

    .line 965
    .local v0, N:I
    iget v2, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    array-length v3, p1

    if-ge v2, v3, :cond_2

    iget v0, p0, Lcom/oppo/widget/OppoShortCutBar;->nChild:I

    .line 966
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 968
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutItem;

    aget-object v3, p1, v1

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/widget/OppoShortCutItem;->mItemLabel:Ljava/lang/String;

    .line 966
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 965
    .end local v1           #i:I
    :cond_2
    array-length v0, p1

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 977
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 983
    :cond_0
    return-void

    .line 980
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoShortCutItem;

    .line 981
    .local v1, item:Lcom/oppo/widget/OppoShortCutItem;
    iput p1, v1, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelColor:I

    goto :goto_0
.end method

.method public setTextHlColor(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 990
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 996
    :cond_0
    return-void

    .line 993
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoShortCutItem;

    .line 994
    .local v1, item:Lcom/oppo/widget/OppoShortCutItem;
    iput p1, v1, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelHlColor:I

    goto :goto_0
.end method

.method public setTextSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1034
    if-eqz p1, :cond_0

    if-gez p1, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoShortCutBar;->defaultTextSize:I

    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 794
    iput p1, p0, Lcom/oppo/widget/OppoShortCutBar;->mShortCutBarWidth:I

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoShortCutBar;->isResetRegion:Z

    .line 796
    return-void
.end method
