.class Landroid/view/View$2;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/view/IndicateMenuImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 3177
    iput-object p1, p0, Landroid/view/View$2;->this$0:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/view/IndicateMenuImpl;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 3187
    iget-object v0, p0, Landroid/view/View$2;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->onHideIndicateMenu()V

    .line 3188
    return-void
.end method

.method public onMenuItemSelected(Landroid/view/IndicateMenuImpl;Landroid/view/IndicateMenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 3180
    const/4 v0, 0x0

    return v0
.end method

.method public onOpenMenu(Landroid/view/IndicateMenuImpl;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 3184
    return-void
.end method
