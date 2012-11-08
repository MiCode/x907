.class Lcom/oppo/camera/lomo/LomoCameraLayout$3;
.super Ljava/lang/Object;
.source "LomoCameraLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 217
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const v4, 0x7f020093

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 221
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$300(Lcom/oppo/camera/lomo/LomoCameraLayout;)[Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecSubItemId:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$400(Lcom/oppo/camera/lomo/LomoCameraLayout;)I

    move-result v1

    aget-object v0, v0, v1

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 296
    :goto_0
    :pswitch_0
    return-void

    .line 224
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$300(Lcom/oppo/camera/lomo/LomoCameraLayout;)[Landroid/widget/TextView;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 225
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #setter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecSubItemId:I
    invoke-static {v0, v6}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$402(Lcom/oppo/camera/lomo/LomoCameraLayout;I)I

    .line 226
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecItemId:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$000(Lcom/oppo/camera/lomo/LomoCameraLayout;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 228
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->onFunChanged(I)V

    goto :goto_0

    .line 231
    :pswitch_3
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->onRewindChanged(I)V

    goto :goto_0

    .line 234
    :pswitch_4
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->onHahaChanged(I)V

    goto :goto_0

    .line 237
    :pswitch_5
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->onSunChanged(I)V

    goto :goto_0

    .line 240
    :pswitch_6
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->onEnhancedChanged(I)V

    goto :goto_0

    .line 245
    :pswitch_7
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$300(Lcom/oppo/camera/lomo/LomoCameraLayout;)[Landroid/widget/TextView;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 246
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #setter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecSubItemId:I
    invoke-static {v0, v2}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$402(Lcom/oppo/camera/lomo/LomoCameraLayout;I)I

    .line 247
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecItemId:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$000(Lcom/oppo/camera/lomo/LomoCameraLayout;)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :pswitch_8
    goto :goto_0

    .line 249
    :pswitch_9
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->onFunChanged(I)V

    goto :goto_0

    .line 252
    :pswitch_a
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->onHahaChanged(I)V

    goto :goto_0

    .line 255
    :pswitch_b
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->onSunChanged(I)V

    goto/16 :goto_0

    .line 260
    :pswitch_c
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$300(Lcom/oppo/camera/lomo/LomoCameraLayout;)[Landroid/widget/TextView;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 261
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #setter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecSubItemId:I
    invoke-static {v0, v3}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$402(Lcom/oppo/camera/lomo/LomoCameraLayout;I)I

    .line 262
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecItemId:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$000(Lcom/oppo/camera/lomo/LomoCameraLayout;)I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 267
    :pswitch_d
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->onRewindChanged(I)V

    goto/16 :goto_0

    .line 270
    :pswitch_e
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->onHahaChanged(I)V

    goto/16 :goto_0

    .line 273
    :pswitch_f
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->onSunChanged(I)V

    goto/16 :goto_0

    .line 276
    :pswitch_10
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->onEnhancedChanged(I)V

    goto/16 :goto_0

    .line 281
    :pswitch_11
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$300(Lcom/oppo/camera/lomo/LomoCameraLayout;)[Landroid/widget/TextView;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 282
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #setter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecSubItemId:I
    invoke-static {v0, v5}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$402(Lcom/oppo/camera/lomo/LomoCameraLayout;I)I

    .line 283
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecItemId:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$000(Lcom/oppo/camera/lomo/LomoCameraLayout;)I

    move-result v0

    packed-switch v0, :pswitch_data_4

    :pswitch_12
    goto/16 :goto_0

    .line 285
    :pswitch_13
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->onFunChanged(I)V

    goto/16 :goto_0

    .line 288
    :pswitch_14
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->onHahaChanged(I)V

    goto/16 :goto_0

    .line 291
    :pswitch_15
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;->onSunChanged(I)V

    goto/16 :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b005f
        :pswitch_1
        :pswitch_7
        :pswitch_c
        :pswitch_11
    .end packed-switch

    .line 226
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 247
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 262
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 283
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
