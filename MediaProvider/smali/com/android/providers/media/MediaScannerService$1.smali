.class Lcom/android/providers/media/MediaScannerService$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$1;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/android/providers/media/MediaScannerService$1;->this$0:Lcom/android/providers/media/MediaScannerService;

    #calls: Lcom/android/providers/media/MediaScannerService;->createMediaScanner()Landroid/media/MediaScanner;
    invoke-static {v2}, Lcom/android/providers/media/MediaScannerService;->access$000(Lcom/android/providers/media/MediaScannerService;)Landroid/media/MediaScanner;

    move-result-object v1

    .line 162
    .local v1, scanner:Landroid/media/MediaScanner;
    invoke-virtual {v1}, Landroid/media/MediaScanner;->release()V

    .line 164
    .end local v1           #scanner:Landroid/media/MediaScanner;
    :cond_0
    return-void
.end method
