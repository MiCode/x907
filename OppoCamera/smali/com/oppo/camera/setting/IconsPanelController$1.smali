.class Lcom/oppo/camera/setting/IconsPanelController$1;
.super Landroid/os/Handler;
.source "IconsPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/setting/IconsPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/setting/IconsPanelController;


# direct methods
.method constructor <init>(Lcom/oppo/camera/setting/IconsPanelController;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/oppo/camera/setting/IconsPanelController$1;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 129
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 159
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 131
    :pswitch_1
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController$1;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mInAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/oppo/camera/setting/IconsPanelController;->access$000(Lcom/oppo/camera/setting/IconsPanelController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    .local v0, thread:Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 133
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 136
    .end local v0           #thread:Ljava/lang/Thread;
    :pswitch_2
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/oppo/camera/setting/IconsPanelController$1;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mOutAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/oppo/camera/setting/IconsPanelController;->access$100(Lcom/oppo/camera/setting/IconsPanelController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 139
    :pswitch_3
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/oppo/camera/setting/IconsPanelController$1;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mOneStepAnimation:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/oppo/camera/setting/IconsPanelController;->access$200(Lcom/oppo/camera/setting/IconsPanelController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 142
    :pswitch_4
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController$1;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #setter for: Lcom/oppo/camera/setting/IconsPanelController;->mIsClickAvaliable:Z
    invoke-static {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController;->access$302(Lcom/oppo/camera/setting/IconsPanelController;Z)Z

    .line 143
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController$1;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mIconsAnimationListener:Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;
    invoke-static {v1}, Lcom/oppo/camera/setting/IconsPanelController;->access$400(Lcom/oppo/camera/setting/IconsPanelController;)Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController$1;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mIconsAnimationListener:Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;
    invoke-static {v1}, Lcom/oppo/camera/setting/IconsPanelController;->access$400(Lcom/oppo/camera/setting/IconsPanelController;)Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/setting/IconsPanelController$1;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I
    invoke-static {v2}, Lcom/oppo/camera/setting/IconsPanelController;->access$500(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;->onIconInAnimationEnd(I)V

    goto :goto_0

    .line 148
    :pswitch_5
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController$1;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #setter for: Lcom/oppo/camera/setting/IconsPanelController;->mIsClickAvaliable:Z
    invoke-static {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController;->access$302(Lcom/oppo/camera/setting/IconsPanelController;Z)Z

    .line 149
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController$1;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mIconsAnimationListener:Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;
    invoke-static {v1}, Lcom/oppo/camera/setting/IconsPanelController;->access$400(Lcom/oppo/camera/setting/IconsPanelController;)Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController$1;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mIconsAnimationListener:Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;
    invoke-static {v1}, Lcom/oppo/camera/setting/IconsPanelController;->access$400(Lcom/oppo/camera/setting/IconsPanelController;)Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;->onIconOutAnimationEnd()V

    .line 151
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController$1;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    invoke-virtual {v1}, Lcom/oppo/camera/setting/IconsPanelController;->onPause()V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
