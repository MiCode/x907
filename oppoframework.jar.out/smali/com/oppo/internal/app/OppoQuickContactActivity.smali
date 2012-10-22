.class public final Lcom/oppo/internal/app/OppoQuickContactActivity;
.super Landroid/app/Activity;
.source "OppoQuickContactActivity.java"

# interfaces
.implements Lcom/oppo/internal/app/OppoQuickContactWindow$OnDismissListener;
.implements Lcom/oppo/internal/app/OppoQuickContactWindow$OnResultListener;


# static fields
.field static final FORCE_CREATE:Z = false

.field static final LOGV:Z = false

.field private static final PICKTRUEFROMAPP:I = 0x1

.field private static final PICKTRUEFROMSYSTEM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OppoQuickContactActivity"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mDrawableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent$ShortcutIconResource;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentValues:[I

.field private mNumber:Ljava/lang/String;

.field private mPackgeName:Ljava/lang/String;

.field private mQuickContact:Lcom/oppo/internal/app/OppoQuickContactWindow;

.field private mRect:Landroid/graphics/Rect;

.field private mSendPictrueType:I

.field private quickWindows:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/oppo/internal/app/OppoQuickContactWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mRect:Landroid/graphics/Rect;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mSendPictrueType:I

    .line 64
    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mDrawableList:Ljava/util/ArrayList;

    .line 65
    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mNumber:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mPackgeName:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/oppo/internal/app/OppoQuickContactActivity;->finish()V

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/oppo/internal/app/OppoQuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/internal/app/OppoQuickContactActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 159
    return-void
.end method

.method public onDismiss(Lcom/oppo/internal/app/OppoQuickContactWindow;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/oppo/internal/app/OppoQuickContactActivity;->finish()V

    .line 169
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 86
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mQuickContact:Lcom/oppo/internal/app/OppoQuickContactWindow;

    if-eqz v1, :cond_1

    .line 90
    :goto_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mQuickContact:Lcom/oppo/internal/app/OppoQuickContactWindow;

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->quickWindows:Ljava/lang/ref/SoftReference;

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "pictrue"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mIntentValues:[I

    .line 106
    const-string v1, "sourceList"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mDrawableList:Ljava/util/ArrayList;

    .line 108
    const-string v1, "PackageName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mPackgeName:Ljava/lang/String;

    .line 110
    const-string v1, "Rect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mRect:Landroid/graphics/Rect;

    .line 111
    invoke-static {p0, v3}, Lcom/oppo/internal/app/OppoQuickContactWindow;->setSharePreference(Landroid/content/Context;I)V

    .line 113
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mNumber:Ljava/lang/String;

    .line 115
    const-string v1, "SelecetPictrueMode"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mSendPictrueType:I

    .line 117
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mBundle:Landroid/os/Bundle;

    .line 119
    iget v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mSendPictrueType:I

    if-nez v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->quickWindows:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/internal/app/OppoQuickContactWindow;

    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mIntentValues:[I

    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/oppo/internal/app/OppoQuickContactWindow;->show([ILandroid/graphics/Rect;)V

    .line 128
    :cond_0
    :goto_1
    return-void

    .line 88
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_1
    new-instance v1, Lcom/oppo/internal/app/OppoQuickContactWindow;

    invoke-direct {v1, p0, p0, p0}, Lcom/oppo/internal/app/OppoQuickContactWindow;-><init>(Landroid/content/Context;Lcom/oppo/internal/app/OppoQuickContactWindow$OnDismissListener;Lcom/oppo/internal/app/OppoQuickContactWindow$OnResultListener;)V

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mQuickContact:Lcom/oppo/internal/app/OppoQuickContactWindow;

    goto :goto_0

    .line 123
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_2
    const/4 v1, 0x1

    iget v2, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mSendPictrueType:I

    if-ne v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->quickWindows:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/internal/app/OppoQuickContactWindow;

    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mDrawableList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mPackgeName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/oppo/internal/app/OppoQuickContactWindow;->show(Ljava/util/ArrayList;Landroid/graphics/Rect;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 147
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mQuickContact:Lcom/oppo/internal/app/OppoQuickContactWindow;

    invoke-virtual {v0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->dismiss()V

    .line 148
    return-void
.end method

.method public onResult(Lcom/oppo/internal/app/OppoQuickContactWindow;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 173
    const-string v1, "OppoQuickContactActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResult(OppoQuickContactWindow dialog, int id)  id == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string v1, "number"

    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 184
    const-string v1, "data"

    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 187
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/oppo/internal/app/OppoQuickContactActivity;->setResult(ILandroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lcom/oppo/internal/app/OppoQuickContactActivity;->finish()V

    goto :goto_0
.end method
