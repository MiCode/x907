.class Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
.super Ljava/lang/Object;
.source "RewindSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LTWRequest"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHasUser:Z

.field private mMagParams:Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

.field private mOutputFilename:Ljava/lang/String;

.field private mParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

.field private mScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

.field private mScreenSize:Lcom/scalado/base/Size;

.field private mUser:I

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindSession;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;I)V
    .locals 1
    .parameter
    .parameter "user"

    .prologue
    .line 928
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 895
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mHasUser:Z

    .line 929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mHasUser:Z

    .line 930
    iput p2, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mUser:I

    .line 931
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;ILcom/oppo/camera/rewind/app/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 888
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;I)V

    return-void
.end method

.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter "params"
    .parameter "screenParams"
    .parameter "magnifierParams"
    .parameter "bitmap"

    .prologue
    .line 899
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 895
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mHasUser:Z

    .line 900
    if-eqz p2, :cond_0

    .line 901
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    .line 902
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->copyFrom(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V
    invoke-static {v0, p2}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$2200(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V

    .line 904
    :cond_0
    if-eqz p3, :cond_1

    .line 905
    invoke-virtual {p3}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->clone()Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    .line 907
    :cond_1
    if-eqz p4, :cond_2

    .line 908
    invoke-virtual {p4}, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->clone()Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mMagParams:Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

    .line 910
    :cond_2
    iput-object p5, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 911
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;Lcom/oppo/camera/rewind/app/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 888
    invoke-direct/range {p0 .. p5}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/scalado/base/Size;I)V
    .locals 6
    .parameter
    .parameter "params"
    .parameter "screenParams"
    .parameter "screenSize"
    .parameter "user"

    .prologue
    const/4 v4, 0x0

    .line 922
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V

    .line 923
    iput-object p4, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mScreenSize:Lcom/scalado/base/Size;

    .line 924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mHasUser:Z

    .line 925
    iput p5, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mUser:I

    .line 926
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/scalado/base/Size;ILcom/oppo/camera/rewind/app/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 888
    invoke-direct/range {p0 .. p5}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/scalado/base/Size;I)V

    return-void
.end method

.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "params"
    .parameter "filename"

    .prologue
    const/4 v3, 0x0

    .line 934
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V

    .line 935
    iput-object p3, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mOutputFilename:Ljava/lang/String;

    .line 936
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Ljava/lang/String;Lcom/oppo/camera/rewind/app/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 888
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 888
    iget v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mUser:I

    return v0
.end method

.method static synthetic access$3200(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mOutputFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mMagParams:Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mHasUser:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)Lcom/scalado/base/Size;
    .locals 1
    .parameter "x0"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mScreenSize:Lcom/scalado/base/Size;

    return-object v0
.end method
