.class Landroid/view/VolumePanel$4;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 275
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 278
    iget-object v6, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Ljava/util/HashMap;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 279
    iget-object v6, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v6, v6, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 280
    .local v2, res:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Landroid/view/VolumePanel;->access$500()[Landroid/view/VolumePanel$StreamResources;

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 281
    invoke-static {}, Landroid/view/VolumePanel;->access$500()[Landroid/view/VolumePanel$StreamResources;

    move-result-object v6

    aget-object v4, v6, v1

    .line 282
    .local v4, streamRes:Landroid/view/VolumePanel$StreamResources;
    iget v5, v4, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 286
    .local v5, streamType:I
    iget-object v6, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/VolumePanel$StreamControl;

    .line 287
    .local v3, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_1

    .line 288
    iget-object v6, v3, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v7, v3, Landroid/view/VolumePanel$StreamControl;->textRes:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 291
    iget v6, v3, Landroid/view/VolumePanel$StreamControl;->textRes:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v6, v3, Landroid/view/VolumePanel$StreamControl;->textRes:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-ne v6, v7, :cond_2

    .line 292
    :cond_0
    iget-object v6, v3, Landroid/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    const v7, 0x10403de

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 280
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_2
    iget-object v6, v3, Landroid/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    iget v7, v3, Landroid/view/VolumePanel$StreamControl;->textRes:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 300
    .end local v1           #i:I
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v4           #streamRes:Landroid/view/VolumePanel$StreamResources;
    .end local v5           #streamType:I
    :cond_3
    const-string v6, "android.intent.action.SYSTEM_THEME_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 301
    const-string v6, "VolumePanel"

    const-string v7, "SYSTEM_THEME_CHANGED"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v6, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v6, v6, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->reloadPreloadedResources()V

    .line 303
    iget-object v6, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;
    invoke-static {v6}, Landroid/view/VolumePanel;->access$600(Landroid/view/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v7, v7, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080368

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object v6, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->createSliders()V
    invoke-static {v6}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;)V

    .line 306
    :cond_4
    return-void
.end method
