.class Lcom/oppo/test/StartupActivity$1;
.super Landroid/os/Handler;
.source "StartupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/test/StartupActivity;
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
    .line 69
    iput-object p1, p0, Lcom/oppo/test/StartupActivity$1;->this$0:Lcom/oppo/test/StartupActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/test/StartupActivity$1;->this$0:Lcom/oppo/test/StartupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/test/StartupActivity;->setResult(I)V

    .line 76
    iget-object v0, p0, Lcom/oppo/test/StartupActivity$1;->this$0:Lcom/oppo/test/StartupActivity;

    invoke-virtual {v0}, Lcom/oppo/test/StartupActivity;->finish()V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x124
        :pswitch_0
    .end packed-switch
.end method
