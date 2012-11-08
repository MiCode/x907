.class Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;
.super Ljava/lang/Object;
.source "Oppo3DSavePhotoView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/views/Oppo3DSavePhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavePhotoRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/views/Oppo3DSavePhotoView;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/views/Oppo3DSavePhotoView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 412
    const/4 v0, 0x0

    #setter for: Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;
    invoke-static {p1, v0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$102(Lcom/oppo/camera/views/Oppo3DSavePhotoView;Lcom/oppo/model/md2/MdModel;)Lcom/oppo/model/md2/MdModel;

    .line 413
    const-string v0, "savephoto_land.md2"

    #calls: Lcom/oppo/camera/views/Oppo3DSavePhotoView;->loadModel(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$200(Lcom/oppo/camera/views/Oppo3DSavePhotoView;Ljava/lang/String;)V

    .line 414
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 479
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 481
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    #calls: Lcom/oppo/camera/views/Oppo3DSavePhotoView;->updateTime()V
    invoke-static {v0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$1200(Lcom/oppo/camera/views/Oppo3DSavePhotoView;)V

    .line 483
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 484
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    #calls: Lcom/oppo/camera/views/Oppo3DSavePhotoView;->drawModel(Ljavax/microedition/khronos/opengles/GL10;)V
    invoke-static {v0, p1}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$1300(Lcom/oppo/camera/views/Oppo3DSavePhotoView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 485
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 486
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 438
    invoke-interface {p1, v2, v2, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 439
    int-to-float v4, p2

    int-to-float v5, p3

    div-float v1, v4, v5

    .line 440
    .local v1, ratio:F
    invoke-static {}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$400()[I

    move-result-object v4

    aget v4, v4, v7

    if-ne v4, p2, :cond_0

    invoke-static {}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$400()[I

    move-result-object v4

    aget v4, v4, v8

    if-eq v4, p3, :cond_2

    :cond_0
    move v0, v3

    .line 443
    .local v0, init:Z
    :goto_0
    invoke-static {}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$400()[I

    move-result-object v4

    aput v2, v4, v2

    .line 444
    invoke-static {}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$400()[I

    move-result-object v4

    aput v2, v4, v3

    .line 445
    invoke-static {}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$400()[I

    move-result-object v3

    aput p2, v3, v7

    .line 446
    invoke-static {}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$400()[I

    move-result-object v3

    aput p3, v3, v8

    .line 448
    if-eqz v0, :cond_1

    .line 452
    invoke-static {}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$500()Lcom/oppo/model/lib/Vector3f;

    move-result-object v3

    const/high16 v4, 0x42a0

    div-float/2addr v4, v1

    const v5, 0x3f9a8279

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 453
    iget-object v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    #getter for: Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;
    invoke-static {v3}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$100(Lcom/oppo/camera/views/Oppo3DSavePhotoView;)Lcom/oppo/model/md2/MdModel;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v6}, Lcom/oppo/model/md2/MdModel;->fillRenderBuffer(ZFF)V

    .line 454
    invoke-static {}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$600()Lcom/oppo/model/lib/Vector3f;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    #getter for: Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;
    invoke-static {v3}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$100(Lcom/oppo/camera/views/Oppo3DSavePhotoView;)Lcom/oppo/model/md2/MdModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/model/md2/MdModel;->getSphereCenter()Lcom/oppo/model/lib/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/oppo/model/lib/Vector3f;->x:F

    iput v3, v2, Lcom/oppo/model/lib/Vector3f;->x:F

    .line 455
    invoke-static {}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$600()Lcom/oppo/model/lib/Vector3f;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    #getter for: Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;
    invoke-static {v3}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$100(Lcom/oppo/camera/views/Oppo3DSavePhotoView;)Lcom/oppo/model/md2/MdModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/model/md2/MdModel;->getSphereCenter()Lcom/oppo/model/lib/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/oppo/model/lib/Vector3f;->y:F

    iput v3, v2, Lcom/oppo/model/lib/Vector3f;->y:F

    .line 456
    invoke-static {}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$600()Lcom/oppo/model/lib/Vector3f;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    #getter for: Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;
    invoke-static {v3}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$100(Lcom/oppo/camera/views/Oppo3DSavePhotoView;)Lcom/oppo/model/md2/MdModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/model/md2/MdModel;->getSphereCenter()Lcom/oppo/model/lib/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/oppo/model/lib/Vector3f;->z:F

    iput v3, v2, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 459
    :cond_1
    const/16 v2, 0x1701

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 460
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 461
    const/high16 v2, 0x4234

    const/high16 v3, 0x3f80

    const v4, 0x459c4000

    invoke-static {}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$700()Lcom/oppo/model/lib/Matrix4f;

    move-result-object v5

    invoke-static {v2, v1, v3, v4, v5}, Lcom/oppo/model/lib/Matrix4f;->gluPersective(FFFFLcom/oppo/model/lib/Matrix4f;)V

    .line 464
    invoke-static {}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$700()Lcom/oppo/model/lib/Matrix4f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 465
    invoke-static {}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$700()Lcom/oppo/model/lib/Matrix4f;

    move-result-object v2

    invoke-static {}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$800()[F

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/model/lib/Matrix4f;->fillFloatArray([F)V

    .line 467
    const/16 v2, 0x1700

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 469
    iget-object v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    #calls: Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setUpCamera(Ljavax/microedition/khronos/opengles/GL10;)V
    invoke-static {v2, p1}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$900(Lcom/oppo/camera/views/Oppo3DSavePhotoView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 471
    iget-object v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    #setter for: Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mLastTime:J
    invoke-static {v2, v3, v4}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$1002(Lcom/oppo/camera/views/Oppo3DSavePhotoView;J)J

    .line 472
    iget-object v2, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    #setter for: Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mFrame:F
    invoke-static {v2, v6}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$1102(Lcom/oppo/camera/views/Oppo3DSavePhotoView;F)F

    .line 473
    return-void

    .end local v0           #init:Z
    :cond_2
    move v0, v2

    .line 440
    goto/16 :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter "gl"
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    .line 418
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 420
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 422
    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 423
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 424
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 425
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 426
    const/16 v0, 0x405

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 428
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 429
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 430
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 432
    iget-object v0, p0, Lcom/oppo/camera/views/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/camera/views/Oppo3DSavePhotoView;->mSnapshotTextureID:I
    invoke-static {v0, v1}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->access$302(Lcom/oppo/camera/views/Oppo3DSavePhotoView;I)I

    .line 434
    return-void
.end method
