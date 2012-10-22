.class Lcom/oppo/widget/OppoShortCutItem;
.super Ljava/lang/Object;
.source "OppoShortCutItem.java"


# static fields
.field private static drawablePadding:I

.field private static mDefaultTextDisableColor:I

.field private static mDefaultTextHlColor:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private enable_state:Z

.field public mBgBottom:I

.field public mBgLeft:I

.field public mBgRight:I

.field public mBgTop:I

.field public mBottom:I

.field private mDefaultText:Ljava/lang/CharSequence;

.field private mDefaultTextColor:I

.field public mItemBg:Landroid/graphics/drawable/Drawable;

.field public mItemDisableBg:Landroid/graphics/drawable/Drawable;

.field public mItemDisableHlBg:Landroid/graphics/drawable/Drawable;

.field public mItemDisableIcon:Landroid/graphics/drawable/Drawable;

.field public mItemHlBg:Landroid/graphics/drawable/Drawable;

.field public mItemHlIcon:Landroid/graphics/drawable/Drawable;

.field public mItemIcon:Landroid/graphics/drawable/Drawable;

.field public mItemId:I

.field public mItemLabel:Ljava/lang/String;

.field public mItemLabelColor:I

.field public mItemLabelDisableColor:I

.field public mItemLabelHlColor:I

.field public mItemLabelSize:I

.field public mItemTag:Ljava/lang/String;

.field public mLeft:I

.field public mRight:I

.field public mTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/high16 v0, -0x100

    sput v0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextHlColor:I

    .line 85
    const v0, -0x7f414142

    sput v0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextDisableColor:I

    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/oppo/widget/OppoShortCutItem;->drawablePadding:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "OppoShortCutItem"

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->TAG:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoShortCutItem;->enable_state:Z

    .line 75
    iput v2, p0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextColor:I

    .line 90
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultText:Ljava/lang/CharSequence;

    .line 125
    iput v2, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    .line 126
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemTag:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemBg:Landroid/graphics/drawable/Drawable;

    .line 129
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlBg:Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultText:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabel:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    .line 134
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlIcon:Landroid/graphics/drawable/Drawable;

    .line 135
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextColor:I

    iput v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelColor:I

    .line 136
    sget v0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextHlColor:I

    iput v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelHlColor:I

    .line 137
    sget v0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextDisableColor:I

    iput v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelDisableColor:I

    .line 138
    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "OppoShortCutItem"

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->TAG:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoShortCutItem;->enable_state:Z

    .line 75
    iput v2, p0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextColor:I

    .line 90
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultText:Ljava/lang/CharSequence;

    .line 104
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    .line 105
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemTag:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemBg:Landroid/graphics/drawable/Drawable;

    .line 108
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlBg:Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultText:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabel:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    .line 113
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlIcon:Landroid/graphics/drawable/Drawable;

    .line 114
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextColor:I

    iput v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelColor:I

    .line 115
    sget v0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextHlColor:I

    iput v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelHlColor:I

    .line 116
    return-void
.end method


# virtual methods
.method public bgHeight()I
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgBottom:I

    iget v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bgWidth()I
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgRight:I

    iget v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDrawablePadding()I
    .locals 1

    .prologue
    .line 390
    sget v0, Lcom/oppo/widget/OppoShortCutItem;->drawablePadding:I

    return v0
.end method

.method public getEnable()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutItem;->enable_state:Z

    return v0
.end method

.method public getItemBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemBgRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 302
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgLeft:I

    iget v2, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgTop:I

    iget v3, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgRight:I

    iget v4, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getItemDisableBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemDisableBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemDisableHlBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemDisableHlBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemDisableIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemDisableIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemHlBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemHlIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    return v0
.end method

.method public getItemLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getItemLabelColor()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelColor:I

    return v0
.end method

.method public getItemLabelDisableColor()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelDisableColor:I

    return v0
.end method

.method public getItemLabelHlColor()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelHlColor:I

    return v0
.end method

.method public getItemLabelSize()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelSize:I

    return v0
.end method

.method public getItemRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 279
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mLeft:I

    iget v2, p0, Lcom/oppo/widget/OppoShortCutItem;->mTop:I

    iget v3, p0, Lcom/oppo/widget/OppoShortCutItem;->mRight:I

    iget v4, p0, Lcom/oppo/widget/OppoShortCutItem;->mBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getItemText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabel:Ljava/lang/String;

    return-object v0
.end method

.method public height()I
    .locals 2

    .prologue
    .line 252
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mBottom:I

    iget v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public setBgDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "ItemBg"
    .parameter "ItemHlBg"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemBg:Landroid/graphics/drawable/Drawable;

    .line 166
    iput-object p2, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlBg:Landroid/graphics/drawable/Drawable;

    .line 167
    return-void
.end method

.method public setDisableBgDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "ItemBg"
    .parameter "ItemHlBg"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemDisableBg:Landroid/graphics/drawable/Drawable;

    .line 177
    iput-object p2, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemDisableHlBg:Landroid/graphics/drawable/Drawable;

    .line 178
    return-void
.end method

.method public setDrawablePadding(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 382
    sput p1, Lcom/oppo/widget/OppoShortCutItem;->drawablePadding:I

    .line 383
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/oppo/widget/OppoShortCutItem;->enable_state:Z

    .line 367
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "IconBg"
    .parameter "IconHlBg"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemBg:Landroid/graphics/drawable/Drawable;

    .line 187
    iput-object p2, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlBg:Landroid/graphics/drawable/Drawable;

    .line 188
    return-void
.end method

.method public setItemAttribute(ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "label"

    .prologue
    .line 146
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    .line 147
    iput-object p2, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabel:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setItemBgBounds(IIII)V
    .locals 0
    .parameter "Left"
    .parameter "Top"
    .parameter "Right"
    .parameter "Bottom"

    .prologue
    .line 290
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgLeft:I

    .line 291
    iput p3, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgRight:I

    .line 292
    iput p2, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgTop:I

    .line 293
    iput p4, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgBottom:I

    .line 294
    return-void
.end method

.method public setItemBounds(IIII)V
    .locals 0
    .parameter "Left"
    .parameter "Top"
    .parameter "Right"
    .parameter "Bottom"

    .prologue
    .line 272
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mLeft:I

    .line 273
    iput p3, p0, Lcom/oppo/widget/OppoShortCutItem;->mRight:I

    .line 274
    iput p2, p0, Lcom/oppo/widget/OppoShortCutItem;->mTop:I

    .line 275
    iput p4, p0, Lcom/oppo/widget/OppoShortCutItem;->mBottom:I

    .line 276
    return-void
.end method

.method public setItemId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 155
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    .line 156
    return-void
.end method

.method public setItemLabelColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 318
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelColor:I

    .line 319
    return-void
.end method

.method public setItemLabelDisableColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 330
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelDisableColor:I

    .line 331
    return-void
.end method

.method public setItemLabelHlColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 346
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelHlColor:I

    .line 347
    return-void
.end method

.method public setItemLabelSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 358
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelSize:I

    .line 359
    return-void
.end method

.method public setItemTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemTag:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public width()I
    .locals 2

    .prologue
    .line 248
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mRight:I

    iget v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method
