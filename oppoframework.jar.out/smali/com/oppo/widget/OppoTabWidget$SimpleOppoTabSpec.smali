.class public Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
.super Ljava/lang/Object;
.source "OppoTabWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOppoTabSpec"
.end annotation


# instance fields
.field private mHlTabIcon:Landroid/graphics/drawable/Drawable;

.field private mNorTabIcon:Landroid/graphics/drawable/Drawable;

.field private mTabArea:Landroid/graphics/RectF;

.field private mTabLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1396
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1389
    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabLabel:Ljava/lang/CharSequence;

    .line 1390
    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mNorTabIcon:Landroid/graphics/drawable/Drawable;

    .line 1391
    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mHlTabIcon:Landroid/graphics/drawable/Drawable;

    .line 1393
    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabArea:Landroid/graphics/RectF;

    .line 1397
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabArea:Landroid/graphics/RectF;

    .line 1398
    return-void
.end method


# virtual methods
.method public getHlTabIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mHlTabIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getNorTabIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mNorTabIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabArea()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getTabLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setTabArea(Landroid/graphics/RectF;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    .locals 2
    .parameter "area"

    .prologue
    .line 1415
    if-nez p1, :cond_0

    .line 1417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "param passed to setTabArea is illegal!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1420
    return-object p0
.end method

.method public setTabIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    .locals 0
    .parameter "norTabIcon"
    .parameter "hlTabIcon"

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mNorTabIcon:Landroid/graphics/drawable/Drawable;

    .line 1409
    iput-object p2, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mHlTabIcon:Landroid/graphics/drawable/Drawable;

    .line 1410
    return-object p0
.end method

.method public setTabLabel(Ljava/lang/CharSequence;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    .locals 0
    .parameter "label"

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabLabel:Ljava/lang/CharSequence;

    .line 1403
    return-object p0
.end method
