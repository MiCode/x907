.class public Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
.super Ljava/lang/Object;
.source "SourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/SourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# instance fields
.field private mConfig:Lcom/scalado/base/Image$Config;

.field private mHeight:I

.field private mRenderMode:Lcom/scalado/caps/screen/Screen$RenderMode;

.field private mRotation:Lcom/scalado/caps/Rotation;

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/scalado/caps/screen/Screen$RenderMode;->NORMAL:Lcom/scalado/caps/screen/Screen$RenderMode;

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mRenderMode:Lcom/scalado/caps/screen/Screen$RenderMode;

    .line 68
    return-void
.end method

.method public constructor <init>(IIILcom/scalado/caps/Rotation;)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "pixelformat"
    .parameter "rotation"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/scalado/caps/screen/Screen$RenderMode;->NORMAL:Lcom/scalado/caps/screen/Screen$RenderMode;

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mRenderMode:Lcom/scalado/caps/screen/Screen$RenderMode;

    .line 61
    iput p1, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I

    .line 62
    iput p2, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I

    .line 63
    invoke-static {p3}, Lcom/oppo/camera/rewind/app/PixelFormat;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;

    .line 64
    iput-object p4, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;

    .line 65
    return-void
.end method

.method static synthetic access$1100(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)Lcom/scalado/base/Image$Config;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)Lcom/scalado/caps/screen/Screen$RenderMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mRenderMode:Lcom/scalado/caps/screen/Screen$RenderMode;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;Lcom/scalado/caps/screen/Screen$RenderMode;)Lcom/scalado/caps/screen/Screen$RenderMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mRenderMode:Lcom/scalado/caps/screen/Screen$RenderMode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I

    return v0
.end method

.method static synthetic access$602(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I

    return p1
.end method

.method static synthetic access$700(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I

    return p1
.end method


# virtual methods
.method public clone()Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    invoke-direct {v0}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;-><init>()V

    .line 72
    .local v0, cfg:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    iget v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I

    iput v1, v0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I

    .line 73
    iget v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I

    iput v1, v0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I

    .line 74
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;

    iput-object v1, v0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;

    .line 75
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;

    iput-object v1, v0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;

    .line 76
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->clone()Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public config()Lcom/scalado/base/Image$Config;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;

    return-object v0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I

    return v0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I

    return v0
.end method
