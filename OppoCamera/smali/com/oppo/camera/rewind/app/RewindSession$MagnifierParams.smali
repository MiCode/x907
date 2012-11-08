.class Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;
.super Ljava/lang/Object;
.source "RewindSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierParams"
.end annotation


# instance fields
.field mDims:Lcom/scalado/base/Size;

.field mScreenRect:Lcom/scalado/base/Rect;

.field mSrcRect:Lcom/scalado/base/Rect;

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindSession;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;)V
    .locals 1
    .parameter

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mScreenRect:Lcom/scalado/base/Rect;

    .line 1035
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mSrcRect:Lcom/scalado/base/Rect;

    .line 1036
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mDims:Lcom/scalado/base/Size;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1033
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;
    .locals 4

    .prologue
    .line 1038
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-direct {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;)V

    .line 1039
    .local v0, newParams:Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mScreenRect:Lcom/scalado/base/Rect;

    iget-object v2, v0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mScreenRect:Lcom/scalado/base/Rect;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession;->copyRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    invoke-static {v1, v2}, Lcom/oppo/camera/rewind/app/RewindSession;->access$2500(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1040
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mSrcRect:Lcom/scalado/base/Rect;

    iget-object v2, v0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mSrcRect:Lcom/scalado/base/Rect;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession;->copyRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    invoke-static {v1, v2}, Lcom/oppo/camera/rewind/app/RewindSession;->access$2500(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1041
    new-instance v1, Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mDims:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v1, v0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mDims:Lcom/scalado/base/Size;

    .line 1042
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1033
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->clone()Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

    move-result-object v0

    return-object v0
.end method
