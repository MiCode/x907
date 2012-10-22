.class Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;
.super Ljava/lang/Object;
.source "IndicateMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IndicateMenuView$DrawableRecyleBin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawableType"
.end annotation


# instance fields
.field Data:Landroid/graphics/drawable/Drawable;

.field Type:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

.field final synthetic this$1:Landroid/view/IndicateMenuView$DrawableRecyleBin;


# direct methods
.method public constructor <init>(Landroid/view/IndicateMenuView$DrawableRecyleBin;Landroid/view/IndicateMenuView$DRAWABLE_TYPE;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "data"

    .prologue
    .line 1139
    iput-object p1, p0, Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;->this$1:Landroid/view/IndicateMenuView$DrawableRecyleBin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    iput-object p2, p0, Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;->Type:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    .line 1141
    iput-object p3, p0, Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;->Data:Landroid/graphics/drawable/Drawable;

    .line 1142
    return-void
.end method
