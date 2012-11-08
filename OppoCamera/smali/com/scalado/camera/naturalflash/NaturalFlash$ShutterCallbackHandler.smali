.class Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;
.super Ljava/lang/Object;
.source "NaturalFlash.java"

# interfaces
.implements Lcom/scalado/camera/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/naturalflash/NaturalFlash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutterCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/naturalflash/NaturalFlash;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;-><init>(Lcom/scalado/camera/naturalflash/NaturalFlash;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mNaturalFlashListener:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$18(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mNaturalFlashListener:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;
    invoke-static {v0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$18(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCapturedImages:I
    invoke-static {v1}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$19(Lcom/scalado/camera/naturalflash/NaturalFlash;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;->onIntermediateShutter(I)V

    .line 230
    :cond_0
    return-void
.end method
