.class Lcom/oppo/widget/OppoShortCutList$ShortCutListClickListener;
.super Ljava/lang/Object;
.source "OppoShortCutList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoShortCutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortCutListClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoShortCutList;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoShortCutList;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutList$ShortCutListClickListener;->this$0:Lcom/oppo/widget/OppoShortCutList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoShortCutList;Lcom/oppo/widget/OppoShortCutList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoShortCutList$ShortCutListClickListener;-><init>(Lcom/oppo/widget/OppoShortCutList;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList$ShortCutListClickListener;->this$0:Lcom/oppo/widget/OppoShortCutList;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, p3, p2, v1}, Lcom/oppo/widget/OppoShortCutList;->selectShortCutList(ILandroid/view/View;I)V

    .line 408
    return-void
.end method
