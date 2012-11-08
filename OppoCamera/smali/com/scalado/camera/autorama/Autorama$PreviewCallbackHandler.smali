.class Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;
.super Ljava/lang/Object;
.source "Autorama.java"

# interfaces
.implements Lcom/scalado/camera/Camera$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1051
    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    return-void
.end method


# virtual methods
.method public onImage(Lcom/scalado/base/Image;Lcom/scalado/camera/Camera;)V
    .locals 10
    .parameter "image"
    .parameter "camera"

    .prologue
    const/high16 v9, 0x42c8

    .line 1054
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mLastPreviewImage:Lcom/scalado/base/Image;
    invoke-static {v4, p1}, Lcom/scalado/camera/autorama/Autorama;->access$16(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image;)V

    .line 1056
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$17(Lcom/scalado/camera/autorama/Autorama;)Landroid/graphics/Point;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1057
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v7, v7, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I
    invoke-static {v7}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$0(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x64

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x64

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v7}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v8, v8, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I
    invoke-static {v8}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$0(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x64

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x64

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v4, v5}, Lcom/scalado/camera/autorama/Autorama;->access$3(Lcom/scalado/camera/autorama/Autorama;Landroid/graphics/Point;)V

    .line 1060
    :cond_0
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$19(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1061
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    new-instance v5, Lcom/scalado/caps/autorama/ViewfinderTracker;

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/scalado/caps/autorama/ViewfinderTracker;-><init>(Lcom/scalado/base/Size;)V

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v4, v5}, Lcom/scalado/camera/autorama/Autorama;->access$20(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/ViewfinderTracker;)V

    .line 1063
    :cond_1
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v5, v4, Lcom/scalado/camera/autorama/Autorama;->mPreviewframe_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/scalado/camera/autorama/Autorama;->mPreviewframe_count:I

    .line 1064
    const-string v4, "ScaladoCameraFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "preview frame:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v6, v6, Lcom/scalado/camera/autorama/Autorama;->mPreviewframe_count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "capturing:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$2(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v4, v4, Lcom/scalado/camera/autorama/Autorama;->mPreviewframe_count:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1067
    const-string v4, "ScaladoCameraFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pass:preview frame:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v6, v6, Lcom/scalado/camera/autorama/Autorama;->mPreviewframe_count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "capturing:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$2(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_2
    :goto_0
    return-void

    .line 1070
    :cond_3
    const-string v4, "ScaladoCameraFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "preview w:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",h:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const-string v4, "ScaladoCameraFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "preview image w:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",h:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$19(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/scalado/caps/autorama/ViewfinderTracker;->track(Lcom/scalado/base/Image;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v4, v5}, Lcom/scalado/camera/autorama/Autorama;->access$21(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Transform;)V

    .line 1075
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$22(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Vector;->getX()I

    move-result v2

    .line 1076
    .local v2, translationX:I
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$22(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Vector;->getY()I

    move-result v3

    .line 1077
    .local v3, translationY:I
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    int-to-float v5, v2

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$17(Lcom/scalado/camera/autorama/Autorama;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v4, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    .line 1078
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    int-to-float v5, v3

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$17(Lcom/scalado/camera/autorama/Autorama;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v4, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    .line 1079
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1080
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v5, v5, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v6, v6, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    invoke-interface {v4, v5, v6, p1}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onTracking(FFLcom/scalado/base/Image;)V

    .line 1083
    :cond_4
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$2(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_8

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v4, v4, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$1(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1084
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$5(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$State;

    move-result-object v4

    sget-object v5, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    if-eq v4, v5, :cond_8

    .line 1086
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$22(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v5, v5, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMinimumDelta:I
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$2(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/scalado/caps/autorama/Transform;->getDirection(I)Lcom/scalado/caps/autorama/Direction;

    move-result-object v1

    .line 1088
    .local v1, newDirection:Lcom/scalado/caps/autorama/Direction;
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v4, v4, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIsLockedHorizontal:Z
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$3(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lcom/scalado/caps/autorama/Direction;->isHorizontal()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1089
    :cond_5
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v4, v4, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIsLockedVertical:Z
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$4(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/scalado/caps/autorama/Direction;->isVertical()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1090
    :cond_6
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v4, v4, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIsLockedVertical:Z
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$4(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v4, v4, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIsLockedHorizontal:Z
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$3(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1092
    :cond_7
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v4

    if-eq v1, v4, :cond_8

    .line 1093
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v4, v1}, Lcom/scalado/camera/autorama/Autorama;->access$1(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Direction;)V

    .line 1094
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1095
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onDirectionChanged(Lcom/scalado/caps/autorama/Direction;)V

    .line 1101
    .end local v1           #newDirection:Lcom/scalado/caps/autorama/Direction;
    :cond_8
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v4

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v4, v5, :cond_2

    .line 1102
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$22(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v6, v6, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$0(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/scalado/caps/autorama/Transform;->isTimeToCapture(Lcom/scalado/caps/autorama/Direction;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1105
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v4

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-eq v4, v5, :cond_9

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v4

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne v4, v5, :cond_a

    .line 1106
    :cond_9
    int-to-float v4, v3

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 1111
    .local v0, deviation:F
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v9

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v5, v5, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$5(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_b

    .line 1112
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->capture()V
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$10(Lcom/scalado/camera/autorama/Autorama;)V

    goto/16 :goto_0

    .line 1109
    .end local v0           #deviation:F
    :cond_a
    int-to-float v4, v2

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .restart local v0       #deviation:F
    goto :goto_1

    .line 1115
    :cond_b
    const-string v4, "ScaladoCameraFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Capture refused due to deviation: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-float v6, v0, v9

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Max: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v6, v6, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$5(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
