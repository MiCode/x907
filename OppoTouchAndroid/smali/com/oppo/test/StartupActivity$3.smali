.class Lcom/oppo/test/StartupActivity$3;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/test/StartupActivity;->getDialogBuilder()Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/test/StartupActivity;


# direct methods
.method constructor <init>(Lcom/oppo/test/StartupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oppo/test/StartupActivity$3;->this$0:Lcom/oppo/test/StartupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oppo/test/StartupActivity$3;->this$0:Lcom/oppo/test/StartupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/test/StartupActivity;->setResult(I)V

    .line 95
    iget-object v0, p0, Lcom/oppo/test/StartupActivity$3;->this$0:Lcom/oppo/test/StartupActivity;

    invoke-virtual {v0}, Lcom/oppo/test/StartupActivity;->finish()V

    .line 97
    return-void
.end method
