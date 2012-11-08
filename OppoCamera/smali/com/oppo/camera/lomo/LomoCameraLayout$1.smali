.class Lcom/oppo/camera/lomo/LomoCameraLayout$1;
.super Ljava/lang/Object;
.source "LomoCameraLayout.java"

# interfaces
.implements Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCameraLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;


# direct methods
.method constructor <init>(Lcom/oppo/camera/lomo/LomoCameraLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$1;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAnimationFinish(I)V
    .locals 4
    .parameter "itemNum"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 85
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$1;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #setter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecItemId:I
    invoke-static {v0, p1}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$002(Lcom/oppo/camera/lomo/LomoCameraLayout;I)I

    .line 86
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$1;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/lomo/LomoCameraLayout;->showSubMenu(II)V

    .line 87
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$1;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecItemId:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$000(Lcom/oppo/camera/lomo/LomoCameraLayout;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$1;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->setQuickPreview(II)V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$1;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, v3}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->setQuickPreview(II)V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$1;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->setQuickPreview(II)V

    goto :goto_0

    .line 98
    :pswitch_3
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$1;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->setQuickPreview(II)V

    goto :goto_0

    .line 101
    :pswitch_4
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$1;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->setQuickPreview(II)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public OnAnimationStart(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$1;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->hideSubMenu()V

    .line 81
    return-void
.end method
