.class public Lcom/oppo/preference/OppoEditTextPreference;
.super Landroid/preference/DialogPreference;
.source "OppoEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoEditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEditText:Lcom/oppo/widget/OppoEditText;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/preference/OppoEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v0, Lcom/oppo/widget/OppoEditText;

    invoke-direct {v0, p1, p2}, Lcom/oppo/widget/OppoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference;->mEditText:Lcom/oppo/widget/OppoEditText;

    .line 59
    iget-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference;->mEditText:Lcom/oppo/widget/OppoEditText;

    const v1, 0x1020413

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoEditText;->setId(I)V

    .line 67
    iget-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference;->mEditText:Lcom/oppo/widget/OppoEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoEditText;->setEnabled(Z)V

    .line 68
    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference;->mEditText:Lcom/oppo/widget/OppoEditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    .line 132
    const v1, 0x10203d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 134
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 135
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 138
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference;->mEditText:Lcom/oppo/widget/OppoEditText;

    .line 110
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoEditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const v2, 0x1080608

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoEditText;->setBackgroundResource(I)V

    .line 117
    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 118
    .local v1, oldParent:Landroid/view/ViewParent;
    if-eq v1, p1, :cond_1

    .line 119
    if-eqz v1, :cond_0

    .line 120
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #oldParent:Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 122
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/oppo/preference/OppoEditTextPreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    .line 124
    :cond_1
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/oppo/preference/OppoEditTextPreference;->mEditText:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoEditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoEditTextPreference;->setText(Ljava/lang/String;)V

    .line 150
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 154
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 198
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oppo/preference/OppoEditTextPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 207
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 204
    check-cast v0, Lcom/oppo/preference/OppoEditTextPreference$SavedState;

    .line 205
    .local v0, myState:Lcom/oppo/preference/OppoEditTextPreference$SavedState;
    invoke-virtual {v0}, Lcom/oppo/preference/OppoEditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 206
    iget-object v1, v0, Lcom/oppo/preference/OppoEditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoEditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 185
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 186
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoEditTextPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 191
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/oppo/preference/OppoEditTextPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoEditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 192
    .local v0, myState:Lcom/oppo/preference/OppoEditTextPreference$SavedState;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/preference/OppoEditTextPreference$SavedState;->text:Ljava/lang/String;

    move-object v1, v0

    .line 193
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 159
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoEditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/oppo/preference/OppoEditTextPreference;->setText(Ljava/lang/String;)V

    .line 160
    return-void

    .line 159
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/oppo/preference/OppoEditTextPreference;->shouldDisableDependents()Z

    move-result v1

    .line 86
    .local v1, wasBlocking:Z
    iput-object p1, p0, Lcom/oppo/preference/OppoEditTextPreference;->mText:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoEditTextPreference;->persistString(Ljava/lang/String;)Z

    .line 90
    invoke-virtual {p0}, Lcom/oppo/preference/OppoEditTextPreference;->shouldDisableDependents()Z

    move-result v0

    .line 91
    .local v0, isBlocking:Z
    if-eq v0, v1, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoEditTextPreference;->notifyDependencyChange(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/DialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
