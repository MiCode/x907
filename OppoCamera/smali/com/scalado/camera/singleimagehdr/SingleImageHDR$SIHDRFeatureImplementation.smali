.class Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;
.super Ljava/lang/Object;
.source "SingleImageHDR.java"

# interfaces
.implements Lcom/scalado/camera/Feature$FeatureImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/singleimagehdr/SingleImageHDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIHDRFeatureImplementation"
.end annotation


# instance fields
.field private mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

.field final synthetic this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;-><init>(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)V

    return-void
.end method


# virtual methods
.method public deregisterCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #setter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v0, v1}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$0(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/camera/FeatureCamera;)V

    .line 128
    iput-object v1, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    .line 129
    return-void
.end method

.method public onAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V
    .locals 1
    .parameter "autofocusCallback"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V

    .line 150
    return-void
.end method

.method public onCancelAutoFocus()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doCancelAutoFocus()V

    .line 155
    return-void
.end method

.method public onSetParameters(Lcom/scalado/camera/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 145
    return-void
.end method

.method public onStartSmoothZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doStartSmoothZoom(I)V

    .line 160
    return-void
.end method

.method public onStopSmoothZoom()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doStopSmoothZoom()V

    .line 165
    return-void
.end method

.method public onTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 5
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #setter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v0, p1}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$1(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/camera/Camera$ShutterCallback;)V

    .line 135
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #setter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p2}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$2(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 136
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #setter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p3}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$3(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 137
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #setter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p4}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$4(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 139
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    iget-object v1, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v1}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$5(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/Camera$ShutterCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v2}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$6(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mPostviewCallbackhandler:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewCallbackHandler;
    invoke-static {v3}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$7(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewCallbackHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mJpegCallbackHandler:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;
    invoke-static {v4}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$8(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/scalado/camera/Feature$FeatureSocket;->doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 140
    return-void
.end method

.method public registerCamera(Lcom/scalado/camera/FeatureCamera;Lcom/scalado/camera/Feature$FeatureSocket;)V
    .locals 1
    .parameter "camera"
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scalado/camera/FeatureNotSupportedException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #setter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v0, p1}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$0(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/camera/FeatureCamera;)V

    .line 122
    iput-object p2, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    .line 123
    return-void
.end method
