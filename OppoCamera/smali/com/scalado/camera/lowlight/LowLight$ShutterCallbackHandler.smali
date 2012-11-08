.class Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;
.super Ljava/lang/Object;
.source "LowLight.java"

# interfaces
.implements Lcom/scalado/camera/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/lowlight/LowLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutterCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/lowlight/LowLight;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/lowlight/LowLight;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;-><init>(Lcom/scalado/camera/lowlight/LowLight;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mLowLightListener:Lcom/scalado/camera/lowlight/LowLight$LowLightListener;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$19(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$LowLightListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mLowLightListener:Lcom/scalado/camera/lowlight/LowLight$LowLightListener;
    invoke-static {v0}, Lcom/scalado/camera/lowlight/LowLight;->access$19(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$LowLightListener;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mCapturedImages:I
    invoke-static {v1}, Lcom/scalado/camera/lowlight/LowLight;->access$20(Lcom/scalado/camera/lowlight/LowLight;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/scalado/camera/lowlight/LowLight$LowLightListener;->onIntermediateShutter(I)V

    .line 233
    :cond_0
    return-void
.end method
