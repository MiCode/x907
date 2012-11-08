.class public Lcom/scalado/caps/face/Face;
.super Ljava/lang/Object;
.source "Face.java"


# instance fields
.field private blinkPercent:I

.field private centralEyePoint:Lcom/scalado/base/Point;

.field private centralEyePointActive:Z

.field private faceRect:Lcom/scalado/base/Rect;

.field private faceRectActive:Z

.field private id:I

.field private leftEyePoint:Lcom/scalado/base/Point;

.field private leftEyePointActive:Z

.field private leftEyeRect:Lcom/scalado/base/Rect;

.field private leftEyeRectActive:Z

.field private mouthRect:Lcom/scalado/base/Rect;

.field private mouthRectActive:Z

.field private noseRect:Lcom/scalado/base/Rect;

.field private noseRectActive:Z

.field private rightEyePoint:Lcom/scalado/base/Point;

.field private rightEyePointActive:Z

.field private rightEyeRect:Lcom/scalado/base/Rect;

.field private rightEyeRectActive:Z

.field private smilePercent:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    .line 39
    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->faceRectActive:Z

    .line 41
    iput-object v1, p0, Lcom/scalado/caps/face/Face;->centralEyePoint:Lcom/scalado/base/Point;

    .line 42
    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->centralEyePointActive:Z

    .line 44
    iput-object v1, p0, Lcom/scalado/caps/face/Face;->leftEyeRect:Lcom/scalado/base/Rect;

    .line 45
    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRectActive:Z

    .line 47
    iput-object v1, p0, Lcom/scalado/caps/face/Face;->leftEyePoint:Lcom/scalado/base/Point;

    .line 48
    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyePointActive:Z

    .line 50
    iput-object v1, p0, Lcom/scalado/caps/face/Face;->rightEyeRect:Lcom/scalado/base/Rect;

    .line 51
    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRectActive:Z

    .line 53
    iput-object v1, p0, Lcom/scalado/caps/face/Face;->rightEyePoint:Lcom/scalado/base/Point;

    .line 54
    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyePointActive:Z

    .line 56
    iput-object v1, p0, Lcom/scalado/caps/face/Face;->mouthRect:Lcom/scalado/base/Rect;

    .line 57
    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->mouthRectActive:Z

    .line 59
    iput-object v1, p0, Lcom/scalado/caps/face/Face;->noseRect:Lcom/scalado/base/Rect;

    .line 60
    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->noseRectActive:Z

    .line 62
    iput v2, p0, Lcom/scalado/caps/face/Face;->id:I

    .line 63
    iput v2, p0, Lcom/scalado/caps/face/Face;->smilePercent:I

    .line 64
    iput v2, p0, Lcom/scalado/caps/face/Face;->blinkPercent:I

    .line 70
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    .line 71
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/Face;->centralEyePoint:Lcom/scalado/base/Point;

    .line 72
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRect:Lcom/scalado/base/Rect;

    .line 73
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyePoint:Lcom/scalado/base/Point;

    .line 74
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRect:Lcom/scalado/base/Rect;

    .line 75
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyePoint:Lcom/scalado/base/Point;

    .line 76
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/Face;->mouthRect:Lcom/scalado/base/Rect;

    .line 77
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/Face;->noseRect:Lcom/scalado/base/Rect;

    .line 78
    iput v2, p0, Lcom/scalado/caps/face/Face;->id:I

    .line 79
    iput v2, p0, Lcom/scalado/caps/face/Face;->smilePercent:I

    .line 80
    iput v2, p0, Lcom/scalado/caps/face/Face;->blinkPercent:I

    .line 81
    return-void
.end method

.method private setCentralEyePoint(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->centralEyePoint:Lcom/scalado/base/Point;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Point;->setX(I)V

    .line 166
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->centralEyePoint:Lcom/scalado/base/Point;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Point;->setY(I)V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->centralEyePointActive:Z

    .line 169
    return-void
.end method

.method private setFaceRect(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Rect;->setX(I)V

    .line 128
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Rect;->setY(I)V

    .line 129
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p3}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 130
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p4}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->faceRectActive:Z

    .line 133
    return-void
.end method

.method private setLeftEyePoint(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyePoint:Lcom/scalado/base/Point;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Point;->setX(I)V

    .line 241
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyePoint:Lcom/scalado/base/Point;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Point;->setY(I)V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyePointActive:Z

    .line 244
    return-void
.end method

.method private setLeftEyeRect(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Rect;->setX(I)V

    .line 203
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Rect;->setY(I)V

    .line 204
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p3}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 205
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p4}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRectActive:Z

    .line 208
    return-void
.end method

.method private setMouthRect(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->mouthRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Rect;->setX(I)V

    .line 353
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->mouthRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Rect;->setY(I)V

    .line 354
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->mouthRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p3}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 355
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->mouthRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p4}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->mouthRectActive:Z

    .line 358
    return-void
.end method

.method private setNoseRect(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->noseRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Rect;->setX(I)V

    .line 392
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->noseRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Rect;->setY(I)V

    .line 393
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->noseRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p3}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 394
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->noseRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p4}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->noseRectActive:Z

    .line 397
    return-void
.end method

.method private setRightEyePoint(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyePoint:Lcom/scalado/base/Point;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Point;->setX(I)V

    .line 316
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyePoint:Lcom/scalado/base/Point;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Point;->setY(I)V

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyePointActive:Z

    .line 319
    return-void
.end method

.method private setRightEyeRect(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Rect;->setX(I)V

    .line 278
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Rect;->setY(I)V

    .line 279
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p3}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 280
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p4}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRectActive:Z

    .line 283
    return-void
.end method


# virtual methods
.method public getBlinkPercent()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/scalado/caps/face/Face;->blinkPercent:I

    return v0
.end method

.method public getCentralEyePoint()Lcom/scalado/base/Point;
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/scalado/caps/face/Face;->centralEyePointActive:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->centralEyePoint:Lcom/scalado/base/Point;

    .line 144
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFaceRect()Lcom/scalado/base/Rect;
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/scalado/caps/face/Face;->faceRectActive:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/scalado/caps/face/Face;->id:I

    return v0
.end method

.method public getLeftEyePoint()Lcom/scalado/base/Point;
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyePointActive:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyePoint:Lcom/scalado/base/Point;

    .line 219
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeftEyeRect()Lcom/scalado/base/Rect;
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRectActive:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRect:Lcom/scalado/base/Rect;

    .line 182
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMouthRect()Lcom/scalado/base/Rect;
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/scalado/caps/face/Face;->mouthRectActive:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->mouthRect:Lcom/scalado/base/Rect;

    .line 332
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNoseRect()Lcom/scalado/base/Rect;
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/scalado/caps/face/Face;->noseRectActive:Z

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->noseRect:Lcom/scalado/base/Rect;

    .line 371
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRightEyePoint()Lcom/scalado/base/Point;
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyePointActive:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyePoint:Lcom/scalado/base/Point;

    .line 294
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRightEyeRect()Lcom/scalado/base/Rect;
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRectActive:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRect:Lcom/scalado/base/Rect;

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSmilePercent()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/scalado/caps/face/Face;->smilePercent:I

    return v0
.end method

.method protected reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->faceRectActive:Z

    .line 85
    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->centralEyePointActive:Z

    .line 86
    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRectActive:Z

    .line 87
    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyePointActive:Z

    .line 88
    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRectActive:Z

    .line 89
    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyePointActive:Z

    .line 90
    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->mouthRectActive:Z

    .line 91
    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->noseRectActive:Z

    .line 92
    iput v1, p0, Lcom/scalado/caps/face/Face;->id:I

    .line 93
    iput v1, p0, Lcom/scalado/caps/face/Face;->smilePercent:I

    .line 94
    iput v1, p0, Lcom/scalado/caps/face/Face;->blinkPercent:I

    .line 95
    return-void
.end method

.method public setBlinkPercent(I)V
    .locals 2
    .parameter "blinkPercent"

    .prologue
    .line 470
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 471
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "blinkPercent must be >= -1  and <= 100 !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1
    iput p1, p0, Lcom/scalado/caps/face/Face;->blinkPercent:I

    .line 474
    return-void
.end method

.method public setCentralEyePoint(Lcom/scalado/base/Point;)V
    .locals 1
    .parameter "centralEyePoint"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    if-eqz v0, :cond_0

    .line 154
    iput-object p1, p0, Lcom/scalado/caps/face/Face;->centralEyePoint:Lcom/scalado/base/Point;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->centralEyePointActive:Z

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->centralEyePointActive:Z

    goto :goto_0
.end method

.method public setFaceRect(Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "faceRect"

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    iput-object p1, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->faceRectActive:Z

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->faceRectActive:Z

    goto :goto_0
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 417
    iput p1, p0, Lcom/scalado/caps/face/Face;->id:I

    .line 418
    return-void
.end method

.method public setLeftEyePoint(Lcom/scalado/base/Point;)V
    .locals 1
    .parameter "leftEyePoint"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    if-eqz v0, :cond_0

    .line 229
    iput-object p1, p0, Lcom/scalado/caps/face/Face;->leftEyePoint:Lcom/scalado/base/Point;

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyePointActive:Z

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyePointActive:Z

    goto :goto_0
.end method

.method public setLeftEyeRect(Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "leftEyeRect"

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    iput-object p1, p0, Lcom/scalado/caps/face/Face;->leftEyeRect:Lcom/scalado/base/Rect;

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRectActive:Z

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRectActive:Z

    goto :goto_0
.end method

.method public setMouthRect(Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "mouthRect"

    .prologue
    .line 341
    if-eqz p1, :cond_0

    .line 342
    iput-object p1, p0, Lcom/scalado/caps/face/Face;->mouthRect:Lcom/scalado/base/Rect;

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->mouthRectActive:Z

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->mouthRectActive:Z

    goto :goto_0
.end method

.method public setNoseRect(Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "noseRect"

    .prologue
    .line 380
    if-eqz p1, :cond_0

    .line 381
    iput-object p1, p0, Lcom/scalado/caps/face/Face;->noseRect:Lcom/scalado/base/Rect;

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->noseRectActive:Z

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->noseRectActive:Z

    goto :goto_0
.end method

.method public setRightEyePoint(Lcom/scalado/base/Point;)V
    .locals 1
    .parameter "rightEyePoint"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    if-eqz v0, :cond_0

    .line 304
    iput-object p1, p0, Lcom/scalado/caps/face/Face;->rightEyePoint:Lcom/scalado/base/Point;

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyePointActive:Z

    .line 310
    :goto_0
    return-void

    .line 307
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyePointActive:Z

    goto :goto_0
.end method

.method public setRightEyeRect(Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "rightEyeRect"

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 267
    iput-object p1, p0, Lcom/scalado/caps/face/Face;->rightEyeRect:Lcom/scalado/base/Rect;

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRectActive:Z

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRectActive:Z

    goto :goto_0
.end method

.method public setSmilePercent(I)V
    .locals 2
    .parameter "smilePercent"

    .prologue
    .line 442
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 443
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "smilePercent must be >= -1  and <= 100 !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_1
    iput p1, p0, Lcom/scalado/caps/face/Face;->smilePercent:I

    .line 446
    return-void
.end method
