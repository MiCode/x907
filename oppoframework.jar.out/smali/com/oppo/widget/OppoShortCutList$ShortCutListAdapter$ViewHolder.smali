.class Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "OppoShortCutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field text:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;->this$1:Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
