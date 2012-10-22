.class Lcom/android/internal/policy/impl/PowerOnPassWordView$3;
.super Ljava/lang/Object;
.source "PowerOnPassWordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PowerOnPassWordView;->verifyPassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PowerOnPassWordView;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$3;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$3;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    #getter for: Lcom/android/internal/policy/impl/PowerOnPassWordView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->access$600(Lcom/android/internal/policy/impl/PowerOnPassWordView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 295
    return-void
.end method
