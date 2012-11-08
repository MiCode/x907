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

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1439
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;-><init>(Ljava/lang/String;)V

    .line 1440
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1442
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1429
    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabLabel:Ljava/lang/CharSequence;

    .line 1430
    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mNorTabIcon:Landroid/graphics/drawable/Drawable;

    .line 1431
    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mHlTabIcon:Landroid/graphics/drawable/Drawable;

    .line 1433
    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabArea:Landroid/graphics/RectF;

    .line 1436
    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTag:Ljava/lang/String;

    .line 1443
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTag:Ljava/lang/String;

    .line 1444
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabArea:Landroid/graphics/RectF;

    .line 1445
    return-void
.end method


# virtual methods
.method public getHlTabIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mHlTabIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getNorTabIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mNorTabIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabArea()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getTabLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setTabArea(Landroid/graphics/RectF;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    .locals 2
    .parameter "area"

    .prologue
    .line 1467
    if-nez p1, :cond_0

    .line 1469
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "param passed to setTabArea is illegal!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1472
    return-object p0
.end method

.method public setTabIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    .locals 0
    .parameter "norTabIcon"
    .parameter "hlTabIcon"

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mNorTabIcon:Landroid/graphics/drawable/Drawable;

    .line 1461
    iput-object p2, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mHlTabIcon:Landroid/graphics/drawable/Drawable;

    .line 1462
    return-object p0
.end method

.method public setTabLabel(Ljava/lang/CharSequence;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    .locals 0
    .parameter "label"

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabLabel:Ljava/lang/CharSequence;

    .line 1455
    return-object p0
.end method
