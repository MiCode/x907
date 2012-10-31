.class Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;
.super Ljava/lang/Object;
.source "OppoXmlShortCutItemLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoXmlShortCutItemLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShortCutItemCommonAttributes"
.end annotation


# instance fields
.field drawablePadding:I

.field public itemCommonBg:Landroid/graphics/drawable/Drawable;

.field public itemCommonDisableBg:Landroid/graphics/drawable/Drawable;

.field public itemCommonHlBg:Landroid/graphics/drawable/Drawable;

.field public itemCommonHlDisableBg:Landroid/graphics/drawable/Drawable;

.field mXrp:Landroid/content/res/XmlResourceParser;

.field textColor:I

.field textColorDisable:I

.field textColorHl:I

.field textSize:I

.field textSizeLand:I

.field final synthetic this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;)V
    .locals 2
    .parameter
    .parameter "xrp"

    .prologue
    const/4 v0, 0x0

    .line 158
    iput-object p1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonBg:Landroid/graphics/drawable/Drawable;

    .line 148
    iput-object v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonHlBg:Landroid/graphics/drawable/Drawable;

    .line 149
    iput-object v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonDisableBg:Landroid/graphics/drawable/Drawable;

    .line 150
    iput-object v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonHlDisableBg:Landroid/graphics/drawable/Drawable;

    .line 151
    iget-object v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$000(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textSize:I

    .line 152
    iget-object v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$000(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textSizeLand:I

    .line 153
    iget-object v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$000(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textColor:I

    .line 154
    iget-object v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$000(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10600a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textColorHl:I

    .line 155
    iget-object v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$000(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10600a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textColorDisable:I

    .line 156
    iget-object v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$000(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->drawablePadding:I

    .line 159
    iput-object p2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    .line 160
    return-void
.end method


# virtual methods
.method public getCommonAttributes()Z
    .locals 7

    .prologue
    const v6, 0x1080759

    const/4 v5, 0x0

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, commonBackground:Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    iget-object v2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v3, "itemBg"

    #calls: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v5}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$100(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 169
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$000(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108075b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonBg:Landroid/graphics/drawable/Drawable;

    .line 175
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$300(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$400(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get itemBg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_1
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    iget-object v2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v3, "itemBgHl"

    #calls: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v5}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$100(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_2

    .line 181
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 182
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$000(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108075c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonHlBg:Landroid/graphics/drawable/Drawable;

    .line 183
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$300(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$400(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get default itemHlBg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonHlBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$300(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$400(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get itemHlBg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonHlBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_3
    const/4 v0, 0x0

    .line 194
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    iget-object v2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v3, "itemBgDisable"

    #calls: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v5}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$100(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_4

    .line 196
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 197
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$000(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonDisableBg:Landroid/graphics/drawable/Drawable;

    .line 203
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$300(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$400(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get itemCommonDisableBg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonDisableBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_5
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    iget-object v2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v3, "itemBgDisableHl"

    #calls: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v5}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$100(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_6

    .line 209
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 210
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$000(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonHlDisableBg:Landroid/graphics/drawable/Drawable;

    .line 216
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$300(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$400(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get itemCommonHlDisableBg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonHlDisableBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_7
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    iget-object v2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v3, "textSize"

    iget v4, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textSize:I

    #calls: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDimensionPixelSize(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    invoke-static {v1, v2, v3, v4}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$500(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textSize:I

    .line 220
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$300(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$400(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get textSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_8
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    iget-object v2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v3, "textSizeLand"

    iget v4, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textSizeLand:I

    #calls: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDimensionPixelSize(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    invoke-static {v1, v2, v3, v4}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$500(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textSizeLand:I

    .line 223
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$300(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$400(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get textSizeLand = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textSizeLand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_9
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    iget-object v2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v3, "textColor"

    iget v4, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textColor:I

    #calls: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    invoke-static {v1, v2, v3, v4}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$600(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textColor:I

    .line 226
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$300(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$400(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get textColor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_a
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    iget-object v2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v3, "textColorHl"

    iget v4, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textColorHl:I

    #calls: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    invoke-static {v1, v2, v3, v4}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$600(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textColorHl:I

    .line 229
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$300(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$400(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get textColorHl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textColorHl:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_b
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    iget-object v2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v3, "textColorDisable"

    iget v4, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textColorDisable:I

    #calls: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    invoke-static {v1, v2, v3, v4}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$600(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textColorDisable:I

    .line 232
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$300(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$400(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get textColorDisable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textColorDisable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_c
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    iget-object v2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v3, "drawablePadding"

    iget v4, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->drawablePadding:I

    #calls: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDimensionPixelSize(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    invoke-static {v1, v2, v3, v4}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$500(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->drawablePadding:I

    .line 236
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$300(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$400(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get drawablePadding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->drawablePadding:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_d
    const/4 v1, 0x1

    return v1

    .line 172
    :cond_e
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    iget-object v2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v3, "itemBg"

    iget-object v4, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonBg:Landroid/graphics/drawable/Drawable;

    #calls: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2, v3, v4}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$200(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonBg:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 186
    :cond_f
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    iget-object v2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v3, "itemBgHl"

    iget-object v4, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonHlBg:Landroid/graphics/drawable/Drawable;

    #calls: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2, v3, v4}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$200(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonHlBg:Landroid/graphics/drawable/Drawable;

    .line 187
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->DBG:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$300(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    #getter for: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$400(Lcom/oppo/widget/OppoXmlShortCutItemLoader;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get itemHlBg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonHlBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 200
    :cond_10
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    iget-object v2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v3, "itemBgDisable"

    iget-object v4, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonDisableBg:Landroid/graphics/drawable/Drawable;

    #calls: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2, v3, v4}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$200(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonDisableBg:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 213
    :cond_11
    iget-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->this$0:Lcom/oppo/widget/OppoXmlShortCutItemLoader;

    iget-object v2, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v3, "itemBgDisableHl"

    iget-object v4, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonHlDisableBg:Landroid/graphics/drawable/Drawable;

    #calls: Lcom/oppo/widget/OppoXmlShortCutItemLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2, v3, v4}, Lcom/oppo/widget/OppoXmlShortCutItemLoader;->access$200(Lcom/oppo/widget/OppoXmlShortCutItemLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->itemCommonHlDisableBg:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3
.end method

.method public getCommonDrawablePadding()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->drawablePadding:I

    return v0
.end method

.method public getCommonLandTextSize()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textSizeLand:I

    return v0
.end method

.method public getCommonTextColor()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textColor:I

    return v0
.end method

.method public getCommonTextColorDisable()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textColorDisable:I

    return v0
.end method

.method public getCommonTextColorHl()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textColorHl:I

    return v0
.end method

.method public getCommonTextSize()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/oppo/widget/OppoXmlShortCutItemLoader$ShortCutItemCommonAttributes;->textSize:I

    return v0
.end method
