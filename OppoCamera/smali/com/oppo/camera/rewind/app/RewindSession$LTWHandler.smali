.class public Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;
.super Landroid/os/Handler;
.source "RewindSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LTWHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindSession;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;)V
    .locals 0
    .parameter

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1049
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1067
    :goto_0
    return-void

    .line 1051
    :pswitch_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession;->mCallback:Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession;->access$2800(Lcom/oppo/camera/rewind/app/RewindSession;)Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v2, v1}, Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;->onUpdateComplete(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1054
    :pswitch_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession;->mCallback:Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession;->access$2800(Lcom/oppo/camera/rewind/app/RewindSession;)Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v2, v1}, Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;->onUpdateMagnifiedComplete(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1059
    :pswitch_2
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession;->mCallback:Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession;->access$2800(Lcom/oppo/camera/rewind/app/RewindSession;)Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->access$2900(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession;->access$3000(Lcom/oppo/camera/rewind/app/RewindSession;)Lcom/scalado/caps/screen/Screen;

    move-result-object v4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mUser:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->access$3100(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)I

    move-result v1

    invoke-interface {v2, v3, v4, v1}, Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;->onScreen(Landroid/graphics/Bitmap;Lcom/scalado/caps/screen/Screen;I)V

    goto :goto_0

    .line 1063
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->mOutputFilename:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;->access$3200(Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, filename:Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession;->mCallback:Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession;->access$2800(Lcom/oppo/camera/rewind/app/RewindSession;)Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;->onSaved(Ljava/lang/String;)V

    goto :goto_0

    .line 1049
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
