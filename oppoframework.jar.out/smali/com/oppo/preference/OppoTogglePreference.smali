.class public Lcom/oppo/preference/OppoTogglePreference;
.super Landroid/preference/Preference;
.source "OppoTogglePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoTogglePreference$SavedState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoTogglePreference"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCheckStateChanged:Z

.field private mChecked:Z

.field private mDisableDependentsState:Z

.field private mPretendingEnabled:Z

.field private mSendAccessibilityEventViewClickedType:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/preference/OppoTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput-boolean v3, p0, Lcom/oppo/preference/OppoTogglePreference;->mCheckStateChanged:Z

    .line 63
    const v1, 0x109009e

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoTogglePreference;->setWidgetLayoutResource(I)V

    .line 65
    sget-object v1, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/preference/OppoTogglePreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/preference/OppoTogglePreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 69
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/preference/OppoTogglePreference;->mDisableDependentsState:Z

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    sget-object v1, Lcom/android/internal/R$styleable;->TogglePreference:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/preference/OppoTogglePreference;->mPretendingEnabled:Z

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/oppo/preference/OppoTogglePreference;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 81
    invoke-virtual {p0, v3}, Lcom/oppo/preference/OppoTogglePreference;->setSelectable(Z)V

    .line 83
    return-void
.end method

.method private performClickAsPreference()V
    .locals 6

    .prologue
    .line 199
    const-string v4, "OppoTogglePreference"

    const-string v5, "performClickAsPreference(), performToggle"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oppo/preference/OppoTogglePreference;->mCheckStateChanged:Z

    .line 201
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 202
    .local v2, preferenceManager:Landroid/preference/PreferenceManager;
    if-eqz v2, :cond_2

    .line 203
    const-string v4, "OppoTogglePreference"

    const-string v5, "performClickAsPreference(), preferenceManager != null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v1, 0x0

    .line 208
    .local v1, handled:Z
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v4

    invoke-interface {v4, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v1

    .line 212
    :cond_0
    if-nez v1, :cond_1

    .line 213
    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getOnPreferenceToggleListener()Landroid/preference/PreferenceManager$OnPreferenceToggleListener;

    move-result-object v3

    .line 215
    .local v3, toggleListener:Landroid/preference/PreferenceManager$OnPreferenceToggleListener;
    if-eqz v3, :cond_1

    .line 216
    invoke-interface {v3, p0}, Landroid/preference/PreferenceManager$OnPreferenceToggleListener;->onPreferenceToggle(Landroid/preference/Preference;)Z

    move-result v1

    .line 220
    .end local v3           #toggleListener:Landroid/preference/PreferenceManager$OnPreferenceToggleListener;
    :cond_1
    if-nez v1, :cond_2

    .line 221
    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v0

    .line 223
    .local v0, clickListener:Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz v0, :cond_2

    .line 224
    const-string v4, "OppoTogglePreference"

    const-string v5, "performClickAsPreference(), listener != null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v4, 0x0

    invoke-interface {v0, v4, p0}, Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 230
    .end local v0           #clickListener:Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    .end local v1           #handled:Z
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oppo/preference/OppoTogglePreference;->mCheckStateChanged:Z

    .line 231
    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/oppo/preference/OppoTogglePreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/oppo/preference/OppoTogglePreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/oppo/preference/OppoTogglePreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/oppo/preference/OppoTogglePreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 97
    const v7, 0x1020001

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoToggle;

    .line 98
    .local v5, toggleView:Lcom/oppo/widget/OppoToggle;
    if-eqz v5, :cond_0

    instance-of v7, v5, Landroid/widget/Checkable;

    if-eqz v7, :cond_0

    .line 99
    iget-boolean v7, p0, Lcom/oppo/preference/OppoTogglePreference;->mChecked:Z

    invoke-interface {v5, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 100
    invoke-virtual {v5, p0}, Lcom/oppo/widget/OppoToggle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-boolean v7, p0, Lcom/oppo/preference/OppoTogglePreference;->mPretendingEnabled:Z

    invoke-virtual {v5, v7}, Lcom/oppo/widget/OppoToggle;->setPretending(Z)V

    .line 106
    iget-boolean v7, p0, Lcom/oppo/preference/OppoTogglePreference;->mSendAccessibilityEventViewClickedType:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/oppo/preference/OppoTogglePreference;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Lcom/oppo/widget/OppoToggle;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 109
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/preference/OppoTogglePreference;->mSendAccessibilityEventViewClickedType:Z

    .line 111
    const/4 v0, 0x1

    .line 112
    .local v0, eventType:I
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/oppo/widget/OppoToggle;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 118
    .end local v0           #eventType:I
    :cond_0
    const v7, 0x1020016

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 119
    .local v4, titleView:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 120
    iget-boolean v7, p0, Lcom/oppo/preference/OppoTogglePreference;->mPretendingEnabled:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->getOverlap()I

    move-result v7

    if-lez v7, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10600be

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 129
    :cond_1
    const v7, 0x1020010

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 130
    .local v3, summaryView:Landroid/widget/TextView;
    if-eqz v3, :cond_5

    .line 131
    const/4 v6, 0x1

    .line 132
    .local v6, useDefaultSummary:Z
    iget-boolean v7, p0, Lcom/oppo/preference/OppoTogglePreference;->mChecked:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/oppo/preference/OppoTogglePreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-eqz v7, :cond_6

    .line 133
    iget-object v7, p0, Lcom/oppo/preference/OppoTogglePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const/4 v6, 0x0

    .line 140
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 142
    .local v2, summary:Ljava/lang/CharSequence;
    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const/4 v6, 0x0

    .line 148
    .end local v2           #summary:Ljava/lang/CharSequence;
    :cond_3
    const/16 v1, 0x8

    .line 149
    .local v1, newVisibility:I
    if-nez v6, :cond_4

    .line 151
    const/4 v1, 0x0

    .line 153
    :cond_4
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eq v1, v7, :cond_5

    .line 154
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    .end local v1           #newVisibility:I
    .end local v6           #useDefaultSummary:Z
    :cond_5
    return-void

    .line 135
    .restart local v6       #useDefaultSummary:Z
    :cond_6
    iget-boolean v7, p0, Lcom/oppo/preference/OppoTogglePreference;->mChecked:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/oppo/preference/OppoTogglePreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    .line 136
    iget-object v7, p0, Lcom/oppo/preference/OppoTogglePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 161
    const-string v2, "OppoTogglePreference"

    const-string v3, "onClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 164
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 168
    .local v0, newValue:Z
    :goto_0
    iput-boolean v1, p0, Lcom/oppo/preference/OppoTogglePreference;->mSendAccessibilityEventViewClickedType:Z

    .line 170
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoTogglePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    const-string v1, "OppoTogglePreference"

    const-string v2, "callChangeListener(), do not to persist the new value, return. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_1
    return-void

    .line 164
    .end local v0           #newValue:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 175
    .restart local v0       #newValue:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoTogglePreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 179
    const-string v2, "OppoTogglePreference"

    const-string v3, "onClick(View v)."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 185
    .local v0, newValue:Z
    :goto_0
    iput-boolean v1, p0, Lcom/oppo/preference/OppoTogglePreference;->mSendAccessibilityEventViewClickedType:Z

    .line 187
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoTogglePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    const-string v1, "OppoTogglePreference"

    const-string v2, "callChangeListener(), do not to persist the new value, return. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_1
    return-void

    .line 181
    .end local v0           #newValue:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 192
    .restart local v0       #newValue:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoTogglePreference;->setChecked(Z)V

    .line 195
    invoke-direct {p0}, Lcom/oppo/preference/OppoTogglePreference;->performClickAsPreference()V

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 373
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oppo/preference/OppoTogglePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 375
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 382
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 379
    check-cast v0, Lcom/oppo/preference/OppoTogglePreference$SavedState;

    .line 380
    .local v0, myState:Lcom/oppo/preference/OppoTogglePreference$SavedState;
    invoke-virtual {v0}, Lcom/oppo/preference/OppoTogglePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 381
    iget-boolean v1, v0, Lcom/oppo/preference/OppoTogglePreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoTogglePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 360
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 361
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 366
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/oppo/preference/OppoTogglePreference$SavedState;

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoTogglePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 367
    .local v0, myState:Lcom/oppo/preference/OppoTogglePreference$SavedState;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/oppo/preference/OppoTogglePreference$SavedState;->checked:Z

    move-object v1, v0

    .line 368
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 354
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/oppo/preference/OppoTogglePreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoTogglePreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoTogglePreference;->setChecked(Z)V

    .line 356
    return-void

    .line 354
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 239
    const-string v0, "OppoTogglePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoTogglePreference, setChecked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-boolean v0, p0, Lcom/oppo/preference/OppoTogglePreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 241
    iput-boolean p1, p0, Lcom/oppo/preference/OppoTogglePreference;->mChecked:Z

    .line 242
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoTogglePreference;->persistBoolean(Z)Z

    .line 243
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoTogglePreference;->notifyDependencyChange(Z)V

    .line 244
    const-string v0, "OppoTogglePreference"

    const-string v1, "OppoTogglePreference, setChecked, notifyChanged."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->notifyChanged()V

    .line 247
    :cond_0
    return-void
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .parameter "disableDependentsState"

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/oppo/preference/OppoTogglePreference;->mDisableDependentsState:Z

    .line 345
    return-void
.end method

.method public setPretendingEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 258
    const-string v0, "OppoTogglePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPretendingEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput-boolean p1, p0, Lcom/oppo/preference/OppoTogglePreference;->mPretendingEnabled:Z

    .line 260
    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoTogglePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 316
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/oppo/preference/OppoTogglePreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 305
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->notifyChanged()V

    .line 308
    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoTogglePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 288
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/oppo/preference/OppoTogglePreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 277
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTogglePreference;->notifyChanged()V

    .line 280
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 266
    iget-boolean v3, p0, Lcom/oppo/preference/OppoTogglePreference;->mDisableDependentsState:Z

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/oppo/preference/OppoTogglePreference;->mChecked:Z

    .line 267
    .local v0, shouldDisable:Z
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 266
    .end local v0           #shouldDisable:Z
    :cond_2
    iget-boolean v3, p0, Lcom/oppo/preference/OppoTogglePreference;->mChecked:Z

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
