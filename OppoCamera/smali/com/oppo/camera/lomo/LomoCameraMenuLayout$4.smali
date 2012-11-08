.class Lcom/oppo/camera/lomo/LomoCameraMenuLayout$4;
.super Ljava/lang/Object;
.source "LomoCameraMenuLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->setBrowseImage(Lcom/oppo/camera/utils/OppoBrowseImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

.field final synthetic val$mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;


# direct methods
.method constructor <init>(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;Lcom/oppo/camera/utils/OppoBrowseImage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$4;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    iput-object p2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$4;->val$mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 273
    invoke-static {}, Lcom/oppo/camera/utils/StorageManager;->hasInternalStorage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$4;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    const v3, 0x7f0a0025

    #calls: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->showToast(I)V
    invoke-static {v2, v3}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$500(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;I)V

    .line 292
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$4;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    invoke-virtual {v2}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/camera/utils/Util;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$4;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    const v3, 0x7f0a002e

    #calls: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->showToast(I)V
    invoke-static {v2, v3}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$500(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;I)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$4;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$600(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/camera/CommConfig;->instance(Landroid/content/Context;)V

    .line 284
    new-instance v1, Lcom/oppo/camera/utils/StringUtil;

    invoke-direct {v1}, Lcom/oppo/camera/utils/StringUtil;-><init>()V

    .line 285
    .local v1, mStringUtil:Lcom/oppo/camera/utils/StringUtil;
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$4;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSavePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$700(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/utils/StringUtil;->getLatestFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, lastName:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 287
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$4;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    const v3, 0x7f0a0018

    #calls: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->showToast(I)V
    invoke-static {v2, v3}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$500(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;I)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$4;->val$mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    invoke-virtual {v2, v0}, Lcom/oppo/camera/utils/OppoBrowseImage;->updateLastPictureUri(Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$4;->val$mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$4;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSavePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$700(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/camera/utils/OppoBrowseImage;->viewLastPicture(Ljava/lang/String;)Z

    goto :goto_0
.end method
