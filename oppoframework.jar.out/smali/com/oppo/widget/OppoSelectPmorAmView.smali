.class public Lcom/oppo/widget/OppoSelectPmorAmView;
.super Landroid/view/View;
.source "OppoSelectPmorAmView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoSelectPmorAmView$OnChangedListener;
    }
.end annotation


# static fields
.field private static final ACTION_DOWN:I = 0x0

.field private static final ACTION_FLING:I = 0x2

.field private static final ACTION_MOVE:I = 0x1

.field private static final ACTION_UP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OppoSelectPmorAmView"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private final debug:Z

.field private isDownTop:Z

.field private mBitmapArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapHeight:I

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mCount:I

.field private mCreationOrientation:I

.field private mCurrentIndex:I

.field private mDrawTpye:I

.field private mHeight:I

.field private mImageIds:[I

.field private mImageIds_CN:[I

.field private mImageIds_US:[I

.field private mIsAm:Z

.field private mIsFilling:Z

.field private mIsMove:Z

.field private mListener:Lcom/oppo/widget/OppoSelectPmorAmView$OnChangedListener;

.field private mMoveDistance:I

.field private mNewY:I

.field private mOldY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mResult:Z

.field private mTotalNumber:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoSelectPmorAmView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoSelectPmorAmView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-boolean v4, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->debug:Z

    .line 41
    const/4 v1, 0x3

    iput v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mDrawTpye:I

    .line 43
    iput-boolean v4, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    .line 44
    iget-boolean v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    iput-boolean v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mResult:Z

    .line 46
    iput-boolean v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->isDownTop:Z

    .line 48
    iput v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mCurrentIndex:I

    .line 49
    iput v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mTotalNumber:I

    .line 53
    iput v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mNewY:I

    .line 54
    iput v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mOldY:I

    .line 56
    iput-boolean v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsFilling:Z

    .line 57
    iput-boolean v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsMove:Z

    .line 59
    iput v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mCount:I

    .line 61
    iput v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mWidth:I

    .line 62
    iput v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mHeight:I

    .line 64
    iput v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapHeight:I

    .line 66
    iput v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    .line 68
    iput-object v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mPaint:Landroid/graphics/Paint;

    .line 70
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mImageIds_CN:[I

    .line 73
    new-array v1, v5, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mImageIds_US:[I

    .line 78
    iput-object v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    .line 81
    iput-object v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->audioManager:Landroid/media/AudioManager;

    .line 96
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mPaint:Landroid/graphics/Paint;

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSelectPmorAmView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mConfiguration:Landroid/content/res/Configuration;

    .line 108
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mCreationOrientation:I

    .line 111
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, lang:Ljava/lang/String;
    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mImageIds_US:[I

    iput-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mImageIds:[I

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoSelectPmorAmView;->FactoryBitmapFromDrawable(Ljava/util/ArrayList;)V

    .line 127
    :cond_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoSelectPmorAmView;->getHeightofBitmap()V

    .line 128
    return-void

    .line 118
    :cond_3
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mImageIds_CN:[I

    iput-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mImageIds:[I

    goto :goto_0

    .line 70
    :array_0
    .array-data 0x4
        0xc6t 0x5t 0x8t 0x1t
        0xe0t 0x0t 0x8t 0x1t
        0x6ct 0x6t 0x8t 0x1t
        0xc6t 0x5t 0x8t 0x1t
    .end array-data

    .line 73
    :array_1
    .array-data 0x4
        0xc6t 0x5t 0x8t 0x1t
        0xe2t 0x0t 0x8t 0x1t
        0x6dt 0x6t 0x8t 0x1t
        0xc6t 0x5t 0x8t 0x1t
    .end array-data
.end method

.method private dealActionDown(I)V
    .locals 3
    .parameter "coordinateY"

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsFilling:Z

    if-nez v0, :cond_0

    .line 257
    iput v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    .line 261
    :cond_0
    iput-boolean v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsFilling:Z

    .line 262
    iput-boolean v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsMove:Z

    .line 263
    iput v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mDrawTpye:I

    .line 264
    iput p1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mNewY:I

    .line 265
    iput v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mCount:I

    .line 266
    iput v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    .line 269
    const-string v0, "OppoSelectPmorAmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "luoyaojun -- dealActionDown mMoveDistance == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSelectPmorAmView;->invalidate()V

    .line 272
    return-void
.end method

.method private dealActionFling(I)V
    .locals 0
    .parameter "coordinateY"

    .prologue
    .line 333
    return-void
.end method

.method private dealActionMove(I)V
    .locals 4
    .parameter "coordinateY"

    .prologue
    .line 278
    const-string v1, "OppoSelectPmorAmView"

    const-string v2, "luoyaojun --dealActionMove !"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, distance:I
    iget-boolean v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsMove:Z

    if-eqz v1, :cond_0

    .line 284
    iget v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mNewY:I

    sub-int v0, p1, v1

    .line 289
    :cond_0
    const-string v1, "OppoSelectPmorAmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "luoyaojun -- dealActionMove mMoveDistance == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    .line 296
    const-string v1, "OppoSelectPmorAmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "luoyaojun -- dealActionMove mMoveDistance up == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iput p1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mNewY:I

    .line 301
    iget-boolean v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    if-eqz v1, :cond_2

    .line 303
    iget v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    iget v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    iget v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mHeight:I

    mul-int/lit8 v2, v2, -0x5

    div-int/lit8 v2, v2, 0x6

    if-ge v1, v2, :cond_4

    .line 305
    :cond_1
    iget v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    .line 309
    const-string v1, "OppoSelectPmorAmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "luoyaojun -- dealActionMove mMoveDistance down == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_0
    return-void

    .line 316
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    iget v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mHeight:I

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x7

    if-gt v1, v2, :cond_3

    iget v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    iget v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mHeight:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_4

    .line 318
    :cond_3
    iget v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    .line 322
    const-string v1, "OppoSelectPmorAmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "luoyaojun -- dealActionMove mMoveDistance down == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 327
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSelectPmorAmView;->invalidate()V

    goto :goto_0
.end method

.method private dealActionUp(I)V
    .locals 3
    .parameter "coordinateY"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 336
    iput v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    .line 338
    iget v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsMove:Z

    if-eqz v0, :cond_2

    .line 340
    iput-boolean v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    .line 341
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mResult:Z

    .line 343
    iput-boolean v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsMove:Z

    .line 353
    :cond_0
    :goto_0
    iget v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsMove:Z

    if-nez v0, :cond_3

    .line 355
    iput-boolean v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    .line 356
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mResult:Z

    .line 363
    :cond_1
    :goto_1
    return-void

    .line 345
    :cond_2
    iget v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsMove:Z

    if-eqz v0, :cond_0

    .line 347
    iput-boolean v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    .line 348
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mResult:Z

    .line 350
    iput-boolean v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsMove:Z

    goto :goto_0

    .line 358
    :cond_3
    iget v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsMove:Z

    if-nez v0, :cond_1

    .line 360
    iput-boolean v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    .line 361
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mResult:Z

    goto :goto_1
.end method

.method private getHeightofBitmap()V
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x5a

    iput v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapHeight:I

    .line 146
    return-void
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 186
    const-string v0, "OppoSelectPmorAmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "luoyaojun -- notifyChange mResult == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mListener:Lcom/oppo/widget/OppoSelectPmorAmView$OnChangedListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mListener:Lcom/oppo/widget/OppoSelectPmorAmView$OnChangedListener;

    iget-boolean v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mResult:Z

    invoke-interface {v0, p0, v1}, Lcom/oppo/widget/OppoSelectPmorAmView$OnChangedListener;->onChanged(Lcom/oppo/widget/OppoSelectPmorAmView;Z)V

    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method public FactoryBitmapFromDrawable(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mImageIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSelectPmorAmView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mImageIds:[I

    aget v3, v3, v1

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mTotalNumber:I

    .line 170
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 201
    const-string v0, "OppoSelectPmorAmView"

    const-string v1, "luoyaojun -- onAttachedToWindow !"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 208
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 211
    const-string v1, "OppoSelectPmorAmView"

    const-string v2, "luoyaojun -- onDetachedFromWindow !"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 216
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    .line 224
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x4120

    .line 423
    iget v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mDrawTpye:I

    packed-switch v1, :pswitch_data_0

    .line 573
    :cond_0
    return-void

    .line 427
    :pswitch_0
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 429
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 431
    iget-boolean v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    if-eqz v1, :cond_3

    .line 433
    iget v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_2

    .line 435
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    mul-int/lit8 v2, v0, 0x5a

    add-int/lit8 v2, v2, -0xf

    iget v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 429
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_2
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    mul-int/lit8 v2, v0, 0x5a

    add-int/lit8 v2, v2, -0x2f

    iget v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 452
    :cond_3
    iget v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_4

    .line 454
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xf

    iget v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 462
    :cond_4
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0x2f

    iget v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 476
    .end local v0           #i:I
    :pswitch_1
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 478
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 480
    iget-boolean v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    if-eqz v1, :cond_7

    .line 482
    iget v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_6

    .line 484
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_5

    .line 486
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    mul-int/lit8 v2, v0, 0x5a

    add-int/lit8 v2, v2, -0xf

    iget v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 478
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 492
    :cond_6
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_5

    .line 494
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    mul-int/lit8 v2, v0, 0x5a

    add-int/lit8 v2, v2, -0x2f

    iget v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 501
    :cond_7
    iget v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_8

    .line 503
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_5

    .line 505
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xf

    iget v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 511
    :cond_8
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_5

    .line 513
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0x2f

    iget v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 525
    .end local v0           #i:I
    :pswitch_2
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 527
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 529
    iget-boolean v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    if-eqz v1, :cond_b

    .line 531
    iget v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_a

    .line 533
    if-ltz v0, :cond_9

    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_9

    .line 535
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    mul-int/lit8 v2, v0, 0x5a

    add-int/lit8 v2, v2, -0xf

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 527
    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 541
    :cond_a
    if-ltz v0, :cond_9

    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_9

    .line 543
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    mul-int/lit8 v2, v0, 0x5a

    add-int/lit8 v2, v2, -0x2f

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 550
    :cond_b
    iget v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_c

    .line 552
    if-ltz v0, :cond_9

    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_9

    .line 554
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xf

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 560
    :cond_c
    if-ltz v0, :cond_9

    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_9

    .line 562
    iget-object v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mBitmapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0x2f

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 229
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 233
    const-string v0, "OppoSelectPmorAmView"

    const-string v1, "luoyaojun -- onMeasure !"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 240
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 242
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSelectPmorAmView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mWidth:I

    .line 243
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSelectPmorAmView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mHeight:I

    .line 247
    const-string v0, "OppoSelectPmorAmView"

    const-string v1, "luoyaojun -- onSizeChanged !"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v0, "OppoSelectPmorAmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "luoyaojun -- onSizeChanged mWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v0, "OppoSelectPmorAmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "luoyaojun -- onSizeChanged mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 369
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 371
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 407
    :pswitch_0
    const-string v2, "OppoSelectPmorAmView"

    const-string v3, "luoyaojun -- ACTION_UP !"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoSelectPmorAmView;->dealActionUp(I)V

    .line 410
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSelectPmorAmView;->invalidate()V

    .line 411
    invoke-direct {p0}, Lcom/oppo/widget/OppoSelectPmorAmView;->notifyChange()V

    .line 412
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSelectPmorAmView;->playSoundEffect()V

    .line 413
    iput v5, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mMoveDistance:I

    .line 417
    :goto_0
    return v4

    .line 377
    :pswitch_1
    const-string v2, "OppoSelectPmorAmView"

    const-string v3, "luoyaojun -- ACTION_DOWN !"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoSelectPmorAmView;->dealActionDown(I)V

    .line 380
    iput v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mOldY:I

    goto :goto_0

    .line 388
    :pswitch_2
    const-string v2, "OppoSelectPmorAmView"

    const-string v3, "luoyaojun -- ACTION_MOVE !"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mOldY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    .line 393
    iput-boolean v4, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsMove:Z

    .line 395
    :cond_0
    iput v4, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mDrawTpye:I

    .line 396
    iput v1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mOldY:I

    .line 397
    iput-boolean v5, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsFilling:Z

    .line 398
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoSelectPmorAmView;->dealActionMove(I)V

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public playSoundEffect()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "OppoSelectPmorAmView"

    const-string v1, "luoyaojun -- playSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->audioManager:Landroid/media/AudioManager;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->audioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 142
    return-void
.end method

.method public setCurrentStatus(Z)V
    .locals 3
    .parameter "isAm"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    .line 151
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mResult:Z

    .line 154
    const-string v0, "OppoSelectPmorAmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "luoyaojun -- setCurrentStatus mIsAm == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mIsAm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v0, "OppoSelectPmorAmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "luoyaojun -- setCurrentStatus mResult == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public setOnChangeListener(Lcom/oppo/widget/OppoSelectPmorAmView$OnChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/oppo/widget/OppoSelectPmorAmView;->mListener:Lcom/oppo/widget/OppoSelectPmorAmView$OnChangedListener;

    .line 180
    return-void
.end method
