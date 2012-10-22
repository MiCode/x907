.class Landroid/widget/ListView$1;
.super Landroid/os/Handler;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .parameter

    .prologue
    .line 3762
    iput-object p1, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 3764
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3779
    :cond_0
    :goto_0
    return-void

    .line 3766
    :pswitch_0
    iget-object v0, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    #getter for: Landroid/widget/ListView;->mDialog:Lcom/oppo/widget/OppoFloatWindow;
    invoke-static {v0}, Landroid/widget/ListView;->access$200(Landroid/widget/ListView;)Lcom/oppo/widget/OppoFloatWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3767
    iget-object v0, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    #getter for: Landroid/widget/ListView;->mDialog:Lcom/oppo/widget/OppoFloatWindow;
    invoke-static {v0}, Landroid/widget/ListView;->access$200(Landroid/widget/ListView;)Lcom/oppo/widget/OppoFloatWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/widget/OppoFloatWindow;->dismiss()V

    .line 3768
    iget-object v0, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    #setter for: Landroid/widget/ListView;->mDialog:Lcom/oppo/widget/OppoFloatWindow;
    invoke-static {v0, v1}, Landroid/widget/ListView;->access$202(Landroid/widget/ListView;Lcom/oppo/widget/OppoFloatWindow;)Lcom/oppo/widget/OppoFloatWindow;

    .line 3771
    iget-object v0, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 3772
    iget-object v0, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    iput-object v1, v0, Landroid/widget/AbsListView;->mBitmap:Landroid/graphics/Bitmap;

    .line 3775
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0

    .line 3764
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
