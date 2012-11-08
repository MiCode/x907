.class Lcom/oppo/camera/lomo/LomoCameraMenuLayout$3;
.super Ljava/lang/Object;
.source "LomoCameraMenuLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCameraMenuLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;


# direct methods
.method constructor <init>(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$3;->this$0:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    #getter for: Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mEffectListener:Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->access$400(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;->setCameraFace()V

    .line 261
    return-void
.end method
