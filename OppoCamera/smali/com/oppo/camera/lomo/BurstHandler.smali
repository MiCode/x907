.class public Lcom/oppo/camera/lomo/BurstHandler;
.super Ljava/lang/Object;
.source "BurstHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;
    }
.end annotation


# static fields
.field private static DELAY_THUMBNSILS_SLIDEUP:J


# instance fields
.field private mBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBurstThumbnailLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private final mDecodeHandler:Landroid/os/Handler;

.field private mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

.field private mIsImageReviewerShow:Z

.field private mIsthumnailsSlideDown:Z

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mRecycling:Z

.field private mRotateImageViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/camera/views/RotateImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollOrReScaleListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnScrollOrReScaleListener;

.field private mSingleTapUpListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnSingleTapUpListener;

.field slideUpHandler:Landroid/os/Handler;

.field slideUpThread:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, 0xfa0

    sput-wide v0, Lcom/oppo/camera/lomo/BurstHandler;->DELAY_THUMBNSILS_SLIDEUP:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mIsthumnailsSlideDown:Z

    .line 35
    iput-boolean v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mIsImageReviewerShow:Z

    .line 37
    iput-boolean v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mRecycling:Z

    .line 70
    new-instance v0, Lcom/oppo/camera/lomo/BurstHandler$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/BurstHandler$1;-><init>(Lcom/oppo/camera/lomo/BurstHandler;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mDecodeHandler:Landroid/os/Handler;

    .line 304
    new-instance v0, Lcom/oppo/camera/lomo/BurstHandler$3;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/BurstHandler$3;-><init>(Lcom/oppo/camera/lomo/BurstHandler;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mSingleTapUpListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnSingleTapUpListener;

    .line 313
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpHandler:Landroid/os/Handler;

    .line 315
    new-instance v0, Lcom/oppo/camera/lomo/BurstHandler$4;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/BurstHandler$4;-><init>(Lcom/oppo/camera/lomo/BurstHandler;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpThread:Ljava/lang/Runnable;

    .line 339
    new-instance v0, Lcom/oppo/camera/lomo/BurstHandler$5;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/BurstHandler$5;-><init>(Lcom/oppo/camera/lomo/BurstHandler;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mScrollOrReScaleListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnScrollOrReScaleListener;

    .line 100
    iput-object p1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/camera/lomo/BurstHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mRecycling:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/camera/lomo/BurstHandler;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/camera/lomo/BurstHandler;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mRotateImageViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oppo/camera/lomo/BurstHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mIsImageReviewerShow:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/camera/lomo/BurstHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oppo/camera/lomo/BurstHandler;->showBurstImageReviewer()V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/camera/lomo/BurstHandler;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBurstThumbnailLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/camera/lomo/BurstHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mIsthumnailsSlideDown:Z

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/camera/lomo/BurstHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oppo/camera/lomo/BurstHandler;->thumbnailsSlideUp()V

    return-void
.end method

.method private recycleAllBitmap()V
    .locals 4

    .prologue
    .line 297
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mRecycling:Z

    .line 298
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 299
    .local v1, iterable_element:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oppo/camera/utils/ImageUtil;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 301
    .end local v1           #iterable_element:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 302
    return-void
.end method

.method private setThumbnailsBackground(Lcom/oppo/camera/views/RotateImageView;)V
    .locals 3
    .parameter "thumbnail"

    .prologue
    .line 329
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mRotateImageViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/views/RotateImageView;

    .line 330
    .local v1, rotateImageView:Lcom/oppo/camera/views/RotateImageView;
    if-ne v1, p1, :cond_0

    .line 331
    const v2, 0x7f0200cf

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/RotateImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 333
    :cond_0
    const v2, 0x7f0200ce

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/RotateImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 336
    .end local v1           #rotateImageView:Lcom/oppo/camera/views/RotateImageView;
    :cond_1
    return-void
.end method

.method private showBurstImageReviewer()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 127
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mIsImageReviewerShow:Z

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 130
    :cond_0
    iput-boolean v3, p0, Lcom/oppo/camera/lomo/BurstHandler;->mIsthumnailsSlideDown:Z

    .line 131
    invoke-direct {p0}, Lcom/oppo/camera/lomo/BurstHandler;->thumbnailsSlideDown()V

    .line 132
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBurstThumbnailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/oppo/ImageScaleView/ImageScaleView;->setImage(Landroid/graphics/Bitmap;I)V

    .line 134
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mRotateImageViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    invoke-direct {p0, v0}, Lcom/oppo/camera/lomo/BurstHandler;->setThumbnailsBackground(Lcom/oppo/camera/views/RotateImageView;)V

    .line 135
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

    invoke-virtual {v0, v3}, Lcom/oppo/ImageScaleView/ImageScaleView;->setVisibility(I)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mIsImageReviewerShow:Z

    goto :goto_0
.end method

.method private thumbnailsSlideDown()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    iget-boolean v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mIsthumnailsSlideDown:Z

    if-eqz v1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f040008

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 198
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 199
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v1, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    iput-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 200
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, v3}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 201
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 202
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBurstThumbnailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBurstThumbnailLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 204
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBurstThumbnailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 205
    iput-boolean v4, p0, Lcom/oppo/camera/lomo/BurstHandler;->mIsthumnailsSlideDown:Z

    .line 206
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpThread:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpThread:Ljava/lang/Runnable;

    sget-wide v3, Lcom/oppo/camera/lomo/BurstHandler;->DELAY_THUMBNSILS_SLIDEUP:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private thumbnailsSlideUp()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 211
    iget-boolean v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mIsthumnailsSlideDown:Z

    if-nez v1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f040009

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 215
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 216
    new-instance v1, Lcom/oppo/camera/lomo/BurstHandler$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/lomo/BurstHandler$2;-><init>(Lcom/oppo/camera/lomo/BurstHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 231
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v1, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    iput-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 232
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, v3}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 233
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 234
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBurstThumbnailLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 235
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBurstThumbnailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 236
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mIsthumnailsSlideDown:Z

    .line 237
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpThread:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public changeThumbnailsState()V
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mIsthumnailsSlideDown:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/oppo/camera/lomo/BurstHandler;->thumbnailsSlideUp()V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/lomo/BurstHandler;->thumbnailsSlideDown()V

    goto :goto_0
.end method

.method public clean()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 162
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBurstThumbnailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

    invoke-virtual {v2, v3}, Lcom/oppo/ImageScaleView/ImageScaleView;->setVisibility(I)V

    .line 164
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

    const/4 v3, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/oppo/ImageScaleView/ImageScaleView;->setImage(Landroid/graphics/Bitmap;I)V

    .line 165
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mRotateImageViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/views/RotateImageView;

    .line 166
    .local v1, iterable_element:Lcom/oppo/camera/views/RotateImageView;
    invoke-virtual {v1, v4}, Lcom/oppo/camera/views/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 168
    .end local v1           #iterable_element:Lcom/oppo/camera/views/RotateImageView;
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/lomo/BurstHandler;->recycleAllBitmap()V

    .line 169
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpThread:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mIsImageReviewerShow:Z

    .line 171
    return-void
.end method

.method public decodeBurstData([BI)V
    .locals 2
    .parameter "data"
    .parameter "degree"

    .prologue
    .line 96
    new-instance v0, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;

    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mDecodeHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;-><init>(Lcom/oppo/camera/lomo/BurstHandler;Landroid/os/Handler;[BI)V

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/BurstHandler$DecodeThread;->start()V

    .line 97
    return-void
.end method

.method public getmIsImageReviewerShow()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mIsImageReviewerShow:Z

    return v0
.end method

.method public hideBurstImageReviewer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 144
    iget-boolean v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mIsImageReviewerShow:Z

    if-nez v2, :cond_0

    .line 156
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBurstThumbnailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

    invoke-virtual {v2, v3}, Lcom/oppo/ImageScaleView/ImageScaleView;->setVisibility(I)V

    .line 149
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

    const/4 v3, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/oppo/ImageScaleView/ImageScaleView;->setImage(Landroid/graphics/Bitmap;I)V

    .line 150
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mRotateImageViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/views/RotateImageView;

    .line 151
    .local v1, iterable_element:Lcom/oppo/camera/views/RotateImageView;
    invoke-virtual {v1, v4}, Lcom/oppo/camera/views/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 153
    .end local v1           #iterable_element:Lcom/oppo/camera/views/RotateImageView;
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/lomo/BurstHandler;->recycleAllBitmap()V

    .line 154
    iget-object v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpThread:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/camera/lomo/BurstHandler;->mIsImageReviewerShow:Z

    goto :goto_0
.end method

.method public initUI()V
    .locals 6

    .prologue
    .line 104
    iget-object v4, p0, Lcom/oppo/camera/lomo/BurstHandler;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 105
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/oppo/camera/lomo/BurstHandler;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v5, 0x7f0b0044

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    .local v0, burstReviewRoot:Landroid/view/ViewGroup;
    const v4, 0x7f030003

    invoke-virtual {v2, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 107
    const v4, 0x7f0b0013

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oppo/ImageScaleView/ImageScaleView;

    iput-object v4, p0, Lcom/oppo/camera/lomo/BurstHandler;->mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

    .line 108
    iget-object v4, p0, Lcom/oppo/camera/lomo/BurstHandler;->mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/oppo/ImageScaleView/ImageScaleView;->setmIsFromBurst(Z)V

    .line 109
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oppo/camera/lomo/BurstHandler;->mRotateImageViewList:Ljava/util/ArrayList;

    .line 110
    iget-object v5, p0, Lcom/oppo/camera/lomo/BurstHandler;->mRotateImageViewList:Ljava/util/ArrayList;

    const v4, 0x7f0b0015

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v5, p0, Lcom/oppo/camera/lomo/BurstHandler;->mRotateImageViewList:Ljava/util/ArrayList;

    const v4, 0x7f0b0016

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v5, p0, Lcom/oppo/camera/lomo/BurstHandler;->mRotateImageViewList:Ljava/util/ArrayList;

    const v4, 0x7f0b0017

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v5, p0, Lcom/oppo/camera/lomo/BurstHandler;->mRotateImageViewList:Ljava/util/ArrayList;

    const v4, 0x7f0b0018

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v5, p0, Lcom/oppo/camera/lomo/BurstHandler;->mRotateImageViewList:Ljava/util/ArrayList;

    const v4, 0x7f0b0019

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const v4, 0x7f0b0014

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBurstThumbnailLayout:Landroid/widget/LinearLayout;

    .line 116
    iget-object v4, p0, Lcom/oppo/camera/lomo/BurstHandler;->mRotateImageViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/views/RotateImageView;

    .line 117
    .local v3, rotateImageView:Lcom/oppo/camera/views/RotateImageView;
    invoke-virtual {v3, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 119
    .end local v3           #rotateImageView:Lcom/oppo/camera/views/RotateImageView;
    :cond_0
    iget-object v4, p0, Lcom/oppo/camera/lomo/BurstHandler;->mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

    iget-object v5, p0, Lcom/oppo/camera/lomo/BurstHandler;->mSingleTapUpListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnSingleTapUpListener;

    invoke-virtual {v4, v5}, Lcom/oppo/ImageScaleView/ImageScaleView;->setmSingleTapUpListener(Lcom/oppo/ImageScaleView/ImageScaleView$OnSingleTapUpListener;)V

    .line 121
    iget-object v4, p0, Lcom/oppo/camera/lomo/BurstHandler;->mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

    iget-object v5, p0, Lcom/oppo/camera/lomo/BurstHandler;->mScrollOrReScaleListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnScrollOrReScaleListener;

    invoke-virtual {v4, v5}, Lcom/oppo/ImageScaleView/ImageScaleView;->setOnScrollOrReScaleListener(Lcom/oppo/ImageScaleView/ImageScaleView$OnScrollOrReScaleListener;)V

    .line 123
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;

    .line 124
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 242
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

    if-nez v0, :cond_1

    .line 294
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 245
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 247
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v5, :cond_0

    .line 250
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpThread:Ljava/lang/Runnable;

    sget-wide v2, Lcom/oppo/camera/lomo/BurstHandler;->DELAY_THUMBNSILS_SLIDEUP:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    check-cast p1, Lcom/oppo/camera/views/RotateImageView;

    .end local p1
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/BurstHandler;->setThumbnailsBackground(Lcom/oppo/camera/views/RotateImageView;)V

    .line 253
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v4}, Lcom/oppo/ImageScaleView/ImageScaleView;->setImage(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 256
    .restart local p1
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 259
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 260
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpThread:Ljava/lang/Runnable;

    sget-wide v2, Lcom/oppo/camera/lomo/BurstHandler;->DELAY_THUMBNSILS_SLIDEUP:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    check-cast p1, Lcom/oppo/camera/views/RotateImageView;

    .end local p1
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/BurstHandler;->setThumbnailsBackground(Lcom/oppo/camera/views/RotateImageView;)V

    .line 262
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v4}, Lcom/oppo/ImageScaleView/ImageScaleView;->setImage(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 265
    .restart local p1
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_0

    .line 268
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 269
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpThread:Ljava/lang/Runnable;

    sget-wide v2, Lcom/oppo/camera/lomo/BurstHandler;->DELAY_THUMBNSILS_SLIDEUP:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    check-cast p1, Lcom/oppo/camera/views/RotateImageView;

    .end local p1
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/BurstHandler;->setThumbnailsBackground(Lcom/oppo/camera/views/RotateImageView;)V

    .line 271
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v4}, Lcom/oppo/ImageScaleView/ImageScaleView;->setImage(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_0

    .line 274
    .restart local p1
    :pswitch_3
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v7, :cond_0

    .line 277
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpThread:Ljava/lang/Runnable;

    sget-wide v2, Lcom/oppo/camera/lomo/BurstHandler;->DELAY_THUMBNSILS_SLIDEUP:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    check-cast p1, Lcom/oppo/camera/views/RotateImageView;

    .end local p1
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/BurstHandler;->setThumbnailsBackground(Lcom/oppo/camera/views/RotateImageView;)V

    .line 280
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v4}, Lcom/oppo/ImageScaleView/ImageScaleView;->setImage(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_0

    .line 283
    .restart local p1
    :pswitch_4
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 287
    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->slideUpThread:Ljava/lang/Runnable;

    sget-wide v2, Lcom/oppo/camera/lomo/BurstHandler;->DELAY_THUMBNSILS_SLIDEUP:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    check-cast p1, Lcom/oppo/camera/views/RotateImageView;

    .end local p1
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/BurstHandler;->setThumbnailsBackground(Lcom/oppo/camera/views/RotateImageView;)V

    .line 289
    iget-object v1, p0, Lcom/oppo/camera/lomo/BurstHandler;->mImageScaleView:Lcom/oppo/ImageScaleView/ImageScaleView;

    iget-object v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v4}, Lcom/oppo/ImageScaleView/ImageScaleView;->setImage(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0015
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/BurstHandler;->mRecycling:Z

    .line 179
    return-void
.end method
