.class Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectListener;
.super Ljava/lang/Object;
.source "ManualRewindViewer.java"

# interfaces
.implements Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/ManualRewindViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRectListener"
.end annotation


# instance fields
.field private mSrcRect:Lcom/scalado/base/Rect;

.field private mTmpRect:Lcom/scalado/base/Rect;

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V
    .locals 1
    .parameter

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectListener;->mSrcRect:Lcom/scalado/base/Rect;

    .line 1141
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectListener;->mTmpRect:Lcom/scalado/base/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ManualRewindViewer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1139
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectListener;-><init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V

    return-void
.end method


# virtual methods
.method public onRectChanged(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 1149
    return-void
.end method

.method public onSelected(Lcom/oppo/camera/rewind/ui/SelectionRect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #calls: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->startShowWheel(Lcom/oppo/camera/rewind/ui/SelectionRect;)V
    invoke-static {v0, p1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$2600(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/ui/SelectionRect;)V

    .line 1153
    return-void
.end method

.method public validateRect(Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "r"

    .prologue
    .line 1144
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinScreenWidth:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$2400(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinScreenHeight:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$2500(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
