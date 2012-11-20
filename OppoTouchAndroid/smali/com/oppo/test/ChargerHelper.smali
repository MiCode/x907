.class public Lcom/oppo/test/ChargerHelper;
.super Ljava/lang/Object;
.source "ChargerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChargeView"


# instance fields
.field private drawableCharge:Landroid/graphics/drawable/Drawable;

.field private drawableUncharge:Landroid/graphics/drawable/Drawable;

.field private drawableUnknown:Landroid/graphics/drawable/Drawable;

.field private lastHealth:I

.field private lastLevel:I

.field private lastStatus:I

.field private mAnimRun:Z

.field private mBatteryStatus:I

.field private mBatteryView:Landroid/view/View;

.field private mChargeFlash:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mExceptionText:Landroid/widget/TextView;

.field private mLevelImage:Landroid/graphics/drawable/LevelListDrawable;

.field private mLevelView:Landroid/widget/ImageView;

.field private mScreenOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v4, p0, Lcom/oppo/test/ChargerHelper;->mBatteryView:Landroid/view/View;

    .line 91
    iput-object v4, p0, Lcom/oppo/test/ChargerHelper;->mLevelView:Landroid/widget/ImageView;

    .line 92
    iput-object v4, p0, Lcom/oppo/test/ChargerHelper;->mExceptionText:Landroid/widget/TextView;

    .line 93
    iput-object v4, p0, Lcom/oppo/test/ChargerHelper;->mChargeFlash:Landroid/widget/ImageView;

    .line 94
    iput-object v4, p0, Lcom/oppo/test/ChargerHelper;->mLevelImage:Landroid/graphics/drawable/LevelListDrawable;

    .line 95
    iput-object v4, p0, Lcom/oppo/test/ChargerHelper;->drawableCharge:Landroid/graphics/drawable/Drawable;

    .line 96
    iput-object v4, p0, Lcom/oppo/test/ChargerHelper;->drawableUncharge:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-object v4, p0, Lcom/oppo/test/ChargerHelper;->drawableUnknown:Landroid/graphics/drawable/Drawable;

    .line 100
    iput v2, p0, Lcom/oppo/test/ChargerHelper;->mBatteryStatus:I

    .line 102
    iput-boolean v2, p0, Lcom/oppo/test/ChargerHelper;->mAnimRun:Z

    .line 103
    iput-boolean v5, p0, Lcom/oppo/test/ChargerHelper;->mScreenOn:Z

    .line 59
    iput-object p1, p0, Lcom/oppo/test/ChargerHelper;->mContext:Landroid/content/Context;

    .line 61
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->mContext:Landroid/content/Context;

    const/high16 v3, 0x7f03

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/test/ChargerHelper;->mBatteryView:Landroid/view/View;

    .line 62
    iget-object v1, p0, Lcom/oppo/test/ChargerHelper;->mBatteryView:Landroid/view/View;

    .line 63
    .local v1, v:Landroid/view/View;
    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oppo/test/ChargerHelper;->mLevelView:Landroid/widget/ImageView;

    .line 64
    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/test/ChargerHelper;->mExceptionText:Landroid/widget/TextView;

    .line 65
    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oppo/test/ChargerHelper;->mChargeFlash:Landroid/widget/ImageView;

    .line 67
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/oppo/test/ChargerHelper;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/test/ChargerHelper;->drawableCharge:Landroid/graphics/drawable/Drawable;

    .line 68
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->drawableCharge:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->drawableCharge:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v2, p0, Lcom/oppo/test/ChargerHelper;->mLevelImage:Landroid/graphics/drawable/LevelListDrawable;

    .line 76
    :goto_0
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/oppo/test/ChargerHelper;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/test/ChargerHelper;->drawableUncharge:Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-direct {p0, v5}, Lcom/oppo/test/ChargerHelper;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/test/ChargerHelper;->drawableUnknown:Landroid/graphics/drawable/Drawable;

    .line 81
    const v0, 0x200500

    .line 85
    .local v0, flags:I
    return-void

    .line 74
    .end local v0           #flags:I
    :cond_0
    const-string v2, "ChargeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No find LevelListDrawable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/test/ChargerHelper;->drawableCharge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAnim()Landroid/graphics/drawable/AnimationDrawable;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->mLevelImage:Landroid/graphics/drawable/LevelListDrawable;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 157
    :goto_0
    return-object v0

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->mLevelImage:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LevelListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_1

    .line 151
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0

    .line 155
    :cond_1
    const-string v2, "ChargeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No find AnimationDrawable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 157
    goto :goto_0
.end method

.method private getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "status"

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 196
    .local v2, r:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/oppo/test/ChargerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 200
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 202
    const v3, 0x7f020002

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 217
    :cond_0
    :goto_0
    return-object v0

    .line 204
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 206
    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 210
    const v3, 0x7f02002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    .line 215
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "ChargeView"

    const-string v4, "Can\'t find charging icon!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startAnim(Z)V
    .locals 5
    .parameter "start"

    .prologue
    .line 163
    iget-boolean v1, p0, Lcom/oppo/test/ChargerHelper;->mAnimRun:Z

    if-eq p1, v1, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/oppo/test/ChargerHelper;->getAnim()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    .line 166
    .local v0, anim:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 168
    if-eqz p1, :cond_1

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/test/ChargerHelper;->mAnimRun:Z

    .line 172
    const-string v1, "ChargeView"

    const-string v2, "Charger view anim ..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/oppo/test/ChargerHelper;->mBatteryView:Landroid/view/View;

    new-instance v2, Lcom/oppo/test/ChargerHelper$1;

    invoke-direct {v2, p0, v0}, Lcom/oppo/test/ChargerHelper$1;-><init>(Lcom/oppo/test/ChargerHelper;Landroid/graphics/drawable/AnimationDrawable;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    .end local v0           #anim:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    :goto_0
    return-void

    .line 183
    .restart local v0       #anim:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/test/ChargerHelper;->mAnimRun:Z

    .line 184
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 185
    const-string v1, "ChargeView"

    const-string v2, "Charger view anim stop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private update(ZIIZ)V
    .locals 5
    .parameter "charge"
    .parameter "status"
    .parameter "level"
    .parameter "warring"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 222
    if-eqz p1, :cond_4

    .line 224
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->mBatteryView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :goto_0
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->mLevelView:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    .line 235
    .local v1, health:I
    iget v2, p0, Lcom/oppo/test/ChargerHelper;->lastStatus:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/oppo/test/ChargerHelper;->lastHealth:I

    if-eq v2, v1, :cond_1

    .line 237
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_5

    .line 240
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->mChargeFlash:Landroid/widget/ImageView;

    const v3, 0x7f020022

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->mChargeFlash:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/oppo/test/ChargerHelper;->drawableCharge:Landroid/graphics/drawable/Drawable;

    .line 267
    :goto_1
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->mLevelView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iput p2, p0, Lcom/oppo/test/ChargerHelper;->lastStatus:I

    .line 269
    iput v1, p0, Lcom/oppo/test/ChargerHelper;->lastHealth:I

    .line 272
    :cond_1
    iget v2, p0, Lcom/oppo/test/ChargerHelper;->lastLevel:I

    if-eq v2, p3, :cond_2

    .line 274
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->mLevelView:Landroid/widget/ImageView;

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 275
    iput p3, p0, Lcom/oppo/test/ChargerHelper;->lastLevel:I

    .line 278
    :cond_2
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->mExceptionText:Landroid/widget/TextView;

    const v3, -0xffcd

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #health:I
    :cond_3
    return-void

    .line 228
    :cond_4
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->mBatteryView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 245
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #health:I
    :cond_5
    if-nez p1, :cond_6

    .line 248
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->mChargeFlash:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/oppo/test/ChargerHelper;->drawableUncharge:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 251
    :cond_6
    const/4 v2, 0x5

    if-ne p2, v2, :cond_7

    .line 253
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->mChargeFlash:Landroid/widget/ImageView;

    const v3, 0x7f020028

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->mChargeFlash:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/oppo/test/ChargerHelper;->drawableUncharge:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 257
    :cond_7
    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 259
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->mChargeFlash:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/oppo/test/ChargerHelper;->drawableUnknown:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 264
    :cond_8
    iget-object v2, p0, Lcom/oppo/test/ChargerHelper;->mChargeFlash:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/oppo/test/ChargerHelper;->drawableUncharge:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oppo/test/ChargerHelper;->mBatteryView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 54
    .local v0, fl:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 55
    return-void
.end method

.method public draw(ZII)V
    .locals 5
    .parameter "charge"
    .parameter "status"
    .parameter "level"

    .prologue
    const/4 v4, 0x1

    .line 111
    iput p2, p0, Lcom/oppo/test/ChargerHelper;->mBatteryStatus:I

    .line 115
    invoke-direct {p0}, Lcom/oppo/test/ChargerHelper;->getAnim()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    .line 116
    .local v0, d1:Landroid/graphics/drawable/AnimationDrawable;
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/oppo/test/ChargerHelper;->update(ZIIZ)V

    .line 117
    invoke-direct {p0}, Lcom/oppo/test/ChargerHelper;->getAnim()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    .line 118
    .local v1, d2:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 120
    const-string v2, "ChargeView"

    const-string v3, "Anim 1 != 2"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 124
    :cond_0
    iget-boolean v2, p0, Lcom/oppo/test/ChargerHelper;->mScreenOn:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 126
    invoke-direct {p0, v4}, Lcom/oppo/test/ChargerHelper;->startAnim(Z)V

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/oppo/test/ChargerHelper;->startAnim(Z)V

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/test/ChargerHelper;->mBatteryView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/oppo/test/ChargerHelper;->mScreenOn:Z

    .line 33
    invoke-direct {p0, v0}, Lcom/oppo/test/ChargerHelper;->startAnim(Z)V

    .line 34
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 38
    iput-boolean v2, p0, Lcom/oppo/test/ChargerHelper;->mScreenOn:Z

    .line 39
    iget v0, p0, Lcom/oppo/test/ChargerHelper;->mBatteryStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 41
    invoke-direct {p0, v2}, Lcom/oppo/test/ChargerHelper;->startAnim(Z)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/test/ChargerHelper;->startAnim(Z)V

    goto :goto_0
.end method
