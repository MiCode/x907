.class Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;
.super Ljava/lang/Object;
.source "LomoCameraMenuLayout.java"

# interfaces
.implements Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCameraMenuLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;


# direct methods
.method constructor <init>(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnhancedChanged(I)V
    .locals 2
    .parameter "select"

    .prologue
    const/4 v1, 0x5

    .line 333
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #calls: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->saveSetting(II)V
    invoke-static {v0, v1, p1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$900(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;II)V

    .line 334
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mEffectListener:Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$400(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;->setPreviewEffect(II)V

    .line 335
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mEffectListener:Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$400(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;->setViewVisibles()V

    .line 336
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mEffectListener:Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$400(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;->setShotMode(II)V

    .line 337
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItemLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$1000(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 338
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->setVisibility(I)V

    .line 339
    return-void
.end method

.method public onFunChanged(I)V
    .locals 2
    .parameter "select"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    const/4 v1, 0x1

    #calls: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->clickItemToSetEffect(II)V
    invoke-static {v0, v1, p1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$800(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;II)V

    .line 303
    return-void
.end method

.method public onHahaChanged(I)V
    .locals 2
    .parameter "select"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    const/4 v1, 0x3

    #calls: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->clickItemToSetEffect(II)V
    invoke-static {v0, v1, p1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$800(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;II)V

    .line 324
    return-void
.end method

.method public onRewindChanged(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x5

    .line 307
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 308
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$600(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/oppo/camera/lomo/RewindDemoVideo;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$600(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    if-ne p1, v3, :cond_0

    .line 315
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$600(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$600(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 317
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    const/4 v1, 0x2

    #calls: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->saveSetting(II)V
    invoke-static {v0, v1, v3}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$900(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;II)V

    goto :goto_0
.end method

.method public onSunChanged(I)V
    .locals 2
    .parameter "select"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    const/4 v1, 0x4

    #calls: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->clickItemToSetEffect(II)V
    invoke-static {v0, v1, p1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$800(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;II)V

    .line 329
    return-void
.end method

.method public setQuickPreview(II)V
    .locals 3
    .parameter "mainMenu"
    .parameter "select"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mEffectListener:Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$400(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #calls: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->saveSetting(II)V
    invoke-static {v0, p1, p2}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$900(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;II)V

    .line 344
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mEffectListener:Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$400(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;->setPreviewEffect(II)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #setter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurClickMainItem:I
    invoke-static {v0, p1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$1102(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;I)I

    .line 347
    packed-switch p1, :pswitch_data_0

    .line 367
    :goto_0
    return-void

    .line 349
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCamera:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$1200(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    const/4 v1, 0x7

    #setter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurClickItem:I
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$1302(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;I)I

    goto :goto_0

    .line 353
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCamera:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$1200(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 356
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCamera:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$1200(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    const/4 v1, 0x1

    #setter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurClickItem:I
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$1302(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;I)I

    goto :goto_0

    .line 360
    :pswitch_3
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCamera:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$1200(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    const/16 v1, 0xa

    #setter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurClickItem:I
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$1302(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;I)I

    goto :goto_0

    .line 364
    :pswitch_4
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCamera:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$1200(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
