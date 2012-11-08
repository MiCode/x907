.class Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;
.super Ljava/lang/Object;
.source "FaceTracker.java"

# interfaces
.implements Lcom/scalado/camera/Camera$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/plugins/FaceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCallbackHandler"
.end annotation


# static fields
.field private static final FRAMES_TO_SKIP:I = 0xf


# instance fields
.field private mFD:Lcom/scalado/caps/face/FaceDetector;

.field private mFaceFound:Z

.field private mSkipCount:I

.field final synthetic this$0:Lcom/scalado/camera/plugins/FaceTracker;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/plugins/FaceTracker;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    iput-object p1, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->this$0:Lcom/scalado/camera/plugins/FaceTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->mFD:Lcom/scalado/caps/face/FaceDetector;

    .line 41
    iput-boolean v1, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->mFaceFound:Z

    .line 42
    iput v1, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->mSkipCount:I

    .line 47
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/scalado/caps/face/FaceDetectorFactory;->getFaceDetector(ZI)Lcom/scalado/caps/face/FaceDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->mFD:Lcom/scalado/caps/face/FaceDetector;

    .line 48
    iget-object v0, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->mFD:Lcom/scalado/caps/face/FaceDetector;

    iget-object v1, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->mFD:Lcom/scalado/caps/face/FaceDetector;

    invoke-interface {v1}, Lcom/scalado/caps/face/FaceDetector;->getDetectableFeatures()Lcom/scalado/caps/face/FeatureSet;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/scalado/caps/face/FaceDetector;->setFeaturesToDetect(Lcom/scalado/caps/face/FeatureSet;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onImage(Lcom/scalado/base/Image;Lcom/scalado/camera/Camera;)V
    .locals 4
    .parameter "image"
    .parameter "camera"

    .prologue
    const/4 v3, 0x0

    .line 54
    iget-boolean v1, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->mFaceFound:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->mSkipCount:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->mFD:Lcom/scalado/caps/face/FaceDetector;

    invoke-interface {v1, p1}, Lcom/scalado/caps/face/FaceDetector;->detectFaces(Lcom/scalado/base/Image;)Lcom/scalado/caps/face/FaceCollection;

    move-result-object v0

    .line 56
    .local v0, collection:Lcom/scalado/caps/face/FaceCollection;
    invoke-virtual {v0}, Lcom/scalado/caps/face/FaceCollection;->getSize()I

    move-result v1

    if-lez v1, :cond_2

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->mFaceFound:Z

    .line 58
    iget-object v1, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->this$0:Lcom/scalado/camera/plugins/FaceTracker;

    #getter for: Lcom/scalado/camera/plugins/FaceTracker;->mFaceListener:Lcom/scalado/camera/plugins/FaceTracker$FaceTrackingListener;
    invoke-static {v1}, Lcom/scalado/camera/plugins/FaceTracker;->access$0(Lcom/scalado/camera/plugins/FaceTracker;)Lcom/scalado/camera/plugins/FaceTracker$FaceTrackingListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/scalado/camera/plugins/FaceTracker$FaceTrackingListener;->onFacesTracked(Lcom/scalado/caps/face/FaceCollection;)V

    .line 63
    :cond_1
    :goto_0
    iput v3, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->mSkipCount:I

    .line 67
    .end local v0           #collection:Lcom/scalado/caps/face/FaceCollection;
    :goto_1
    return-void

    .line 59
    .restart local v0       #collection:Lcom/scalado/caps/face/FaceCollection;
    :cond_2
    iget-boolean v1, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->mFaceFound:Z

    if-eqz v1, :cond_1

    .line 60
    iput-boolean v3, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->mFaceFound:Z

    .line 61
    iget-object v1, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->this$0:Lcom/scalado/camera/plugins/FaceTracker;

    #getter for: Lcom/scalado/camera/plugins/FaceTracker;->mFaceListener:Lcom/scalado/camera/plugins/FaceTracker$FaceTrackingListener;
    invoke-static {v1}, Lcom/scalado/camera/plugins/FaceTracker;->access$0(Lcom/scalado/camera/plugins/FaceTracker;)Lcom/scalado/camera/plugins/FaceTracker$FaceTrackingListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/scalado/camera/plugins/FaceTracker$FaceTrackingListener;->onFacesTracked(Lcom/scalado/caps/face/FaceCollection;)V

    goto :goto_0

    .line 65
    .end local v0           #collection:Lcom/scalado/caps/face/FaceCollection;
    :cond_3
    iget v1, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->mSkipCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;->mSkipCount:I

    goto :goto_1
.end method
