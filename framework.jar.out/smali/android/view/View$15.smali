.class Landroid/view/View$15;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 16244
    iput-object p1, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 16249
    iget-object v2, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    iget-object v3, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mIndicateMenuStarter:Ljava/lang/Runnable;
    invoke-static {v3}, Landroid/view/View;->access$3500(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16251
    iget-object v2, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mMagnifierX:I
    invoke-static {v2}, Landroid/view/View;->access$3600(Landroid/view/View;)I

    move-result v0

    .local v0, x:I
    iget-object v2, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mMagnifierY:I
    invoke-static {v2}, Landroid/view/View;->access$3700(Landroid/view/View;)I

    move-result v1

    .line 16253
    .local v1, y:I
    iget-object v2, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->showIndicateMenuAfresh(II)V

    .line 16254
    return-void
.end method
