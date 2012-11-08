.class final Lcom/oppo/camera/rewind/RewindActivity$MyPostviewCallback;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyPostviewCallback"
.end annotation


# instance fields
.field private mNumPicturesLeft:I

.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;I)V
    .locals 0
    .parameter
    .parameter "n"

    .prologue
    .line 929
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPostviewCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 930
    iput p2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPostviewCallback;->mNumPicturesLeft:I

    .line 931
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;ILcom/oppo/camera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 927
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/RewindActivity$MyPostviewCallback;-><init>(Lcom/oppo/camera/rewind/RewindActivity;I)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 1
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 934
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPostviewCallback;->mNumPicturesLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyPostviewCallback;->mNumPicturesLeft:I

    .line 935
    return-void
.end method
