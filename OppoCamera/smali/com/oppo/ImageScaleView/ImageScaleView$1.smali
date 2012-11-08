.class Lcom/oppo/ImageScaleView/ImageScaleView$1;
.super Ljava/lang/Object;
.source "ImageScaleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/ImageScaleView/ImageScaleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/ImageScaleView/ImageScaleView;


# direct methods
.method constructor <init>(Lcom/oppo/ImageScaleView/ImageScaleView;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/oppo/ImageScaleView/ImageScaleView$1;->this$0:Lcom/oppo/ImageScaleView/ImageScaleView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView$1;->this$0:Lcom/oppo/ImageScaleView/ImageScaleView;

    invoke-virtual {v0}, Lcom/oppo/ImageScaleView/ImageScaleView;->invalidate()V

    .line 71
    return-void
.end method
