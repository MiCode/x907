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
    .line 133
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080559

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mFirBg:Landroid/graphics/drawable/Drawable;

    .line 134
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

    const v1, 0x1080547

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

    .line 190
    if-nez p0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v2

    .line 191
    :cond_1
    const-string v3, "highLight"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 193
    .local v1, object:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 194
    check-cast v0, Ljava/lang/Integer;

    .line 196
    .local v0, integer:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method private getLastBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080557

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mLastBg:Landroid/graphics/drawable/Drawable;

    .line 150
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

    const v1, 0x1080535

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
    .line 141
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080558

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mMidBg:Landroid/graphics/drawable/Drawable;

    .line 142
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

    const v1, 0x1080541

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
    .line 157
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080556

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mOnlyBg:Landroid/graphics/drawable/Drawable;

    .line 158
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

    const v1, 0x1080542

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

    .line 231
    if-nez p1, :cond_1

    move v1, v3

    .line 264
    :cond_0
    :goto_0
    return v1

    .line 232
    :cond_1
    const/4 v1, -0x1

    .line 234
    .local v1, p:I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 236
    .local v0, object:Ljava/lang/Object;
    if-eqz v0, :cond_2

    instance-of v4, v0, Landroid/content/ContentValues;

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 237
    check-cast v2, Landroid/content/ContentValues;

    .line 238
    .local v2, tagInfo:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/oppo/widget/OppoMultiListView;->getPositionInfoByContentValues(Landroid/content/ContentValues;)I

    move-result v1

    .line 240
    if-eq v5, v1, :cond_0

    if-eq v6, v1, :cond_0

    if-eq v7, v1, :cond_0

    if-eq v8, v1, :cond_0

    if-eqz v1, :cond_0

    .line 249
    .end local v2           #tagInfo:Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getListChildTag()Ljava/lang/Object;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_3

    instance-of v4, v0, Landroid/content/ContentValues;

    if-eqz v4, :cond_3

    move-object v2, v0

    .line 252
    check-cast v2, Landroid/content/ContentValues;

    .line 253
    .restart local v2       #tagInfo:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/oppo/widget/OppoMultiListView;->getPositionInfoByContentValues(Landroid/content/ContentValues;)I

    move-result v1

    .line 255
    if-eq v5, v1, :cond_0

    if-eq v6, v1, :cond_0

    if-eq v7, v1, :cond_0

    if-eq v8, v1, :cond_0

    if-eqz v1, :cond_0

    .end local v2           #tagInfo:Landroid/content/ContentValues;
    :cond_3
    move v1, v3

    .line 264
    goto :goto_0
.end method

.method public static getPositionInfoByContentValues(Landroid/content/ContentValues;)I
    .locals 4
    .parameter "contentValues"

    .prologue
    const/4 v2, -0x1

    .line 174
    if-nez p0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v2

    .line 175
    :cond_1
    const-string/jumbo v3, "positionInfo"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 177
    .local v1, object:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 178
    check-cast v0, Ljava/lang/Integer;

    .line 179
    .local v0, integer:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method private getTransBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mTransBg:Landroid/graphics/drawable/Drawable;

    .line 166
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mTransBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method protected getHighLight(Landroid/view/View;)I
    .locals 5
    .parameter "view"

    .prologue
    const/4 v3, -0x1

    .line 207
    if-nez p1, :cond_1

    move v0, v3

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 210
    .local v1, object:Ljava/lang/Object;
    if-eqz v1, :cond_2

    instance-of v4, v1, Landroid/content/ContentValues;

    if-eqz v4, :cond_2

    move-object v2, v1

    .line 211
    check-cast v2, Landroid/content/ContentValues;

    .line 212
    .local v2, tagInfo:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/oppo/widget/OppoMultiListView;->getHighLightByContentValues(Landroid/content/ContentValues;)I

    move-result v0

    .line 214
    .local v0, h:I
    const/4 v4, 0x1

    if-eq v4, v0, :cond_0

    const/4 v4, 0x3

    if-eq v4, v0, :cond_0

    const/4 v4, 0x2

    if-eq v4, v0, :cond_0

    move v0, v3

    .line 219
    goto :goto_0

    .end local v0           #h:I
    .end local v2           #tagInfo:Landroid/content/ContentValues;
    :cond_2
    move v0, v3

    .line 222
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

    .line 314
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 316
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoMultiListView;->getPositionInfo(Landroid/view/View;)I

    move-result v1

    .line 319
    .local v1, tag:I
    if-eq v2, v1, :cond_0

    if-eq v3, v1, :cond_0

    if-eq v4, v1, :cond_0

    if-eq v5, v1, :cond_0

    if-nez v1, :cond_1

    .line 325
    :cond_0
    iput-object v6, p0, Lcom/oppo/widget/OppoMultiListView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 327
    if-ne v2, v1, :cond_2

    .line 334
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getFirBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 364
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->isSpringEnabled()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setListSpring(ZZ)V

    .line 367
    :cond_1
    return-object v0

    .line 335
    :cond_2
    if-ne v3, v1, :cond_3

    .line 342
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getMidBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 343
    :cond_3
    if-ne v4, v1, :cond_4

    .line 350
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getLastBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 351
    :cond_4
    if-ne v5, v1, :cond_5

    .line 359
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getOnlyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 361
    :cond_5
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected positionSelector(ILandroid/view/View;)V
    .locals 4
    .parameter "position"
    .parameter "sel"

    .prologue
    .line 271
    if-eqz p2, :cond_1

    .line 272
    iget-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mSaveSelector:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mSaveSelector:Landroid/graphics/drawable/Drawable;

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 277
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p2}, Lcom/oppo/widget/OppoMultiListView;->getPositionInfo(Landroid/view/View;)I

    move-result v1

    .line 279
    .local v1, tag:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 281
    packed-switch v1, :pswitch_data_0

    .line 298
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 306
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    .end local v1           #tag:I
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 307
    return-void

    .line 283
    .restart local v0       #selector:Landroid/graphics/drawable/Drawable;
    .restart local v1       #tag:I
    :pswitch_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getFirSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 284
    goto :goto_0

    .line 286
    :pswitch_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getLastSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 287
    goto :goto_0

    .line 289
    :pswitch_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getMidSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 290
    goto :goto_0

    .line 292
    :pswitch_3
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getOnlySelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 293
    goto :goto_0

    .line 295
    :pswitch_4
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->getTransBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mSaveSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 301
    iget-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mSaveSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoMultiListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
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
