.class Lcom/oppo/test/ChargerHelper$1;
.super Ljava/lang/Object;
.source "ChargerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/test/ChargerHelper;->startAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/test/ChargerHelper;

.field final synthetic val$anim:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/oppo/test/ChargerHelper;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/oppo/test/ChargerHelper$1;->this$0:Lcom/oppo/test/ChargerHelper;

    iput-object p2, p0, Lcom/oppo/test/ChargerHelper$1;->val$anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/oppo/test/ChargerHelper$1;->val$anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 178
    return-void
.end method
