.class Lcom/oppo/camera/OppoCamera$15;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;


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
    .line 2926
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$15;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntermediateJpeg([BI)V
    .locals 1
    .parameter "data"
    .parameter "index"

    .prologue
    .line 2939
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2940
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$15;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->doFeatureAnimation([B)V
    invoke-static {v0, p1}, Lcom/oppo/camera/OppoCamera;->access$9000(Lcom/oppo/camera/OppoCamera;[B)V

    .line 2942
    :cond_0
    return-void
.end method

.method public onIntermediatePostview([BI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2935
    return-void
.end method

.method public onIntermediateShutter(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2931
    return-void
.end method
