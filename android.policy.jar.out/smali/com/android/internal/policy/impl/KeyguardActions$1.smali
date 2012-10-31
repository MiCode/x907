.class Lcom/android/internal/policy/impl/KeyguardActions$1;
.super Ljava/lang/Object;
.source "KeyguardActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardActions;->initItemListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardActions;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardActions$1;->this$0:Lcom/android/internal/policy/impl/KeyguardActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 159
    const-string v0, "KeyguardActions"

    const-string v1, "Now shut down!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions$1;->this$0:Lcom/android/internal/policy/impl/KeyguardActions;

    #calls: Lcom/android/internal/policy/impl/KeyguardActions;->shutdown()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardActions;->access$000(Lcom/android/internal/policy/impl/KeyguardActions;)V

    .line 161
    return-void
.end method
