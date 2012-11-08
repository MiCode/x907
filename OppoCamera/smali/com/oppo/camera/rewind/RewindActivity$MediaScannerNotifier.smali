.class Lcom/oppo/camera/rewind/RewindActivity$MediaScannerNotifier;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaScannerNotifier"
.end annotation


# instance fields
.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mMimeType:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$MediaScannerNotifier;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    iput-object p3, p0, Lcom/oppo/camera/rewind/RewindActivity$MediaScannerNotifier;->mPath:Ljava/lang/String;

    .line 1044
    iput-object p4, p0, Lcom/oppo/camera/rewind/RewindActivity$MediaScannerNotifier;->mMimeType:Ljava/lang/String;

    .line 1045
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p2, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    .line 1046
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 1047
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MediaScannerNotifier;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MediaScannerNotifier;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 1055
    return-void
.end method
