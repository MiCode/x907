.class Loppo/internal/app/OppoListActivity$1;
.super Ljava/lang/Object;
.source "OppoListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loppo/internal/app/OppoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Loppo/internal/app/OppoListActivity;


# direct methods
.method constructor <init>(Loppo/internal/app/OppoListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Loppo/internal/app/OppoListActivity$1;->this$0:Loppo/internal/app/OppoListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Loppo/internal/app/OppoListActivity$1;->this$0:Loppo/internal/app/OppoListActivity;

    iget-object v0, v0, Loppo/internal/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoMultiListView;

    iget-object v1, p0, Loppo/internal/app/OppoListActivity$1;->this$0:Loppo/internal/app/OppoListActivity;

    iget-object v1, v1, Loppo/internal/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoMultiListView;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoMultiListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 46
    return-void
.end method
