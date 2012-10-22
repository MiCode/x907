.class public final Landroid/view/IndicateMenuImpl;
.super Ljava/lang/Object;
.source "IndicateMenuImpl.java"

# interfaces
.implements Landroid/view/IndicateMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IndicateMenuImpl$IllegalOperationException;,
        Landroid/view/IndicateMenuImpl$Position;,
        Landroid/view/IndicateMenuImpl$Callback;
    }
.end annotation


# static fields
.field public static final DEFAULT_ITEM_MAX_WIDTH:I = 0xa0

.field public static final DEFAULT_ITEM_MIN_WIDTH:I = 0x14

.field public static final DEFAULT_ITEM_TEXT_SIZE:F = 16.0f

.field private static final FIRST_ITEM_WIDTH_REDUNDANCY:I = 0x16

.field private static final ITEM_TITLE_HORIZONTAL_PADDING:I = 0x4

.field private static final ITEM_TITLE_VERTICAL_PADDING:I = 0x15

.field private static final LAST_ITEM_WIDTH_REDUNDANCY:I = 0x16

.field private static final MIDDLE_WIDTH_REDUNDANCY:I = 0x8

.field private static final ONLY_ONE_ITEM_WIDTH_REDUNDANCY:I = 0x24


# instance fields
.field private mBaseViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/view/IndicateMenuImpl$Callback;

.field private mContext:Landroid/content/Context;

.field private mIndicatorPadding:I

.field private mItemHeight:I

.field private mItemMaxWidth:I

.field private mItemMinWidth:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IndicateMenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuView:Landroid/view/IndicateMenuView;

.field private mResources:Landroid/content/res/Resources;

.field private mTextSize:F

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IndicateMenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v2, p0, Landroid/view/IndicateMenuImpl;->mIndicatorPadding:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/IndicateMenuImpl;->mItems:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/IndicateMenuImpl;->mVisibleItems:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/IndicateMenuImpl;->mBaseViewReference:Ljava/lang/ref/WeakReference;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/view/IndicateMenuImpl;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Landroid/view/IndicateMenuImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/view/IndicateMenuImpl;->mResources:Landroid/content/res/Resources;

    .line 62
    new-instance v0, Landroid/view/IndicateMenuView;

    invoke-direct {v0, p0}, Landroid/view/IndicateMenuView;-><init>(Landroid/view/IndicateMenuImpl;)V

    iput-object v0, p0, Landroid/view/IndicateMenuImpl;->mMenuView:Landroid/view/IndicateMenuView;

    .line 64
    const/16 v0, 0x14

    const/16 v1, 0xa0

    invoke-virtual {p0, v0, v2, v1, v2}, Landroid/view/IndicateMenuImpl;->setItemWidth(IZIZ)V

    .line 65
    const/high16 v0, 0x4180

    invoke-virtual {p0, v0}, Landroid/view/IndicateMenuImpl;->setTextSize(F)V

    .line 66
    return-void
.end method

.method private addInternal(IILjava/lang/CharSequence;)Landroid/view/IndicateMenuItem;
    .locals 3
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/view/IndicateMenuImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Landroid/view/IndicateMenuImpl$IllegalOperationException;

    const-string v2, "add"

    invoke-direct {v1, p0, v2}, Landroid/view/IndicateMenuImpl$IllegalOperationException;-><init>(Landroid/view/IndicateMenuImpl;Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    new-instance v0, Landroid/view/IndicateMenuItemImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/IndicateMenuItemImpl;-><init>(Landroid/view/IndicateMenuImpl;IILjava/lang/CharSequence;)V

    .line 114
    .local v0, item:Landroid/view/IndicateMenuItemImpl;
    iget-object v1, p0, Landroid/view/IndicateMenuImpl;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/IndicateMenuImpl;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, p2}, Landroid/view/IndicateMenuImpl;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 115
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/IndicateMenuImpl;->onItemsChanged(Z)V

    .line 117
    return-object v0
.end method

.method private close(Z)V
    .locals 3
    .parameter "clear"

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, doClose:Z
    invoke-virtual {p0}, Landroid/view/IndicateMenuImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Landroid/view/IndicateMenuImpl;->mMenuView:Landroid/view/IndicateMenuView;

    invoke-virtual {v2}, Landroid/view/IndicateMenuView;->dismiss()V

    .line 160
    const/4 v1, 0x1

    .line 163
    :cond_0
    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p0}, Landroid/view/IndicateMenuImpl;->clear()V

    .line 167
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/IndicateMenuImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 168
    invoke-virtual {p0}, Landroid/view/IndicateMenuImpl;->getCallback()Landroid/view/IndicateMenuImpl$Callback;

    move-result-object v0

    .line 169
    .local v0, callback:Landroid/view/IndicateMenuImpl$Callback;
    if-eqz v0, :cond_2

    .line 170
    invoke-interface {v0, p0}, Landroid/view/IndicateMenuImpl$Callback;->onCloseMenu(Landroid/view/IndicateMenuImpl;)V

    .line 173
    .end local v0           #callback:Landroid/view/IndicateMenuImpl$Callback;
    :cond_2
    return-void
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .parameter
    .parameter "ordering"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IndicateMenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/IndicateMenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 478
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IndicateMenuItemImpl;

    .line 479
    .local v1, item:Landroid/view/IndicateMenuItemImpl;
    invoke-virtual {v1}, Landroid/view/IndicateMenuItemImpl;->getOrder()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 480
    add-int/lit8 v2, v0, 0x1

    .line 484
    .end local v1           #item:Landroid/view/IndicateMenuItemImpl;
    :goto_1
    return v2

    .line 477
    .restart local v1       #item:Landroid/view/IndicateMenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 484
    .end local v1           #item:Landroid/view/IndicateMenuItemImpl;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getItemOriginalWidth(Landroid/view/IndicateMenuItemImpl;)I
    .locals 4
    .parameter "item"

    .prologue
    .line 396
    if-nez p1, :cond_0

    .line 397
    const/4 v2, 0x0

    .line 403
    :goto_0
    return v2

    .line 399
    :cond_0
    iget-object v2, p0, Landroid/view/IndicateMenuImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 401
    .local v1, scale:F
    invoke-virtual {p1}, Landroid/view/IndicateMenuItemImpl;->getTitleLength()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 403
    .local v0, itemLength:I
    add-int/lit8 v2, v0, 0x8

    goto :goto_0
.end method

.method private onItemsChanged(Z)V
    .locals 0
    .parameter "cleared"

    .prologue
    .line 473
    return-void
.end method


# virtual methods
.method public add(III)Landroid/view/IndicateMenuItem;
    .locals 1
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/view/IndicateMenuImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/IndicateMenuImpl;->addInternal(IILjava/lang/CharSequence;)Landroid/view/IndicateMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IILjava/lang/CharSequence;)Landroid/view/IndicateMenuItem;
    .locals 1
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/view/IndicateMenuImpl;->addInternal(IILjava/lang/CharSequence;)Landroid/view/IndicateMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(ILjava/lang/CharSequence;)Landroid/view/IndicateMenuItem;
    .locals 1
    .parameter "itemId"
    .parameter "title"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/IndicateMenuImpl;->add(IILjava/lang/CharSequence;)Landroid/view/IndicateMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public canBeAbove(I)Z
    .locals 1
    .parameter "y"

    .prologue
    .line 494
    iget-object v0, p0, Landroid/view/IndicateMenuImpl;->mMenuView:Landroid/view/IndicateMenuView;

    invoke-virtual {v0, p1}, Landroid/view/IndicateMenuView;->canBeAbove(I)Z

    move-result v0

    return v0
.end method

.method public canBeBelow(I)Z
    .locals 1
    .parameter "y"

    .prologue
    .line 504
    iget-object v0, p0, Landroid/view/IndicateMenuImpl;->mMenuView:Landroid/view/IndicateMenuView;

    invoke-virtual {v0, p1}, Landroid/view/IndicateMenuView;->canBeBelow(I)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/view/IndicateMenuImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Landroid/view/IndicateMenuImpl$IllegalOperationException;

    const-string v1, "clear"

    invoke-direct {v0, p0, v1}, Landroid/view/IndicateMenuImpl$IllegalOperationException;-><init>(Landroid/view/IndicateMenuImpl;Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/view/IndicateMenuImpl;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 128
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/IndicateMenuImpl;->onItemsChanged(Z)V

    .line 129
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/IndicateMenuImpl;->close(Z)V

    .line 154
    return-void
.end method

.method public findItem(I)Landroid/view/IndicateMenuItem;
    .locals 5
    .parameter "id"

    .prologue
    .line 209
    const/4 v3, 0x0

    .line 210
    .local v3, item:Landroid/view/IndicateMenuItem;
    invoke-virtual {p0}, Landroid/view/IndicateMenuImpl;->size()I

    move-result v1

    .line 211
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 212
    invoke-virtual {p0, v2}, Landroid/view/IndicateMenuImpl;->getItem(I)Landroid/view/IndicateMenuItem;

    move-result-object v0

    .line 213
    .local v0, childItem:Landroid/view/IndicateMenuItem;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/IndicateMenuItem;->getId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 214
    move-object v3, v0

    .line 218
    .end local v0           #childItem:Landroid/view/IndicateMenuItem;
    :cond_0
    return-object v3

    .line 211
    .restart local v0       #childItem:Landroid/view/IndicateMenuItem;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method getBaseView()Landroid/view/View;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/view/IndicateMenuImpl;->mBaseViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getCallback()Landroid/view/IndicateMenuImpl$Callback;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/view/IndicateMenuImpl;->mCallback:Landroid/view/IndicateMenuImpl$Callback;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Landroid/view/IndicateMenuImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIndicatorPadding()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Landroid/view/IndicateMenuImpl;->mIndicatorPadding:I

    return v0
.end method

.method public getItem(I)Landroid/view/IndicateMenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 224
    iget-object v0, p0, Landroid/view/IndicateMenuImpl;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IndicateMenuItem;

    return-object v0
.end method

.method getItemHeight(Landroid/view/IndicateMenuItemImpl;)I
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 335
    if-nez p1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v1

    .line 339
    :cond_1
    iget-object v2, p0, Landroid/view/IndicateMenuImpl;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 340
    .local v0, count:I
    if-lez v0, :cond_0

    .line 343
    iget v1, p0, Landroid/view/IndicateMenuImpl;->mItemHeight:I

    goto :goto_0
.end method

.method getItemSuggestedWidth(Landroid/view/IndicateMenuItemImpl;)I
    .locals 4
    .parameter "item"

    .prologue
    .line 384
    invoke-direct {p0, p1}, Landroid/view/IndicateMenuImpl;->getItemOriginalWidth(Landroid/view/IndicateMenuItemImpl;)I

    move-result v0

    .line 385
    .local v0, originalWidth:I
    if-gtz v0, :cond_0

    .line 386
    const/4 v1, 0x0

    .line 392
    :goto_0
    return v1

    .line 389
    :cond_0
    iget v2, p0, Landroid/view/IndicateMenuImpl;->mItemMaxWidth:I

    iget v3, p0, Landroid/view/IndicateMenuImpl;->mItemMinWidth:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 392
    .local v1, suggestedWidth:I
    goto :goto_0
.end method

.method getItemWidth(Landroid/view/IndicateMenuItemImpl;)I
    .locals 11
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/high16 v10, -0x8000

    .line 290
    if-nez p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v7

    .line 294
    :cond_1
    iget-object v8, p0, Landroid/view/IndicateMenuImpl;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 295
    .local v0, count:I
    if-lez v0, :cond_0

    .line 299
    const/high16 v1, -0x8000

    .local v1, firstVisble:I
    const/high16 v4, -0x8000

    .line 300
    .local v4, lastVisible:I
    const/high16 v3, -0x8000

    .line 301
    .local v3, itemIndex:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 302
    iget-object v8, p0, Landroid/view/IndicateMenuImpl;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/IndicateMenuItem;

    .line 303
    .local v5, menuItem:Landroid/view/IndicateMenuItem;
    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/view/IndicateMenuItem;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 304
    if-ne v1, v10, :cond_2

    .line 305
    move v1, v2

    .line 307
    :cond_2
    move v4, v2

    .line 309
    invoke-interface {v5}, Landroid/view/IndicateMenuItem;->getId()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/IndicateMenuItemImpl;->getId()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 310
    move v3, v2

    .line 301
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 315
    .end local v5           #menuItem:Landroid/view/IndicateMenuItem;
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/IndicateMenuImpl;->getItemSuggestedWidth(Landroid/view/IndicateMenuItemImpl;)I

    move-result v6

    .line 316
    .local v6, suggestWidth:I
    const/4 v7, 0x0

    .line 317
    .local v7, width:I
    if-eq v1, v10, :cond_5

    if-eq v4, v10, :cond_5

    if-ne v3, v10, :cond_6

    .line 320
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 321
    :cond_6
    if-ne v1, v4, :cond_7

    .line 322
    add-int/lit8 v7, v6, 0x24

    goto :goto_0

    .line 323
    :cond_7
    if-ne v1, v3, :cond_8

    .line 324
    add-int/lit8 v7, v6, 0x16

    goto :goto_0

    .line 325
    :cond_8
    if-ne v4, v3, :cond_9

    .line 326
    add-int/lit8 v7, v6, 0x16

    goto :goto_0

    .line 328
    :cond_9
    add-int/lit8 v7, v6, 0x8

    goto :goto_0
.end method

.method getRootMenu()Landroid/view/IndicateMenuImpl;
    .locals 0

    .prologue
    .line 422
    return-object p0
.end method

.method getTextSize()F
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Landroid/view/IndicateMenuImpl;->mTextSize:F

    return v0
.end method

.method getTotalItemHeight()I
    .locals 2

    .prologue
    .line 376
    iget-object v1, p0, Landroid/view/IndicateMenuImpl;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 377
    .local v0, count:I
    if-gtz v0, :cond_0

    .line 378
    const/4 v1, 0x0

    .line 380
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Landroid/view/IndicateMenuImpl;->mItemHeight:I

    goto :goto_0
.end method

.method getTotalItemWidth()I
    .locals 7

    .prologue
    .line 347
    iget-object v6, p0, Landroid/view/IndicateMenuImpl;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 348
    .local v0, count:I
    if-gtz v0, :cond_0

    .line 349
    const/4 v5, 0x0

    .line 372
    :goto_0
    return v5

    .line 352
    :cond_0
    const/4 v5, 0x0

    .line 353
    .local v5, width:I
    const/4 v4, 0x0

    .line 355
    .local v4, visibleCount:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 356
    iget-object v6, p0, Landroid/view/IndicateMenuImpl;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IndicateMenuItemImpl;

    .line 357
    .local v2, menuItem:Landroid/view/IndicateMenuItemImpl;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/IndicateMenuItemImpl;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 358
    add-int/lit8 v4, v4, 0x1

    .line 359
    invoke-virtual {p0, v2}, Landroid/view/IndicateMenuImpl;->getItemSuggestedWidth(Landroid/view/IndicateMenuItemImpl;)I

    move-result v3

    .line 360
    .local v3, suggestWidth:I
    add-int/2addr v5, v3

    .line 355
    .end local v3           #suggestWidth:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 364
    .end local v2           #menuItem:Landroid/view/IndicateMenuItemImpl;
    :cond_2
    if-gtz v4, :cond_3

    .line 365
    const/4 v5, 0x0

    goto :goto_0

    .line 366
    :cond_3
    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 367
    add-int/lit8 v5, v5, 0x24

    goto :goto_0

    .line 369
    :cond_4
    add-int/lit8 v6, v4, -0x2

    mul-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x2c

    add-int/2addr v5, v6

    goto :goto_0
.end method

.method getVisibleItems()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IndicateMenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v2, p0, Landroid/view/IndicateMenuImpl;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 280
    iget-object v2, p0, Landroid/view/IndicateMenuImpl;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IndicateMenuItemImpl;

    .line 281
    .local v1, item:Landroid/view/IndicateMenuItemImpl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/IndicateMenuItemImpl;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Landroid/view/IndicateMenuImpl;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    .end local v1           #item:Landroid/view/IndicateMenuItemImpl;
    :cond_1
    iget-object v2, p0, Landroid/view/IndicateMenuImpl;->mVisibleItems:Ljava/util/ArrayList;

    return-object v2
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/view/IndicateMenuImpl;->size()I

    move-result v2

    .line 232
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 233
    iget-object v3, p0, Landroid/view/IndicateMenuImpl;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IndicateMenuItem;

    .line 234
    .local v1, item:Landroid/view/IndicateMenuItem;
    invoke-interface {v1}, Landroid/view/IndicateMenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    const/4 v3, 0x1

    .line 239
    .end local v1           #item:Landroid/view/IndicateMenuItem;
    :goto_1
    return v3

    .line 232
    .restart local v1       #item:Landroid/view/IndicateMenuItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v1           #item:Landroid/view/IndicateMenuItem;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/view/IndicateMenuImpl;->mMenuView:Landroid/view/IndicateMenuView;

    invoke-virtual {v0}, Landroid/view/IndicateMenuView;->isShowing()Z

    move-result v0

    return v0
.end method

.method onItemEnabledChanged(Landroid/view/IndicateMenuItemImpl;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 413
    iget-object v0, p0, Landroid/view/IndicateMenuImpl;->mMenuView:Landroid/view/IndicateMenuView;

    invoke-virtual {v0, p1}, Landroid/view/IndicateMenuView;->update(Landroid/view/IndicateMenuItem;)V

    .line 414
    return-void
.end method

.method onItemVisibleChanged(Landroid/view/IndicateMenuItemImpl;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 407
    invoke-virtual {p0}, Landroid/view/IndicateMenuImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Landroid/view/IndicateMenuImpl$IllegalOperationException;

    const-string/jumbo v1, "setVisible"

    invoke-direct {v0, p0, v1}, Landroid/view/IndicateMenuImpl$IllegalOperationException;-><init>(Landroid/view/IndicateMenuImpl;Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    return-void
.end method

.method public open()V
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/view/IndicateMenuImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Landroid/view/IndicateMenuImpl;->mMenuView:Landroid/view/IndicateMenuView;

    invoke-virtual {v1}, Landroid/view/IndicateMenuView;->refresh()V

    .line 141
    iget-object v1, p0, Landroid/view/IndicateMenuImpl;->mMenuView:Landroid/view/IndicateMenuView;

    invoke-virtual {v1}, Landroid/view/IndicateMenuView;->show()V

    .line 143
    invoke-virtual {p0}, Landroid/view/IndicateMenuImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/view/IndicateMenuImpl;->getCallback()Landroid/view/IndicateMenuImpl$Callback;

    move-result-object v0

    .line 145
    .local v0, callback:Landroid/view/IndicateMenuImpl$Callback;
    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p0}, Landroid/view/IndicateMenuImpl$Callback;->onOpenMenu(Landroid/view/IndicateMenuImpl;)V

    goto :goto_0
.end method

.method performItemAction(Landroid/view/IndicateMenuItem;I)Z
    .locals 5
    .parameter "item"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 69
    move-object v2, p1

    check-cast v2, Landroid/view/IndicateMenuItemImpl;

    .line 71
    .local v2, itemImpl:Landroid/view/IndicateMenuItemImpl;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/IndicateMenuItemImpl;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    and-int/lit8 v3, p2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    const/4 v0, 0x1

    .line 76
    .local v0, clear:Z
    :goto_1
    and-int/lit8 v3, p2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 77
    invoke-direct {p0, v0}, Landroid/view/IndicateMenuImpl;->close(Z)V

    .line 82
    :cond_2
    :goto_2
    invoke-virtual {v2}, Landroid/view/IndicateMenuItemImpl;->invoke()Z

    move-result v1

    .line 84
    .local v1, invoked:Z
    goto :goto_0

    .end local v0           #clear:Z
    .end local v1           #invoked:Z
    :cond_3
    move v0, v1

    .line 75
    goto :goto_1

    .line 78
    .restart local v0       #clear:Z
    :cond_4
    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_2

    .line 79
    invoke-direct {p0, v0}, Landroid/view/IndicateMenuImpl;->close(Z)V

    goto :goto_2
.end method

.method public remove(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/view/IndicateMenuImpl;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    new-instance v4, Landroid/view/IndicateMenuImpl$IllegalOperationException;

    const-string/jumbo v5, "remove"

    invoke-direct {v4, p0, v5}, Landroid/view/IndicateMenuImpl$IllegalOperationException;-><init>(Landroid/view/IndicateMenuImpl;Ljava/lang/String;)V

    throw v4

    .line 249
    :cond_0
    const/4 v3, -0x1

    .line 250
    .local v3, index:I
    invoke-virtual {p0}, Landroid/view/IndicateMenuImpl;->size()I

    move-result v1

    .line 251
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 252
    invoke-virtual {p0, v2}, Landroid/view/IndicateMenuImpl;->getItem(I)Landroid/view/IndicateMenuItem;

    move-result-object v0

    .line 253
    .local v0, childItem:Landroid/view/IndicateMenuItem;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/view/IndicateMenuItem;->getId()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 254
    move v3, v2

    .line 259
    .end local v0           #childItem:Landroid/view/IndicateMenuItem;
    :cond_1
    const/4 v4, -0x1

    if-eq v4, v3, :cond_2

    .line 260
    iget-object v4, p0, Landroid/view/IndicateMenuImpl;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 261
    :cond_2
    return-void

    .line 251
    .restart local v0       #childItem:Landroid/view/IndicateMenuItem;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 531
    iget-object v0, p0, Landroid/view/IndicateMenuImpl;->mMenuView:Landroid/view/IndicateMenuView;

    invoke-virtual {v0, p1}, Landroid/view/IndicateMenuView;->setAnimationStyle(I)V

    .line 532
    return-void
.end method

.method public setCallback(Landroid/view/IndicateMenuImpl$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 426
    iput-object p1, p0, Landroid/view/IndicateMenuImpl;->mCallback:Landroid/view/IndicateMenuImpl$Callback;

    .line 427
    return-void
.end method

.method public setIndicateVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 203
    iget-object v0, p0, Landroid/view/IndicateMenuImpl;->mMenuView:Landroid/view/IndicateMenuView;

    invoke-virtual {v0, p1}, Landroid/view/IndicateMenuView;->setIndicatorVisible(Z)V

    .line 204
    return-void
.end method

.method public setIndicatorPadding(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 514
    iput p1, p0, Landroid/view/IndicateMenuImpl;->mIndicatorPadding:I

    .line 515
    return-void
.end method

.method public setItemWidth(IZIZ)V
    .locals 4
    .parameter "minWidth"
    .parameter "minRaw"
    .parameter "maxWidth"
    .parameter "maxRaw"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f00

    .line 535
    invoke-virtual {p0}, Landroid/view/IndicateMenuImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    new-instance v0, Landroid/view/IndicateMenuImpl$IllegalOperationException;

    const-string/jumbo v1, "setItemWidth"

    invoke-direct {v0, p0, v1}, Landroid/view/IndicateMenuImpl$IllegalOperationException;-><init>(Landroid/view/IndicateMenuImpl;Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    if-nez p2, :cond_1

    .line 540
    int-to-float v0, p1

    iget-object v1, p0, Landroid/view/IndicateMenuImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int p1, v0

    .line 543
    :cond_1
    if-nez p4, :cond_2

    .line 544
    int-to-float v0, p3

    iget-object v1, p0, Landroid/view/IndicateMenuImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int p3, v0

    .line 547
    :cond_2
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/view/IndicateMenuImpl;->mItemMinWidth:I

    .line 548
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/view/IndicateMenuImpl;->mItemMaxWidth:I

    .line 550
    iget v0, p0, Landroid/view/IndicateMenuImpl;->mItemMinWidth:I

    if-gez v0, :cond_3

    .line 551
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/IndicateMenuImpl;->mItemMinWidth:I

    .line 553
    :cond_3
    return-void
.end method

.method public setRawTextSize(F)V
    .locals 3
    .parameter "rawTextSize"

    .prologue
    .line 580
    iget-object v2, p0, Landroid/view/IndicateMenuImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 581
    .local v0, scale:F
    div-float v1, p1, v0

    .line 582
    .local v1, textSize:F
    invoke-virtual {p0, v1}, Landroid/view/IndicateMenuImpl;->setTextSize(F)V

    .line 583
    return-void
.end method

.method public setTextSize(F)V
    .locals 7
    .parameter "textSize"

    .prologue
    .line 556
    invoke-virtual {p0}, Landroid/view/IndicateMenuImpl;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 557
    new-instance v5, Landroid/view/IndicateMenuImpl$IllegalOperationException;

    const-string/jumbo v6, "setTextSize"

    invoke-direct {v5, p0, v6}, Landroid/view/IndicateMenuImpl$IllegalOperationException;-><init>(Landroid/view/IndicateMenuImpl;Ljava/lang/String;)V

    throw v5

    .line 559
    :cond_0
    iget v5, p0, Landroid/view/IndicateMenuImpl;->mTextSize:F

    cmpl-float v5, v5, p1

    if-nez v5, :cond_2

    .line 577
    :cond_1
    return-void

    .line 562
    :cond_2
    iput p1, p0, Landroid/view/IndicateMenuImpl;->mTextSize:F

    .line 564
    const/4 v5, 0x2

    iget-object v6, p0, Landroid/view/IndicateMenuImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v5, p1, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 566
    .local v4, paintTextSize:F
    invoke-static {}, Landroid/view/IndicateMenuItemImpl;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 567
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 568
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 569
    .local v0, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v6, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/lit8 v5, v5, 0x2a

    iput v5, p0, Landroid/view/IndicateMenuImpl;->mItemHeight:I

    .line 572
    iget-object v5, p0, Landroid/view/IndicateMenuImpl;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IndicateMenuItemImpl;

    .line 573
    .local v2, item:Landroid/view/IndicateMenuItemImpl;
    if-eqz v2, :cond_3

    .line 574
    invoke-virtual {v2}, Landroid/view/IndicateMenuItemImpl;->onTextSizeChanged()V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Landroid/view/IndicateMenuImpl;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public updatePosition(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/IndicateMenuImpl;->updatePosition(IILandroid/view/IndicateMenuImpl$Position;)V

    .line 191
    return-void
.end method

.method public updatePosition(IILandroid/view/IndicateMenuImpl$Position;)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "position"

    .prologue
    .line 199
    iget-object v0, p0, Landroid/view/IndicateMenuImpl;->mMenuView:Landroid/view/IndicateMenuView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/IndicateMenuView;->updatePosition(IILandroid/view/IndicateMenuImpl$Position;)V

    .line 200
    return-void
.end method

.method public updatePositon(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 181
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/IndicateMenuImpl;->updatePosition(II)V

    .line 182
    return-void
.end method
