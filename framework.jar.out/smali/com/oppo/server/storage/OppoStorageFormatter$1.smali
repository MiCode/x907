.class Lcom/oppo/server/storage/OppoStorageFormatter$1;
.super Landroid/os/Handler;
.source "OppoStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/server/storage/OppoStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/server/storage/OppoStorageFormatter;


# direct methods
.method constructor <init>(Lcom/oppo/server/storage/OppoStorageFormatter;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oppo/server/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-wide/16 v2, 0x2710

    const/16 v1, 0xa

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    #getter for: Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z
    invoke-static {v0}, Lcom/oppo/server/storage/OppoStorageFormatter;->access$000(Lcom/oppo/server/storage/OppoStorageFormatter;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    #getter for: Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z
    invoke-static {v0}, Lcom/oppo/server/storage/OppoStorageFormatter;->access$100(Lcom/oppo/server/storage/OppoStorageFormatter;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    #getter for: Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I
    invoke-static {v0}, Lcom/oppo/server/storage/OppoStorageFormatter;->access$200(Lcom/oppo/server/storage/OppoStorageFormatter;)I

    move-result v0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    #getter for: Lcom/oppo/server/storage/OppoStorageFormatter;->mHasSdCard:Z
    invoke-static {v0}, Lcom/oppo/server/storage/OppoStorageFormatter;->access$300(Lcom/oppo/server/storage/OppoStorageFormatter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "OppoStorageFormatter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOppoFormat:OPPO_FORMAT_EXTERNAL_SD, try "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/server/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    #getter for: Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I
    invoke-static {v2}, Lcom/oppo/server/storage/OppoStorageFormatter;->access$200(Lcom/oppo/server/storage/OppoStorageFormatter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    invoke-static {v0}, Lcom/oppo/server/storage/OppoStorageFormatter;->access$208(Lcom/oppo/server/storage/OppoStorageFormatter;)I

    .line 84
    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    invoke-virtual {v0}, Lcom/oppo/server/storage/OppoStorageFormatter;->formatExternalSD()V

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oppo/server/storage/OppoStorageFormatter$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    #getter for: Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z
    invoke-static {v0}, Lcom/oppo/server/storage/OppoStorageFormatter;->access$400(Lcom/oppo/server/storage/OppoStorageFormatter;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    #getter for: Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z
    invoke-static {v0}, Lcom/oppo/server/storage/OppoStorageFormatter;->access$500(Lcom/oppo/server/storage/OppoStorageFormatter;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    #getter for: Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I
    invoke-static {v0}, Lcom/oppo/server/storage/OppoStorageFormatter;->access$600(Lcom/oppo/server/storage/OppoStorageFormatter;)I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 97
    const-string v0, "OppoStorageFormatter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOppoFormat:OPPO_FORMAT_INTERNAL_SD, try "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/server/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    #getter for: Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I
    invoke-static {v2}, Lcom/oppo/server/storage/OppoStorageFormatter;->access$600(Lcom/oppo/server/storage/OppoStorageFormatter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    invoke-static {v0}, Lcom/oppo/server/storage/OppoStorageFormatter;->access$608(Lcom/oppo/server/storage/OppoStorageFormatter;)I

    .line 99
    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    invoke-virtual {v0}, Lcom/oppo/server/storage/OppoStorageFormatter;->formatInternalSD()V

    goto/16 :goto_0

    .line 103
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2, v3}, Lcom/oppo/server/storage/OppoStorageFormatter$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 109
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    #getter for: Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatData_Require:Z
    invoke-static {v0}, Lcom/oppo/server/storage/OppoStorageFormatter;->access$700(Lcom/oppo/server/storage/OppoStorageFormatter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "OppoStorageFormatter"

    const-string v1, "doOppoFormat:OPPO_FORMAT_DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/oppo/server/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oppo/server/storage/OppoStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
