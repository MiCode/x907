.class public Lcom/oppo/app/OppoTabActivity;
.super Landroid/app/ActivityGroup;
.source "OppoTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/app/OppoTabActivity$TabWidgetAlignMode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_CONFIG:Z = false

.field private static final TAG:Ljava/lang/String; = "TabActivity"


# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabWidgetAlignMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTabIndex:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/app/OppoTabActivity;->mTabWidgetAlignMode:I

    .line 75
    iput-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    .line 79
    return-void
.end method

.method private ensureTabHost()V
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    if-nez v1, :cond_0

    .line 196
    const v1, 0x10900f1

    invoke-virtual {p0, v1}, Lcom/oppo/app/OppoTabActivity;->setContentView(I)V

    .line 197
    const v1, 0x102043f

    invoke-virtual {p0, v1}, Lcom/oppo/app/OppoTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, hostView:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TabHost;

    if-eqz v1, :cond_1

    .line 209
    .end local v0           #hostView:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 200
    .restart local v0       #hostView:Landroid/view/View;
    :cond_1
    instance-of v1, v0, Lcom/oppo/widget/OppoTabHost;

    if-eqz v1, :cond_0

    .line 202
    check-cast v0, Lcom/oppo/widget/OppoTabHost;

    .end local v0           #hostView:Landroid/view/View;
    iput-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    .line 203
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {p0}, Lcom/oppo/app/OppoTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTabHost;->setup(Landroid/app/LocalActivityManager;)V

    goto :goto_0
.end method


# virtual methods
.method public getOppoTabHost()Lcom/oppo/widget/OppoTabHost;
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/app/OppoTabActivity;->mTabWidgetAlignMode:I

    .line 270
    invoke-direct {p0}, Lcom/oppo/app/OppoTabActivity;->ensureTabHost()V

    .line 271
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    return-object v0
.end method

.method public getTabHost()Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/app/OppoTabActivity;->mTabWidgetAlignMode:I

    .line 237
    invoke-direct {p0}, Lcom/oppo/app/OppoTabActivity;->ensureTabHost()V

    .line 238
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public getTabHost(I)Landroid/widget/TabHost;
    .locals 1
    .parameter "tabwidgetAlignMode"

    .prologue
    const/4 v0, 0x1

    .line 247
    if-ne v0, p1, :cond_0

    .line 249
    iput v0, p0, Lcom/oppo/app/OppoTabActivity;->mTabWidgetAlignMode:I

    .line 253
    :goto_0
    invoke-direct {p0}, Lcom/oppo/app/OppoTabActivity;->ensureTabHost()V

    .line 254
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mTabHost:Landroid/widget/TabHost;

    return-object v0

    .line 251
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/app/OppoTabActivity;->mTabWidgetAlignMode:I

    goto :goto_0
.end method

.method public getTabHostTabAlignBottom()Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/app/OppoTabActivity;->mTabWidgetAlignMode:I

    .line 263
    invoke-direct {p0}, Lcom/oppo/app/OppoTabActivity;->ensureTabHost()V

    .line 264
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public getTabWidget()Landroid/widget/TabWidget;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/oppo/app/OppoTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 223
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #tabView:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 287
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTabHost;->requestLayout()V

    .line 291
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 191
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-direct {p0}, Lcom/oppo/app/OppoTabActivity;->ensureTabHost()V

    .line 129
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabHost;->getCurrentTab()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTabHost;->setCurrentTab(I)V

    .line 135
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 105
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, cur:Ljava/lang/String;
    invoke-direct {p0}, Lcom/oppo/app/OppoTabActivity;->ensureTabHost()V

    .line 108
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabHost;->requestFocus()Z

    .line 109
    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v1, v0}, Lcom/oppo/widget/OppoTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    iget-object v2, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    iget v1, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    iget v2, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTabHost;->forceTabWidgetToReLayout()V

    .line 147
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, currentTabTag:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 167
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoTabHost;->procWindowFocusChanged(Z)V

    .line 154
    :cond_0
    return-void
.end method

.method public setDefaultTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 98
    iput p1, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTabIndex:I

    .line 99
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTabIndex:I

    .line 89
    return-void
.end method
