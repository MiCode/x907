.class public abstract Lcom/oppo/camera/setting/SettingMenuBase;
.super Landroid/widget/LinearLayout;
.source "SettingMenuBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/setting/SettingMenuBase$Mutex;,
        Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;,
        Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;,
        Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;
    }
.end annotation


# instance fields
.field protected mCameraState:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mItemIconsId:[I

.field private mItemValuesId:[I

.field protected mKeys:[Ljava/lang/String;

.field protected mScreenHintListener:Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;

.field protected mSettingChangedListener:Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;

.field protected mSettingItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lcom/oppo/camera/setting/SettingMenuBase$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/setting/SettingMenuBase$1;-><init>(Lcom/oppo/camera/setting/SettingMenuBase;)V

    iput-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p1, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/camera/setting/SettingMenuBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getDrawableArray(I)[Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "res"

    .prologue
    .line 139
    iget-object v3, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 140
    .local v2, icons:Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v1, v3, [Landroid/graphics/drawable/Drawable;

    .line 141
    .local v1, iconArray:[Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 142
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-object v1
.end method


# virtual methods
.method public abstract OnSettingsChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract actionDown(Ljava/lang/String;)V
.end method

.method protected abstract actionUp(Ljava/lang/String;)V
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/SettingMenuBase;->setVisibility(I)V

    .line 180
    return-void
.end method

.method public hideView(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->setVisibility(I)V

    .line 100
    return-void
.end method

.method protected init([I[I[Ljava/lang/String;)V
    .locals 12
    .parameter "itemIconsId"
    .parameter "itemValuesId"
    .parameter "keys"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mItemIconsId:[I

    .line 74
    iput-object p2, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mItemValuesId:[I

    .line 75
    iput-object p3, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mKeys:[Ljava/lang/String;

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingItemMap:Ljava/util/HashMap;

    .line 77
    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mItemIconsId:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mItemValuesId:[I

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 78
    const-string v1, "SettingMenuBase"

    const-string v2, "icon\'s length is not equal values\'s"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 82
    .local v11, res:Landroid/content/res/Resources;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mItemIconsId:[I

    array-length v1, v1

    if-ge v7, v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mItemValuesId:[I

    aget v1, v1, v7

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, values:[Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mItemIconsId:[I

    aget v1, v1, v7

    invoke-direct {p0, v1}, Lcom/oppo/camera/setting/SettingMenuBase;->getDrawableArray(I)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 85
    .local v3, iconIds:[Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;

    iget-object v2, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mKeys:[Ljava/lang/String;

    aget-object v5, v1, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;-><init>(Lcom/oppo/camera/setting/SettingMenuBase;Landroid/content/Context;[Landroid/graphics/drawable/Drawable;[Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v0, cameraSettingItem:Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;
    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/SettingMenuBase;->onSettingItemCreated(Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;)V

    .line 87
    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingItemMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mKeys:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 90
    .end local v0           #cameraSettingItem:Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;
    .end local v3           #iconIds:[Landroid/graphics/drawable/Drawable;
    .end local v4           #values:[Ljava/lang/String;
    :cond_2
    move-object v6, p3

    .local v6, arr$:[Ljava/lang/String;
    array-length v10, v6

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v10, :cond_0

    aget-object v9, v6, v8

    .line 91
    .local v9, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingItemMap:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/oppo/camera/setting/SettingMenuBase;->addView(Landroid/view/View;)V

    .line 90
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method protected notifySettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingChangedListener:Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingChangedListener:Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method protected abstract onSettingItemCreated(Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;)V
.end method

.method public setAlpha(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "alpha"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;

    invoke-virtual {v0, p2}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->setAlpha(I)V

    .line 118
    return-void
.end method

.method public setCameraState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 169
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 170
    :cond_0
    iput p1, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mCameraState:I

    .line 172
    :cond_1
    return-void
.end method

.method public setDegree(I)V
    .locals 5
    .parameter "degree"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mKeys:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 158
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingItemMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;

    invoke-virtual {v4, p1}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->setDegree(I)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setDegreeWithoutAnimation(I)V
    .locals 5
    .parameter "degree"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mKeys:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 164
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingItemMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;

    invoke-virtual {v4, p1}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->setDegreeWithoutAnimation(I)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setDrawable(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "resId"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;

    invoke-virtual {v0, p2}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->setImageResource(I)V

    .line 136
    return-void
.end method

.method public setEnable(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "enabled"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;

    invoke-virtual {v0, p2}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->setEnabled(Z)V

    .line 108
    return-void
.end method

.method public setOnScreenHintListener(Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mScreenHintListener:Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;

    .line 153
    return-void
.end method

.method public setOnSettingsChangedListener(Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingChangedListener:Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;

    .line 149
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;

    invoke-virtual {v0, p2}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->setValue(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/SettingMenuBase;->setVisibility(I)V

    .line 176
    return-void
.end method

.method protected showScreenHint(I)V
    .locals 1
    .parameter "textId"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mScreenHintListener:Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mScreenHintListener:Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;

    invoke-interface {v0, p1}, Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;->onScreenHint(I)V

    .line 186
    :cond_0
    return-void
.end method

.method public showView(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase;->mSettingItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->setVisibility(I)V

    .line 104
    return-void
.end method
