.class Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$1;
.super Ljava/lang/Object;
.source "SimplePasswordUnlockScreen.java"

# interfaces
.implements Lcom/oppo/widget/OppoEditText$mPasswordTextDeletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->initEditText(Lcom/oppo/widget/OppoEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mTextDeleted()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->changeTheFocusToPre()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method
