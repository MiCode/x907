.class Lcom/oppo/camera/OppoCamera$14;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Lcom/scalado/camera/lowlight/LowLight$LowLightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoCamera;


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2908
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$14;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntermediateJpeg([BI)V
    .locals 1
    .parameter "data"
    .parameter "index"

    .prologue
    .line 2920
    if-nez p2, :cond_0

    .line 2921
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$14;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->doFeatureAnimation([B)V
    invoke-static {v0, p1}, Lcom/oppo/camera/OppoCamera;->access$9000(Lcom/oppo/camera/OppoCamera;[B)V

    .line 2923
    :cond_0
    return-void
.end method

.method public onIntermediatePostview([BI)V
    .locals 0
    .parameter "arg0"
    .parameter "index"

    .prologue
    .line 2916
    return-void
.end method

.method public onIntermediateShutter(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 2912
    return-void
.end method
