.class Lcom/oppo/test/TouchActivity$2;
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
    .line 231
    iput-object p1, p0, Lcom/oppo/test/TouchActivity$2;->this$0:Lcom/oppo/test/TouchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 239
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoFPDUtils;->getFPDPassByIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 241
    .local v0, homeIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    iget-object v1, p0, Lcom/oppo/test/TouchActivity$2;->this$0:Lcom/oppo/test/TouchActivity;

    invoke-virtual {v1, v0}, Lcom/oppo/test/TouchActivity;->startActivity(Landroid/content/Intent;)V

    .line 246
    iget-object v1, p0, Lcom/oppo/test/TouchActivity$2;->this$0:Lcom/oppo/test/TouchActivity;

    #calls: Lcom/oppo/test/TouchActivity;->popMode()V
    invoke-static {v1}, Lcom/oppo/test/TouchActivity;->access$000(Lcom/oppo/test/TouchActivity;)V

    .line 247
    iget-object v1, p0, Lcom/oppo/test/TouchActivity$2;->this$0:Lcom/oppo/test/TouchActivity;

    invoke-virtual {v1}, Lcom/oppo/test/TouchActivity;->finish()V

    .line 249
    return-void
.end method
