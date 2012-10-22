.class Landroid/view/IndicateMenuView$MenuView$1;
.super Ljava/lang/Object;
.source "IndicateMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IndicateMenuView$MenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/IndicateMenuView$MenuView;


# direct methods
.method constructor <init>(Landroid/view/IndicateMenuView$MenuView;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Landroid/view/IndicateMenuView$MenuView$1;->this$1:Landroid/view/IndicateMenuView$MenuView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView$1;->this$1:Landroid/view/IndicateMenuView$MenuView;

    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuView$1;->this$1:Landroid/view/IndicateMenuView$MenuView;

    #getter for: Landroid/view/IndicateMenuView$MenuView;->mShowRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/view/IndicateMenuView$MenuView;->access$100(Landroid/view/IndicateMenuView$MenuView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/IndicateMenuView$MenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 213
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuView$1;->this$1:Landroid/view/IndicateMenuView$MenuView;

    #calls: Landroid/view/IndicateMenuView$MenuView;->showImmediately()V
    invoke-static {v0}, Landroid/view/IndicateMenuView$MenuView;->access$200(Landroid/view/IndicateMenuView$MenuView;)V

    .line 214
    return-void
.end method
