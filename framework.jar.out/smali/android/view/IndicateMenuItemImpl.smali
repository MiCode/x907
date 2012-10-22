.class final Landroid/view/IndicateMenuItemImpl;
.super Ljava/lang/Object;
.source "IndicateMenuItemImpl.java"

# interfaces
.implements Landroid/view/IndicateMenuItem;


# static fields
.field private static final ENABLED:I = 0x2

.field private static final HIDDEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IndicateMenuItem"

.field private static sPaint:Landroid/graphics/Paint;


# instance fields
.field private mClickListener:Landroid/view/IndicateMenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private mId:I

.field private mIntent:Landroid/content/Intent;

.field private mItemCallback:Ljava/lang/Runnable;

.field private mMenu:Landroid/view/IndicateMenuImpl;

.field private mOrder:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/view/IndicateMenuItemImpl;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method constructor <init>(Landroid/view/IndicateMenuImpl;IILjava/lang/CharSequence;)V
    .locals 1
    .parameter "menu"
    .parameter "id"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/IndicateMenuItemImpl;->mFlags:I

    .line 48
    iput-object p1, p0, Landroid/view/IndicateMenuItemImpl;->mMenu:Landroid/view/IndicateMenuImpl;

    .line 49
    iput p2, p0, Landroid/view/IndicateMenuItemImpl;->mId:I

    .line 50
    iput p3, p0, Landroid/view/IndicateMenuItemImpl;->mOrder:I

    .line 51
    iput-object p4, p0, Landroid/view/IndicateMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 52
    iget-object v0, p0, Landroid/view/IndicateMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/view/IndicateMenuItemImpl;->measureTitle(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Landroid/view/IndicateMenuItemImpl;->mTitleLength:I

    .line 53
    return-void
.end method

.method constructor <init>(Landroid/view/IndicateMenuImpl;ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "menu"
    .parameter "id"
    .parameter "title"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/view/IndicateMenuItemImpl;-><init>(Landroid/view/IndicateMenuImpl;IILjava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method static getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Landroid/view/IndicateMenuItemImpl;->sPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private measureTitle(Ljava/lang/CharSequence;)I
    .locals 3
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 191
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    sget-object v1, Landroid/view/IndicateMenuItemImpl;->sPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/view/IndicateMenuItemImpl;->mMenu:Landroid/view/IndicateMenuImpl;

    invoke-virtual {v2}, Landroid/view/IndicateMenuImpl;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 195
    sget-object v1, Landroid/view/IndicateMenuItemImpl;->sPaint:Landroid/graphics/Paint;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private setEnabledInternal(Z)Z
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 127
    iget v0, p0, Landroid/view/IndicateMenuItemImpl;->mFlags:I

    .line 128
    .local v0, oldFlags:I
    iget v1, p0, Landroid/view/IndicateMenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x3

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Landroid/view/IndicateMenuItemImpl;->mFlags:I

    .line 129
    iget v1, p0, Landroid/view/IndicateMenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    move v1, v2

    .line 128
    goto :goto_0
.end method

.method private setVisibleInternal(Z)Z
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    iget v0, p0, Landroid/view/IndicateMenuItemImpl;->mFlags:I

    .line 162
    .local v0, oldFlags:I
    iget v1, p0, Landroid/view/IndicateMenuItemImpl;->mFlags:I

    and-int/lit8 v4, v1, -0x2

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    or-int/2addr v1, v4

    iput v1, p0, Landroid/view/IndicateMenuItemImpl;->mFlags:I

    .line 163
    iget v1, p0, Landroid/view/IndicateMenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_1

    :goto_1
    return v3

    :cond_0
    move v1, v3

    .line 162
    goto :goto_0

    :cond_1
    move v3, v2

    .line 163
    goto :goto_1
.end method


# virtual methods
.method getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/view/IndicateMenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Landroid/view/IndicateMenuItemImpl;->mId:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/view/IndicateMenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/view/IndicateMenuItemImpl;->mOrder:I

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/view/IndicateMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleLength()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Landroid/view/IndicateMenuItemImpl;->mTitleLength:I

    return v0
.end method

.method public invoke()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 61
    iget-object v3, p0, Landroid/view/IndicateMenuItemImpl;->mClickListener:Landroid/view/IndicateMenuItem$OnMenuItemClickListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/IndicateMenuItemImpl;->mClickListener:Landroid/view/IndicateMenuItem$OnMenuItemClickListener;

    invoke-interface {v3, p0}, Landroid/view/IndicateMenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/IndicateMenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v2

    .line 65
    :cond_1
    iget-object v3, p0, Landroid/view/IndicateMenuItemImpl;->mMenu:Landroid/view/IndicateMenuImpl;

    invoke-virtual {v3}, Landroid/view/IndicateMenuImpl;->getCallback()Landroid/view/IndicateMenuImpl$Callback;

    move-result-object v0

    .line 66
    .local v0, callback:Landroid/view/IndicateMenuImpl$Callback;
    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/view/IndicateMenuItemImpl;->mMenu:Landroid/view/IndicateMenuImpl;

    invoke-virtual {v3}, Landroid/view/IndicateMenuImpl;->getRootMenu()Landroid/view/IndicateMenuImpl;

    move-result-object v3

    invoke-interface {v0, v3, p0}, Landroid/view/IndicateMenuImpl$Callback;->onMenuItemSelected(Landroid/view/IndicateMenuImpl;Landroid/view/IndicateMenuItem;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    :cond_2
    iget-object v3, p0, Landroid/view/IndicateMenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_3

    .line 72
    iget-object v3, p0, Landroid/view/IndicateMenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 76
    :cond_3
    iget-object v3, p0, Landroid/view/IndicateMenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_4

    .line 78
    :try_start_0
    iget-object v3, p0, Landroid/view/IndicateMenuItemImpl;->mMenu:Landroid/view/IndicateMenuImpl;

    invoke-virtual {v3}, Landroid/view/IndicateMenuImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/view/IndicateMenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "IndicateMenuItem"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Landroid/view/IndicateMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Landroid/view/IndicateMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onTextSizeChanged()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/view/IndicateMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/view/IndicateMenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/IndicateMenuItem;

    .line 200
    return-void
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/IndicateMenuItem;
    .locals 0
    .parameter "callback"

    .prologue
    .line 180
    iput-object p1, p0, Landroid/view/IndicateMenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 181
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/IndicateMenuItem;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/view/IndicateMenuItemImpl;->setEnabledInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/view/IndicateMenuItemImpl;->mMenu:Landroid/view/IndicateMenuImpl;

    invoke-virtual {v0, p0}, Landroid/view/IndicateMenuImpl;->onItemEnabledChanged(Landroid/view/IndicateMenuItemImpl;)V

    .line 123
    :cond_0
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/IndicateMenuItem;
    .locals 0
    .parameter "intent"

    .prologue
    .line 167
    iput-object p1, p0, Landroid/view/IndicateMenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 168
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/IndicateMenuItem$OnMenuItemClickListener;)Landroid/view/IndicateMenuItem;
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 186
    iput-object p1, p0, Landroid/view/IndicateMenuItemImpl;->mClickListener:Landroid/view/IndicateMenuItem$OnMenuItemClickListener;

    .line 187
    return-object p0
.end method

.method public setTitle(I)Landroid/view/IndicateMenuItem;
    .locals 1
    .parameter "title"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/view/IndicateMenuItemImpl;->mMenu:Landroid/view/IndicateMenuImpl;

    invoke-virtual {v0}, Landroid/view/IndicateMenuImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/IndicateMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 144
    iget-object v0, p0, Landroid/view/IndicateMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/view/IndicateMenuItemImpl;->measureTitle(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Landroid/view/IndicateMenuItemImpl;->mTitleLength:I

    .line 145
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/IndicateMenuItem;
    .locals 1
    .parameter "title"

    .prologue
    .line 135
    iput-object p1, p0, Landroid/view/IndicateMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 136
    iget-object v0, p0, Landroid/view/IndicateMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/view/IndicateMenuItemImpl;->measureTitle(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Landroid/view/IndicateMenuItemImpl;->mTitleLength:I

    .line 137
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/IndicateMenuItem;
    .locals 1
    .parameter "visible"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/view/IndicateMenuItemImpl;->setVisibleInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/view/IndicateMenuItemImpl;->mMenu:Landroid/view/IndicateMenuImpl;

    invoke-virtual {v0, p0}, Landroid/view/IndicateMenuImpl;->onItemVisibleChanged(Landroid/view/IndicateMenuItemImpl;)V

    .line 157
    :cond_0
    return-object p0
.end method
