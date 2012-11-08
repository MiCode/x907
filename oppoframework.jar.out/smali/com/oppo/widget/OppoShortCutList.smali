.class public Lcom/oppo/widget/OppoShortCutList;
.super Landroid/app/Dialog;
.source "OppoShortCutList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoShortCutList$1;,
        Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;,
        Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;,
        Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;,
        Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;,
        Lcom/oppo/widget/OppoShortCutList$ShortCutListClickListener;,
        Lcom/oppo/widget/OppoShortCutList$SubMultiListView;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoShortCutList"


# instance fields
.field private mAdapter:Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;

.field private mContext:Landroid/content/Context;

.field private mFirBg:Landroid/graphics/drawable/Drawable;

.field private mLastBg:Landroid/graphics/drawable/Drawable;

.field private mListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;

.field private mMidBg:Landroid/graphics/drawable/Drawable;

.field private mOnlyBg:Landroid/graphics/drawable/Drawable;

.field private mShortCutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShortCutItemSelectedListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;

.field private mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

.field private mTransBg:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 63
    const v0, 0x10302ad

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 50
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mAdapter:Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;

    .line 57
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mFirBg:Landroid/graphics/drawable/Drawable;

    .line 58
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mMidBg:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mLastBg:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mOnlyBg:Landroid/graphics/drawable/Drawable;

    .line 61
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mTransBg:Landroid/graphics/drawable/Drawable;

    .line 64
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutList;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoShortCutList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private setAdapter(Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutList;->mAdapter:Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mAdapter:Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    return-void
.end method


# virtual methods
.method public addShortCutItem(IIILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "id"
    .parameter "res"
    .parameter "label"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    invoke-direct {v1, p2, p3, p4}, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addShortCutItem(IILjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "res"
    .parameter "label"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    invoke-direct {v1, p1, p2, p3}, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public addShortCutItem(ILjava/lang/String;)V
    .locals 2
    .parameter "res"
    .parameter "label"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    invoke-direct {v1, p1, p2}, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public clearShortCutItem()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public getIdByIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 303
    :cond_0
    const/4 v0, -0x1

    .line 305
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->getId()I

    move-result v0

    goto :goto_0
.end method

.method public getIndexById(I)I
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, -0x1

    .line 289
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    move v0, v3

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 293
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 294
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->getId()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v3

    .line 298
    goto :goto_0
.end method

.method public getOnShortCutListItemSelectedListener()Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemSelectedListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;

    return-object v0
.end method

.method public getOnShortCutListSelectedListener()Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;

    return-object v0
.end method

.method public getShortCutItem(I)Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    .line 285
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShortCutItemEnabled(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    iget-boolean v0, v0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->enabled:Z

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShortCutListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutList;->cancel()V

    .line 226
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x106000d

    const/4 v5, -0x1

    .line 86
    const v2, 0x10900e4

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoShortCutList;->setContentView(I)V

    .line 87
    const v2, 0x102040f

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoShortCutList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    iput-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    .line 88
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    new-instance v3, Lcom/oppo/widget/OppoShortCutList$ShortCutListClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/oppo/widget/OppoShortCutList$ShortCutListClickListener;-><init>(Lcom/oppo/widget/OppoShortCutList;Lcom/oppo/widget/OppoShortCutList$1;)V

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->setFocusable(Z)V

    .line 93
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->setOverScrollMode(I)V

    .line 94
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    invoke-virtual {v2, v6}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->setBackgroundColor(I)V

    .line 95
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    invoke-virtual {v2, v6}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->setItemID(I)V

    .line 97
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutList;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 98
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 99
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 103
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 105
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 133
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 150
    .end local v0           #handled:Z
    :goto_0
    return v0

    .line 146
    .restart local v0       #handled:Z
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutList;->cancel()V

    .line 148
    const/4 v0, 0x1

    goto :goto_0

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 110
    new-instance v0, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;-><init>(Lcom/oppo/widget/OppoShortCutList;Landroid/content/Context;)V

    .line 111
    .local v0, adapter:Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoShortCutList;->setAdapter(Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;)V

    .line 112
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoShortCutList;->setAdapter(Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;)V

    .line 117
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 118
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutList;->cancel()V

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeShortCutItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected selectShortCutList(ILandroid/view/View;I)V
    .locals 1
    .parameter "index"
    .parameter "view"
    .parameter "id"

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoShortCutList;->getShortCutItemEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutList;->dismiss()V

    .line 247
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;

    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;->onShortCutListSelected(I)V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemSelectedListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemSelectedListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;->onShortCutListItemSelected(ILandroid/view/View;I)V

    goto :goto_0
.end method

.method public setOnShortCutListItemSelectedListener(Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemSelectedListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;

    .line 77
    return-void
.end method

.method public setOnShortCutListSelectedListener(Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutList;->mListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;

    .line 69
    return-void
.end method

.method public setShortCutItem(IIILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "id"
    .parameter "res"
    .parameter "label"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    .line 191
    .local v0, mItem:Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;
    invoke-virtual {v0, p2}, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->setId(I)V

    .line 192
    invoke-virtual {v0, p3}, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->setDrawableResource(I)V

    .line 193
    invoke-virtual {v0, p4}, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setShortCutItemEnabled(IZ)V
    .locals 1
    .parameter "index"
    .parameter "enable"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    iput-boolean p2, v0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->enabled:Z

    .line 268
    :cond_0
    return-void
.end method

.method public setShortCutListView(Lcom/oppo/widget/OppoShortCutList$SubMultiListView;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    .line 311
    return-void
.end method
