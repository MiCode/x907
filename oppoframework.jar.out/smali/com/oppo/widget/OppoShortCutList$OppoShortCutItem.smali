.class public Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;
.super Ljava/lang/Object;
.source "OppoShortCutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoShortCutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OppoShortCutItem"
.end annotation


# instance fields
.field drawableRes:I

.field enabled:Z

.field itemId:I

.field lable:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "res"
    .parameter "text"

    .prologue
    .line 541
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->enabled:Z

    .line 542
    iput p1, p0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->itemId:I

    .line 543
    iput p2, p0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->drawableRes:I

    .line 544
    iput-object p3, p0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->lable:Ljava/lang/String;

    .line 545
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "res"
    .parameter "text"

    .prologue
    .line 536
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->enabled:Z

    .line 537
    iput p1, p0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->drawableRes:I

    .line 538
    iput-object p2, p0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->lable:Ljava/lang/String;

    .line 539
    return-void
.end method


# virtual methods
.method public getDrawableResource()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->drawableRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->itemId:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->lable:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->enabled:Z

    return v0
.end method

.method public setDrawableResource(I)V
    .locals 0
    .parameter "res"

    .prologue
    .line 564
    iput p1, p0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->drawableRes:I

    .line 565
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->enabled:Z

    .line 573
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 548
    iput p1, p0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->itemId:I

    .line 549
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->lable:Ljava/lang/String;

    .line 557
    return-void
.end method
