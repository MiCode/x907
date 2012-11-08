.class public Lcom/oppo/camera/rewind/app/Geom;
.super Ljava/lang/Object;
.source "Geom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertRect(Landroid/graphics/Rect;)Lcom/scalado/base/Rect;
    .locals 1
    .parameter "r"

    .prologue
    .line 33
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 34
    .local v0, dst:Lcom/scalado/base/Rect;
    invoke-static {p0, v0}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 35
    return-object v0
.end method

.method public static final rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 19
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setX(I)V

    .line 20
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setY(I)V

    .line 21
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 22
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 23
    return-void
.end method

.method public static final rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v1

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v2

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v3

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 16
    return-void
.end method

.method public static final rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 4
    .parameter "r"

    .prologue
    .line 53
    const-string v0, "{(%d, %d), %dx%d}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;
    .locals 4
    .parameter "r"

    .prologue
    .line 46
    const-string v0, "{(%d, %d), %dx%d}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final setRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setX(I)V

    .line 40
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setY(I)V

    .line 41
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 42
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 43
    return-void
.end method

.method public static transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 7
    .parameter "screen"
    .parameter "r"
    .parameter "dstRect"

    .prologue
    .line 73
    new-instance v2, Lcom/scalado/base/Point;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/scalado/base/Point;-><init>(II)V

    .line 74
    .local v2, pScr0:Lcom/scalado/base/Point;
    new-instance v3, Lcom/scalado/base/Point;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lcom/scalado/base/Point;-><init>(II)V

    .line 76
    .local v3, pScr1:Lcom/scalado/base/Point;
    invoke-virtual {p0, v2}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v0

    .line 77
    .local v0, p0:Lcom/scalado/base/Point;
    invoke-virtual {p0, v3}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v1

    .line 78
    .local v1, p1:Lcom/scalado/base/Point;
    invoke-virtual {v0}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setX(I)V

    .line 79
    invoke-virtual {v0}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setY(I)V

    .line 80
    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 81
    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 82
    return-void
.end method

.method public static transformToSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 7
    .parameter "screen"
    .parameter "r"
    .parameter "dstRect"

    .prologue
    .line 86
    new-instance v2, Lcom/scalado/base/Point;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/scalado/base/Point;-><init>(II)V

    .line 87
    .local v2, pScr0:Lcom/scalado/base/Point;
    new-instance v3, Lcom/scalado/base/Point;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lcom/scalado/base/Point;-><init>(II)V

    .line 89
    .local v3, pScr1:Lcom/scalado/base/Point;
    invoke-virtual {p0, v2}, Lcom/scalado/caps/screen/Screen;->transformToSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v0

    .line 90
    .local v0, p0:Lcom/scalado/base/Point;
    invoke-virtual {p0, v3}, Lcom/scalado/caps/screen/Screen;->transformToSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v1

    .line 91
    .local v1, p1:Lcom/scalado/base/Point;
    invoke-virtual {v0}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setX(I)V

    .line 92
    invoke-virtual {v0}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setY(I)V

    .line 93
    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 94
    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 95
    return-void
.end method
