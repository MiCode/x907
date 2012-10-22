.class public Lcom/oppo/widget/OppoPageflipView;
.super Landroid/view/ViewGroup;
.source "OppoPageflipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoPageflipView$PageflipCallback;,
        Lcom/oppo/widget/OppoPageflipView$CORNER;,
        Lcom/oppo/widget/OppoPageflipView$MODE;
    }
.end annotation


# static fields
.field private static final FINISH:I = 0x3

.field private static final FLIPING:I = 0x2

.field private static final LOADBITMAP:I = 0x4

.field private static final PREPARE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoPageflipView"


# instance fields
.field private ACTION_UP:Z

.field private CurrentState:I

.field private final FLIPRANGE:I

.field private FORWARD:Z

.field private HAVEFORWARD:Z

.field private ISPARTY:Ljava/lang/Boolean;

.field private LOADBITMAP_FINISH:Z

.field private endX:I

.field private endY:I

.field private indexOfBitmap:I

.field private lastX:I

.field private lastY:I

.field private mActivity:Landroid/app/Activity;

.field private mAllPixels:[I

.field private mArea:[I

.field private mArrayOfBitmap:[Landroid/graphics/Bitmap;

.field private mCallback:Lcom/oppo/widget/OppoPageflipView$PageflipCallback;

.field private mCorner:Lcom/oppo/widget/OppoPageflipView$CORNER;

.field private final mCountOfImage:I

.field private mCurrentView:Landroid/view/View;

.field private mDistance:I

.field private mDstView:Landroid/view/View;

.field private mFirstView:Landroid/view/View;

.field private mFlushend:I

.field private mGrandient:I

.field private mHeadOfFirst:I

.field private mHeadOfSecond:I

.field private mHeight:I

.field protected mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mMode:Lcom/oppo/widget/OppoPageflipView$MODE;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSecondView:Landroid/view/View;

.field private mSpeed:I

.field private mThread:Ljava/lang/Thread;

.field private mWidth:I

.field private mgate:Ljava/util/concurrent/Semaphore;

.field private movX:I

.field private movY:I

.field private startX:I

.field private startY:I

.field private time:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "pageflip"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 530
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mCountOfImage:I

    .line 57
    const/16 v0, 0xbe

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mSpeed:I

    .line 58
    iput v1, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    .line 59
    iput v1, p0, Lcom/oppo/widget/OppoPageflipView;->indexOfBitmap:I

    .line 62
    iput-boolean v2, p0, Lcom/oppo/widget/OppoPageflipView;->FORWARD:Z

    .line 77
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPageflipView;->ACTION_UP:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mgate:Ljava/util/concurrent/Semaphore;

    .line 82
    sget-object v0, Lcom/oppo/widget/OppoPageflipView$MODE;->BUTTON_MODE:Lcom/oppo/widget/OppoPageflipView$MODE;

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mMode:Lcom/oppo/widget/OppoPageflipView$MODE;

    .line 83
    sget-object v0, Lcom/oppo/widget/OppoPageflipView$CORNER;->CORNER_BOTTOM_LEFT:Lcom/oppo/widget/OppoPageflipView$CORNER;

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mCorner:Lcom/oppo/widget/OppoPageflipView$CORNER;

    .line 84
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->ISPARTY:Ljava/lang/Boolean;

    .line 87
    iput v2, p0, Lcom/oppo/widget/OppoPageflipView;->CurrentState:I

    .line 92
    const/16 v0, 0x90

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mGrandient:I

    .line 94
    const/16 v0, 0x370

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->FLIPRANGE:I

    .line 99
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPageflipView;->HAVEFORWARD:Z

    .line 100
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPageflipView;->LOADBITMAP_FINISH:Z

    .line 531
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoPageflipView;->initialize(Landroid/content/Context;)V

    .line 533
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 3
    .parameter "context"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 551
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mCountOfImage:I

    .line 57
    const/16 v0, 0xbe

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mSpeed:I

    .line 58
    iput v1, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    .line 59
    iput v1, p0, Lcom/oppo/widget/OppoPageflipView;->indexOfBitmap:I

    .line 62
    iput-boolean v2, p0, Lcom/oppo/widget/OppoPageflipView;->FORWARD:Z

    .line 77
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPageflipView;->ACTION_UP:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mgate:Ljava/util/concurrent/Semaphore;

    .line 82
    sget-object v0, Lcom/oppo/widget/OppoPageflipView$MODE;->BUTTON_MODE:Lcom/oppo/widget/OppoPageflipView$MODE;

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mMode:Lcom/oppo/widget/OppoPageflipView$MODE;

    .line 83
    sget-object v0, Lcom/oppo/widget/OppoPageflipView$CORNER;->CORNER_BOTTOM_LEFT:Lcom/oppo/widget/OppoPageflipView$CORNER;

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mCorner:Lcom/oppo/widget/OppoPageflipView$CORNER;

    .line 84
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->ISPARTY:Ljava/lang/Boolean;

    .line 87
    iput v2, p0, Lcom/oppo/widget/OppoPageflipView;->CurrentState:I

    .line 92
    const/16 v0, 0x90

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mGrandient:I

    .line 94
    const/16 v0, 0x370

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->FLIPRANGE:I

    .line 99
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPageflipView;->HAVEFORWARD:Z

    .line 100
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPageflipView;->LOADBITMAP_FINISH:Z

    .line 552
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->ISPARTY:Ljava/lang/Boolean;

    .line 553
    sub-int v0, p4, p2

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mWidth:I

    .line 554
    sub-int v0, p5, p3

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    .line 555
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoPageflipView;->initialize(Landroid/content/Context;)V

    .line 557
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 536
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mCountOfImage:I

    .line 57
    const/16 v0, 0xbe

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mSpeed:I

    .line 58
    iput v1, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    .line 59
    iput v1, p0, Lcom/oppo/widget/OppoPageflipView;->indexOfBitmap:I

    .line 62
    iput-boolean v2, p0, Lcom/oppo/widget/OppoPageflipView;->FORWARD:Z

    .line 77
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPageflipView;->ACTION_UP:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mgate:Ljava/util/concurrent/Semaphore;

    .line 82
    sget-object v0, Lcom/oppo/widget/OppoPageflipView$MODE;->BUTTON_MODE:Lcom/oppo/widget/OppoPageflipView$MODE;

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mMode:Lcom/oppo/widget/OppoPageflipView$MODE;

    .line 83
    sget-object v0, Lcom/oppo/widget/OppoPageflipView$CORNER;->CORNER_BOTTOM_LEFT:Lcom/oppo/widget/OppoPageflipView$CORNER;

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mCorner:Lcom/oppo/widget/OppoPageflipView$CORNER;

    .line 84
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->ISPARTY:Ljava/lang/Boolean;

    .line 87
    iput v2, p0, Lcom/oppo/widget/OppoPageflipView;->CurrentState:I

    .line 92
    const/16 v0, 0x90

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mGrandient:I

    .line 94
    const/16 v0, 0x370

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->FLIPRANGE:I

    .line 99
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPageflipView;->HAVEFORWARD:Z

    .line 100
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPageflipView;->LOADBITMAP_FINISH:Z

    .line 537
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoPageflipView;->initialize(Landroid/content/Context;)V

    .line 539
    return-void
.end method

.method private calculateSpeedAndGradient()[I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 671
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 680
    .local v0, speedAndGradient:[I
    iget v1, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    if-le v1, v4, :cond_0

    .line 681
    iget v1, p0, Lcom/oppo/widget/OppoPageflipView;->mSpeed:I

    iget v2, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    mul-int/2addr v1, v2

    aput v1, v0, v3

    .line 685
    :goto_0
    iget v1, p0, Lcom/oppo/widget/OppoPageflipView;->mGrandient:I

    iget v2, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 686
    return-object v0

    .line 683
    :cond_0
    aput v3, v0, v3

    goto :goto_0
.end method

.method private clear()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aput-object v1, v0, v2

    .line 156
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aput-object v1, v0, v3

    .line 157
    iput-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    .line 159
    :cond_2
    iput-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mArea:[I

    .line 160
    iput-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mAllPixels:[I

    .line 161
    iput-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mFirstView:Landroid/view/View;

    .line 162
    iput-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mSecondView:Landroid/view/View;

    .line 163
    return-void
.end method

.method private fingerFlip(II)I
    .locals 12
    .parameter "tmpX"
    .parameter "tmpY"

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v4, -0x1

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    .line 426
    iget v8, p0, Lcom/oppo/widget/OppoPageflipView;->lastX:I

    sub-int v8, p1, v8

    int-to-double v0, v8

    .line 427
    .local v0, detaX:D
    iget v8, p0, Lcom/oppo/widget/OppoPageflipView;->lastY:I

    sub-int v8, p2, v8

    int-to-double v2, v8

    .line 429
    .local v2, detaY:D
    cmpl-double v8, v2, v10

    if-eqz v8, :cond_1

    div-double v8, v0, v2

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_1

    .line 431
    const-string v5, "OppoPageflipView"

    const-string v6, "---------invalidate!-------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    :goto_0
    return v4

    .line 434
    :cond_1
    iget v8, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    mul-int/lit8 v8, v8, 0x4

    div-int/lit8 v8, v8, 0x8

    if-ge p2, v8, :cond_2

    .line 436
    iget-object v4, p0, Lcom/oppo/widget/OppoPageflipView;->mFirstView:Landroid/view/View;

    iput-object v4, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    .line 437
    iget-object v4, p0, Lcom/oppo/widget/OppoPageflipView;->mSecondView:Landroid/view/View;

    iput-object v4, p0, Lcom/oppo/widget/OppoPageflipView;->mDstView:Landroid/view/View;

    .line 438
    const/16 v4, 0x2f8

    iput v4, p0, Lcom/oppo/widget/OppoPageflipView;->mDistance:I

    .line 439
    const/4 v4, 0x4

    iput v4, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    .line 440
    invoke-direct {p0}, Lcom/oppo/widget/OppoPageflipView;->pagefliping()V

    .line 441
    const/4 v4, 0x4

    goto :goto_0

    .line 445
    :cond_2
    iget v8, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    mul-int/lit8 v8, v8, 0x4

    div-int/lit8 v8, v8, 0x8

    if-ge v8, p2, :cond_3

    iget v8, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    mul-int/lit8 v8, v8, 0x5

    div-int/lit8 v8, v8, 0x8

    if-ge p2, v8, :cond_3

    .line 447
    const/4 v4, 0x3

    iput v4, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    .line 448
    const/16 v4, 0x23a

    iput v4, p0, Lcom/oppo/widget/OppoPageflipView;->mDistance:I

    .line 449
    invoke-direct {p0}, Lcom/oppo/widget/OppoPageflipView;->pagefliping()V

    .line 450
    const-string v4, "OppoPageflipView"

    const-string v5, "fingerFlip--------------time == 3--------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v4, 0x3

    goto :goto_0

    .line 454
    :cond_3
    iget v8, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    mul-int/lit8 v8, v8, 0x5

    div-int/lit8 v8, v8, 0x8

    if-ge v8, p2, :cond_4

    iget v8, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    mul-int/lit8 v8, v8, 0x6

    div-int/lit8 v8, v8, 0x8

    if-gt p2, v8, :cond_4

    .line 456
    iput v5, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    .line 457
    const/16 v4, 0x17c

    iput v4, p0, Lcom/oppo/widget/OppoPageflipView;->mDistance:I

    .line 458
    invoke-direct {p0}, Lcom/oppo/widget/OppoPageflipView;->pagefliping()V

    .line 459
    const-string v4, "OppoPageflipView"

    const-string v6, "fingerFlip------------time == 2--------------------------------"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 460
    goto :goto_0

    .line 464
    :cond_4
    iget v5, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    mul-int/lit8 v5, v5, 0x6

    div-int/lit8 v5, v5, 0x8

    if-ge v5, p2, :cond_5

    iget v5, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    mul-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    if-gt p2, v5, :cond_5

    .line 466
    iput v6, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    .line 467
    const/16 v4, 0xbe

    iput v4, p0, Lcom/oppo/widget/OppoPageflipView;->mDistance:I

    .line 468
    invoke-direct {p0}, Lcom/oppo/widget/OppoPageflipView;->pagefliping()V

    .line 469
    const-string v4, "OppoPageflipView"

    const-string v5, "fingerFlip-------------time == 1---------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 470
    goto/16 :goto_0

    .line 475
    :cond_5
    iget v5, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    mul-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    if-ge v5, p2, :cond_0

    .line 477
    iget-object v4, p0, Lcom/oppo/widget/OppoPageflipView;->mSecondView:Landroid/view/View;

    iput-object v4, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    .line 478
    iget-object v4, p0, Lcom/oppo/widget/OppoPageflipView;->mFirstView:Landroid/view/View;

    iput-object v4, p0, Lcom/oppo/widget/OppoPageflipView;->mDstView:Landroid/view/View;

    .line 479
    iput v7, p0, Lcom/oppo/widget/OppoPageflipView;->mDistance:I

    .line 480
    iput v7, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    .line 481
    invoke-direct {p0}, Lcom/oppo/widget/OppoPageflipView;->pagefliping()V

    .line 482
    const-string v4, "OppoPageflipView"

    const-string v5, "fingerFlip------------time == 0---------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 483
    goto/16 :goto_0
.end method

.method private forFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 173
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "OppoPageflipView"

    const-string v1, "onDetachedFromWindow----mArrayOfBitmap[0].recycle()------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 179
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const-string v0, "OppoPageflipView"

    const-string v1, "onDetachedFromWindow----mArrayOfBitmap[1].recycle()------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1
    return-void
.end method

.method private getScreenWH()Z
    .locals 4

    .prologue
    .line 691
    iget-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 693
    const-string v1, "OppoPageflipView"

    const-string v2, "null == mActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v1, 0x0

    .line 701
    :goto_0
    return v1

    .line 696
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 697
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 698
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/oppo/widget/OppoPageflipView;->mScreenWidth:I

    .line 699
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/oppo/widget/OppoPageflipView;->mScreenHeight:I

    .line 700
    const-string v1, "OppoPageflipView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------mScreenWidth--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->mScreenWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "------mScreenHeight--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->mScreenHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 864
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mThread:Ljava/lang/Thread;

    .line 865
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mgate:Ljava/util/concurrent/Semaphore;

    .line 866
    invoke-direct {p0}, Lcom/oppo/widget/OppoPageflipView;->preStartflipThread()V

    .line 867
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 868
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/oppo/widget/OppoPageflipView;->mActivity:Landroid/app/Activity;

    .line 869
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoPageflipView;->setScrollContainer(Z)V

    .line 870
    return-void
.end method

.method private initializeBeforeLoad(II)V
    .locals 4
    .parameter "tmpWidth"
    .parameter "tmpHeight"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mFlushend:I

    .line 107
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArea:[I

    if-nez v0, :cond_0

    .line 108
    mul-int v0, p1, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArea:[I

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v2

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    if-nez v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mAllPixels:[I

    if-nez v0, :cond_4

    .line 124
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mAllPixels:[I

    .line 128
    :cond_4
    const-string v0, "OppoPageflipView"

    const-string v1, "-----------initializeBeforeLoad()-------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method private judgeFinish()Z
    .locals 2

    .prologue
    .line 657
    iget v0, p0, Lcom/oppo/widget/OppoPageflipView;->mDistance:I

    iget v1, p0, Lcom/oppo/widget/OppoPageflipView;->mSpeed:I

    sub-int/2addr v0, v1

    const/16 v1, 0x370

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoPageflipView;->mDistance:I

    if-gez v0, :cond_1

    .line 659
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPageflipView;->pausePageflip()Z

    .line 661
    const/4 v0, 0x1

    .line 664
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDrawable()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 277
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v11

    if-nez v0, :cond_1

    .line 278
    :cond_0
    const-string v0, "OppoPageflipView"

    const-string v1, "null == arrayOfBitmap[0] || null == arrayOfBitmap[1]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_0
    return v4

    .line 281
    :cond_1
    const/4 v9, 0x0

    .line 282
    .local v9, j:I
    iget v0, p0, Lcom/oppo/widget/OppoPageflipView;->mWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    mul-int v10, v0, v1

    .line 284
    .local v10, k:I
    const/4 v8, 0x0

    .local v8, index:I
    :goto_1
    const/4 v0, 0x2

    if-ge v8, v0, :cond_4

    .line 285
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 286
    .local v3, i1:I
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 287
    .local v7, i2:I
    iget v0, p0, Lcom/oppo/widget/OppoPageflipView;->mWidth:I

    if-ne v3, v0, :cond_2

    iget v0, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    if-eq v7, v0, :cond_3

    .line 294
    :cond_2
    const-string v0, "OppoPageflipView"

    const-string v1, "-----((i1 != mWidth) || (i2 != mHeight))--------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0}, Lcom/oppo/widget/OppoPageflipView;->clear()V

    .line 296
    iget v0, p0, Lcom/oppo/widget/OppoPageflipView;->mWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoPageflipView;->initializeBeforeLoad(II)V

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mAllPixels:[I

    mul-int v2, v10, v8

    move v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 301
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 302
    add-int/2addr v9, v10

    .line 284
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v3           #i1:I
    .end local v7           #i2:I
    :cond_4
    move v4, v11

    .line 304
    goto :goto_0
.end method

.method private pagefliping()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 330
    monitor-enter p0

    .line 332
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPageflipView;->LOADBITMAP_FINISH:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/oppo/widget/OppoPageflipView;->CurrentState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 335
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 336
    :catch_0
    move-exception v11

    .line 337
    .local v11, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 342
    .end local v11           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 340
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/oppo/widget/OppoPageflipView;->LOADBITMAP_FINISH:Z

    .line 341
    const-string v0, "OppoPageflipView"

    const-string v1, "-----------Finish waitting-------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 343
    invoke-direct {p0}, Lcom/oppo/widget/OppoPageflipView;->judgeFinish()Z

    move-result v0

    if-ne v14, v0, :cond_2

    .line 345
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPageflipView;->postInvalidate()V

    .line 389
    :cond_1
    :goto_1
    return-void

    .line 348
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->CurrentState:I

    .line 352
    invoke-direct {p0}, Lcom/oppo/widget/OppoPageflipView;->calculateSpeedAndGradient()[I

    move-result-object v12

    .line 353
    .local v12, speedAndgradient:[I
    aget v1, v12, v13

    iget v2, p0, Lcom/oppo/widget/OppoPageflipView;->mWidth:I

    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    iget v4, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    iget-object v5, p0, Lcom/oppo/widget/OppoPageflipView;->mArea:[I

    iget-object v6, p0, Lcom/oppo/widget/OppoPageflipView;->mAllPixels:[I

    iget v7, p0, Lcom/oppo/widget/OppoPageflipView;->mHeadOfFirst:I

    iget v8, p0, Lcom/oppo/widget/OppoPageflipView;->mHeadOfSecond:I

    iget v9, p0, Lcom/oppo/widget/OppoPageflipView;->mFlushend:I

    iget-boolean v10, p0, Lcom/oppo/widget/OppoPageflipView;->FORWARD:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/oppo/widget/OppoPageflipView;->updateRect(IIII[I[IIIIZ)V

    .line 355
    aget v1, v12, v13

    aget v2, v12, v14

    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->mWidth:I

    iget v4, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    iget-object v5, p0, Lcom/oppo/widget/OppoPageflipView;->mAllPixels:[I

    iget-object v6, p0, Lcom/oppo/widget/OppoPageflipView;->mArea:[I

    iget v7, p0, Lcom/oppo/widget/OppoPageflipView;->mHeadOfFirst:I

    iget v8, p0, Lcom/oppo/widget/OppoPageflipView;->mHeadOfSecond:I

    iget v9, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/oppo/widget/OppoPageflipView;->transform(IIII[I[IIII)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mFlushend:I

    .line 357
    const/4 v0, -0x1

    iget v1, p0, Lcom/oppo/widget/OppoPageflipView;->mFlushend:I

    if-ne v0, v1, :cond_3

    .line 358
    const-string v0, "OppoPageflipView"

    const-string v1, "-1 == mFlushend"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_3
    iget v0, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->indexOfBitmap:I

    .line 362
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 364
    const-string v0, "OppoPageflipView"

    const-string v1, "------------------------!!!!null == mArrayOfBitmap--------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 367
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/oppo/widget/OppoPageflipView;->indexOfBitmap:I

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    .line 369
    const-string v0, "OppoPageflipView"

    const-string v1, "!!!!!!!----------null==mArrayOfBitmap[indexOfBitmap]-------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 372
    :cond_5
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/oppo/widget/OppoPageflipView;->indexOfBitmap:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mArea:[I

    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->mWidth:I

    iget v6, p0, Lcom/oppo/widget/OppoPageflipView;->mWidth:I

    iget v7, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    move v2, v13

    move v4, v13

    move v5, v13

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 373
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPageflipView;->postInvalidate()V

    .line 375
    sget-object v0, Lcom/oppo/widget/OppoPageflipView$MODE;->BUTTON_MODE:Lcom/oppo/widget/OppoPageflipView$MODE;

    iget-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mMode:Lcom/oppo/widget/OppoPageflipView$MODE;

    if-eq v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/oppo/widget/OppoPageflipView;->ACTION_UP:Z

    if-eqz v0, :cond_1

    .line 377
    :cond_6
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPageflipView;->FORWARD:Z

    if-eqz v0, :cond_7

    .line 379
    iget v0, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    .line 380
    iget v0, p0, Lcom/oppo/widget/OppoPageflipView;->mDistance:I

    iget v1, p0, Lcom/oppo/widget/OppoPageflipView;->mSpeed:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mDistance:I

    .line 387
    :goto_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoPageflipView;->restartPageflip()V

    goto/16 :goto_1

    .line 384
    :cond_7
    iget v0, p0, Lcom/oppo/widget/OppoPageflipView;->mDistance:I

    iget v1, p0, Lcom/oppo/widget/OppoPageflipView;->mSpeed:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mDistance:I

    .line 385
    iget v0, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    goto :goto_2
.end method

.method private preStartflipThread()V
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mgate:Ljava/util/concurrent/Semaphore;

    if-nez v1, :cond_1

    .line 225
    const-string v1, "OppoPageflipView"

    const-string v2, "startPageflip() null == mgate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mgate:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private preparePageFlip(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "ISFORWARD"

    .prologue
    .line 396
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mFirstView:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    .line 399
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mSecondView:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mDstView:Landroid/view/View;

    .line 407
    :goto_0
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoPageflipView;->setControlState(Ljava/lang/Boolean;)V

    .line 413
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mSecondView:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    .line 404
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mFirstView:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mDstView:Landroid/view/View;

    goto :goto_0
.end method

.method private native resize(I[III[III)[I
.end method

.method private restartPageflip()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mgate:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mgate:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 210
    :cond_0
    return-void
.end method

.method private setControlState(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "ISFORWARD"

    .prologue
    const/4 v1, 0x0

    .line 308
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iput v1, p0, Lcom/oppo/widget/OppoPageflipView;->mDistance:I

    .line 311
    iput v1, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    .line 312
    iput v1, p0, Lcom/oppo/widget/OppoPageflipView;->mHeadOfFirst:I

    .line 313
    iget v0, p0, Lcom/oppo/widget/OppoPageflipView;->mWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mHeadOfSecond:I

    .line 323
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoPageflipView;->FORWARD:Z

    .line 324
    return-void

    .line 317
    :cond_0
    const/16 v0, 0x3b6

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mDistance:I

    .line 318
    const/4 v0, 0x5

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    .line 319
    iput v1, p0, Lcom/oppo/widget/OppoPageflipView;->mHeadOfSecond:I

    .line 320
    iget v0, p0, Lcom/oppo/widget/OppoPageflipView;->mWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->mHeadOfFirst:I

    goto :goto_0
.end method

.method private native transform(IIII[I[IIII)I
.end method

.method private native updateRect(IIII[I[IIIIZ)V
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 782
    const/4 v4, 0x0

    .line 783
    .local v4, result:Z
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 784
    .local v6, width:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 786
    .local v0, height:I
    iget v7, p0, Lcom/oppo/widget/OppoPageflipView;->CurrentState:I

    packed-switch v7, :pswitch_data_0

    .line 858
    :cond_0
    :goto_0
    return v4

    .line 788
    :pswitch_0
    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mCallback:Lcom/oppo/widget/OppoPageflipView$PageflipCallback;

    if-eqz v7, :cond_1

    .line 790
    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mCallback:Lcom/oppo/widget/OppoPageflipView$PageflipCallback;

    invoke-interface {v7}, Lcom/oppo/widget/OppoPageflipView$PageflipCallback;->onPrepareFlip()V

    .line 792
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    .line 794
    goto :goto_0

    .line 796
    :pswitch_1
    monitor-enter p0

    .line 799
    :try_start_0
    invoke-direct {p0, v6, v0}, Lcom/oppo/widget/OppoPageflipView;->initializeBeforeLoad(II)V

    .line 800
    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    if-ne v7, p2, :cond_3

    .line 801
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    .line 802
    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    if-nez v7, :cond_2

    .line 803
    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    aput-object v9, v7, v8

    .line 805
    :cond_2
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 806
    .local v2, newCanvasone:Landroid/graphics/Canvas;
    invoke-super {p0, v2, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 807
    const-string v7, "OppoPageflipView"

    const-string v8, "LOADBITMAP-------drawChild()----mCurrentView == child"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    .end local v2           #newCanvasone:Landroid/graphics/Canvas;
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 828
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 809
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    if-nez v7, :cond_4

    .line 810
    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    const/4 v8, 0x1

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    aput-object v9, v7, v8

    .line 812
    :cond_4
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-direct {v3, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 813
    .local v3, newCanvastwo:Landroid/graphics/Canvas;
    invoke-super {p0, v3, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 814
    invoke-direct {p0}, Lcom/oppo/widget/OppoPageflipView;->loadDrawable()Z

    move-result v1

    .line 815
    .local v1, isSuccessful:Z
    if-nez v1, :cond_5

    .line 816
    const-string v7, "OppoPageflipView"

    const-string v8, "loadDrawable(currentView,secondView) failed!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_5
    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 819
    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mDstView:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 820
    const-string v7, "OppoPageflipView"

    const-string v8, "LOADBITMAP-------drawChild()----else-------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v7, 0x1

    iput v7, p0, Lcom/oppo/widget/OppoPageflipView;->CurrentState:I

    .line 823
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/widget/OppoPageflipView;->LOADBITMAP_FINISH:Z

    .line 824
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 831
    .end local v1           #isSuccessful:Z
    .end local v3           #newCanvastwo:Landroid/graphics/Canvas;
    :pswitch_2
    if-eqz p1, :cond_0

    .line 832
    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mArrayOfBitmap:[Landroid/graphics/Bitmap;

    iget v8, p0, Lcom/oppo/widget/OppoPageflipView;->indexOfBitmap:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 842
    :pswitch_3
    iget-object v5, p0, Lcom/oppo/widget/OppoPageflipView;->mDstView:Landroid/view/View;

    .line 843
    .local v5, tmpView:Landroid/view/View;
    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    iput-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mDstView:Landroid/view/View;

    .line 844
    iput-object v5, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    .line 846
    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 847
    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mDstView:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 848
    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 852
    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mCallback:Lcom/oppo/widget/OppoPageflipView$PageflipCallback;

    if-eqz v7, :cond_6

    .line 853
    iget-object v7, p0, Lcom/oppo/widget/OppoPageflipView;->mCallback:Lcom/oppo/widget/OppoPageflipView$PageflipCallback;

    invoke-interface {v7}, Lcom/oppo/widget/OppoPageflipView$PageflipCallback;->onFinishFlip()V

    .line 855
    :cond_6
    const/4 v7, 0x1

    iput v7, p0, Lcom/oppo/widget/OppoPageflipView;->CurrentState:I

    goto/16 :goto_0

    .line 786
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 134
    const-string v0, "OppoPageflipView"

    const-string v1, "---- onDetachedFromWindow()------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/oppo/widget/OppoPageflipView;->clear()V

    .line 136
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v6, 0x0

    .line 764
    const-string v4, "OppoPageflipView"

    const-string v5, "onLayout()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPageflipView;->getChildCount()I

    move-result v1

    .line 766
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 767
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoPageflipView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 768
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 769
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 772
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Lcom/oppo/widget/OppoPageflipView;->mWidth:I

    .line 773
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    .line 774
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 766
    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 777
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v12, 0x4000

    .line 720
    const-string v10, "OppoPageflipView"

    const-string v11, "onMeasure()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 722
    .local v8, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 723
    .local v9, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 724
    .local v4, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 726
    .local v5, heightSpecSize:I
    if-eqz v8, :cond_0

    if-nez v4, :cond_1

    .line 727
    :cond_0
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "OppoPageflipView cannot have UNSPECIFIED dimensions"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 732
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPageflipView;->getChildCount()I

    move-result v3

    .line 734
    .local v3, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v3, :cond_2

    .line 735
    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoPageflipView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 738
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 743
    .local v7, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 744
    iput v5, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 745
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    const-string v10, "OppoPageflipView"

    const-string v11, "----------(lp.width <= 0) || (lp.height <= 0)--------"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 749
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 757
    .local v2, childheightMeasureSpec:I
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 734
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 759
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childWidthMeasureSpec:I
    .end local v2           #childheightMeasureSpec:I
    .end local v7           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-virtual {p0, v9, v5}, Lcom/oppo/widget/OppoPageflipView;->setMeasuredDimension(II)V

    .line 760
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "me"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 880
    iget-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mMode:Lcom/oppo/widget/OppoPageflipView$MODE;

    sget-object v4, Lcom/oppo/widget/OppoPageflipView$MODE;->BUTTON_MODE:Lcom/oppo/widget/OppoPageflipView$MODE;

    if-ne v3, v4, :cond_1

    .line 955
    :cond_0
    :goto_0
    return v6

    .line 884
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 886
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 888
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/oppo/widget/OppoPageflipView;->startX:I

    .line 889
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/oppo/widget/OppoPageflipView;->startY:I

    .line 890
    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->startY:I

    iget v4, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    mul-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    if-le v3, v4, :cond_2

    .line 892
    iput v7, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    .line 893
    iput v7, p0, Lcom/oppo/widget/OppoPageflipView;->mDistance:I

    .line 894
    iget-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mFirstView:Landroid/view/View;

    iput-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    .line 895
    iget-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mSecondView:Landroid/view/View;

    iput-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mDstView:Landroid/view/View;

    .line 896
    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->startY:I

    iput v3, p0, Lcom/oppo/widget/OppoPageflipView;->lastY:I

    .line 897
    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->startX:I

    iput v3, p0, Lcom/oppo/widget/OppoPageflipView;->lastX:I

    goto :goto_0

    .line 899
    :cond_2
    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->startY:I

    iget v4, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x8

    if-ge v3, v4, :cond_0

    .line 901
    const/4 v3, 0x4

    iput v3, p0, Lcom/oppo/widget/OppoPageflipView;->time:I

    .line 902
    const/16 v3, 0x2f8

    iput v3, p0, Lcom/oppo/widget/OppoPageflipView;->mDistance:I

    .line 903
    iget-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mSecondView:Landroid/view/View;

    iput-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    .line 904
    iget-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mFirstView:Landroid/view/View;

    iput-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mDstView:Landroid/view/View;

    .line 905
    const-string v3, "OppoPageflipView"

    const-string v4, "MotionEvent.ACTION_DOWN-------currentTime=3"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->startY:I

    iput v3, p0, Lcom/oppo/widget/OppoPageflipView;->lastY:I

    .line 907
    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->startX:I

    iput v3, p0, Lcom/oppo/widget/OppoPageflipView;->lastX:I

    goto :goto_0

    .line 911
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/oppo/widget/OppoPageflipView;->movX:I

    .line 912
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/oppo/widget/OppoPageflipView;->movY:I

    .line 913
    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->lastX:I

    iget v4, p0, Lcom/oppo/widget/OppoPageflipView;->movX:I

    sub-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x8

    iget v4, p0, Lcom/oppo/widget/OppoPageflipView;->lastY:I

    iget v5, p0, Lcom/oppo/widget/OppoPageflipView;->movY:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->lastY:I

    iget v4, p0, Lcom/oppo/widget/OppoPageflipView;->movY:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/oppo/widget/OppoPageflipView;->mHeight:I

    mul-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x8

    if-le v3, v4, :cond_0

    .line 915
    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->movX:I

    iget v4, p0, Lcom/oppo/widget/OppoPageflipView;->movY:I

    invoke-direct {p0, v3, v4}, Lcom/oppo/widget/OppoPageflipView;->fingerFlip(II)I

    .line 916
    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->movY:I

    iput v3, p0, Lcom/oppo/widget/OppoPageflipView;->lastY:I

    .line 917
    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->movX:I

    iput v3, p0, Lcom/oppo/widget/OppoPageflipView;->lastX:I

    goto/16 :goto_0

    .line 922
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/oppo/widget/OppoPageflipView;->endX:I

    .line 923
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/oppo/widget/OppoPageflipView;->endY:I

    .line 928
    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->startX:I

    iget v4, p0, Lcom/oppo/widget/OppoPageflipView;->endX:I

    sub-int v1, v3, v4

    .line 929
    .local v1, detaX:I
    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->startY:I

    iget v4, p0, Lcom/oppo/widget/OppoPageflipView;->endY:I

    sub-int v2, v3, v4

    .line 930
    .local v2, detaY:I
    if-eqz v2, :cond_3

    .line 931
    const-string v3, "OppoPageflipView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-----------------detaX/detaY--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_3
    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->CurrentState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->startX:I

    iget v4, p0, Lcom/oppo/widget/OppoPageflipView;->endX:I

    if-eq v3, v4, :cond_0

    .line 934
    iput-boolean v6, p0, Lcom/oppo/widget/OppoPageflipView;->ACTION_UP:Z

    .line 935
    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->endY:I

    iget v4, p0, Lcom/oppo/widget/OppoPageflipView;->startY:I

    if-le v3, v4, :cond_4

    .line 937
    iget-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mSecondView:Landroid/view/View;

    iput-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    .line 938
    iget-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mFirstView:Landroid/view/View;

    iput-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mDstView:Landroid/view/View;

    .line 939
    iput-boolean v7, p0, Lcom/oppo/widget/OppoPageflipView;->FORWARD:Z

    .line 940
    invoke-direct {p0}, Lcom/oppo/widget/OppoPageflipView;->pagefliping()V

    .line 941
    const-string v3, "OppoPageflipView"

    const-string v4, "Backward------------endY>startY-----------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 943
    :cond_4
    iget v3, p0, Lcom/oppo/widget/OppoPageflipView;->endY:I

    iget v4, p0, Lcom/oppo/widget/OppoPageflipView;->startY:I

    if-ge v3, v4, :cond_0

    .line 945
    iget-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mFirstView:Landroid/view/View;

    iput-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    .line 946
    iget-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mSecondView:Landroid/view/View;

    iput-object v3, p0, Lcom/oppo/widget/OppoPageflipView;->mDstView:Landroid/view/View;

    .line 947
    iput-boolean v6, p0, Lcom/oppo/widget/OppoPageflipView;->FORWARD:Z

    .line 948
    invoke-direct {p0}, Lcom/oppo/widget/OppoPageflipView;->pagefliping()V

    .line 949
    const-string v3, "OppoPageflipView"

    const-string v4, "Forward-------------endY<startY-----------------"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 886
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pausePageflip()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 192
    iget-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const/4 v1, 0x3

    iput v1, p0, Lcom/oppo/widget/OppoPageflipView;->CurrentState:I

    .line 197
    iput-boolean v0, p0, Lcom/oppo/widget/OppoPageflipView;->ACTION_UP:Z

    .line 198
    const/4 v0, 0x1

    .line 200
    :cond_0
    return v0
.end method

.method public registerPageflipCallback(Lcom/oppo/widget/OppoPageflipView$PageflipCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 652
    iput-object p1, p0, Lcom/oppo/widget/OppoPageflipView;->mCallback:Lcom/oppo/widget/OppoPageflipView$PageflipCallback;

    .line 653
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 243
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mgate:Ljava/util/concurrent/Semaphore;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mgate:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoPageflipView;->pagefliping()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "OppoPageflipView"

    const-string v2, "Thread exception!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 262
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method

.method public setPages(Landroid/view/View;Landroid/view/View;Lcom/oppo/widget/OppoPageflipView$CORNER;Lcom/oppo/widget/OppoPageflipView$MODE;)V
    .locals 5
    .parameter "currentView"
    .parameter "dstView"
    .parameter "corner"
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 584
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 585
    :cond_0
    const-string v0, "OppoPageflipView"

    const-string v1, "---null == dstView || null == currentView---"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_1
    :goto_0
    return-void

    .line 591
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/oppo/widget/OppoPageflipView;->CurrentState:I

    .line 592
    const-string v0, "OppoPageflipView"

    const-string v1, "---------------setPages-----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPageflipView;->removeAllViews()V

    .line 594
    iput-object p1, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    .line 595
    iput-object p2, p0, Lcom/oppo/widget/OppoPageflipView;->mDstView:Landroid/view/View;

    .line 596
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 597
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mDstView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 600
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 602
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_3

    .line 603
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 611
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0, v3, v1}, Lcom/oppo/widget/OppoPageflipView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 612
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mDstView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 613
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_4

    .line 614
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 622
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoPageflipView;->mDstView:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/widget/OppoPageflipView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0, v3, v1}, Lcom/oppo/widget/OppoPageflipView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 625
    if-eqz p4, :cond_5

    .line 626
    iput-object p4, p0, Lcom/oppo/widget/OppoPageflipView;->mMode:Lcom/oppo/widget/OppoPageflipView$MODE;

    .line 627
    :cond_5
    if-eqz p3, :cond_1

    .line 628
    iput-object p3, p0, Lcom/oppo/widget/OppoPageflipView;->mCorner:Lcom/oppo/widget/OppoPageflipView$CORNER;

    goto :goto_0
.end method

.method public startPageflipAnimation(Z)V
    .locals 1
    .parameter "ISFORWARD"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 645
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoPageflipView;->setControlState(Ljava/lang/Boolean;)V

    .line 646
    invoke-direct {p0}, Lcom/oppo/widget/OppoPageflipView;->restartPageflip()V

    .line 647
    return-void
.end method
