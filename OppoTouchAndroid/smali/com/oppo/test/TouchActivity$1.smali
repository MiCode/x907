.class Lcom/oppo/test/TouchActivity$1;
.super Ljava/lang/Object;
.source "TouchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/test/TouchActivity;->exitFPDMode()V
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
    .line 223
    iput-object p1, p0, Lcom/oppo/test/TouchActivity$1;->this$0:Lcom/oppo/test/TouchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/oppo/test/TouchActivity$1;->this$0:Lcom/oppo/test/TouchActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.action.fpd_enable_keyguard"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oppo/test/TouchActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    return-void
.end method
