.class public Lcom/oppo/camera/rewind/app/SourceManager;
.super Ljava/lang/Object;
.source "SourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/app/SourceManager$1;,
        Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;,
        Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;,
        Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;,
        Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBackgroundImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

.field private mEntries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;

.field private mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

.field private mMagnifierSourceRect:Lcom/scalado/base/Rect;

.field private mThumbnailImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;Lcom/oppo/camera/rewind/app/SourceManager$Configuration;Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)V
    .locals 2
    .parameter "magnifiedImageConfig"
    .parameter "backgroundConfig"
    .parameter "thumbnailConfig"

    .prologue
    .line 210
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "SourceManager"

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->TAG:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->clone()Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    .line 212
    invoke-virtual {p2}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->clone()Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mBackgroundImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    .line 213
    invoke-virtual {p3}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->clone()Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mThumbnailImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    .line 217
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mEntries:Ljava/util/Vector;

    .line 218
    new-instance v0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;-><init>(Lcom/oppo/camera/rewind/app/SourceManager;Lcom/oppo/camera/rewind/app/SourceManager$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mHandler:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;

    .line 219
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;

    .line 222
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mListeners:Ljava/util/Vector;

    .line 224
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/SourceManager;->reset()V

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/camera/rewind/app/SourceManager;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mListeners:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/camera/rewind/app/SourceManager;Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/SourceManager;->getEntryIndex(Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mThumbnailImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/camera/rewind/app/SourceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mBackgroundImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    return-object v0
.end method

.method private getEntryIndex(Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;)I
    .locals 3
    .parameter "entry"

    .prologue
    .line 449
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 450
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager;->TAG:Ljava/lang/String;

    const-string v2, "Index returned is -1"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    return v0
.end method


# virtual methods
.method public addJpeg(Ljava/nio/ByteBuffer;)I
    .locals 5
    .parameter "jpeg"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/SourceManager;->getNumberOfImages()I

    move-result v1

    .line 257
    .local v1, index:I
    new-instance v0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;-><init>(Lcom/oppo/camera/rewind/app/SourceManager;Ljava/nio/ByteBuffer;Lcom/oppo/camera/rewind/app/SourceManager$1;)V

    .line 258
    .local v0, entry:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mHandler:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 260
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mHandler:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;

    invoke-virtual {v3, v2}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    return v1
.end method

.method public getBackgroundConfig()Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mBackgroundImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    return-object v0
.end method

.method public getBackgroundImage(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "index"

    .prologue
    .line 335
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 336
    :cond_0
    const/4 v1, 0x0

    .line 339
    :goto_0
    return-object v1

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->getBackgroundImage()Lcom/scalado/base/Image;

    move-result-object v0

    .line 339
    .local v0, bgImage:Lcom/scalado/base/Image;
    invoke-virtual {v0}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0
.end method

.method public getEntry(I)Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;
    .locals 3
    .parameter "index"

    .prologue
    .line 302
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is outside valid range [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;

    return-object v0
.end method

.method public getMagnifiedImage(ILcom/scalado/base/Rect;)Lcom/scalado/base/Image;
    .locals 1
    .parameter "index"
    .parameter "rect"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;

    invoke-virtual {v0, p2}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->getMagnifiedImage(Lcom/scalado/base/Rect;)Lcom/scalado/base/Image;

    move-result-object v0

    return-object v0
.end method

.method public getMagnifierHeight()I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$700(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v0

    return v0
.end method

.method public getMagnifierWidth()I
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$600(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v0

    return v0
.end method

.method public getNumberOfImages()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getSourceImage(I)Ljava/nio/ByteBuffer;
    .locals 1
    .parameter "index"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->getSource()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public registerListener(Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mListeners:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 441
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    sget-object v1, Lcom/scalado/caps/screen/Screen$RenderMode;->NORMAL:Lcom/scalado/caps/screen/Screen$RenderMode;

    #setter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mRenderMode:Lcom/scalado/caps/screen/Screen$RenderMode;
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$402(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;Lcom/scalado/caps/screen/Screen$RenderMode;)Lcom/scalado/caps/screen/Screen$RenderMode;

    .line 233
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 235
    return-void
.end method

.method public setMagnifierSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    #setter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I
    invoke-static {v0, p1}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$602(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;I)I

    .line 379
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    #setter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I
    invoke-static {v0, p2}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$702(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;I)I

    .line 380
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
