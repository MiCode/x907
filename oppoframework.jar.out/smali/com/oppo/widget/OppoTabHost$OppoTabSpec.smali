.class public Lcom/oppo/widget/OppoTabHost$OppoTabSpec;
.super Ljava/lang/Object;
.source "OppoTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OppoTabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Lcom/oppo/widget/OppoTabHost$ContentStrategy;

.field private mIndicatorStrategy:Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;

.field private mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

.field private mOppoTabHostBgColor:I

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/oppo/widget/OppoTabHost;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/String;Lcom/oppo/widget/OppoTabHost;)V
    .locals 1
    .parameter
    .parameter "tag"
    .parameter "host"

    .prologue
    .line 595
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->this$0:Lcom/oppo/widget/OppoTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 593
    const/high16 v0, -0x100

    iput v0, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mOppoTabHostBgColor:I

    .line 596
    iput-object p2, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mTag:Ljava/lang/String;

    .line 597
    iput-object p3, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    .line 598
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/String;Lcom/oppo/widget/OppoTabHost;Lcom/oppo/widget/OppoTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 585
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;-><init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/String;Lcom/oppo/widget/OppoTabHost;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mIndicatorStrategy:Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)Lcom/oppo/widget/OppoTabHost$ContentStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mContentStrategy:Lcom/oppo/widget/OppoTabHost$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method public getCurentOppoTabHostBgColor()I
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mOppoTabHostBgColor:I

    return v0
.end method

.method public getIndicatorStrategy()Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mIndicatorStrategy:Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(I)Lcom/oppo/widget/OppoTabHost$OppoTabSpec;
    .locals 3
    .parameter "viewId"

    .prologue
    .line 629
    new-instance v0, Lcom/oppo/widget/OppoTabHost$ViewIdContentStrategy;

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->this$0:Lcom/oppo/widget/OppoTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/oppo/widget/OppoTabHost$ViewIdContentStrategy;-><init>(Lcom/oppo/widget/OppoTabHost;ILcom/oppo/widget/OppoTabHost$1;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mContentStrategy:Lcom/oppo/widget/OppoTabHost$ContentStrategy;

    .line 630
    return-object p0
.end method

.method public setContent(Landroid/content/Intent;)Lcom/oppo/widget/OppoTabHost$OppoTabSpec;
    .locals 4
    .parameter "intent"

    .prologue
    .line 646
    new-instance v0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->this$0:Lcom/oppo/widget/OppoTabHost;

    iget-object v2, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;-><init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/oppo/widget/OppoTabHost$1;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mContentStrategy:Lcom/oppo/widget/OppoTabHost$ContentStrategy;

    .line 647
    return-object p0
.end method

.method public setContent(Lcom/oppo/widget/OppoTabHost$TabContentFactory;)Lcom/oppo/widget/OppoTabHost$OppoTabSpec;
    .locals 3
    .parameter "contentFactory"

    .prologue
    .line 638
    new-instance v0, Lcom/oppo/widget/OppoTabHost$FactoryContentStrategy;

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->this$0:Lcom/oppo/widget/OppoTabHost;

    iget-object v2, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/oppo/widget/OppoTabHost$FactoryContentStrategy;-><init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/CharSequence;Lcom/oppo/widget/OppoTabHost$TabContentFactory;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mContentStrategy:Lcom/oppo/widget/OppoTabHost$ContentStrategy;

    .line 639
    return-object p0
.end method

.method public setCurentOppoTabHostBgColor(I)Lcom/oppo/widget/OppoTabHost$OppoTabSpec;
    .locals 0
    .parameter "curentOppoTabHostBgColor"

    .prologue
    .line 660
    iput p1, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mOppoTabHostBgColor:I

    .line 661
    return-object p0
.end method

.method public setIndicator(Landroid/view/View;)Lcom/oppo/widget/OppoTabHost$OppoTabSpec;
    .locals 2
    .parameter "view"

    .prologue
    .line 620
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "OppoTabSpec.setIndicator(View view) is not supportedwhen tab widget is align bottom!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIndicator(Ljava/lang/CharSequence;)Lcom/oppo/widget/OppoTabHost$OppoTabSpec;
    .locals 3
    .parameter "label"

    .prologue
    .line 604
    new-instance v0, Lcom/oppo/widget/OppoTabHost$LabelIndicatorStrategy;

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->this$0:Lcom/oppo/widget/OppoTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/oppo/widget/OppoTabHost$LabelIndicatorStrategy;-><init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/CharSequence;Lcom/oppo/widget/OppoTabHost$1;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mIndicatorStrategy:Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;

    .line 605
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/oppo/widget/OppoTabHost$OppoTabSpec;
    .locals 3
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 612
    new-instance v0, Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->this$0:Lcom/oppo/widget/OppoTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;-><init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/oppo/widget/OppoTabHost$1;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mIndicatorStrategy:Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;

    .line 613
    return-object p0
.end method
