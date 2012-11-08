.class Lcom/scalado/camera/hdr2/HDR2$PostviewCallbackHandler;
.super Ljava/lang/Object;
.source "HDR2.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/hdr2/HDR2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostviewCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/hdr2/HDR2;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/hdr2/HDR2;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/scalado/camera/hdr2/HDR2$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/hdr2/HDR2$PostviewCallbackHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/scalado/camera/hdr2/HDR2$PostviewCallbackHandler;-><init>(Lcom/scalado/camera/hdr2/HDR2;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 2
    .parameter "postview"
    .parameter "camera"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mHDR2Listener:Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;
    invoke-static {v0}, Lcom/scalado/camera/hdr2/HDR2;->access$22(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mHDR2Listener:Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;
    invoke-static {v0}, Lcom/scalado/camera/hdr2/HDR2;->access$22(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/hdr2/HDR2$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mCapturedImages:I
    invoke-static {v1}, Lcom/scalado/camera/hdr2/HDR2;->access$23(Lcom/scalado/camera/hdr2/HDR2;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;->onIntermediatePostview([BI)V

    .line 291
    :cond_0
    return-void
.end method
