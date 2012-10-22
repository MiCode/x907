.class Lcom/oppo/preference/OppoPreferenceActivity$1;
.super Landroid/os/Handler;
.source "OppoPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/preference/OppoPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/preference/OppoPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/oppo/preference/OppoPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 172
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    #calls: Lcom/oppo/preference/OppoPreferenceActivity;->bindPreferences()V
    invoke-static {v3}, Lcom/oppo/preference/OppoPreferenceActivity;->access$000(Lcom/oppo/preference/OppoPreferenceActivity;)V

    goto :goto_0

    .line 177
    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    #getter for: Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/oppo/preference/OppoPreferenceActivity;->access$100(Lcom/oppo/preference/OppoPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    .local v2, oldHeaders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/preference/OppoPreferenceActivity$Header;>;"
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    #getter for: Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/oppo/preference/OppoPreferenceActivity;->access$100(Lcom/oppo/preference/OppoPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 179
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    iget-object v4, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    #getter for: Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/oppo/preference/OppoPreferenceActivity;->access$100(Lcom/oppo/preference/OppoPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/preference/OppoPreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 180
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    #getter for: Loppo/internal/app/OppoListActivity;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/oppo/preference/OppoPreferenceActivity;->access$200(Lcom/oppo/preference/OppoPreferenceActivity;)Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_1

    .line 181
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    #getter for: Loppo/internal/app/OppoListActivity;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/oppo/preference/OppoPreferenceActivity;->access$300(Lcom/oppo/preference/OppoPreferenceActivity;)Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 183
    :cond_1
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    invoke-virtual {v3}, Lcom/oppo/preference/OppoPreferenceActivity;->onGetNewHeader()Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-result-object v0

    .line 184
    .local v0, header:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 185
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    invoke-virtual {v3, v0, v2}, Lcom/oppo/preference/OppoPreferenceActivity;->findBestMatchingHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-result-object v1

    .line 186
    .local v1, mappedHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    #getter for: Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    invoke-static {v3}, Lcom/oppo/preference/OppoPreferenceActivity;->access$400(Lcom/oppo/preference/OppoPreferenceActivity;)Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 187
    :cond_2
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    invoke-virtual {v3, v0}, Lcom/oppo/preference/OppoPreferenceActivity;->switchToHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V

    goto :goto_0

    .line 189
    .end local v1           #mappedHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    :cond_3
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    #getter for: Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    invoke-static {v3}, Lcom/oppo/preference/OppoPreferenceActivity;->access$400(Lcom/oppo/preference/OppoPreferenceActivity;)Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    iget-object v4, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    #getter for: Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    invoke-static {v4}, Lcom/oppo/preference/OppoPreferenceActivity;->access$400(Lcom/oppo/preference/OppoPreferenceActivity;)Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    #getter for: Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/oppo/preference/OppoPreferenceActivity;->access$100(Lcom/oppo/preference/OppoPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oppo/preference/OppoPreferenceActivity;->findBestMatchingHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-result-object v1

    .line 191
    .restart local v1       #mappedHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    if-eqz v1, :cond_0

    .line 192
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity$1;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    invoke-virtual {v3, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->setSelectedHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
