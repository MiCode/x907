.class Lcom/oppo/test/TouchActivity$5;
.super Ljava/lang/Object;
.source "TouchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/test/TouchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/test/TouchActivity;


# direct methods
.method constructor <init>(Lcom/oppo/test/TouchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/oppo/test/TouchActivity$5;->this$0:Lcom/oppo/test/TouchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/oppo/test/TouchActivity$5;->this$0:Lcom/oppo/test/TouchActivity;

    invoke-virtual {v0}, Lcom/oppo/test/TouchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoFPDUtils;->vibrate(Landroid/content/Context;)V

    .line 686
    const-string v0, "TouchAndroid"

    const-string v1, "key long press"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v0, p0, Lcom/oppo/test/TouchActivity$5;->this$0:Lcom/oppo/test/TouchActivity;

    const/4 v1, 0x1

    #setter for: Lcom/oppo/test/TouchActivity;->mLongPreess:Z
    invoke-static {v0, v1}, Lcom/oppo/test/TouchActivity;->access$1002(Lcom/oppo/test/TouchActivity;Z)Z

    .line 688
    iget-object v0, p0, Lcom/oppo/test/TouchActivity$5;->this$0:Lcom/oppo/test/TouchActivity;

    #getter for: Lcom/oppo/test/TouchActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/test/TouchActivity;->access$1200(Lcom/oppo/test/TouchActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/test/TouchActivity$5;->this$0:Lcom/oppo/test/TouchActivity;

    #getter for: Lcom/oppo/test/TouchActivity;->mRunnableForLongPress:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/oppo/test/TouchActivity;->access$1100(Lcom/oppo/test/TouchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 689
    iget-object v0, p0, Lcom/oppo/test/TouchActivity$5;->this$0:Lcom/oppo/test/TouchActivity;

    #calls: Lcom/oppo/test/TouchActivity;->exitFPDMode()V
    invoke-static {v0}, Lcom/oppo/test/TouchActivity;->access$900(Lcom/oppo/test/TouchActivity;)V

    .line 691
    return-void
.end method
