.class Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;
.super Ljava/lang/Object;
.source "ManualRewindViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/ManualRewindViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedFace"
.end annotation


# instance fields
.field mCurIndex:I

.field mId:I

.field mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V
    .locals 1
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 735
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    .line 736
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mCurIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ManualRewindViewer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 733
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;-><init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V

    return-void
.end method
