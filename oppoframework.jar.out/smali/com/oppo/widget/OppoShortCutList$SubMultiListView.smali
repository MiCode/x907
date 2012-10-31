.class public Lcom/oppo/widget/OppoShortCutList$SubMultiListView;
.super Landroid/widget/ListView;
.source "OppoShortCutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoShortCutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubMultiListView"
.end annotation


# instance fields
.field private mSaveSelector:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 318
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->mSaveSelector:Landroid/graphics/drawable/Drawable;

    .line 319
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108076d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 320
    return-void
.end method

.method private getPositionInfo(Landroid/view/View;)I
    .locals 5
    .parameter "view"

    .prologue
    const/4 v3, -0x1

    .line 370
    if-nez p1, :cond_1

    move v1, v3

    .line 387
    :cond_0
    :goto_0
    return v1

    .line 371
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getListChildTag()Ljava/lang/Object;

    move-result-object v0

    .line 373
    .local v0, object:Ljava/lang/Object;
    if-eqz v0, :cond_2

    instance-of v4, v0, Landroid/content/ContentValues;

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 374
    check-cast v2, Landroid/content/ContentValues;

    .line 375
    .local v2, tagInfo:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->getPositionInfoByContentValues(Landroid/content/ContentValues;)I

    move-result v1

    .line 377
    .local v1, p:I
    const/4 v4, 0x1

    if-eq v4, v1, :cond_0

    const/4 v4, 0x2

    if-eq v4, v1, :cond_0

    const/4 v4, 0x3

    if-eq v4, v1, :cond_0

    const/4 v4, 0x4

    if-eq v4, v1, :cond_0

    if-eqz v1, :cond_0

    move v1, v3

    .line 384
    goto :goto_0

    .end local v1           #p:I
    .end local v2           #tagInfo:Landroid/content/ContentValues;
    :cond_2
    move v1, v3

    .line 387
    goto :goto_0
.end method

.method public static getPositionInfoByContentValues(Landroid/content/ContentValues;)I
    .locals 4
    .parameter "contentValues"

    .prologue
    const/4 v2, -0x1

    .line 392
    if-nez p0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v2

    .line 393
    :cond_1
    const-string v3, "positionInfo"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 395
    .local v1, object:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 396
    check-cast v0, Ljava/lang/Integer;

    .line 397
    .local v0, integer:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method protected positionSelector(ILandroid/view/View;)V
    .locals 4
    .parameter "position"
    .parameter "sel"

    .prologue
    .line 331
    if-eqz p2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->mSaveSelector:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->mSaveSelector:Landroid/graphics/drawable/Drawable;

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 337
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p2}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->getPositionInfo(Landroid/view/View;)I

    move-result v1

    .line 339
    .local v1, tag:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 341
    packed-switch v1, :pswitch_data_0

    .line 358
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 366
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    .end local v1           #tag:I
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 367
    return-void

    .line 343
    .restart local v0       #selector:Landroid/graphics/drawable/Drawable;
    .restart local v1       #tag:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080767

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 344
    goto :goto_0

    .line 346
    :pswitch_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080764

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 347
    goto :goto_0

    .line 349
    :pswitch_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080765

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 350
    goto :goto_0

    .line 352
    :pswitch_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080766

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 353
    goto :goto_0

    .line 355
    :pswitch_4
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v0       #selector:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 360
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->mSaveSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 361
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->mSaveSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
