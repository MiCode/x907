.class Lcom/android/internal/policy/impl/SimUnlockScreen$3;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;->layoutType(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortCutButtonClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 210
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
