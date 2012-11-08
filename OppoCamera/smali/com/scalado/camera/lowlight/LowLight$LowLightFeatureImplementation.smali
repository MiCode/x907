.class Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;
.super Ljava/lang/Object;
.source "LowLight.java"

# interfaces
.implements Lcom/scalado/camera/Feature$FeatureImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/lowlight/LowLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LowLightFeatureImplementation"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$scalado$camera$lowlight$LowLight$LowLightStates:[I


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/lowlight/LowLight;


# direct methods
.method static synthetic $SWITCH_TABLE$com$scalado$camera$lowlight$LowLight$LowLightStates()[I
    .locals 3

    .prologue
    .line 129
    sget-object v0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->$SWITCH_TABLE$com$scalado$camera$lowlight$LowLight$LowLightStates:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->values()[Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->CAPTURING:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    invoke-virtual {v1}, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->FINISHED:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    invoke-virtual {v1}, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->READY:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    invoke-virtual {v1}, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->$SWITCH_TABLE$com$scalado$camera$lowlight$LowLight$LowLightStates:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>(Lcom/scalado/camera/lowlight/LowLight;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;-><init>(Lcom/scalado/camera/lowlight/LowLight;)V

    return-void
.end method


# virtual methods
.method public deregisterCamera()V
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/scalado/camera/lowlight/LowLight;->access$2(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    .line 167
    .local v0, parameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mInitIso:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/camera/lowlight/LowLight;->access$7(Lcom/scalado/camera/lowlight/LowLight;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "iso"

    iget-object v2, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mInitIso:Ljava/lang/String;
    invoke-static {v2}, Lcom/scalado/camera/lowlight/LowLight;->access$7(Lcom/scalado/camera/lowlight/LowLight;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setBurstTotalCaptures(I)V

    .line 171
    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/scalado/camera/lowlight/LowLight;->access$2(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 172
    return-void
.end method

.method public onAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V
    .locals 1
    .parameter "cbk"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$8(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V

    .line 177
    return-void
.end method

.method public onCancelAutoFocus()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$8(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doCancelAutoFocus()V

    .line 182
    return-void
.end method

.method public onSetParameters(Lcom/scalado/camera/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$8(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 187
    return-void
.end method

.method public onStartSmoothZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$8(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doStartSmoothZoom(I)V

    .line 192
    return-void
.end method

.method public onStopSmoothZoom()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$8(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doStopSmoothZoom()V

    .line 197
    return-void
.end method

.method public onTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 5
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    const/4 v4, 0x0

    .line 202
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "HDR: onTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #setter for: Lcom/scalado/camera/lowlight/LowLight;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v0, p1}, Lcom/scalado/camera/lowlight/LowLight;->access$9(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/Camera$ShutterCallback;)V

    .line 204
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #setter for: Lcom/scalado/camera/lowlight/LowLight;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p2}, Lcom/scalado/camera/lowlight/LowLight;->access$10(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 205
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #setter for: Lcom/scalado/camera/lowlight/LowLight;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p3}, Lcom/scalado/camera/lowlight/LowLight;->access$11(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 206
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #setter for: Lcom/scalado/camera/lowlight/LowLight;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p4}, Lcom/scalado/camera/lowlight/LowLight;->access$12(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 208
    invoke-static {}, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->$SWITCH_TABLE$com$scalado$camera$lowlight$LowLight$LowLightStates()[I

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mState:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;
    invoke-static {v1}, Lcom/scalado/camera/lowlight/LowLight;->access$13(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 223
    :goto_0
    :pswitch_0
    return-void

    .line 210
    :pswitch_1
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    sget-object v1, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->CAPTURING:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    #setter for: Lcom/scalado/camera/lowlight/LowLight;->mState:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;
    invoke-static {v0, v1}, Lcom/scalado/camera/lowlight/LowLight;->access$14(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/lowlight/LowLight$LowLightStates;)V

    .line 211
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$8(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mShutterCallbackHandler:Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;
    invoke-static {v1}, Lcom/scalado/camera/lowlight/LowLight;->access$15(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mPostviewCallbackhandler:Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;
    invoke-static {v2}, Lcom/scalado/camera/lowlight/LowLight;->access$16(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mJpegCallbackHandler:Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;
    invoke-static {v3}, Lcom/scalado/camera/lowlight/LowLight;->access$17(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;

    move-result-object v3

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/scalado/camera/Feature$FeatureSocket;->doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    goto :goto_0

    .line 216
    :pswitch_2
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #calls: Lcom/scalado/camera/lowlight/LowLight;->clean()V
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$18(Lcom/scalado/camera/lowlight/LowLight;)V

    .line 217
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    sget-object v1, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->CAPTURING:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    #setter for: Lcom/scalado/camera/lowlight/LowLight;->mState:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;
    invoke-static {v0, v1}, Lcom/scalado/camera/lowlight/LowLight;->access$14(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/lowlight/LowLight$LowLightStates;)V

    .line 218
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$8(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mShutterCallbackHandler:Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;
    invoke-static {v1}, Lcom/scalado/camera/lowlight/LowLight;->access$15(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mPostviewCallbackhandler:Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;
    invoke-static {v2}, Lcom/scalado/camera/lowlight/LowLight;->access$16(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mJpegCallbackHandler:Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;
    invoke-static {v3}, Lcom/scalado/camera/lowlight/LowLight;->access$17(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;

    move-result-object v3

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/scalado/camera/Feature$FeatureSocket;->doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registerCamera(Lcom/scalado/camera/FeatureCamera;Lcom/scalado/camera/Feature$FeatureSocket;)V
    .locals 3
    .parameter "camera"
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scalado/camera/FeatureNotSupportedException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #setter for: Lcom/scalado/camera/lowlight/LowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1, p1}, Lcom/scalado/camera/lowlight/LowLight;->access$0(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/FeatureCamera;)V

    .line 134
    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #setter for: Lcom/scalado/camera/lowlight/LowLight;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v1, p2}, Lcom/scalado/camera/lowlight/LowLight;->access$1(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/Feature$FeatureSocket;)V

    .line 136
    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/scalado/camera/lowlight/LowLight;->access$2(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    .line 138
    .local v0, parameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->TOTAL_CAPTURE_IMAGES:I
    invoke-static {v1}, Lcom/scalado/camera/lowlight/LowLight;->access$3(Lcom/scalado/camera/lowlight/LowLight;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setBurstTotalCaptures(I)V

    .line 140
    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPictureSize()Lcom/scalado/base/Size;

    move-result-object v2

    #setter for: Lcom/scalado/camera/lowlight/LowLight;->mDims:Lcom/scalado/base/Size;
    invoke-static {v1, v2}, Lcom/scalado/camera/lowlight/LowLight;->access$4(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/base/Size;)V

    .line 141
    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewFormat()I

    move-result v2

    invoke-static {v2}, Lcom/scalado/camera/utils/Translators;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v2

    #setter for: Lcom/scalado/camera/lowlight/LowLight;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v1, v2}, Lcom/scalado/camera/lowlight/LowLight;->access$5(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/base/Image$Config;)V

    .line 144
    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    const-string v2, "iso"

    invoke-interface {v0, v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/scalado/camera/lowlight/LowLight;->mInitIso:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/scalado/camera/lowlight/LowLight;->access$6(Lcom/scalado/camera/lowlight/LowLight;Ljava/lang/String;)V

    .line 159
    const-string v1, "iso"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/scalado/camera/lowlight/LowLight;->access$2(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 161
    return-void
.end method
