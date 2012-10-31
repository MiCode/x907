.class public Lcom/oppo/widget/OppoMultiListView;
.super Landroid/widget/ListView;
.source "OppoMultiListView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "android:OppoMultiListView"


# instance fields
.field drawable:Landroid/graphics/drawable/Drawable;

.field private mFirBg:Landroid/graphics/drawable/Drawable;

.field private mFirSelector:Landroid/graphics/drawable/Drawable;

.field private mLastBg:Landroid/graphics/drawable/Drawable;

.field private mLastSelector:Landroid/graphics/drawable/Drawable;

.field private mMidBg:Landroid/graphics/drawable/Drawable;

.field private mMidSelector:Landroid/graphics/drawable/Drawable;

.field private mOnlyBg:Landroid/graphics/drawable/Drawable;

.field private mOnlySelector:Landroid/graphics/drawable/Drawable;

.field private mSaveSelector:Landroid/graphics/drawable/Drawable;

.field private mTransBg:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoMultiListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoMultiListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiListView;->setVerticalScrollBarEnabled(Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mSaveSelector:Landroid/graphics/drawable/Drawable;

    .line 33
    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mFirSelector:Landroid/graphics/drawable/Drawable;

    .line 34
    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mMidSelector:Landroid/graphics/drawable/Drawable;

    .line 35
    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mLastSelector:Landroid/graphics/drawable/Drawable;

    .line 36
    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mOnlySelector:Landroid/graphics/drawable/Drawable;

    .line 38
    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mFirBg:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mMidBg:Landroid/graphics/drawable/Drawable;

    .line 40
    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mLastBg:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mOnlyBg:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mTransBg:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 51
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->setNoDivider()V

    .line 52
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mTransFlag:Z

    .line 55
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoMultiListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoMultiListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 62
    return-void
.end method

.method private getFirBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108055a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mFirBg:Landroid/graphics/drawable/Drawable;

    .line 136
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mFirBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getFirSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mFirSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108055a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mFirSelector:Landroid/graphics/drawable/Drawable;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mFirSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static getHighLightByContentValues(Landroid/content/ContentValues;)I
    .locals 4
    .parameter "contentValues"

    .prologue
    const/4 v2, -0x1

    .line 195
    if-nez p0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v2

    .line 196
    :cond_1
    const-string v3, "highLight"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 198
    .local v1, object:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 199
    check-cast v0, Ljava/lang/Integer;

    .line 201
    .local v0, integer:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method private getLastBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080548

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mLastBg:Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mLastBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getLastSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mLastSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080548

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mLastSelector:Landroid/graphics/drawable/Drawable;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mLastSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getMidBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080554

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mMidBg:Landroid/graphics/drawable/Drawable;

    .line 145
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mMidBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getMidSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mMidSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080554

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mMidSelector:Landroid/graphics/drawable/Drawable;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mMidSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getOnlyBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080555

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mOnlyBg:Landroid/graphics/drawable/Drawable;

    .line 163
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mOnlyBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getOnlySelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mOnlySelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080555

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mOnlySelector:Landroid/graphics/drawable/Drawable;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mOnlySelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getPositionInfo(Landroid/view/View;)I
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 236
    if-nez p1, :cond_1

    move v1, v3

    .line 269
    :cond_0
    :goto_0
    return v1

    .line 237
    :cond_1
    const/4 v1, -0x1

    .line 239
    .local v1, p:I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 241
    .local v0, object:Ljava/lang/Object;
    if-eqz v0, :cond_2

    instance-of v4, v0, Landroid/content/ContentValues;

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 242
    check-cast v2, Landroid/content/ContentValues;

    .line 243
    .local v2, tagInfo:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/oppo/widget/OppoMultiListView;->getPositionInfoByContentValues(Landroid/content/ContentValues;)I

    move-result v1

    .line 245
    if-eq v5, v1, :cond_0

    if-eq v6, v1, :cond_0

    if-eq v7, v1, :cond_0

    if-eq v8, v1, :cond_0

    if-eqz v1, :cond_0

    .line 254
    .end local v2           #tagInfo:Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getListChildTag()Ljava/lang/Object;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_3

    instance-of v4, v0, Landroid/content/ContentValues;

    if-eqz v4, :cond_3

    move-object v2, v0

    .line 257
    check-cast v2, Landroid/content/ContentValues;

    .line 258
    .restart local v2       #tagInfo:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/oppo/widget/OppoMultiListView;->getPositionInfoByContentValues(Landroid/content/ContentValues;)I

    move-result v1

    .line 260
    if-eq v5, v1, :cond_0

    if-eq v6, v1, :cond_0

    if-eq v7, v1, :cond_0

    if-eq v8, v1, :cond_0

    if-eqz v1, :cond_0

    .end local v2           #tagInfo:Landroid/content/ContentValues;
    :cond_3
    move v1, v3

    .line 269
    goto :goto_0
.end method

.method public static getPositionInfoByContentValues(Landroid/content/ContentValues;)I
    .locals 4
    .parameter "contentValues"

    .prologue
    const/4 v2, -0x1

    .line 179
    if-nez p0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v2

    .line 180
    :cond_1
    const-string/jumbo v3, "positionInfo"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, object:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 183
    check-cast v0, Ljava/lang/Integer;

    .line 184
    .local v0, integer:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method private getTransBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mTransBg:Landroid/graphics/drawable/Drawable;

    .line 171
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mTransBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method protected clearItemBackground(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    const-string v0, "android:OppoMultiListView"

    const-string v1, "can not clear a null view\'s background"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    return-void
.end method

.method protected getHighLight(Landroid/view/View;)I
    .locals 5
    .parameter "view"

    .prologue
    const/4 v3, -0x1

    .line 212
    if-nez p1, :cond_1

    move v0, v3

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 215
    .local v1, object:Ljava/lang/Object;
    if-eqz v1, :cond_2

    instance-of v4, v1, Landroid/content/ContentValues;

    if-eqz v4, :cond_2

    move-object v2, v1

    .line 216
    check-cast v2, Landroid/content/ContentValues;

    .line 217
    .local v2, tagInfo:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/oppo/widget/OppoMultiListView;->getHighLightByContentValues(Landroid/content/ContentValues;)I

    move-result v0

    .line 219
    .local v0, h:I
    const/4 v4, 0x1

    if-eq v4, v0, :cond_0

    const/4 v4, 0x3

    if-eq v4, v0, :cond_0

    const/4 v4, 0x2

    if-eq v4, v0, :cond_0

    move v0, v3

    .line 224
    goto :goto_0

    .end local v0           #h:I
    .end local v2           #tagInfo:Landroid/content/ContentValues;
    :cond_2
    move v0, v3

    .line 227
    goto :goto_0
.end method

.method public obtainView(I[Z)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 321
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 323
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoMultiListView;->getPositionInfo(Landroid/view/View;)I

    move-result v1

    .line 326
    .local v1, tag:I
    if-eq v2, v1, :cond_0

    if-eq v3, v1, :cond_0

    if-eq v4, v1, :cond_0

    if-eq v5, v1, :cond_0

    if-nez v1, :cond_1

    .line 332
    :cond_0
    iput-object v6, p0, Lcom/oppo/widget/OppoMultiListView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 334
    if-ne v2, v1, :cond_2

    .line 341
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getFirBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->isSpringEnabled()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setListSpring(ZZ)V

    .line 374
    :cond_1
    return-object v0

    .line 342
    :cond_2
    if-ne v3, v1, :cond_3

    .line 349
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getMidBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 350
    :cond_3
    if-ne v4, v1, :cond_4

    .line 357
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getLastBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 358
    :cond_4
    if-ne v5, v1, :cond_5

    .line 366
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getOnlyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 368
    :cond_5
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected positionSelector(ILandroid/view/View;)V
    .locals 0
    .parameter "position"
    .parameter "sel"

    .prologue
    .line 314
    return-void
.end method

.method protected recoveryBackround(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 382
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoMultiListView;->getPositionInfo(Landroid/view/View;)I

    move-result v1

    .line 385
    .local v1, tag:I
    if-eq v2, v1, :cond_0

    if-eq v3, v1, :cond_0

    if-eq v4, v1, :cond_0

    if-eq v5, v1, :cond_0

    if-nez v1, :cond_2

    .line 391
    :cond_0
    const/4 v0, 0x0

    .line 393
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-ne v2, v1, :cond_3

    .line 394
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getFirBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 402
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void

    .line 395
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-ne v3, v1, :cond_4

    .line 396
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getMidBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 397
    :cond_4
    if-ne v4, v1, :cond_5

    .line 398
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getLastBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_5
    if-ne v5, v1, :cond_1

    .line 400
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getOnlyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setNoDivider()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiListView;->setDividerHeight(I)V

    .line 87
    return-void
.end method
