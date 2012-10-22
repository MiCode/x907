.class Landroid/view/IndicateMenuView$ItemRecycleBin;
.super Ljava/lang/Object;
.source "IndicateMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IndicateMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemRecycleBin"
.end annotation


# instance fields
.field mBin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IndicateMenuView$MenuItemView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/IndicateMenuView;


# direct methods
.method private constructor <init>(Landroid/view/IndicateMenuView;)V
    .locals 1
    .parameter

    .prologue
    .line 1024
    iput-object p1, p0, Landroid/view/IndicateMenuView$ItemRecycleBin;->this$0:Landroid/view/IndicateMenuView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/IndicateMenuView$ItemRecycleBin;->mBin:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/IndicateMenuView;Landroid/view/IndicateMenuView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1024
    invoke-direct {p0, p1}, Landroid/view/IndicateMenuView$ItemRecycleBin;-><init>(Landroid/view/IndicateMenuView;)V

    return-void
.end method

.method private makeNewView()Landroid/view/IndicateMenuView$MenuItemView;
    .locals 3

    .prologue
    .line 1048
    new-instance v0, Landroid/view/IndicateMenuView$MenuItemView;

    iget-object v1, p0, Landroid/view/IndicateMenuView$ItemRecycleBin;->this$0:Landroid/view/IndicateMenuView;

    iget-object v2, p0, Landroid/view/IndicateMenuView$ItemRecycleBin;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v2}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/IndicateMenuImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/IndicateMenuView$MenuItemView;-><init>(Landroid/view/IndicateMenuView;Landroid/content/Context;)V

    .line 1049
    .local v0, view:Landroid/view/IndicateMenuView$MenuItemView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/IndicateMenuView$MenuItemView;->setClickable(Z)V

    .line 1051
    return-object v0
.end method


# virtual methods
.method public declared-synchronized pop()Landroid/view/IndicateMenuView$MenuItemView;
    .locals 4

    .prologue
    .line 1028
    monitor-enter p0

    const/4 v1, 0x0

    .line 1029
    .local v1, view:Landroid/view/IndicateMenuView$MenuItemView;
    :try_start_0
    iget-object v2, p0, Landroid/view/IndicateMenuView$ItemRecycleBin;->mBin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1030
    iget-object v2, p0, Landroid/view/IndicateMenuView$ItemRecycleBin;->mBin:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/view/IndicateMenuView$ItemRecycleBin;->mBin:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/IndicateMenuView$MenuItemView;

    move-object v1, v0

    .line 1031
    iget-object v2, p0, Landroid/view/IndicateMenuView$ItemRecycleBin;->mBin:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/view/IndicateMenuView$ItemRecycleBin;->mBin:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1033
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/view/IndicateMenuView$ItemRecycleBin;->makeNewView()Landroid/view/IndicateMenuView$MenuItemView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1028
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized push(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1040
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    instance-of v0, p1, Landroid/view/IndicateMenuView$MenuItemView;

    if-eqz v0, :cond_0

    .line 1041
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1042
    iget-object v0, p0, Landroid/view/IndicateMenuView$ItemRecycleBin;->mBin:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    iget-object v0, p0, Landroid/view/IndicateMenuView$ItemRecycleBin;->mBin:Ljava/util/ArrayList;

    check-cast p1, Landroid/view/IndicateMenuView$MenuItemView;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    :cond_0
    monitor-exit p0

    return-void

    .line 1040
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
