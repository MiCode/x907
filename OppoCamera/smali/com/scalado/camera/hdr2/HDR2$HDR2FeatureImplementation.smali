.class Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;
.super Ljava/lang/Object;
.source "HDR2.java"

# interfaces
.implements Lcom/scalado/camera/Feature$FeatureImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/hdr2/HDR2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HDR2FeatureImplementation"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$scalado$camera$hdr2$HDR2$HDRStates:[I


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/hdr2/HDR2;


# direct methods
.method static synthetic $SWITCH_TABLE$com$scalado$camera$hdr2$HDR2$HDRStates()[I
    .locals 3

    .prologue
    .line 186
    sget-object v0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->$SWITCH_TABLE$com$scalado$camera$hdr2$HDR2$HDRStates:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->values()[Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->CAPTURING:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    invoke-virtual {v1}, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->FINISHED:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    invoke-virtual {v1}, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->READY:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    invoke-virtual {v1}, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->$SWITCH_TABLE$com$scalado$camera$hdr2$HDR2$HDRStates:[I

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

.method private constructor <init>(Lcom/scalado/camera/hdr2/HDR2;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;-><init>(Lcom/scalado/camera/hdr2/HDR2;)V

    return-void
.end method


# virtual methods
.method public deregisterCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v1, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/scalado/camera/hdr2/HDR2;->access$4(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    .line 218
    .local v0, params:Lcom/scalado/camera/FeatureCamera$Parameters;
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setExposureBracketing([I)V

    .line 219
    iget-object v1, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mCurrentExposureCompensation:I
    invoke-static {v1}, Lcom/scalado/camera/hdr2/HDR2;->access$13(Lcom/scalado/camera/hdr2/HDR2;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setExposureCompensation(I)V

    .line 220
    iget-object v1, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v1}, Lcom/scalado/camera/hdr2/HDR2;->access$14(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 221
    iget-object v1, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    const/4 v2, 0x0

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1, v2}, Lcom/scalado/camera/hdr2/HDR2;->access$2(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/FeatureCamera;)V

    .line 222
    return-void
.end method

.method public onAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V
    .locals 1
    .parameter "cbk"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/hdr2/HDR2;->access$14(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V

    .line 227
    return-void
.end method

.method public onCancelAutoFocus()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/hdr2/HDR2;->access$14(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doCancelAutoFocus()V

    .line 232
    return-void
.end method

.method public onSetParameters(Lcom/scalado/camera/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/hdr2/HDR2;->access$14(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 237
    return-void
.end method

.method public onStartSmoothZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/hdr2/HDR2;->access$14(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doStartSmoothZoom(I)V

    .line 242
    return-void
.end method

.method public onStopSmoothZoom()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/hdr2/HDR2;->access$14(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doStopSmoothZoom()V

    .line 247
    return-void
.end method

.method public onTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 2
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 252
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "HDR: onTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v0, p1}, Lcom/scalado/camera/hdr2/HDR2;->access$15(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/Camera$ShutterCallback;)V

    .line 254
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p2}, Lcom/scalado/camera/hdr2/HDR2;->access$16(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 255
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p3}, Lcom/scalado/camera/hdr2/HDR2;->access$17(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 256
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p4}, Lcom/scalado/camera/hdr2/HDR2;->access$18(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 258
    invoke-static {}, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->$SWITCH_TABLE$com$scalado$camera$hdr2$HDR2$HDRStates()[I

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mState:Lcom/scalado/camera/hdr2/HDR2$HDRStates;
    invoke-static {v1}, Lcom/scalado/camera/hdr2/HDR2;->access$19(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 271
    :goto_0
    :pswitch_0
    return-void

    .line 260
    :pswitch_1
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #calls: Lcom/scalado/camera/hdr2/HDR2;->startCapturing()V
    invoke-static {v0}, Lcom/scalado/camera/hdr2/HDR2;->access$20(Lcom/scalado/camera/hdr2/HDR2;)V

    goto :goto_0

    .line 265
    :pswitch_2
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #calls: Lcom/scalado/camera/hdr2/HDR2;->clean()V
    invoke-static {v0}, Lcom/scalado/camera/hdr2/HDR2;->access$21(Lcom/scalado/camera/hdr2/HDR2;)V

    .line 266
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #calls: Lcom/scalado/camera/hdr2/HDR2;->startCapturing()V
    invoke-static {v0}, Lcom/scalado/camera/hdr2/HDR2;->access$20(Lcom/scalado/camera/hdr2/HDR2;)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registerCamera(Lcom/scalado/camera/FeatureCamera;Lcom/scalado/camera/Feature$FeatureSocket;)V
    .locals 5
    .parameter "camera"
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scalado/camera/FeatureNotSupportedException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v2, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v2, p1}, Lcom/scalado/camera/hdr2/HDR2;->access$2(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/FeatureCamera;)V

    .line 191
    iget-object v2, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v2, p2}, Lcom/scalado/camera/hdr2/HDR2;->access$3(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/Feature$FeatureSocket;)V

    .line 193
    iget-object v2, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v2}, Lcom/scalado/camera/hdr2/HDR2;->access$4(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v1

    .line 194
    .local v1, parameters:Lcom/scalado/camera/Camera$Parameters;
    iget-object v2, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    invoke-interface {v1}, Lcom/scalado/camera/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mMinExposureCompensation:I
    invoke-static {v2, v3}, Lcom/scalado/camera/hdr2/HDR2;->access$5(Lcom/scalado/camera/hdr2/HDR2;I)V

    .line 195
    iget-object v2, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    invoke-interface {v1}, Lcom/scalado/camera/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v3

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mMaxExposureCompensation:I
    invoke-static {v2, v3}, Lcom/scalado/camera/hdr2/HDR2;->access$6(Lcom/scalado/camera/hdr2/HDR2;I)V

    .line 196
    iget-object v2, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    invoke-interface {v1}, Lcom/scalado/camera/Camera$Parameters;->getExposureCompensation()I

    move-result v3

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mCurrentExposureCompensation:I
    invoke-static {v2, v3}, Lcom/scalado/camera/hdr2/HDR2;->access$7(Lcom/scalado/camera/hdr2/HDR2;I)V

    .line 197
    const-string v2, "ScaladoCameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ExposureCompensation interval: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mMinExposureCompensation:I
    invoke-static {v4}, Lcom/scalado/camera/hdr2/HDR2;->access$8(Lcom/scalado/camera/hdr2/HDR2;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mMaxExposureCompensation:I
    invoke-static {v4}, Lcom/scalado/camera/hdr2/HDR2;->access$9(Lcom/scalado/camera/hdr2/HDR2;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v2, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mMinExposureCompensation:I
    invoke-static {v2}, Lcom/scalado/camera/hdr2/HDR2;->access$8(Lcom/scalado/camera/hdr2/HDR2;)I

    move-result v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mMaxExposureCompensation:I
    invoke-static {v2}, Lcom/scalado/camera/hdr2/HDR2;->access$9(Lcom/scalado/camera/hdr2/HDR2;)I

    move-result v2

    if-lez v2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    invoke-interface {v1}, Lcom/scalado/camera/Camera$Parameters;->getExposureCompensationStep()F

    move-result v3

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mExposureCompensationStep:F
    invoke-static {v2, v3}, Lcom/scalado/camera/hdr2/HDR2;->access$10(Lcom/scalado/camera/hdr2/HDR2;F)V

    .line 203
    const-string v2, "ScaladoCameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exposure step: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/scalado/camera/Camera$Parameters;->getExposureCompensationStep()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    invoke-interface {v1}, Lcom/scalado/camera/Camera$Parameters;->getPictureSize()Lcom/scalado/base/Size;

    move-result-object v3

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mDims:Lcom/scalado/base/Size;
    invoke-static {v2, v3}, Lcom/scalado/camera/hdr2/HDR2;->access$11(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/base/Size;)V

    .line 209
    const/high16 v2, 0x3f00

    iget-object v3, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mExposureCompensationStep:F
    invoke-static {v3}, Lcom/scalado/camera/hdr2/HDR2;->access$12(Lcom/scalado/camera/hdr2/HDR2;)F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 210
    .local v0, defaultExposureCompensation:I
    iget-object v2, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mExposureDiff:I
    invoke-static {v2}, Lcom/scalado/camera/hdr2/HDR2;->access$1(Lcom/scalado/camera/hdr2/HDR2;)I

    move-result v2

    if-nez v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mExposureDiff:I
    invoke-static {v2, v0}, Lcom/scalado/camera/hdr2/HDR2;->access$0(Lcom/scalado/camera/hdr2/HDR2;I)V

    .line 213
    :cond_0
    return-void

    .line 206
    .end local v0           #defaultExposureCompensation:I
    :cond_1
    new-instance v2, Lcom/scalado/camera/FeatureNotSupportedException;

    const-string v3, "Camera hardware does not support changing exposure."

    invoke-direct {v2, v3}, Lcom/scalado/camera/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
