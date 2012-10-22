.class public Lcom/oppo/widget/OppoXmlShortCutItemLoader;
.super Ljava/lang/Object;
.source "OppoXmlShortCutItemLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;
    }
.end annotation


# static fields
.field private static final XMLATTR_COMMON_ANIMATED:Ljava/lang/String; = "animated"

.field private static final XMLATTR_COMMON_BG:Ljava/lang/String; = "background"

.field private static final XMLATTR_COMMON_CATEGORY:Ljava/lang/String; = "category"

.field private static final XMLATTR_COMMON_CHILD:Ljava/lang/String; = "child"

.field private static final XMLATTR_COMMON_CHILD_LIKE:Ljava/lang/String; = "childlike"

.field private static final XMLATTR_COMMON_DRAWABLE_PADDING:Ljava/lang/String; = "drawablePadding"

.field private static final XMLATTR_COMMON_DURING:Ljava/lang/String; = "during"

.field private static final XMLATTR_COMMON_HEIGHT:Ljava/lang/String; = "height"

.field private static final XMLATTR_COMMON_ITEM_BG:Ljava/lang/String; = "itemBg"

.field private static final XMLATTR_COMMON_ITEM_BG_DISABLE:Ljava/lang/String; = "itemBgDisable"

.field private static final XMLATTR_COMMON_ITEM_BG_DISABLE_HL:Ljava/lang/String; = "itemBgDisableHl"

.field private static final XMLATTR_COMMON_ITEM_BG_HL:Ljava/lang/String; = "itemBgHl"

.field private static final XMLATTR_COMMON_MAX_CHILD:Ljava/lang/String; = "maxchild"

.field private static final XMLATTR_COMMON_PADDING_COLOR:Ljava/lang/String; = "paddingcolor"

.field private static final XMLATTR_COMMON_PADDING_TOP:Ljava/lang/String; = "paddingTop"

.field private static final XMLATTR_COMMON_TEXT_COLOR:Ljava/lang/String; = "textColor"

.field private static final XMLATTR_COMMON_TEXT_COLOR_DISABLE:Ljava/lang/String; = "textColorDisable"

.field private static final XMLATTR_COMMON_TEXT_COLOR_HL:Ljava/lang/String; = "textColorHl"

.field private static final XMLATTR_COMMON_TEXT_SIZE:Ljava/lang/String; = "textSize"

.field private static final XMLATTR_COMMON_TEXT_SIZE_LAND:Ljava/lang/String; = "textSizeLand"

.field private static final XMLATTR_COMMON_WIDTH:Ljava/lang/String; = "width"

.field private static final XMLATTR_ITEM_ENABLE:Ljava/lang/String; = "enable"

.field private static final XMLATTR_ITEM_ICON:Ljava/lang/String; = "icon"

.field private static final XMLATTR_ITEM_ICON_DISABLE:Ljava/lang/String; = "iconDisable"

.field private static final XMLATTR_ITEM_ICON_HL:Ljava/lang/String; = "iconHl"

.field private static final XMLATTR_ITEM_TAG:Ljava/lang/String; = "tag"

.field private static final XMLATTR_ITEM_TEXT:Ljava/lang/String; = "text"

.field private static final XMLTAG_ITEM:Ljava/lang/String; = "item"

.field private static final XMLTAG_SHORTCUTBAR:Ljava/lang/String; = "OppoShortCutBar"


# instance fields
.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mItemCommonAttributes:Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;

.field mNextEventFetched:Z

.field private mResources:Landroid/content/res/Resources;

.field private mXmlEventType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 294
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "OppoXmlShortCutItemLoader"

    iput-object v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mNextEventFetched:Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mItemCommonAttributes:Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;

    .line 295
    iput-object p1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;

    .line 296
    iget-object v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mResources:Landroid/content/res/Resources;

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDimensionPixelSize(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 494
    const/4 v3, 0x0

    invoke-interface {p1, v3, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, s:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 500
    .end local p3
    :goto_0
    return p3

    .line 497
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, ret:Z
    move p3, v1

    .line 498
    goto :goto_0

    .line 499
    .end local v1           #ret:Z
    :catch_0
    move-exception v0

    .line 500
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 6
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    const/4 v5, 0x0

    .line 530
    const/4 v4, 0x0

    invoke-interface {p1, v5, p2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 532
    .local v1, resId:I
    if-nez v1, :cond_1

    .line 533
    invoke-interface {p1, v5, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 542
    .end local v3           #s:Ljava/lang/String;
    .end local p3
    :goto_0
    return p3

    .line 536
    .restart local v3       #s:Ljava/lang/String;
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, ret:I
    move p3, v2

    .line 537
    goto :goto_0

    .line 538
    .end local v2           #ret:I
    :catch_0
    move-exception v0

    .line 539
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 542
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    goto :goto_0
.end method

.method private getDimensionPixelSize(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 10
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 571
    invoke-interface {p1, v8, p2, v7}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 573
    .local v3, resId:I
    if-nez v3, :cond_8

    .line 574
    invoke-interface {p1, v8, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 575
    .local v5, s:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDimensionPixelSize, s = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    if-nez v5, :cond_2

    .line 610
    .end local v5           #s:Ljava/lang/String;
    .end local p3
    :cond_1
    :goto_0
    return p3

    .line 577
    .restart local v5       #s:Ljava/lang/String;
    .restart local p3
    :cond_2
    const/4 v6, 0x0

    .line 578
    .local v6, splitter:Ljava/lang/String;
    const/high16 v2, 0x3f80

    .line 580
    .local v2, f:F
    const-string v7, "[0-9]*dip$"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 581
    const-string v6, "dip"

    .line 582
    const/high16 v2, 0x3fc0

    .line 595
    :cond_3
    :goto_1
    if-eqz v6, :cond_1

    .line 597
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, dimensionAttr:[Ljava/lang/String;
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "after split string using "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dimensionAttr[] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_4
    array-length v7, v0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 603
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 604
    .local v4, ret:I
    int-to-float v7, v4

    mul-float/2addr v7, v2

    float-to-int p3, v7

    goto :goto_0

    .line 584
    .end local v0           #dimensionAttr:[Ljava/lang/String;
    .end local v4           #ret:I
    :cond_5
    const-string v7, "[0-9]*px$"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 585
    const-string v6, "px"

    .line 586
    const/high16 v2, 0x3f80

    goto :goto_1

    .line 588
    :cond_6
    const-string v7, "[0-9]*sp$"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 589
    const-string v6, "sp"

    .line 590
    const/high16 v2, 0x3fc0

    goto :goto_1

    .line 593
    :cond_7
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    const-string v8, "do not match any regex, return default value"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 605
    .restart local v0       #dimensionAttr:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 606
    .local v1, e:Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 610
    .end local v0           #dimensionAttr:[Ljava/lang/String;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #f:F
    .end local v5           #s:Ljava/lang/String;
    .end local v6           #splitter:Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    goto/16 :goto_0
.end method

.method private getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 512
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, p2, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 513
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 518
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0
.end method

.method private getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 6
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    const/4 v5, 0x0

    .line 469
    const/4 v4, 0x0

    invoke-interface {p1, v5, p2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 471
    .local v1, resId:I
    if-nez v1, :cond_1

    .line 472
    invoke-interface {p1, v5, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 481
    .end local v3           #s:Ljava/lang/String;
    .end local p3
    :goto_0
    return p3

    .line 475
    .restart local v3       #s:Ljava/lang/String;
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, ret:I
    move p3, v2

    .line 476
    goto :goto_0

    .line 477
    .end local v2           #ret:I
    :catch_0
    move-exception v0

    .line 478
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 481
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0
.end method

.method private getShortCutItem(Landroid/content/res/XmlResourceParser;)Lcom/oppo/widget/OppoShortCutItem;
    .locals 7
    .parameter "xrp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 427
    new-instance v0, Lcom/oppo/widget/OppoShortCutItem;

    invoke-direct {v0}, Lcom/oppo/widget/OppoShortCutItem;-><init>()V

    .line 430
    .local v0, item:Lcom/oppo/widget/OppoShortCutItem;
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mItemCommonAttributes:Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;

    iget-object v1, v1, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonBg:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mItemCommonAttributes:Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;

    iget-object v2, v2, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonHlBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/widget/OppoShortCutItem;->setBgDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 431
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mItemCommonAttributes:Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;

    iget-object v1, v1, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonDisableBg:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mItemCommonAttributes:Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;

    iget-object v2, v2, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonHlDisableBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/widget/OppoShortCutItem;->setDisableBgDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 432
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mItemCommonAttributes:Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->getCommonDrawablePadding()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutItem;->setDrawablePadding(I)V

    .line 433
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mItemCommonAttributes:Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->getCommonTextSize()I

    move-result v1

    iput v1, v0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelSize:I

    .line 434
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mItemCommonAttributes:Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->getCommonTextColor()I

    move-result v1

    iput v1, v0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelColor:I

    .line 435
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mItemCommonAttributes:Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->getCommonTextColorHl()I

    move-result v1

    iput v1, v0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelHlColor:I

    .line 436
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mItemCommonAttributes:Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->getCommonTextColorDisable()I

    move-result v1

    iput v1, v0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelDisableColor:I

    .line 439
    iget-boolean v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get item tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tag"

    const-string v4, ""

    invoke-direct {p0, p1, v3, v4}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    const-string v1, "tag"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutItem;->setItemTag(Ljava/lang/String;)V

    .line 442
    iget-boolean v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get item enalbe state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "enable"

    invoke-direct {p0, p1, v3, v6}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    const-string v1, "enable"

    invoke-direct {p0, p1, v1, v6}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutItem;->setEnable(Z)V

    .line 445
    iget-boolean v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get item label = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "text"

    const-string v4, ""

    invoke-direct {p0, p1, v3, v4}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_2
    const-string v1, "text"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabel:Ljava/lang/String;

    .line 449
    iget-boolean v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get item icon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "icon"

    invoke-direct {p0, p1, v3, v5}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_3
    const-string v1, "icon"

    invoke-direct {p0, p1, v1, v5}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/widget/OppoShortCutItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    .line 452
    iget-boolean v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get item hl icon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "iconHl"

    invoke-direct {p0, p1, v3, v5}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_4
    const-string v1, "iconHl"

    invoke-direct {p0, p1, v1, v5}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlIcon:Landroid/graphics/drawable/Drawable;

    .line 455
    iget-boolean v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get item disable icon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "iconDisable"

    invoke-direct {p0, p1, v3, v5}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_5
    const-string v1, "iconDisable"

    invoke-direct {p0, p1, v1, v5}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/widget/OppoShortCutItem;->mItemDisableIcon:Landroid/graphics/drawable/Drawable;

    .line 458
    return-object v0
.end method

.method private getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    const/4 v2, 0x0

    .line 554
    const/4 v1, 0x0

    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 555
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 556
    invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 558
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public loadShortCutBar(ILcom/oppo/widget/OppoShortCutBar;)V
    .locals 12
    .parameter "resourceId"
    .parameter "OppoShortCutBar"

    .prologue
    .line 301
    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;

    if-nez v7, :cond_0

    .line 423
    :goto_0
    return-void

    .line 304
    :cond_0
    const/4 v5, 0x0

    .line 305
    .local v5, nChild:I
    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 306
    .local v6, xrp:Landroid/content/res/XmlResourceParser;
    const/4 v4, 0x0

    .line 308
    .local v4, mShortCutItem:Lcom/oppo/widget/OppoShortCutItem;
    new-instance v7, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;

    invoke-direct {v7, p0, v6}, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;-><init>(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;)V

    iput-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mItemCommonAttributes:Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;

    .line 310
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    const-string v8, "start parser xml resource."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    iput v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mXmlEventType:I

    .line 313
    :cond_2
    :goto_1
    iget v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mXmlEventType:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1b

    .line 314
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mNextEventFetched:Z

    .line 315
    iget v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mXmlEventType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_18

    .line 316
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    const-string v8, "-------mXmlEventType == XmlResourceParser.START_TAG"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_3
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, attr:Ljava/lang/String;
    const-string v7, "OppoShortCutBar"

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_14

    .line 322
    const-string v7, "child"

    const/4 v8, 0x5

    invoke-direct {p0, v6, v7, v8}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v5

    .line 323
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get child = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_4
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get maxchild = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "maxchild"

    const/4 v10, 0x5

    invoke-direct {p0, v6, v9, v10}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_5
    const-string v7, "maxchild"

    const/4 v8, 0x5

    invoke-direct {p0, v6, v7, v8}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/oppo/widget/OppoShortCutBar;->setMaxChild(I)V

    .line 328
    const-string v7, "childlike"

    const-string v8, "below"

    invoke-direct {p0, v6, v7, v8}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, mChildLike:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get childlike = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_6
    const-string v7, "normal"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 332
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/oppo/widget/OppoShortCutBar;->setChildLike(I)V

    .line 342
    :cond_7
    :goto_2
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get paddingTop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "paddingTop"

    iget-object v10, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10500c4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-direct {p0, v6, v9, v10}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDimensionPixelSize(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_8
    const-string v7, "paddingTop"

    iget-object v8, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10500c4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDimensionPixelSize(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/oppo/widget/OppoShortCutBar;->setArcHeight(I)V

    .line 348
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get animated = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "animated"

    const/4 v10, 0x0

    invoke-direct {p0, v6, v9, v10}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_9
    const-string v7, "animated"

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {p2, v7}, Lcom/oppo/widget/OppoShortCutBar;->setAnimationEnable(Z)V

    .line 351
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get during = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "during"

    const/4 v10, 0x0

    invoke-direct {p0, v6, v9, v10}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_a
    const-string v7, "during"

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/oppo/widget/OppoShortCutBar;->setAnimationDuring(I)V

    .line 355
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get background = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "background"

    iget-object v10, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1080104

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {p0, v6, v9, v10}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_b
    const-string v7, "background"

    iget-object v8, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080104

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/oppo/widget/OppoShortCutBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    const-string v7, "category"

    const-string v8, "sys_normal"

    invoke-direct {p0, v6, v7, v8}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, mCategory:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get category = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_c
    const-string v7, "sys_normal"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 364
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/oppo/widget/OppoShortCutBar;->setCategory(I)V

    .line 374
    :cond_d
    :goto_3
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get paddingcolor = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "paddingcolor"

    const/4 v10, 0x0

    invoke-direct {p0, v6, v9, v10}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_e
    const-string v7, "paddingcolor"

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/oppo/widget/OppoShortCutBar;->setBackgroundPaddingColor(I)V

    .line 378
    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mItemCommonAttributes:Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;

    invoke-virtual {v7}, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->getCommonAttributes()Z

    .line 379
    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mItemCommonAttributes:Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;

    invoke-virtual {v7}, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->getCommonTextSize()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/oppo/widget/OppoShortCutBar;->setTextSize(I)V

    .line 380
    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mItemCommonAttributes:Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;

    invoke-virtual {v7}, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->getCommonLandTextSize()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/oppo/widget/OppoShortCutBar;->setLandTextSize(I)V

    .line 411
    .end local v0           #attr:Ljava/lang/String;
    .end local v2           #mCategory:Ljava/lang/String;
    .end local v3           #mChildLike:Ljava/lang/String;
    :cond_f
    :goto_4
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mNextEventFetched:Z

    if-nez v7, :cond_2

    .line 412
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    iput v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mXmlEventType:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    const-string v8, "Ill-formatted shortcut item layout file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 334
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0       #attr:Ljava/lang/String;
    .restart local v3       #mChildLike:Ljava/lang/String;
    :cond_10
    :try_start_1
    const-string v7, "above"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 335
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/oppo/widget/OppoShortCutBar;->setChildLike(I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 420
    .end local v0           #attr:Ljava/lang/String;
    .end local v3           #mChildLike:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 421
    .local v1, e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    const-string v8, "Unable to read shortcut item layout file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 337
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #attr:Ljava/lang/String;
    .restart local v3       #mChildLike:Ljava/lang/String;
    :cond_11
    :try_start_2
    const-string v7, "below"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 338
    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Lcom/oppo/widget/OppoShortCutBar;->setChildLike(I)V

    goto/16 :goto_2

    .line 366
    .restart local v2       #mCategory:Ljava/lang/String;
    :cond_12
    const-string v7, "sys_more"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 367
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/oppo/widget/OppoShortCutBar;->setCategory(I)V

    goto/16 :goto_3

    .line 369
    :cond_13
    const-string v7, "general"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 370
    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Lcom/oppo/widget/OppoShortCutBar;->setCategory(I)V

    goto/16 :goto_3

    .line 383
    .end local v2           #mCategory:Ljava/lang/String;
    .end local v3           #mChildLike:Ljava/lang/String;
    :cond_14
    const-string v7, "item"

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_f

    .line 384
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    const-string v8, "-------the XML element:item--------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_15
    iget-object v7, p2, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    if-nez v7, :cond_16

    .line 387
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p2, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    .line 390
    :cond_16
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getShortCutItem(Landroid/content/res/XmlResourceParser;)Lcom/oppo/widget/OppoShortCutItem;

    move-result-object v4

    .line 392
    if-eqz v4, :cond_f

    .line 394
    iget-object v7, p2, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-gt v7, v5, :cond_f

    .line 395
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    const-string v8, "add a new shortcut item"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_17
    iget-object v7, p2, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v7, p2, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Lcom/oppo/widget/OppoShortCutItem;->setItemId(I)V

    goto/16 :goto_4

    .line 403
    .end local v0           #attr:Ljava/lang/String;
    :cond_18
    iget v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mXmlEventType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_f

    .line 404
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_19

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    const-string v8, "-------mXmlEventType == XmlResourceParser.END_TAG--------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_19
    iget-boolean v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "final child count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_1a
    iget-object v7, p2, Lcom/oppo/widget/OppoShortCutBar;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/oppo/widget/OppoShortCutBar;->setChild(I)V

    goto/16 :goto_4

    .line 417
    :cond_1b
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
