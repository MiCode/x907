.class Landroid/view/View$MagnifierController$1;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View$MagnifierController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/View$MagnifierController;


# direct methods
.method constructor <init>(Landroid/view/View$MagnifierController;)V
    .locals 0
    .parameter

    .prologue
    .line 16075
    iput-object p1, p0, Landroid/view/View$MagnifierController$1;->this$1:Landroid/view/View$MagnifierController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 16077
    iget-object v0, p0, Landroid/view/View$MagnifierController$1;->this$1:Landroid/view/View$MagnifierController;

    invoke-virtual {v0}, Landroid/view/View$MagnifierController;->hide()V

    .line 16078
    return-void
.end method
