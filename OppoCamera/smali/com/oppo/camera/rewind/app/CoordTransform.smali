.class public Lcom/oppo/camera/rewind/app/CoordTransform;
.super Ljava/lang/Object;
.source "CoordTransform.java"


# instance fields
.field mCanvas:Lcom/scalado/base/Rect;

.field mScreenDims:Lcom/scalado/base/Size;

.field mSrcDims:Lcom/scalado/base/Size;


# direct methods
.method public constructor <init>(Lcom/scalado/base/Size;Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;)V
    .locals 4
    .parameter "srcDims"
    .parameter "screen"
    .parameter "canvas"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/CoordTransform;->mCanvas:Lcom/scalado/base/Rect;

    .line 35
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/CoordTransform;->mCanvas:Lcom/scalado/base/Rect;

    invoke-static {p3, v1}, Lcom/oppo/camera/rewind/app/Geom;->setRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 36
    invoke-virtual {p2}, Lcom/scalado/caps/screen/Screen;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 37
    .local v0, screenDims:Lcom/scalado/base/Size;
    new-instance v1, Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/CoordTransform;->mScreenDims:Lcom/scalado/base/Size;

    .line 38
    new-instance v1, Lcom/scalado/base/Size;

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/CoordTransform;->mSrcDims:Lcom/scalado/base/Size;

    .line 40
    return-void
.end method


# virtual methods
.method public canvasDims()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/CoordTransform;->mCanvas:Lcom/scalado/base/Rect;

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method

.method public canvasRect(Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/CoordTransform;->mCanvas:Lcom/scalado/base/Rect;

    invoke-static {v0, p1}, Lcom/oppo/camera/rewind/app/Geom;->setRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 83
    return-void
.end method

.method public canvasRectInCurrent(Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/CoordTransform;->mCanvas:Lcom/scalado/base/Rect;

    invoke-static {v0, p1}, Lcom/oppo/camera/rewind/app/Geom;->setRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 87
    invoke-virtual {p0, p1, p1}, Lcom/oppo/camera/rewind/app/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 88
    return-void
.end method

.method public transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 20
    .parameter "src"
    .parameter "dstRect"

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/CoordTransform;->mCanvas:Lcom/scalado/base/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    .line 102
    .local v4, cx0:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/CoordTransform;->mCanvas:Lcom/scalado/base/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Rect;->getY()I

    move-result v6

    .line 103
    .local v6, cy0:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/CoordTransform;->mCanvas:Lcom/scalado/base/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    .line 104
    .local v3, cw:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/CoordTransform;->mCanvas:Lcom/scalado/base/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v2

    .line 105
    .local v2, ch:I
    add-int v5, v4, v3

    .line 106
    .local v5, cx1:I
    add-int v7, v6, v2

    .line 108
    .local v7, cy1:I
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v10

    .line 109
    .local v10, rx0:I
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v11

    .line 110
    .local v11, ry0:I
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v9

    .line 111
    .local v9, rw:I
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v8

    .line 113
    .local v8, rh:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/CoordTransform;->mSrcDims:Lcom/scalado/base/Size;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Size;->getWidth()I

    move-result v13

    .line 114
    .local v13, srcW:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/CoordTransform;->mSrcDims:Lcom/scalado/base/Size;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Size;->getHeight()I

    move-result v12

    .line 116
    .local v12, srcH:I
    sub-int v18, v10, v4

    mul-int v18, v18, v13

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v3

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 117
    .local v14, tx0:F
    sub-int v18, v11, v6

    mul-int v18, v18, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v16, v18, v19

    .line 118
    .local v16, ty0:F
    add-int v18, v10, v9

    sub-int v18, v18, v4

    mul-int v18, v18, v13

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v3

    move/from16 v19, v0

    div-float v15, v18, v19

    .line 119
    .local v15, tx1:F
    add-int v18, v11, v8

    sub-int v18, v18, v6

    mul-int v18, v18, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v17, v18, v19

    .line 121
    .local v17, ty1:F
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/scalado/base/Rect;->setX(I)V

    .line 122
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/scalado/base/Rect;->setY(I)V

    .line 123
    sub-float v18, v15, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 124
    sub-float v18, v17, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 125
    return-void
.end method

.method public transformRectToScreen(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 20
    .parameter "r"
    .parameter "dstRect"

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/CoordTransform;->mCanvas:Lcom/scalado/base/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    .line 129
    .local v4, cx0:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/CoordTransform;->mCanvas:Lcom/scalado/base/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Rect;->getY()I

    move-result v6

    .line 130
    .local v6, cy0:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/CoordTransform;->mCanvas:Lcom/scalado/base/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    .line 131
    .local v3, cw:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/CoordTransform;->mCanvas:Lcom/scalado/base/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v2

    .line 132
    .local v2, ch:I
    add-int v5, v4, v3

    .line 133
    .local v5, cx1:I
    add-int v7, v6, v2

    .line 135
    .local v7, cy1:I
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v10

    .line 136
    .local v10, rx0:I
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v11

    .line 137
    .local v11, ry0:I
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v9

    .line 138
    .local v9, rw:I
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v8

    .line 140
    .local v8, rh:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/CoordTransform;->mSrcDims:Lcom/scalado/base/Size;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Size;->getWidth()I

    move-result v13

    .line 141
    .local v13, srcW:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/CoordTransform;->mSrcDims:Lcom/scalado/base/Size;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Size;->getHeight()I

    move-result v12

    .line 143
    .local v12, srcH:I
    mul-int v18, v10, v3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v13

    move/from16 v19, v0

    div-float v18, v18, v19

    int-to-float v0, v4

    move/from16 v19, v0

    add-float v14, v18, v19

    .line 144
    .local v14, tx0:F
    mul-int v18, v11, v2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v12

    move/from16 v19, v0

    div-float v18, v18, v19

    int-to-float v0, v6

    move/from16 v19, v0

    add-float v16, v18, v19

    .line 145
    .local v16, ty0:F
    add-int v18, v10, v9

    mul-int v18, v18, v3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v13

    move/from16 v19, v0

    div-float v18, v18, v19

    int-to-float v0, v4

    move/from16 v19, v0

    add-float v15, v18, v19

    .line 146
    .local v15, tx1:F
    add-int v18, v11, v8

    mul-int v18, v18, v2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v12

    move/from16 v19, v0

    div-float v18, v18, v19

    int-to-float v0, v6

    move/from16 v19, v0

    add-float v17, v18, v19

    .line 148
    .local v17, ty1:F
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/scalado/base/Rect;->setX(I)V

    .line 149
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/scalado/base/Rect;->setY(I)V

    .line 150
    sub-float v18, v15, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 151
    sub-float v18, v17, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 152
    return-void
.end method
