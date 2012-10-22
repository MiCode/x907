.class public Lcom/oppo/widget/OppoSpringListView;
.super Landroid/widget/ScrollView;
.source "OppoSpringListView.java"


# static fields
.field private static final FP:I = -0x1

.field private static final WC:I = -0x2


# instance fields
.field private listviewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mListView:Landroid/widget/ListView;

.field private scrollHight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoSpringListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoSpringListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x1

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoSpringListView;->scrollHight:I

    .line 27
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->listviewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 42
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 43
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    .line 44
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oppo/widget/OppoSpringListView;->listviewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSpringListView;->addView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSpringListView;->setListView(Landroid/widget/ListView;)V

    .line 47
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 152
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 156
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 144
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 148
    return-void
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v0

    return v0
.end method

.method public getChildListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFrontBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSpringListView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollHight(I)V

    .line 160
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 161
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 77
    return-void
.end method

.method protected setDefaultBackground()V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSpringListView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSpringListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSpringListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :cond_0
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "divider"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 93
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .parameter "emptyView"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public setFrontBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 81
    return-void
.end method

.method public setFrontBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method

.method public setFrontBackgroundResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 89
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 2
    .parameter "listview"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    .line 62
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOppoSpringListViewFlag(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSpringListView;->removeAllViews()V

    .line 64
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSpringListView;->addView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 119
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 140
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oppo/widget/OppoSpringListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 127
    return-void
.end method
