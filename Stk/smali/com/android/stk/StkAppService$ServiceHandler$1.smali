.class Lcom/android/stk/StkAppService$ServiceHandler$1;
.super Landroid/os/Handler;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService$ServiceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/stk/StkAppService$ServiceHandler;


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService$ServiceHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler$1;->this$1:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 338
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 344
    :goto_0
    return-void

    .line 340
    :pswitch_0
    const-string v0, "SELECT ITEM EXPIRED"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler$1;->this$1:Lcom/android/stk/StkAppService$ServiceHandler;

    #calls: Lcom/android/stk/StkAppService$ServiceHandler;->handleSessionEnd()V
    invoke-static {v0}, Lcom/android/stk/StkAppService$ServiceHandler;->access$000(Lcom/android/stk/StkAppService$ServiceHandler;)V

    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
