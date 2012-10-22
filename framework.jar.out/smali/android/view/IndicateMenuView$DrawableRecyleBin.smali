.class Landroid/view/IndicateMenuView$DrawableRecyleBin;
.super Ljava/lang/Object;
.source "IndicateMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IndicateMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawableRecyleBin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;
    }
.end annotation


# instance fields
.field mAvailableDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mTotalDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/IndicateMenuView;


# direct methods
.method public constructor <init>(Landroid/view/IndicateMenuView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1065
    iput-object p1, p0, Landroid/view/IndicateMenuView$DrawableRecyleBin;->this$0:Landroid/view/IndicateMenuView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/IndicateMenuView$DrawableRecyleBin;->mTotalDrawables:Ljava/util/ArrayList;

    .line 1061
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/IndicateMenuView$DrawableRecyleBin;->mAvailableDrawables:Ljava/util/ArrayList;

    .line 1066
    iput-object p2, p0, Landroid/view/IndicateMenuView$DrawableRecyleBin;->mContext:Landroid/content/Context;

    .line 1067
    return-void
.end method

.method private makeNewDrawable(Landroid/view/IndicateMenuView$DRAWABLE_TYPE;)Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;
    .locals 5
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 1103
    if-nez p1, :cond_1

    .line 1132
    :cond_0
    :goto_0
    return-object v2

    .line 1107
    :cond_1
    const/4 v1, 0x0

    .line 1108
    .local v1, id:I
    sget-object v3, Landroid/view/IndicateMenuView$1;->$SwitchMap$android$view$IndicateMenuView$DRAWABLE_TYPE:[I

    invoke-virtual {p1}, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1126
    :goto_1
    if-eqz v1, :cond_0

    .line 1130
    iget-object v2, p0, Landroid/view/IndicateMenuView$DrawableRecyleBin;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1132
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;

    invoke-direct {v2, p0, p1, v0}, Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;-><init>(Landroid/view/IndicateMenuView$DrawableRecyleBin;Landroid/view/IndicateMenuView$DRAWABLE_TYPE;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1110
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    const v1, 0x10804a9

    .line 1111
    goto :goto_1

    .line 1114
    :pswitch_1
    const v1, 0x10804a3

    .line 1115
    goto :goto_1

    .line 1118
    :pswitch_2
    const v1, 0x10804ac

    .line 1119
    goto :goto_1

    .line 1122
    :pswitch_3
    const v1, 0x10804a6

    goto :goto_1

    .line 1108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized get(Landroid/view/IndicateMenuView$DRAWABLE_TYPE;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 1070
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1094
    :goto_0
    monitor-exit p0

    return-object v4

    .line 1073
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/view/IndicateMenuView$DrawableRecyleBin;->mAvailableDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1074
    .local v0, count:I
    const/4 v1, 0x0

    .line 1075
    .local v1, drawableType:Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1076
    iget-object v3, p0, Landroid/view/IndicateMenuView$DrawableRecyleBin;->mAvailableDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;

    iget-object v3, v3, Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;->Type:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    if-ne v3, p1, :cond_4

    .line 1077
    iget-object v3, p0, Landroid/view/IndicateMenuView$DrawableRecyleBin;->mAvailableDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #drawableType:Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;
    check-cast v1, Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;

    .line 1078
    .restart local v1       #drawableType:Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;
    iget-object v3, p0, Landroid/view/IndicateMenuView$DrawableRecyleBin;->mAvailableDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1083
    :cond_1
    if-nez v1, :cond_2

    .line 1084
    invoke-direct {p0, p1}, Landroid/view/IndicateMenuView$DrawableRecyleBin;->makeNewDrawable(Landroid/view/IndicateMenuView$DRAWABLE_TYPE;)Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;

    move-result-object v1

    .line 1085
    iget-object v3, p0, Landroid/view/IndicateMenuView$DrawableRecyleBin;->mTotalDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    :cond_2
    if-eqz v1, :cond_3

    iget-object v3, v1, Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;->Data:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 1089
    iget-object v3, v1, Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;->Data:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1090
    iget-object v3, v1, Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;->Data:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Landroid/view/IndicateMenuView;->access$500()[I

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1094
    :cond_3
    if-nez v1, :cond_5

    move-object v3, v4

    :goto_2
    move-object v4, v3

    goto :goto_0

    .line 1075
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1094
    :cond_5
    iget-object v3, v1, Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;->Data:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1070
    .end local v0           #count:I
    .end local v1           #drawableType:Landroid/view/IndicateMenuView$DrawableRecyleBin$DrawableType;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 1098
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/IndicateMenuView$DrawableRecyleBin;->mAvailableDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1099
    iget-object v0, p0, Landroid/view/IndicateMenuView$DrawableRecyleBin;->mAvailableDrawables:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/IndicateMenuView$DrawableRecyleBin;->mTotalDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    monitor-exit p0

    return-void

    .line 1098
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
