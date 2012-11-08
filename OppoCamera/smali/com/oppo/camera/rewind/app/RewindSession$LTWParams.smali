.class Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;
.super Ljava/lang/Object;
.source "RewindSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LTWParams"
.end annotation


# instance fields
.field private mBgIndex:I

.field private mBoundary:Lcom/scalado/base/Rect;

.field private mFeathering:I

.field private mFgIndex:I

.field private mMaxTranslation:I

.field private mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

.field private mRectSet:Z

.field private mValid:Z

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindSession;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 939
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 940
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;

    .line 943
    iput v1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBgIndex:I

    .line 944
    iput v1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFgIndex:I

    .line 946
    iput-boolean v2, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mRectSet:Z

    .line 947
    iput-boolean v2, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mValid:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 939
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)Lcom/scalado/base/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;
    .locals 1
    .parameter "x0"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;)Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 939
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mValid:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 939
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mValid:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 939
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->copyFrom(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 939
    iget v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFeathering:I

    return v0
.end method

.method static synthetic access$402(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 939
    iput p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFeathering:I

    return p1
.end method

.method static synthetic access$500(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 939
    iget v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mMaxTranslation:I

    return v0
.end method

.method static synthetic access$502(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 939
    iput p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mMaxTranslation:I

    return p1
.end method

.method static synthetic access$700(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 939
    iget v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBgIndex:I

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 939
    iput p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBgIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 939
    iget v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFgIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 939
    iput p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFgIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mRectSet:Z

    return v0
.end method

.method static synthetic access$902(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 939
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mRectSet:Z

    return p1
.end method

.method private copyFrom(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V
    .locals 2
    .parameter "srcParams"

    .prologue
    .line 949
    iget-boolean v0, p1, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mRectSet:Z

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mRectSet:Z

    .line 950
    iget-object v0, p1, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession;->copyRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession;->access$2500(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 951
    iget v0, p1, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFeathering:I

    iput v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFeathering:I

    .line 952
    iget v0, p1, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mMaxTranslation:I

    iput v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mMaxTranslation:I

    .line 953
    iget v0, p1, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBgIndex:I

    iput v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBgIndex:I

    .line 954
    iget v0, p1, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFgIndex:I

    iput v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFgIndex:I

    .line 955
    iget-object v0, p1, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    .line 956
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 959
    instance-of v2, p1, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    if-nez v2, :cond_1

    .line 963
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 962
    check-cast v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    .line 963
    .local v0, p:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;
    iget-boolean v2, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mRectSet:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mRectSet:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;

    iget-object v3, v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;

    invoke-virtual {v2, v3}, Lcom/scalado/base/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mRectSet:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mRectSet:Z

    if-nez v2, :cond_0

    :cond_3
    iget v2, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFeathering:I

    iget v3, v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFeathering:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mMaxTranslation:I

    iget v3, v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mMaxTranslation:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBgIndex:I

    iget v3, v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBgIndex:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFgIndex:I

    iget v3, v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFgIndex:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    iget-object v3, v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 974
    const-string v1, "Params {bg=%d, fg=%d, "

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBgIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFgIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 976
    .local v0, str:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mRectSet:Z

    if-eqz v1, :cond_0

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Rect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;

    invoke-static {v2}, Lcom/oppo/camera/rewind/app/Geom;->rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 981
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", feathering=%d, maxTransl.=%d}"

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFeathering:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mMaxTranslation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 983
    return-object v0

    .line 979
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Rect=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
