.class final Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyPreviewCallback"
.end annotation


# instance fields
.field private mBuffers:[[B

.field private mLast:I

.field private mNumBuffers:I

.field private mSent:[Z

.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;I)V
    .locals 1
    .parameter
    .parameter "numBuffers"

    .prologue
    .line 827
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 825
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mLast:I

    .line 828
    iput p2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mNumBuffers:I

    .line 829
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;ILcom/oppo/camera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 821
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;-><init>(Lcom/oppo/camera/rewind/RewindActivity;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;Lcom/scalado/camera/Camera;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 821
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->set(Lcom/scalado/camera/Camera;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->getLast()[B

    move-result-object v0

    return-object v0
.end method

.method private createBuffers()V
    .locals 4

    .prologue
    .line 860
    const v1, 0xbb800

    .line 861
    .local v1, size:I
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mBuffers:[[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mBuffers:[[B

    array-length v2, v2

    iget v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mNumBuffers:I

    if-eq v2, v3, :cond_1

    .line 862
    :cond_0
    iget v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mNumBuffers:I

    new-array v2, v2, [[B

    iput-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mBuffers:[[B

    .line 863
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mBuffers:[[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 865
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mBuffers:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 866
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mBuffers:[[B

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mBuffers:[[B

    aget-object v2, v2, v0

    array-length v2, v2

    if-eq v2, v1, :cond_3

    .line 867
    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mBuffers:[[B

    new-array v3, v1, [B

    aput-object v3, v2, v0

    .line 865
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 870
    :cond_4
    iget v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mNumBuffers:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mSent:[Z

    .line 871
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mSent:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 872
    return-void
.end method

.method private getLast()[B
    .locals 2

    .prologue
    .line 896
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mLast:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mBuffers:[[B

    iget v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mLast:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private indexOf([B)I
    .locals 2
    .parameter "buffer"

    .prologue
    .line 880
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mBuffers:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 881
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mBuffers:[[B

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 885
    .end local v0           #i:I
    :goto_1
    return v0

    .line 880
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 885
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private next()I
    .locals 2

    .prologue
    .line 889
    const/4 v0, 0x0

    .line 890
    .local v0, next:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mSent:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 891
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 893
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mSent:[Z

    array-length v1, v1

    if-gt v0, v1, :cond_1

    .end local v0           #next:I
    :goto_1
    return v0

    .restart local v0       #next:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private send(ILcom/scalado/camera/Camera;)V
    .locals 2
    .parameter "index"
    .parameter "camera"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mBuffers:[[B

    aget-object v0, v0, p1

    invoke-interface {p2, v0}, Lcom/scalado/camera/Camera;->addCallbackBuffer([B)V

    .line 876
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mSent:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 877
    return-void
.end method

.method private set(Lcom/scalado/camera/Camera;)V
    .locals 2
    .parameter "camera"

    .prologue
    .line 847
    const/4 v1, -0x1

    iput v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mLast:I

    .line 848
    const/4 v0, 0x0

    .line 849
    .local v0, next:I
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mSent:[Z

    if-eqz v1, :cond_0

    .line 850
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->next()I

    move-result v0

    .line 852
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->createBuffers()V

    .line 853
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/scalado/camera/Camera;->setPreviewCallbackWithBuffer(Lcom/scalado/camera/Camera$PreviewCallback;)V

    .line 854
    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->send(ILcom/scalado/camera/Camera;)V

    .line 855
    invoke-interface {p1, p0}, Lcom/scalado/camera/Camera;->setPreviewCallbackWithBuffer(Lcom/scalado/camera/Camera$PreviewCallback;)V

    .line 857
    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLcom/scalado/camera/Camera;)V
    .locals 4
    .parameter "bytes"
    .parameter "camera"

    .prologue
    .line 832
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->indexOf([B)I

    move-result v0

    .line 833
    .local v0, index:I
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->next()I

    move-result v1

    .line 835
    .local v1, next:I
    if-ltz v0, :cond_1

    .line 836
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mSent:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    .line 837
    iput v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mLast:I

    .line 841
    :goto_0
    if-ltz v1, :cond_0

    .line 842
    invoke-direct {p0, v1, p2}, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->send(ILcom/scalado/camera/Camera;)V

    .line 844
    :cond_0
    return-void

    .line 839
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->mLast:I

    goto :goto_0
.end method
