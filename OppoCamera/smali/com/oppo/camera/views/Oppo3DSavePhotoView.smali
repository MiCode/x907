.class public Lcom/oppo/camera/views/Oppo3DSavePhotoView;
.super Landroid/opengl/GLSurfaceView;
.source "Oppo3DSavePhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;,
        Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;
    }
.end annotation


# static fields
.field private static mLightPos:[F

.field private static mMatModel:Lcom/oppo/model/lib/Matrix4f;

.field private static mMatProject:Lcom/oppo/model/lib/Matrix4f;

.field private static mMatView:Lcom/oppo/model/lib/Matrix4f;

.field private static mMatrixProjectArray:[F

.field private static mViewport:[I

.field private static matTrans:Lcom/oppo/model/lib/Matrix4f;

.field private static mvCenter:Lcom/oppo/model/lib/Vector3f;

.field private static mvEye:Lcom/oppo/model/lib/Vector3f;

.field private static mvSphereCenter:Lcom/oppo/model/lib/Vector3f;


# instance fields
.field private mAnimationFlag:Z

.field private mCollectTexture:Landroid/graphics/Bitmap;

.field private mCollectTextureID:I

.field private mContext:Landroid/content/Context;

.field private mFrame:F

.field private mLastTime:J

.field private mModel:Lcom/oppo/model/md2/MdModel;

.field private mNeedupdateTexture:Z

.field private mOnAnimationListener:Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;

.field private mRenderer:Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;

.field private mSnapshotTexture:Landroid/graphics/Bitmap;

.field private mSnapshotTextureID:I

.field private mUpdateCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 53
    new-array v0, v2, [I

    sput-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mViewport:[I

    .line 54
    new-instance v0, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    sput-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mMatrixProjectArray:[F

    .line 56
    new-instance v0, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    sput-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    .line 57
    new-instance v0, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    sput-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    .line 59
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    const v1, -0x3d69d99a

    invoke-direct {v0, v1, v3, v3}, Lcom/oppo/model/lib/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mvSphereCenter:Lcom/oppo/model/lib/Vector3f;

    .line 60
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0, v3, v3, v3}, Lcom/oppo/model/lib/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mvEye:Lcom/oppo/model/lib/Vector3f;

    .line 61
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0, v3, v3, v3}, Lcom/oppo/model/lib/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mvCenter:Lcom/oppo/model/lib/Vector3f;

    .line 63
    new-array v0, v2, [F

    const/4 v1, 0x0

    sget-object v2, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mvEye:Lcom/oppo/model/lib/Vector3f;

    iget v2, v2, Lcom/oppo/model/lib/Vector3f;->x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mvEye:Lcom/oppo/model/lib/Vector3f;

    iget v2, v2, Lcom/oppo/model/lib/Vector3f;->y:F

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mvEye:Lcom/oppo/model/lib/Vector3f;

    iget v2, v2, Lcom/oppo/model/lib/Vector3f;->z:F

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    sput-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mLightPos:[F

    .line 64
    new-instance v0, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    sput-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 66
    iput v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mUpdateCount:I

    .line 72
    iput-boolean v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mNeedupdateTexture:Z

    .line 73
    iput-object v1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mSnapshotTexture:Landroid/graphics/Bitmap;

    .line 74
    iput v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mSnapshotTextureID:I

    .line 75
    iput-object v1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mCollectTexture:Landroid/graphics/Bitmap;

    .line 76
    iput v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mCollectTextureID:I

    .line 93
    invoke-direct {p0, p1}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->init(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mUpdateCount:I

    .line 72
    iput-boolean v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mNeedupdateTexture:Z

    .line 73
    iput-object v1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mSnapshotTexture:Landroid/graphics/Bitmap;

    .line 74
    iput v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mSnapshotTextureID:I

    .line 75
    iput-object v1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mCollectTexture:Landroid/graphics/Bitmap;

    .line 76
    iput v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mCollectTextureID:I

    .line 98
    invoke-direct {p0, p1}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->init(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/camera/views/Oppo3DSavePhotoView;)Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mOnAnimationListener:Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/camera/views/Oppo3DSavePhotoView;)Lcom/oppo/model/md2/MdModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/oppo/camera/views/Oppo3DSavePhotoView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/oppo/camera/views/Oppo3DSavePhotoView;Lcom/oppo/model/md2/MdModel;)Lcom/oppo/model/md2/MdModel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oppo/camera/views/Oppo3DSavePhotoView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    return p1
.end method

.method static synthetic access$1200(Lcom/oppo/camera/views/Oppo3DSavePhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->updateTime()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oppo/camera/views/Oppo3DSavePhotoView;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->drawModel(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/camera/views/Oppo3DSavePhotoView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->loadModel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/oppo/camera/views/Oppo3DSavePhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mSnapshotTextureID:I

    return p1
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mViewport:[I

    return-object v0
.end method

.method static synthetic access$500()Lcom/oppo/model/lib/Vector3f;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mvEye:Lcom/oppo/model/lib/Vector3f;

    return-object v0
.end method

.method static synthetic access$600()Lcom/oppo/model/lib/Vector3f;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mvSphereCenter:Lcom/oppo/model/lib/Vector3f;

    return-object v0
.end method

.method static synthetic access$700()Lcom/oppo/model/lib/Matrix4f;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    return-object v0
.end method

.method static synthetic access$800()[F
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mMatrixProjectArray:[F

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/camera/views/Oppo3DSavePhotoView;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setUpCamera(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method private drawModel(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 250
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 251
    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 253
    iget-boolean v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mNeedupdateTexture:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0, p1}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->updateTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 255
    iput-boolean v4, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mNeedupdateTexture:Z

    .line 260
    :cond_0
    iget v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    const/high16 v1, 0x4100

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 261
    sget-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Matrix4f;->setIdentity()V

    .line 262
    sget-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    const/high16 v1, 0x3f00

    const v2, 0x3e99999a

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/model/lib/Matrix4f;->setTranslation(FFF)V

    .line 263
    sget-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    sget-object v1, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/oppo/model/lib/Matrix4f;->set(Lcom/oppo/model/lib/Matrix4f;)V

    .line 265
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    iget v1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    invoke-virtual {v0, v1}, Lcom/oppo/model/md2/MdModel;->setFrame(F)V

    .line 266
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v0, v5}, Lcom/oppo/model/md2/MdModel;->setDirtFlag(Z)V

    .line 267
    sget-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 269
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    const v1, 0x3f7c64f5

    const v2, 0x3f81dae6

    invoke-virtual {v0, v4, v1, v2}, Lcom/oppo/model/md2/MdModel;->fillRenderBuffer(ZFF)V

    .line 282
    :goto_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->render(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 283
    return-void

    .line 271
    :cond_1
    sget-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Matrix4f;->setIdentity()V

    .line 272
    sget-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    const v1, 0x3e19999a

    invoke-virtual {v0, v1, v3, v3}, Lcom/oppo/model/lib/Matrix4f;->setTranslation(FFF)V

    .line 273
    sget-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    sget-object v1, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/oppo/model/lib/Matrix4f;->set(Lcom/oppo/model/lib/Matrix4f;)V

    .line 275
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    iget v1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    invoke-virtual {v0, v1}, Lcom/oppo/model/md2/MdModel;->setFrame(F)V

    .line 276
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v0, v5}, Lcom/oppo/model/md2/MdModel;->setDirtFlag(Z)V

    .line 277
    sget-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 279
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    const v1, 0x3f8066b9

    invoke-virtual {v0, v4, v1, v3}, Lcom/oppo/model/md2/MdModel;->fillRenderBuffer(ZFF)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 103
    iput-object p1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mContext:Landroid/content/Context;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    .line 105
    iput-boolean v6, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mAnimationFlag:Z

    .line 107
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setEGLConfigChooser(IIIIII)V

    .line 109
    new-instance v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;

    iget-object v1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;-><init>(Lcom/oppo/camera/views/Oppo3DSavePhotoView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mRenderer:Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;

    .line 110
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mRenderer:Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 112
    invoke-virtual {p0, v6}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setRenderMode(I)V

    .line 117
    invoke-virtual {p0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setZOrderOnTop(Z)V

    .line 119
    return-void
.end method

.method private invokeOnAnimationListener()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mOnAnimationListener:Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView$1;-><init>(Lcom/oppo/camera/views/Oppo3DSavePhotoView;)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->post(Ljava/lang/Runnable;)Z

    .line 363
    :cond_0
    return-void
.end method

.method private loadModel(Ljava/lang/String;)V
    .locals 6
    .parameter "modelName"

    .prologue
    .line 147
    iget-object v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    if-eqz v3, :cond_0

    .line 167
    :goto_0
    return-void

    .line 149
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 150
    .local v0, am:Landroid/content/res/AssetManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "model/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 152
    .local v2, is:Ljava/io/InputStream;
    iget-object v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    if-nez v3, :cond_1

    .line 153
    new-instance v3, Lcom/oppo/model/md2/MdModel;

    invoke-direct {v3}, Lcom/oppo/model/md2/MdModel;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/oppo/model/md2/MdModel;->Load(Ljava/io/InputStream;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    iget-object v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    iget v4, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    invoke-virtual {v3, v4}, Lcom/oppo/model/md2/MdModel;->setFrame(F)V

    .line 163
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 165
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v2       #is:Ljava/io/InputStream;
    :cond_2
    :try_start_1
    const-string v3, "Oppo3DSavePhotoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load Model Failed. modelName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private releaseModel()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v0}, Lcom/oppo/model/md2/MdModel;->releaseModel()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    .line 177
    :cond_0
    return-void
.end method

.method private render(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/16 v7, 0x1406

    const v6, 0x8078

    const/4 v5, 0x0

    const/16 v4, 0xde1

    const/high16 v1, 0x3f80

    .line 194
    invoke-interface {p1, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 196
    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, useTextureID:I
    iget v1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    const/high16 v2, 0x4100

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mCollectTextureID:I

    if-eqz v1, :cond_0

    .line 206
    iget v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mCollectTextureID:I

    .line 210
    :goto_0
    if-eqz v0, :cond_1

    .line 211
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x4604

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 213
    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 215
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 217
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 218
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v2}, Lcom/oppo/model/md2/MdModel;->getTextureCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-interface {p1, v1, v7, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 229
    :goto_1
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v2}, Lcom/oppo/model/md2/MdModel;->getVertexBuf()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-interface {p1, v1, v7, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 231
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v2}, Lcom/oppo/model/md2/MdModel;->getNumTriangles()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-interface {p1, v1, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 234
    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 235
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 236
    const v1, 0x8075

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 237
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 238
    return-void

    .line 208
    :cond_0
    iget v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mSnapshotTextureID:I

    goto :goto_0

    .line 221
    :cond_1
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 222
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_1
.end method

.method private setUpCamera(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 184
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 185
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 186
    sget-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mvEye:Lcom/oppo/model/lib/Vector3f;

    sget-object v1, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mvCenter:Lcom/oppo/model/lib/Vector3f;

    sget-object v2, Lcom/oppo/model/lib/ModelUtils;->UP_DIRECT:Lcom/oppo/model/lib/Vector3f;

    sget-object v3, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/model/lib/Matrix4f;->gluLookAt(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Matrix4f;)V

    .line 188
    sget-object v0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 189
    return-void
.end method

.method private updateTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 327
    iget v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mSnapshotTextureID:I

    if-lez v2, :cond_0

    .line 328
    iget v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mSnapshotTextureID:I

    invoke-static {p1, v2}, Lcom/oppo/model/lib/TextureFactory;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 329
    iput v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mSnapshotTextureID:I

    .line 331
    :cond_0
    iget v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mCollectTextureID:I

    if-lez v2, :cond_1

    .line 332
    iget v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mCollectTextureID:I

    invoke-static {p1, v2}, Lcom/oppo/model/lib/TextureFactory;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 333
    iput v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mCollectTextureID:I

    .line 335
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b8

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 336
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v0}, Lcom/oppo/model/lib/TextureFactory;->getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v1

    .line 337
    .local v1, id:I
    iget-object v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mSnapshotTexture:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mSnapshotTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 338
    iget-object v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mSnapshotTexture:Landroid/graphics/Bitmap;

    invoke-static {v2, p1, v3}, Lcom/oppo/model/lib/TextureFactory;->getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mSnapshotTextureID:I

    .line 339
    iput-object v4, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mSnapshotTexture:Landroid/graphics/Bitmap;

    .line 343
    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mCollectTexture:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mCollectTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 344
    iget-object v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mCollectTexture:Landroid/graphics/Bitmap;

    invoke-static {v2, p1, v3}, Lcom/oppo/model/lib/TextureFactory;->getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mCollectTextureID:I

    .line 345
    iput-object v4, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mCollectTexture:Landroid/graphics/Bitmap;

    .line 349
    :goto_1
    return-void

    .line 341
    :cond_2
    const-string v2, "Oppo3DSavePhotoView"

    const-string v3, "<-updateTexture-> The snapshot texture is null or recycled, CAN NOT get a texture ID!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    :cond_3
    const-string v2, "Oppo3DSavePhotoView"

    const-string v3, "<-updateTexture-> The mCollectTexture is null or recycled, CAN NOT get a texture ID!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateTime()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4140

    .line 291
    iget-boolean v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mAnimationFlag:Z

    if-eqz v3, :cond_2

    .line 292
    iget v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    .line 293
    .local v0, lastframe:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 294
    .local v1, time:J
    iget v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    const/high16 v4, 0x4000

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 296
    iget v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    const v4, 0x3f4ccccd

    add-float/2addr v3, v4

    iput v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    .line 301
    :goto_0
    iget v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    sub-float/2addr v3, v0

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 305
    :cond_0
    iput-wide v1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mLastTime:J

    .line 307
    iget v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_1

    .line 308
    iget v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mUpdateCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mUpdateCount:I

    .line 309
    iput v6, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    .line 310
    iget v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mUpdateCount:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 311
    iput-boolean v7, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mAnimationFlag:Z

    .line 312
    invoke-direct {p0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->invokeOnAnimationListener()V

    .line 313
    iput v7, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mUpdateCount:I

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->requestRender()V

    .line 321
    .end local v0           #lastframe:F
    .end local v1           #time:J
    :cond_2
    return-void

    .line 298
    .restart local v0       #lastframe:F
    .restart local v1       #time:J
    :cond_3
    iget v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    iget-wide v4, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mLastTime:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    const/high16 v5, 0x447a

    div-float/2addr v4, v5

    const/high16 v5, 0x4234

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    goto :goto_0
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 139
    invoke-direct {p0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->releaseModel()V

    .line 140
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 125
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mAnimationFlag:Z

    .line 127
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 128
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mAnimationFlag:Z

    .line 133
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 134
    return-void
.end method

.method public setOnAnimationListener(Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mOnAnimationListener:Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;

    .line 367
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method public show(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-boolean v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mAnimationFlag:Z

    if-eqz v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 377
    :cond_0
    iput-object p1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mSnapshotTexture:Landroid/graphics/Bitmap;

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mNeedupdateTexture:Z

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    .line 381
    iput-boolean v1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mAnimationFlag:Z

    .line 383
    invoke-super {p0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method public show(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "firstBitmap"
    .parameter "lastBitmap"

    .prologue
    .line 388
    iput-object p2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mCollectTexture:Landroid/graphics/Bitmap;

    .line 389
    invoke-virtual {p0, p1}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->show(Landroid/graphics/Bitmap;)V

    .line 390
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mAnimationFlag:Z

    .line 398
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mOnAnimationListener:Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mOnAnimationListener:Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;

    invoke-interface {v0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;->onAnimationStart()V

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->requestRender()V

    .line 402
    return-void
.end method
