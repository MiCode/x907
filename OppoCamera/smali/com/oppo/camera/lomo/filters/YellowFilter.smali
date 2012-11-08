.class public Lcom/oppo/camera/lomo/filters/YellowFilter;
.super Lcom/oppo/camera/lomo/filters/Filter;
.source "YellowFilter.java"


# instance fields
.field private mB:F

.field private mG:F

.field private mR:F


# direct methods
.method public constructor <init>(IFFF)V
    .locals 0
    .parameter "id"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/filters/Filter;-><init>(I)V

    .line 34
    iput p2, p0, Lcom/oppo/camera/lomo/filters/YellowFilter;->mR:F

    .line 35
    iput p3, p0, Lcom/oppo/camera/lomo/filters/YellowFilter;->mG:F

    .line 36
    iput p4, p0, Lcom/oppo/camera/lomo/filters/YellowFilter;->mB:F

    .line 37
    return-void
.end method


# virtual methods
.method public applyFilterToSession(Lcom/scalado/caps/Session;)V
    .locals 13
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide v9, 0x3fb1eb851eb851ecL

    const/4 v12, 0x0

    .line 43
    new-instance v0, Lcom/scalado/caps/filter/photoart/HueSaturation;

    invoke-direct {v0, p1}, Lcom/scalado/caps/filter/photoart/HueSaturation;-><init>(Lcom/scalado/caps/Session;)V

    .line 44
    .local v0, hueSaturation:Lcom/scalado/caps/filter/photoart/HueSaturation;
    const/16 v6, 0x80

    invoke-virtual {v0, v6, v12}, Lcom/scalado/caps/filter/photoart/HueSaturation;->set(II)V

    .line 45
    invoke-virtual {v0}, Lcom/scalado/caps/filter/photoart/HueSaturation;->commit()V

    .line 47
    new-instance v4, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;

    invoke-direct {v4, p1}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;-><init>(Lcom/scalado/caps/Session;)V

    .line 48
    .local v4, rgbColorAdjust:Lcom/scalado/caps/filter/photoart/RGBColorAdjust;
    iget v6, p0, Lcom/oppo/camera/lomo/filters/YellowFilter;->mR:F

    iget v7, p0, Lcom/oppo/camera/lomo/filters/YellowFilter;->mG:F

    iget v8, p0, Lcom/oppo/camera/lomo/filters/YellowFilter;->mB:F

    invoke-virtual {v4, v6, v7, v8}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->set(FFF)V

    .line 49
    invoke-virtual {v4}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->commit()V

    .line 51
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v3

    .line 53
    .local v3, rect:Lcom/scalado/base/Rect;
    new-instance v5, Lcom/scalado/caps/filter/photoart/Vignetting;

    invoke-direct {v5, p1}, Lcom/scalado/caps/filter/photoart/Vignetting;-><init>(Lcom/scalado/caps/Session;)V

    .line 54
    .local v5, vignette:Lcom/scalado/caps/filter/photoart/Vignetting;
    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v1, v6

    .line 55
    .local v1, moveX:I
    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v2, v6

    .line 56
    .local v2, moveY:I
    new-instance v6, Lcom/scalado/base/Rect;

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getX()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getY()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v9

    mul-int/lit8 v10, v1, 0x2

    sub-int/2addr v9, v10

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v10

    mul-int/lit8 v11, v2, 0x2

    sub-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/scalado/base/Rect;-><init>(IIII)V

    const/high16 v7, 0x3f80

    new-instance v8, Lcom/scalado/base/Color;

    invoke-direct {v8, v12, v12, v12, v12}, Lcom/scalado/base/Color;-><init>(IIII)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/scalado/caps/filter/photoart/Vignetting;->set(Lcom/scalado/base/Rect;FLcom/scalado/base/Color;)V

    .line 58
    invoke-virtual {v5}, Lcom/scalado/caps/filter/photoart/Vignetting;->commit()V

    .line 59
    return-void
.end method
