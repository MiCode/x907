.class public Lcom/oppo/widget/OppoClipBoard;
.super Landroid/widget/RelativeLayout;
.source "OppoClipBoard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoClipBoard$OnClipDropListener;,
        Lcom/oppo/widget/OppoClipBoard$OnClipBoardKeyClickListener;
    }
.end annotation


# static fields
.field public static final CLEAR_CLICK:I = 0x3

.field public static final COPY_CLICK:I = 0x1

.field public static final CUT_CLICK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OppoClipBoard"


# instance fields
.field final CLIP_FlAG:Ljava/lang/String;

.field final CLIP_SIM_NUMBER:Ljava/lang/String;

.field final CLIP_TIP_COUNT:Ljava/lang/String;

.field X_DIRTY_BOUND:I

.field Y_DIRTY_BOUND:I

.field animationDuring:I

.field functionTips:Landroid/widget/TextView;

.field isAnimatable:Z

.field private isCliped:Z

.field private mButtonClear:Landroid/widget/Button;

.field private mButtonModeCopy:Landroid/widget/Button;

.field private mButtonModeCut:Landroid/widget/Button;

.field private mButtonSelectAll:Landroid/widget/Button;

.field private mClipAdapter:Landroid/widget/BaseAdapter;

.field private mClipView:Lcom/oppo/widget/OppoClipBoardView;

.field private mCloseTranslateAnimation:Landroid/view/animation/TranslateAnimation;

.field private mContext:Landroid/content/Context;

.field mOnClipBoardKeyClickListener:Lcom/oppo/widget/OppoClipBoard$OnClipBoardKeyClickListener;

.field private mOpenTranslateAnimation:Landroid/view/animation/TranslateAnimation;

.field private mShared:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoard;->mContext:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonSelectAll:Landroid/widget/Button;

    .line 56
    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonClear:Landroid/widget/Button;

    .line 57
    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonModeCopy:Landroid/widget/Button;

    .line 58
    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonModeCut:Landroid/widget/Button;

    .line 67
    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoard;->mClipView:Lcom/oppo/widget/OppoClipBoardView;

    .line 72
    iput-boolean v2, p0, Lcom/oppo/widget/OppoClipBoard;->isCliped:Z

    .line 77
    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoard;->mClipAdapter:Landroid/widget/BaseAdapter;

    .line 82
    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoard;->mOpenTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 83
    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoard;->mCloseTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 87
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/oppo/widget/OppoClipBoard;->animationDuring:I

    .line 88
    iput-boolean v2, p0, Lcom/oppo/widget/OppoClipBoard;->isAnimatable:Z

    .line 91
    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoard;->functionTips:Landroid/widget/TextView;

    .line 93
    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoard;->mShared:Landroid/content/SharedPreferences;

    .line 94
    const-string v0, "clip_flag"

    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->CLIP_FlAG:Ljava/lang/String;

    .line 95
    const-string v0, "clip_tip_count"

    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->CLIP_TIP_COUNT:Ljava/lang/String;

    .line 96
    const-string v0, "clip_sim_number"

    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->CLIP_SIM_NUMBER:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/oppo/widget/OppoClipBoard;->mOnClipBoardKeyClickListener:Lcom/oppo/widget/OppoClipBoard$OnClipBoardKeyClickListener;

    .line 101
    iput v2, p0, Lcom/oppo/widget/OppoClipBoard;->X_DIRTY_BOUND:I

    .line 102
    iput v2, p0, Lcom/oppo/widget/OppoClipBoard;->Y_DIRTY_BOUND:I

    .line 106
    iput-object p1, p0, Lcom/oppo/widget/OppoClipBoard;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109008f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipBoard;->initVariables()V

    .line 109
    return-void
.end method

.method private showFunctionTips()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 151
    iget-object v7, p0, Lcom/oppo/widget/OppoClipBoard;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 153
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, curSimNum:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 155
    iget-object v7, p0, Lcom/oppo/widget/OppoClipBoard;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 156
    .local v3, shEdit:Landroid/content/SharedPreferences$Editor;
    iget-object v7, p0, Lcom/oppo/widget/OppoClipBoard;->mShared:Landroid/content/SharedPreferences;

    const-string v8, "clip_sim_number"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, lastSimNum:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 159
    const-string v6, "clip_sim_number"

    invoke-interface {v3, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    .end local v2           #lastSimNum:Ljava/lang/String;
    .end local v3           #shEdit:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v5

    .line 165
    .restart local v2       #lastSimNum:Ljava/lang/String;
    .restart local v3       #shEdit:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 167
    iget-object v7, p0, Lcom/oppo/widget/OppoClipBoard;->mShared:Landroid/content/SharedPreferences;

    const-string v8, "clip_tip_count"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 168
    .local v0, count:I
    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x3

    if-le v0, v7, :cond_2

    .line 169
    const/4 v5, 0x4

    if-le v0, v5, :cond_1

    const/4 v0, 0x4

    .line 170
    :cond_1
    const-string v5, "clip_tip_count"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v5, v6

    .line 172
    goto :goto_0

    .line 175
    :cond_2
    const-string v6, "clip_tip_count"

    invoke-interface {v3, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 182
    .end local v0           #count:I
    :cond_3
    const-string v6, "clip_tip_count"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .end local v2           #lastSimNum:Ljava/lang/String;
    .end local v3           #shEdit:Landroid/content/SharedPreferences$Editor;
    :cond_4
    move v5, v6

    .line 189
    goto :goto_0
.end method

.method private updateClipSharedPreference(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 238
    return-void
.end method


# virtual methods
.method public checkClipTip()V
    .locals 2

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/oppo/widget/OppoClipBoard;->showFunctionTips()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->functionTips:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->functionTips:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getClipAdpater()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mClipAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getClipMode()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/oppo/widget/OppoClipBoard;->isCliped:Z

    return v0
.end method

.method public getOnClipBoardKeyClickListener()Lcom/oppo/widget/OppoClipBoard$OnClipBoardKeyClickListener;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mOnClipBoardKeyClickListener:Lcom/oppo/widget/OppoClipBoard$OnClipBoardKeyClickListener;

    return-object v0
.end method

.method public getOppoClipBoardView()Lcom/oppo/widget/OppoClipBoardView;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mClipView:Lcom/oppo/widget/OppoClipBoardView;

    return-object v0
.end method

.method public handClipDatasetChanged()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public hideClearButton()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonClear:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 371
    return-void
.end method

.method public hideClipTip()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->functionTips:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->functionTips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->functionTips:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    :cond_0
    return-void
.end method

.method public initVariables()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mContext:Landroid/content/Context;

    const-string v3, "OppoClipboard"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mShared:Landroid/content/SharedPreferences;

    .line 114
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mShared:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mShared:Landroid/content/SharedPreferences;

    const-string v3, "clip_flag"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoClipBoard;->isCliped:Z

    .line 119
    :cond_0
    const v0, 0x10203a0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoClipBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonSelectAll:Landroid/widget/Button;

    .line 120
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonSelectAll:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x102039d

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoClipBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonClear:Landroid/widget/Button;

    .line 122
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonClear:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v0, 0x102039e

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoClipBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonModeCopy:Landroid/widget/Button;

    .line 124
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonModeCopy:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/oppo/widget/OppoClipBoard;->isCliped:Z

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonModeCopy:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x102039f

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoClipBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonModeCut:Landroid/widget/Button;

    .line 127
    iget-object v3, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonModeCut:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/oppo/widget/OppoClipBoard;->isCliped:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonModeCut:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x10203a2

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoClipBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->functionTips:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->functionTips:Landroid/widget/TextView;

    const v2, 0x10405fd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->functionTips:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oppo/widget/OppoClipBoard;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    const v0, 0x10203a1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoClipBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoClipBoardView;

    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mClipView:Lcom/oppo/widget/OppoClipBoardView;

    .line 139
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mClipView:Lcom/oppo/widget/OppoClipBoardView;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoClipBoardView;->setNumColumns(I)V

    .line 140
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mClipView:Lcom/oppo/widget/OppoClipBoardView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoClipBoardView;->setSelector(I)V

    .line 141
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mClipView:Lcom/oppo/widget/OppoClipBoardView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoClipBoardView;->setMinimumHeight(I)V

    .line 143
    return-void

    :cond_1
    move v0, v2

    .line 127
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 195
    const/4 v0, -0x1

    .line 196
    .local v0, keycode:I
    iget-object v4, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonSelectAll:Landroid/widget/Button;

    if-ne v4, p1, :cond_2

    .line 199
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoClipBoard;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lcom/oppo/widget/OppoClipBoard;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 202
    .local v1, shEdit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "clip_flag"

    iget-boolean v3, p0, Lcom/oppo/widget/OppoClipBoard;->isCliped:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    .end local v1           #shEdit:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/oppo/widget/OppoClipBoard;->mOnClipBoardKeyClickListener:Lcom/oppo/widget/OppoClipBoard$OnClipBoardKeyClickListener;

    if-eqz v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/oppo/widget/OppoClipBoard;->mOnClipBoardKeyClickListener:Lcom/oppo/widget/OppoClipBoard$OnClipBoardKeyClickListener;

    invoke-interface {v2, v0, p1}, Lcom/oppo/widget/OppoClipBoard$OnClipBoardKeyClickListener;->onClipboardKeyClicked(ILandroid/view/View;)V

    .line 233
    :cond_1
    return-void

    .line 206
    :cond_2
    iget-object v4, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonClear:Landroid/widget/Button;

    if-ne v4, p1, :cond_3

    .line 207
    const/4 v0, 0x3

    .line 208
    iget-object v2, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonClear:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 210
    :cond_3
    iget-object v4, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonModeCopy:Landroid/widget/Button;

    if-ne v4, p1, :cond_5

    .line 211
    const/4 v0, 0x1

    .line 212
    iget-boolean v4, p0, Lcom/oppo/widget/OppoClipBoard;->isCliped:Z

    if-eqz v4, :cond_0

    .line 213
    iput-boolean v3, p0, Lcom/oppo/widget/OppoClipBoard;->isCliped:Z

    .line 214
    iget-object v4, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonModeCopy:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/oppo/widget/OppoClipBoard;->isCliped:Z

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 215
    iget-object v4, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonModeCut:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/oppo/widget/OppoClipBoard;->isCliped:Z

    if-nez v5, :cond_4

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    .line 218
    :cond_5
    iget-object v4, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonModeCut:Landroid/widget/Button;

    if-ne v4, p1, :cond_0

    .line 219
    const/4 v0, 0x2

    .line 220
    iget-boolean v4, p0, Lcom/oppo/widget/OppoClipBoard;->isCliped:Z

    if-nez v4, :cond_0

    .line 221
    iput-boolean v2, p0, Lcom/oppo/widget/OppoClipBoard;->isCliped:Z

    .line 222
    iget-object v4, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonModeCopy:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/oppo/widget/OppoClipBoard;->isCliped:Z

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    iget-object v4, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonModeCut:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/oppo/widget/OppoClipBoard;->isCliped:Z

    if-nez v5, :cond_6

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mOpenTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipBoard;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mOpenTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 349
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mOpenTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/oppo/widget/OppoClipBoard;->animationDuring:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipBoard;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/widget/OppoClipBoard;->isAnimatable:Z

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mOpenTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoClipBoard;->startAnimation(Landroid/view/animation/Animation;)V

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoClipBoard;->isAnimatable:Z

    .line 356
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 357
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoClipBoard;->X_DIRTY_BOUND:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoClipBoard;->Y_DIRTY_BOUND:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoClipBoard;->mClipAdapter:Landroid/widget/BaseAdapter;

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/oppo/widget/OppoClipBoard;->mClipAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    if-ge v2, v1, :cond_0

    move v0, v1

    .line 289
    goto :goto_0
.end method

.method public setClipAdpater(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/oppo/widget/OppoClipBoard;->mClipAdapter:Landroid/widget/BaseAdapter;

    .line 256
    return-void
.end method

.method public setClipListener(Lcom/oppo/widget/OppoClipBoardView$DropListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mClipView:Lcom/oppo/widget/OppoClipBoardView;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoClipBoardView;->setDropListener(Lcom/oppo/widget/OppoClipBoardView$DropListener;)V

    .line 246
    return-void
.end method

.method public setDirtyRect(II)V
    .locals 0
    .parameter "xBound"
    .parameter "yBound"

    .prologue
    .line 301
    iput p1, p0, Lcom/oppo/widget/OppoClipBoard;->X_DIRTY_BOUND:I

    .line 302
    iput p2, p0, Lcom/oppo/widget/OppoClipBoard;->Y_DIRTY_BOUND:I

    .line 303
    return-void
.end method

.method public setOnClipBoardKeyClickListener(Lcom/oppo/widget/OppoClipBoard$OnClipBoardKeyClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 435
    iput-object p1, p0, Lcom/oppo/widget/OppoClipBoard;->mOnClipBoardKeyClickListener:Lcom/oppo/widget/OppoClipBoard$OnClipBoardKeyClickListener;

    .line 436
    return-void
.end method

.method public setPasteMargin(II)V
    .locals 1
    .parameter "marginX"
    .parameter "marginY"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mClipView:Lcom/oppo/widget/OppoClipBoardView;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mClipView:Lcom/oppo/widget/OppoClipBoardView;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoClipBoardView;->setClipMarginX(I)V

    .line 338
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mClipView:Lcom/oppo/widget/OppoClipBoardView;

    invoke-virtual {v0, p2}, Lcom/oppo/widget/OppoClipBoardView;->setClipMarginY(I)V

    .line 340
    :cond_0
    return-void
.end method

.method public setPasteMarginX(I)V
    .locals 1
    .parameter "marginX"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mClipView:Lcom/oppo/widget/OppoClipBoardView;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mClipView:Lcom/oppo/widget/OppoClipBoardView;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoClipBoardView;->setClipMarginX(I)V

    .line 314
    :cond_0
    return-void
.end method

.method public setPasteMarginY(I)V
    .locals 1
    .parameter "marginY"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mClipView:Lcom/oppo/widget/OppoClipBoardView;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mClipView:Lcom/oppo/widget/OppoClipBoardView;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoClipBoardView;->setClipMarginY(I)V

    .line 327
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoClipBoard;->isAnimatable:Z

    .line 421
    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipBoard;->checkClipTip()V

    .line 426
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 427
    return-void
.end method

.method public showClearButton()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->mButtonClear:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 364
    return-void
.end method

.method public showClipTip()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->functionTips:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->functionTips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/oppo/widget/OppoClipBoard;->functionTips:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    :cond_0
    return-void
.end method
