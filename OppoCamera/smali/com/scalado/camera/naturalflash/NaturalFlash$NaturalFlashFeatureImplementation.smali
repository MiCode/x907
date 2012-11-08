.class Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;
.super Ljava/lang/Object;
.source "NaturalFlash.java"

# interfaces
.implements Lcom/scalado/camera/Feature$FeatureImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/naturalflash/NaturalFlash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NaturalFlashFeatureImplementation"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$scalado$camera$naturalflash$NaturalFlash$NaturalFlashStates:[I


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;


# direct methods
.method static synthetic $SWITCH_TABLE$com$scalado$camera$naturalflash$NaturalFlash$NaturalFlashStates()[I
    .locals 3

    .prologue
    .line 129
    sget-object v0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->$SWITCH_TABLE$com$scalado$camera$naturalflash$NaturalFlash$NaturalFlashStates:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;->values()[Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;->CAPTURING:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;

    invoke-virtual {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;->FINISHED:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;

    invoke-virtual {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;->READY:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;

    invoke-virtual {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->$SWITCH_TABLE$com$scalado$camera$naturalflash$NaturalFlash$NaturalFlashStates:[I

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

.method private constructor <init>(Lcom/scalado/camera/naturalflash/NaturalFlash;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;-><init>(Lcom/scalado/camera/naturalflash/NaturalFlash;)V

    return-void
.end method


# virtual methods
.method public deregisterCamera()V
    .locals 2

    .prologue
    .line 161
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$2(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    .line 162
    .local v0, parameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mInitFlash:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$6(Lcom/scalado/camera/naturalflash/NaturalFlash;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mInitFlash:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$6(Lcom/scalado/camera/naturalflash/NaturalFlash;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 165
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setBurstTotalCaptures(I)V

    .line 166
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setForcedSWBurst(Z)V

    .line 167
    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$2(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 168
    return-void
.end method

.method public onAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V
    .locals 1
    .parameter "cbk"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$7(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V

    .line 173
    return-void
.end method

.method public onCancelAutoFocus()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$7(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doCancelAutoFocus()V

    .line 178
    return-void
.end method

.method public onSetParameters(Lcom/scalado/camera/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$7(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 183
    return-void
.end method

.method public onStartSmoothZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$7(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doStartSmoothZoom(I)V

    .line 188
    return-void
.end method

.method public onStopSmoothZoom()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$7(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doStopSmoothZoom()V

    .line 193
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

    .line 198
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "NatFlash: onTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #setter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v0, p1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$8(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/Camera$ShutterCallback;)V

    .line 200
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #setter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p2}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$9(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 201
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #setter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p3}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$10(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 202
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #setter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p4}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$11(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 204
    invoke-static {}, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->$SWITCH_TABLE$com$scalado$camera$naturalflash$NaturalFlash$NaturalFlashStates()[I

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mState:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$12(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 220
    :goto_0
    :pswitch_0
    return-void

    .line 206
    :pswitch_1
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    sget-object v1, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;->CAPTURING:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;

    #setter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mState:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;
    invoke-static {v0, v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$13(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;)V

    .line 207
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$7(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mShutterCallbackHandler:Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$14(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mPostviewCallbackhandler:Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;
    invoke-static {v2}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$15(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mJpegCallbackHandler:Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;
    invoke-static {v3}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$16(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;

    move-result-object v3

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/scalado/camera/Feature$FeatureSocket;->doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    goto :goto_0

    .line 213
    :pswitch_2
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #calls: Lcom/scalado/camera/naturalflash/NaturalFlash;->clean()V
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$17(Lcom/scalado/camera/naturalflash/NaturalFlash;)V

    .line 214
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    sget-object v1, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;->CAPTURING:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;

    #setter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mState:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;
    invoke-static {v0, v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$13(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;)V

    .line 215
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$7(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mShutterCallbackHandler:Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$14(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mPostviewCallbackhandler:Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;
    invoke-static {v2}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$15(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mJpegCallbackHandler:Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;
    invoke-static {v3}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$16(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;

    move-result-object v3

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/scalado/camera/Feature$FeatureSocket;->doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registerCamera(Lcom/scalado/camera/FeatureCamera;Lcom/scalado/camera/Feature$FeatureSocket;)V
    .locals 4
    .parameter "camera"
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scalado/camera/FeatureNotSupportedException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v2, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #setter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v2, p1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$0(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/FeatureCamera;)V

    .line 134
    iget-object v2, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #setter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v2, p2}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$1(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/Feature$FeatureSocket;)V

    .line 136
    iget-object v2, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v2}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$2(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    .line 141
    .local v0, parameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->setForcedSWBurst(Z)V

    .line 143
    iget-object v2, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPictureSize()Lcom/scalado/base/Size;

    move-result-object v3

    #setter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mDims:Lcom/scalado/base/Size;
    invoke-static {v2, v3}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$3(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/base/Size;)V

    .line 144
    iget-object v2, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewFormat()I

    move-result v3

    invoke-static {v3}, Lcom/scalado/camera/utils/Translators;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v3

    #setter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v2, v3}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$4(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/base/Image$Config;)V

    .line 147
    iget-object v2, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mInitFlash:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$5(Lcom/scalado/camera/naturalflash/NaturalFlash;Ljava/lang/String;)V

    .line 148
    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 149
    .local v1, supportedFlashModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 150
    const-string v2, "off"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    const-string v2, "off"

    invoke-interface {v0, v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 155
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v2}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$2(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 156
    return-void

    .line 153
    :cond_1
    const-string v2, "ScaladoCameraFramework"

    const-string v3, "Cannot force flash"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
