.class public Loppo/internal/app/OppoListActivity;
.super Landroid/app/Activity;
.source "OppoListActivity.java"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field protected mList:Lcom/oppo/widget/OppoMultiListView;

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Loppo/internal/app/OppoListActivity;->mHandler:Landroid/os/Handler;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Loppo/internal/app/OppoListActivity;->mFinishedStart:Z

    .line 43
    new-instance v0, Loppo/internal/app/OppoListActivity$1;

    invoke-direct {v0, p0}, Loppo/internal/app/OppoListActivity$1;-><init>(Loppo/internal/app/OppoListActivity;)V

    iput-object v0, p0, Loppo/internal/app/OppoListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 169
    new-instance v0, Loppo/internal/app/OppoListActivity$2;

    invoke-direct {v0, p0}, Loppo/internal/app/OppoListActivity$2;-><init>(Loppo/internal/app/OppoListActivity;)V

    iput-object v0, p0, Loppo/internal/app/OppoListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Loppo/internal/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoMultiListView;

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const v0, 0x1090094

    invoke-virtual {p0, v0}, Loppo/internal/app/OppoListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Loppo/internal/app/OppoListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Loppo/internal/app/OppoListActivity;->ensureList()V

    .line 151
    iget-object v0, p0, Loppo/internal/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoMultiListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Loppo/internal/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoMultiListView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoMultiListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Loppo/internal/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoMultiListView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoMultiListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 93
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Loppo/internal/app/OppoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Loppo/internal/app/OppoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoMultiListView;

    iput-object v1, p0, Loppo/internal/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoMultiListView;

    .line 95
    iget-object v1, p0, Loppo/internal/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoMultiListView;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a OppoSpringListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_0
    if-eqz v0, :cond_1

    .line 101
    iget-object v1, p0, Loppo/internal/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoMultiListView;

    invoke-virtual {v1, v0}, Lcom/oppo/widget/OppoMultiListView;->setEmptyView(Landroid/view/View;)V

    .line 103
    :cond_1
    iget-object v1, p0, Loppo/internal/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoMultiListView;

    iget-object v2, p0, Loppo/internal/app/OppoListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoMultiListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    iget-boolean v1, p0, Loppo/internal/app/OppoListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Loppo/internal/app/OppoListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Loppo/internal/app/OppoListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    :cond_2
    iget-object v1, p0, Loppo/internal/app/OppoListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Loppo/internal/app/OppoListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Loppo/internal/app/OppoListActivity;->mFinishedStart:Z

    .line 109
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Loppo/internal/app/OppoListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Loppo/internal/app/OppoListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 82
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 61
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 71
    invoke-direct {p0}, Loppo/internal/app/OppoListActivity;->ensureList()V

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    invoke-direct {p0}, Loppo/internal/app/OppoListActivity;->ensureList()V

    .line 117
    iput-object p1, p0, Loppo/internal/app/OppoListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 118
    iget-object v0, p0, Loppo/internal/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoMultiListView;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoMultiListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    monitor-exit p0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 129
    iget-object v0, p0, Loppo/internal/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoMultiListView;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoMultiListView;->setSelection(I)V

    .line 130
    return-void
.end method
