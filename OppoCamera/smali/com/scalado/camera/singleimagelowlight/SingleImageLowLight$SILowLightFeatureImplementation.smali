.class Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;
.super Ljava/lang/Object;
.source "SingleImageLowLight.java"

# interfaces
.implements Lcom/scalado/camera/Feature$FeatureImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SILowLightFeatureImplementation"
.end annotation


# instance fields
.field private mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

.field final synthetic this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;-><init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)V

    return-void
.end method


# virtual methods
.method public deregisterCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$1(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    .line 133
    .local v0, parameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setIso(I)V

    .line 134
    iget-object v1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$1(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 135
    iget-object v1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #setter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1, v2}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$0(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/FeatureCamera;)V

    .line 136
    iput-object v2, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    .line 137
    return-void
.end method

.method public onAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V
    .locals 1
    .parameter "autofocusCallback"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V

    .line 158
    return-void
.end method

.method public onCancelAutoFocus()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doCancelAutoFocus()V

    .line 163
    return-void
.end method

.method public onSetParameters(Lcom/scalado/camera/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 153
    return-void
.end method

.method public onStartSmoothZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doStartSmoothZoom(I)V

    .line 168
    return-void
.end method

.method public onStopSmoothZoom()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doStopSmoothZoom()V

    .line 173
    return-void
.end method

.method public onTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 5
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #setter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v0, p1}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$2(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/Camera$ShutterCallback;)V

    .line 143
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #setter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p2}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$3(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 144
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #setter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p3}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$4(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 145
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #setter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p4}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$5(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 147
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    iget-object v1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v1}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$6(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/Camera$ShutterCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v2}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$7(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mPostviewCallbackhandler:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;
    invoke-static {v3}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$8(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mJpegCallbackHandler:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;
    invoke-static {v4}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$9(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/scalado/camera/Feature$FeatureSocket;->doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 148
    return-void
.end method

.method public registerCamera(Lcom/scalado/camera/FeatureCamera;Lcom/scalado/camera/Feature$FeatureSocket;)V
    .locals 2
    .parameter "camera"
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scalado/camera/FeatureNotSupportedException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #setter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1, p1}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$0(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/FeatureCamera;)V

    .line 122
    iput-object p2, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    .line 124
    iget-object v1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$1(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    .line 127
    .local v0, parameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    iget-object v1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$1(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 128
    return-void
.end method
