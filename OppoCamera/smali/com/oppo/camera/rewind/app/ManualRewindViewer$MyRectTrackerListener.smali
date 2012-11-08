.class Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectTrackerListener;
.super Ljava/lang/Object;
.source "ManualRewindViewer.java"

# interfaces
.implements Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/ManualRewindViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRectTrackerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectTrackerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ManualRewindViewer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1162
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectTrackerListener;-><init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V

    return-void
.end method


# virtual methods
.method public onAnalyzeComplete()V
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectTrackerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #calls: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->asyncFaceDetectionComplete()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$2700(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V

    .line 1174
    return-void
.end method

.method public onImageAnalyzed(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1170
    return-void
.end method
