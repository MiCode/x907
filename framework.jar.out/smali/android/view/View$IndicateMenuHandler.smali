.class public Landroid/view/View$IndicateMenuHandler;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/view/IndicateMenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IndicateMenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 16482
    iput-object p1, p0, Landroid/view/View$IndicateMenuHandler;->this$0:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/IndicateMenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 16484
    iget-object v0, p0, Landroid/view/View$IndicateMenuHandler;->this$0:Landroid/view/View;

    invoke-interface {p1}, Landroid/view/IndicateMenuItem;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->onTextIndicateMenuItem(I)Z

    move-result v0

    return v0
.end method
