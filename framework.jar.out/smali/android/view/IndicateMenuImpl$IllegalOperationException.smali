.class Landroid/view/IndicateMenuImpl$IllegalOperationException;
.super Ljava/lang/RuntimeException;
.source "IndicateMenuImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IndicateMenuImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IllegalOperationException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3398a49d3c0953eL


# instance fields
.field private mOperation:Ljava/lang/String;

.field final synthetic this$0:Landroid/view/IndicateMenuImpl;


# direct methods
.method public constructor <init>(Landroid/view/IndicateMenuImpl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "operation"

    .prologue
    .line 602
    iput-object p1, p0, Landroid/view/IndicateMenuImpl$IllegalOperationException;->this$0:Landroid/view/IndicateMenuImpl;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 603
    iput-object p2, p0, Landroid/view/IndicateMenuImpl$IllegalOperationException;->mOperation:Ljava/lang/String;

    .line 604
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The operation \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/IndicateMenuImpl$IllegalOperationException;->mOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' is not permitted while the menu is showing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
