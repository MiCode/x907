.class Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyWheelCallback;
.super Ljava/lang/Object;
.source "ManualRewindViewer.java"

# interfaces
.implements Lcom/oppo/camera/rewind/ui/Wheel$WheelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/ManualRewindViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWheelCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyWheelCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ManualRewindViewer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1156
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyWheelCallback;-><init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V

    return-void
.end method


# virtual methods
.method public getImage()Lcom/scalado/base/Image;
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyWheelCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindSession;->getMagnifiedPreview()Lcom/scalado/base/Image;

    move-result-object v0

    return-object v0
.end method
