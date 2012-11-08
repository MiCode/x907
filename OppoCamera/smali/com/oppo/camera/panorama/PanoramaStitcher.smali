.class public Lcom/oppo/camera/panorama/PanoramaStitcher;
.super Ljava/lang/Object;
.source "PanoramaStitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/panorama/PanoramaStitcher$StitcherListener;
    }
.end annotation


# instance fields
.field private mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

.field private mDecoder:Lcom/scalado/caps/Decoder;

.field private mDirection:Lcom/scalado/caps/autorama/Direction;

.field private mHeight:I

.field private final mLens:Lcom/scalado/caps/autorama/Lens;

.field private mPanoramaSize:Lcom/scalado/base/Size;

.field private mStitcher:Lcom/scalado/caps/autorama/Stitcher;

.field private mStitcherListener:Lcom/oppo/camera/panorama/PanoramaStitcher$StitcherListener;

.field private mWidth:I


# direct methods
.method public constructor <init>(IILcom/scalado/caps/autorama/Direction;)V
    .locals 14
    .parameter "width"
    .parameter "height"
    .parameter "direction"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mStitcher:Lcom/scalado/caps/autorama/Stitcher;

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mDirection:Lcom/scalado/caps/autorama/Direction;

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mWidth:I

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mHeight:I

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mDecoder:Lcom/scalado/caps/Decoder;

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mPanoramaSize:Lcom/scalado/base/Size;

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    .line 38
    new-instance v1, Lcom/scalado/caps/autorama/Lens;

    const/high16 v2, 0x4420

    const/high16 v3, 0x4420

    const/high16 v4, 0x43a0

    const/high16 v5, 0x4370

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x280

    const/16 v13, 0x1e0

    invoke-direct/range {v1 .. v13}, Lcom/scalado/caps/autorama/Lens;-><init>(FFFFFFFFFFII)V

    iput-object v1, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mLens:Lcom/scalado/caps/autorama/Lens;

    .line 48
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mDirection:Lcom/scalado/caps/autorama/Direction;

    .line 49
    iput p1, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mWidth:I

    .line 50
    move/from16 v0, p2

    iput v0, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mHeight:I

    .line 51
    return-void
.end method

.method private generatePanorama()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v1, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mStitcher:Lcom/scalado/caps/autorama/Stitcher;

    invoke-static {v1}, Lcom/scalado/caps/autorama/PanoramaDecoder;->create(Lcom/scalado/caps/autorama/Stitcher;)Lcom/scalado/base/Iterator;

    move-result-object v0

    .line 107
    .local v0, it:Lcom/scalado/base/Iterator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F

    .line 108
    invoke-virtual {v0}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/autorama/PanoramaDecoder;

    iput-object v1, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mDecoder:Lcom/scalado/caps/Decoder;

    .line 109
    iget-object v1, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mDecoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v1}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mPanoramaSize:Lcom/scalado/base/Size;

    .line 110
    return-void
.end method

.method private setBlendMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 60
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mDirection:Lcom/scalado/caps/autorama/Direction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mDirection:Lcom/scalado/caps/autorama/Direction;

    invoke-virtual {v0}, Lcom/scalado/caps/autorama/Direction;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->MULTILEVEL_NORMAL:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mStitcher:Lcom/scalado/caps/autorama/Stitcher;

    iget-object v1, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    new-instance v2, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

    invoke-direct {v2, v3, v3}, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;-><init>(ZZ)V

    invoke-virtual {v0, v1, v2}, Lcom/scalado/caps/autorama/Stitcher;->setBlendMode(Lcom/scalado/caps/autorama/Stitcher$BlendMode;Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;)V

    .line 66
    return-void

    .line 63
    :cond_0
    sget-object v0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->LINEAR:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    goto :goto_0
.end method

.method private setupStitcher()V
    .locals 5

    .prologue
    .line 55
    new-instance v0, Lcom/scalado/caps/autorama/Stitcher;

    iget-object v1, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mLens:Lcom/scalado/caps/autorama/Lens;

    new-instance v2, Lcom/scalado/base/Size;

    iget v3, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mWidth:I

    iget v4, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mHeight:I

    invoke-direct {v2, v3, v4}, Lcom/scalado/base/Size;-><init>(II)V

    iget-object v3, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mDirection:Lcom/scalado/caps/autorama/Direction;

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/caps/autorama/Stitcher;-><init>(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/base/Size;Lcom/scalado/caps/autorama/Direction;)V

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mStitcher:Lcom/scalado/caps/autorama/Stitcher;

    .line 56
    invoke-direct {p0}, Lcom/oppo/camera/panorama/PanoramaStitcher;->setBlendMode()V

    .line 57
    return-void
.end method

.method private stitchFrames(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/camera/panorama/PanoramaFrame;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    .local p1, frameList:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/camera/panorama/PanoramaFrame;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/panorama/PanoramaFrame;

    .line 95
    .local v1, pf:Lcom/oppo/camera/panorama/PanoramaFrame;
    new-instance v2, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-virtual {v1}, Lcom/oppo/camera/panorama/PanoramaFrame;->getImage()Lcom/scalado/base/Image;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    iput-object v2, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mDecoder:Lcom/scalado/caps/Decoder;

    .line 96
    iget-object v2, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mStitcher:Lcom/scalado/caps/autorama/Stitcher;

    iget-object v3, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mDecoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v1}, Lcom/oppo/camera/panorama/PanoramaFrame;->getTransform()Lcom/scalado/caps/autorama/Transform;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/scalado/caps/autorama/Stitcher;->addImage(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/autorama/Transform;)V

    .line 97
    invoke-virtual {v1}, Lcom/oppo/camera/panorama/PanoramaFrame;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oppo/camera/panorama/PanoramaStitcher;->sendOnProgressUpdate(I)V

    goto :goto_0

    .line 99
    .end local v1           #pf:Lcom/oppo/camera/panorama/PanoramaFrame;
    :cond_0
    return-void
.end method


# virtual methods
.method public getPanoramaDecoder()Lcom/scalado/caps/Decoder;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mDecoder:Lcom/scalado/caps/Decoder;

    return-object v0
.end method

.method public getPanoramaSize()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mPanoramaSize:Lcom/scalado/base/Size;

    return-object v0
.end method

.method public sendOnPanoramaGenerated()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mStitcherListener:Lcom/oppo/camera/panorama/PanoramaStitcher$StitcherListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mStitcherListener:Lcom/oppo/camera/panorama/PanoramaStitcher$StitcherListener;

    invoke-interface {v0}, Lcom/oppo/camera/panorama/PanoramaStitcher$StitcherListener;->onPanoramaGenerated()V

    .line 138
    :cond_0
    return-void
.end method

.method public sendOnProgressUpdate(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mStitcherListener:Lcom/oppo/camera/panorama/PanoramaStitcher$StitcherListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mStitcherListener:Lcom/oppo/camera/panorama/PanoramaStitcher$StitcherListener;

    invoke-interface {v0, p1}, Lcom/oppo/camera/panorama/PanoramaStitcher$StitcherListener;->onProgressUpdate(I)V

    .line 132
    :cond_0
    return-void
.end method

.method public setStitcherListener(Lcom/oppo/camera/panorama/PanoramaStitcher$StitcherListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/oppo/camera/panorama/PanoramaStitcher;->mStitcherListener:Lcom/oppo/camera/panorama/PanoramaStitcher$StitcherListener;

    .line 126
    return-void
.end method

.method public stitchPanorama(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/camera/panorama/PanoramaFrame;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, frameList:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/camera/panorama/PanoramaFrame;>;"
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/oppo/camera/panorama/PanoramaStitcher;->sendOnProgressUpdate(I)V

    .line 79
    invoke-direct {p0}, Lcom/oppo/camera/panorama/PanoramaStitcher;->setupStitcher()V

    .line 81
    invoke-direct {p0, p1}, Lcom/oppo/camera/panorama/PanoramaStitcher;->stitchFrames(Ljava/util/List;)V

    .line 82
    invoke-direct {p0}, Lcom/oppo/camera/panorama/PanoramaStitcher;->generatePanorama()V

    .line 83
    invoke-virtual {p0, v0}, Lcom/oppo/camera/panorama/PanoramaStitcher;->sendOnProgressUpdate(I)V

    .line 85
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/PanoramaStitcher;->sendOnPanoramaGenerated()V

    .line 86
    return-void
.end method
