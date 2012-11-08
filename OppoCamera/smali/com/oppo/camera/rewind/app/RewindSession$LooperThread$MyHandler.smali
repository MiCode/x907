.class Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
.super Landroid/os/Handler;
.source "RewindSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;Lcom/oppo/camera/rewind/app/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1109
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;-><init>(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 1111
    const/4 v2, 0x0

    .line 1112
    .local v2, params:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;
    const/4 v4, 0x0

    .line 1113
    .local v4, screenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;
    const/4 v1, 0x0

    .line 1114
    .local v1, magParams:Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;
    const/4 v0, 0x0

    .line 1115
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 1116
    .local v5, size:Lcom/scalado/base/Size;
    const/4 v6, -0x1

    .line 1119
    .local v6, user:I
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 1126
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_2

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v7, v7, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;

    if-eqz v7, :cond_2

    .line 1127
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;

    .line 1128
    .local v3, req:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->access$3400(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    move-result-object v2

    .line 1129
    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->access$3500(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    move-result-object v4

    .line 1130
    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mMagParams:Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->access$3600(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

    move-result-object v1

    .line 1131
    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->access$2900(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1132
    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mHasUser:Z
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->access$3700(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1133
    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mUser:I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->access$3100(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)I

    move-result v6

    .line 1135
    :cond_0
    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mScreenSize:Lcom/scalado/base/Size;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->access$3800(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)Lcom/scalado/base/Size;

    move-result-object v5

    .line 1143
    .end local v3           #req:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    :sswitch_0
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_1

    .line 1183
    :cond_1
    :goto_0
    return-void

    .line 1137
    :cond_2
    const-string v7, "RewindSession"

    const-string v8, "Bad object."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1146
    :sswitch_1
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    iget-object v7, v7, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession;->updateRequest(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V
    invoke-static {v7, v2}, Lcom/oppo/camera/rewind/app/RewindSession;->access$3900(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V

    .line 1147
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    iget-object v7, v7, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession;->renderRequest(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V
    invoke-static {v7, v4, v0}, Lcom/oppo/camera/rewind/app/RewindSession;->access$4000(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1150
    :sswitch_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 1151
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    iget-object v7, v7, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession;->updateRequest(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V
    invoke-static {v7, v2}, Lcom/oppo/camera/rewind/app/RewindSession;->access$3900(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V

    .line 1152
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    iget-object v7, v7, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession;->asyncRender(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V
    invoke-static {v7, v4, v1, v0}, Lcom/oppo/camera/rewind/app/RewindSession;->access$4100(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1156
    :sswitch_3
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    iget-object v7, v7, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession;->renderRequest(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V
    invoke-static {v7, v4, v0}, Lcom/oppo/camera/rewind/app/RewindSession;->access$4000(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1159
    :sswitch_4
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    iget-object v7, v7, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RewindSession;->access$4200(Lcom/oppo/camera/rewind/app/RewindSession;)Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->commit()V

    .line 1160
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    iget-object v7, v7, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RewindSession;->access$4308(Lcom/oppo/camera/rewind/app/RewindSession;)I

    .line 1161
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    iget-object v7, v7, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    const/4 v8, 0x0

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession;->mUpdates:I
    invoke-static {v7, v8}, Lcom/oppo/camera/rewind/app/RewindSession;->access$4402(Lcom/oppo/camera/rewind/app/RewindSession;I)I

    goto :goto_0

    .line 1164
    :sswitch_5
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 1165
    if-eqz v2, :cond_3

    .line 1166
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    iget-object v7, v7, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession;->updateRequest(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V
    invoke-static {v7, v2}, Lcom/oppo/camera/rewind/app/RewindSession;->access$3900(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V

    .line 1168
    :cond_3
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    iget-object v8, v7, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mOutputFilename:Ljava/lang/String;
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->access$3200(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/oppo/camera/rewind/app/RewindSession;->renderOutput(Ljava/lang/String;)V
    invoke-static {v8, v7}, Lcom/oppo/camera/rewind/app/RewindSession;->access$4500(Lcom/oppo/camera/rewind/app/RewindSession;Ljava/lang/String;)V

    goto :goto_0

    .line 1172
    :sswitch_6
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    iget-object v7, v7, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession;->getScreenRequest(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/scalado/base/Size;I)V
    invoke-static {v7, v4, v5, v6}, Lcom/oppo/camera/rewind/app/RewindSession;->access$4600(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/scalado/base/Size;I)V

    goto :goto_0

    .line 1175
    :sswitch_7
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    iget-object v7, v7, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession;->resetScreenRequest()V
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RewindSession;->access$4700(Lcom/oppo/camera/rewind/app/RewindSession;)V

    goto :goto_0

    .line 1178
    :sswitch_8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->quit()V

    .line 1179
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    iget-object v7, v7, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession;->recycle()V
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RewindSession;->access$4800(Lcom/oppo/camera/rewind/app/RewindSession;)V

    goto/16 :goto_0

    .line 1119
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x41 -> :sswitch_0
        0x200 -> :sswitch_0
    .end sparse-switch

    .line 1143
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_4
        0x40 -> :sswitch_6
        0x41 -> :sswitch_7
        0x80 -> :sswitch_5
        0x200 -> :sswitch_8
    .end sparse-switch
.end method
