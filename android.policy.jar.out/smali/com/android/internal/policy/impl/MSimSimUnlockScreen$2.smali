.class Lcom/android/internal/policy/impl/MSimSimUnlockScreen$2;
.super Ljava/lang/Object;
.source "MSimSimUnlockScreen.java"

# interfaces
.implements Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->layoutType(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortCutButtonClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->checkPin()V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mEnteredDigits:I

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
