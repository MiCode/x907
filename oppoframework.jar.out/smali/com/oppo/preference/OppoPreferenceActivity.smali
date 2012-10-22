.class public abstract Lcom/oppo/preference/OppoPreferenceActivity;
.super Loppo/internal/app/OppoListActivity;
.source "OppoPreferenceActivity.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/preference/PreferenceManager$OnPreferenceToggleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoPreferenceActivity$Header;,
        Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "oppo:OppoPreferenceActivity"


# instance fields
.field private mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/preference/OppoPreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Loppo/internal/app/OppoListActivity;-><init>()V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Lcom/oppo/preference/OppoPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/oppo/preference/OppoPreferenceActivity$1;-><init>(Lcom/oppo/preference/OppoPreferenceActivity;)V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/preference/OppoPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/preference/OppoPreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/preference/OppoPreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Loppo/internal/app/OppoListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/preference/OppoPreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Loppo/internal/app/OppoListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/preference/OppoPreferenceActivity;)Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1295
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 1296
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1297
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1298
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Loppo/internal/app/OppoListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1299
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1302
    :cond_0
    return-void
.end method

.method private onCreatePreferenceManager()Landroid/preference/PreferenceManager;
    .locals 2

    .prologue
    .line 1310
    new-instance v0, Landroid/preference/PreferenceManager;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    .line 1311
    .local v0, preferenceManager:Landroid/preference/PreferenceManager;
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 1312
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->setOnPreferenceToggleListener(Landroid/preference/PreferenceManager$OnPreferenceToggleListener;)V

    .line 1313
    return-object v0
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1289
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1291
    :goto_0
    return-void

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1330
    iget-object v0, p0, Loppo/internal/app/OppoListActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1331
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1333
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1336
    :cond_1
    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5
    .parameter "fragmentName"
    .parameter "args"
    .parameter "direction"

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ":android:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1107
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1108
    .local v0, f:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1109
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1110
    const v2, 0x10203b3

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1111
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1112
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1387
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->requirePreferenceManager()V

    .line 1389
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1390
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 2
    .parameter "preferencesResId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1403
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->requirePreferenceManager()V

    .line 1405
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1407
    return-void
.end method

.method findBestMatchingHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .locals 9
    .parameter "cur"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/preference/OppoPreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/preference/OppoPreferenceActivity$Header;",
            ">;)",
            "Lcom/oppo/preference/OppoPreferenceActivity$Header;"
        }
    .end annotation

    .prologue
    .local p2, from:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/preference/OppoPreferenceActivity$Header;>;"
    const/4 v8, 0x1

    .line 1146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/preference/OppoPreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1148
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    .line 1149
    .local v3, oh:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    if-eq p1, v3, :cond_0

    iget-wide v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->id:J

    iget-wide v6, v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1151
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1152
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    .end local v3           #oh:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1170
    .local v0, NM:I
    if-ne v0, v8, :cond_7

    .line 1171
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-object v3, v4

    .line 1187
    :cond_2
    :goto_1
    return-object v3

    .line 1155
    .end local v0           #NM:I
    .restart local v3       #oh:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    :cond_3
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1156
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1157
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1159
    :cond_5
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 1160
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1161
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1163
    :cond_6
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 1164
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1165
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1172
    .end local v3           #oh:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .restart local v0       #NM:I
    :cond_7
    if-le v0, v8, :cond_b

    .line 1173
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1174
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    .line 1175
    .restart local v3       #oh:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1179
    :cond_8
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1182
    :cond_9
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1173
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1187
    .end local v3           #oh:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    :cond_b
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1438
    const/4 v0, 0x0

    .line 1441
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .parameter "caller"
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 1260
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    .line 1261
    invoke-virtual {p0, p2, p3}, Lcom/oppo/preference/OppoPreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 1262
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->finish()V

    .line 1273
    :cond_0
    :goto_0
    return-void

    .line 1265
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->onBackPressed()V

    .line 1266
    if-eqz p1, :cond_0

    .line 1267
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1268
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1374
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeaders()Z
    .locals 1

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateHeaders()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 685
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 688
    :cond_0
    return-void
.end method

.method public isMultiPane()Z
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 16
    .parameter "resid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/preference/OppoPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 698
    .local p2, target:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceActivity$Header;>;"
    const/4 v9, 0x0

    .line 700
    .local v9, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 701
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 705
    .local v1, attrs:Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 709
    :cond_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 710
    .local v7, nodeName:Ljava/lang/String;
    const-string v13, "preference-headers"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 711
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 811
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v12           #type:I
    :catch_0
    move-exception v3

    .line 812
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Error parsing headers"

    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 816
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v13

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v13

    .line 716
    .restart local v1       #attrs:Landroid/util/AttributeSet;
    .restart local v7       #nodeName:Ljava/lang/String;
    .restart local v12       #type:I
    :cond_3
    const/4 v2, 0x0

    .line 718
    .local v2, curBundle:Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 720
    .local v8, outerDepth:I
    :cond_4
    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_16

    const/4 v13, 0x3

    if-ne v12, v13, :cond_5

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v8, :cond_16

    .line 721
    :cond_5
    const/4 v13, 0x3

    if-eq v12, v13, :cond_4

    const/4 v13, 0x4

    if-eq v12, v13, :cond_4

    .line 725
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 726
    const-string v13, "header"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 727
    new-instance v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    invoke-direct {v4}, Lcom/oppo/preference/OppoPreferenceActivity$Header;-><init>()V

    .line 729
    .local v4, header:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget-object v14, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    invoke-virtual {v13, v1, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 731
    .local v10, sa:Landroid/content/res/TypedArray;
    const/4 v13, 0x1

    const/4 v14, -0x1

    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->id:J

    .line 734
    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 736
    .local v11, tv:Landroid/util/TypedValue;
    if-eqz v11, :cond_6

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_6

    .line 737
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_d

    .line 738
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->titleRes:I

    .line 743
    :cond_6
    :goto_1
    const/4 v13, 0x3

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 745
    if-eqz v11, :cond_7

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_7

    .line 746
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_e

    .line 747
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->summaryRes:I

    .line 752
    :cond_7
    :goto_2
    const/4 v13, 0x5

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 754
    if-eqz v11, :cond_8

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_8

    .line 755
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_f

    .line 756
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 761
    :cond_8
    :goto_3
    const/4 v13, 0x6

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 763
    if-eqz v11, :cond_9

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_9

    .line 764
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_10

    .line 765
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 770
    :cond_9
    :goto_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->iconRes:I

    .line 772
    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 774
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 776
    if-nez v2, :cond_a

    .line 777
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #curBundle:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 780
    .restart local v2       #curBundle:Landroid/os/Bundle;
    :cond_a
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 782
    .local v5, innerDepth:I
    :cond_b
    :goto_5
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_13

    const/4 v13, 0x3

    if-ne v12, v13, :cond_c

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v5, :cond_13

    .line 783
    :cond_c
    const/4 v13, 0x3

    if-eq v12, v13, :cond_b

    const/4 v13, 0x4

    if-eq v12, v13, :cond_b

    .line 787
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 788
    .local v6, innerNodeName:Ljava/lang/String;
    const-string v13, "extra"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "extra"

    invoke-virtual {v13, v14, v1, v2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 790
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 813
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #curBundle:Landroid/os/Bundle;
    .end local v4           #header:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .end local v5           #innerDepth:I
    .end local v6           #innerNodeName:Ljava/lang/String;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v8           #outerDepth:I
    .end local v10           #sa:Landroid/content/res/TypedArray;
    .end local v11           #tv:Landroid/util/TypedValue;
    .end local v12           #type:I
    :catch_1
    move-exception v3

    .line 814
    .local v3, e:Ljava/io/IOException;
    :try_start_3
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Error parsing headers"

    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 740
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #attrs:Landroid/util/AttributeSet;
    .restart local v2       #curBundle:Landroid/os/Bundle;
    .restart local v4       #header:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .restart local v7       #nodeName:Ljava/lang/String;
    .restart local v8       #outerDepth:I
    .restart local v10       #sa:Landroid/content/res/TypedArray;
    .restart local v11       #tv:Landroid/util/TypedValue;
    .restart local v12       #type:I
    :cond_d
    :try_start_4
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 749
    :cond_e
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 758
    :cond_f
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto :goto_3

    .line 767
    :cond_10
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto :goto_4

    .line 792
    .restart local v5       #innerDepth:I
    .restart local v6       #innerNodeName:Ljava/lang/String;
    :cond_11
    const-string v13, "intent"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v13, v9, v1}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v13

    iput-object v13, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 796
    :cond_12
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 800
    .end local v6           #innerNodeName:Ljava/lang/String;
    :cond_13
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v13

    if-lez v13, :cond_14

    .line 801
    iput-object v2, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 802
    const/4 v2, 0x0

    .line 805
    :cond_14
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 807
    .end local v4           #header:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .end local v5           #innerDepth:I
    .end local v10           #sa:Landroid/content/res/TypedArray;
    .end local v11           #tv:Landroid/util/TypedValue;
    :cond_15
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 816
    :cond_16
    if-eqz v9, :cond_17

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 819
    :cond_17
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 920
    invoke-super {p0, p1, p2, p3}, Loppo/internal/app/OppoListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 922
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 925
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/preference/OppoPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 995
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 996
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 997
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 999
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1000
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1001
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1002
    return-object v0
.end method

.method public onContentChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 929
    invoke-super {p0}, Loppo/internal/app/OppoListActivity;->onContentChanged()V

    .line 931
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v1, :cond_0

    .line 932
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->postBindPreferences()V

    .line 935
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x1080724

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 936
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 937
    .local v0, extraPadding:I
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 939
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 460
    invoke-super/range {p0 .. p1}, Loppo/internal/app/OppoListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 462
    const v17, 0x109009c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->setContentView(I)V

    .line 464
    const v17, 0x10203b1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/preference/OppoPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 465
    const v17, 0x10203b2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/preference/OppoPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/preference/OppoPreferenceActivity;->onIsHidingHeaders()Z

    move-result v8

    .line 467
    .local v8, hidingHeaders:Z
    if-nez v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/preference/OppoPreferenceActivity;->onIsMultiPane()Z

    move-result v17

    if-nez v17, :cond_6

    :cond_0
    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/preference/OppoPreferenceActivity;->mSinglePane:Z

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, ":android:show_fragment"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 469
    .local v10, initialFragment:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, ":android:show_fragment_args"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 470
    .local v9, initialArguments:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, ":android:show_fragment_title"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 471
    .local v13, initialTitle:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, ":android:show_fragment_short_title"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 473
    .local v11, initialShortTitle:I
    if-eqz p1, :cond_7

    .line 476
    const-string v17, ":android:headers"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 477
    .local v7, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/preference/OppoPreferenceActivity$Header;>;"
    if-eqz v7, :cond_1

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 479
    const-string v17, ":android:cur_header"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 481
    .local v5, curHeader:I
    if-ltz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->setSelectedHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V

    .line 521
    .end local v5           #curHeader:I
    .end local v7           #headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/preference/OppoPreferenceActivity$Header;>;"
    :cond_1
    :goto_1
    if-eqz v10, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mSinglePane:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 523
    const v17, 0x10203b0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 525
    if-eqz v13, :cond_2

    .line 526
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/oppo/preference/OppoPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 527
    .local v14, initialTitleStr:Ljava/lang/CharSequence;
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/oppo/preference/OppoPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 529
    .local v12, initialShortTitleStr:Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lcom/oppo/preference/OppoPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 552
    .end local v12           #initialShortTitleStr:Ljava/lang/CharSequence;
    .end local v14           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 553
    .local v15, intent:Landroid/content/Intent;
    const-string v17, "extra_prefs_show_button_bar"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 555
    const v17, 0x10203b4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 557
    const v17, 0x10203b5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 558
    .local v3, backButton:Landroid/widget/Button;
    new-instance v17, Lcom/oppo/preference/OppoPreferenceActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity$2;-><init>(Lcom/oppo/preference/OppoPreferenceActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    const v17, 0x10203b6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 565
    .local v16, skipButton:Landroid/widget/Button;
    new-instance v17, Lcom/oppo/preference/OppoPreferenceActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity$3;-><init>(Lcom/oppo/preference/OppoPreferenceActivity;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    const v17, 0x10203b7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/preference/OppoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    new-instance v18, Lcom/oppo/preference/OppoPreferenceActivity$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity$4;-><init>(Lcom/oppo/preference/OppoPreferenceActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    const-string v17, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 581
    const-string v17, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 582
    .local v4, buttonText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    .line 589
    .end local v4           #buttonText:Ljava/lang/String;
    :cond_3
    :goto_4
    const-string v17, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 590
    const-string v17, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 591
    .restart local v4       #buttonText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 592
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 598
    .end local v4           #buttonText:Ljava/lang/String;
    :cond_4
    :goto_5
    const-string v17, "extra_prefs_show_skip"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 599
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    .line 602
    .end local v3           #backButton:Landroid/widget/Button;
    .end local v16           #skipButton:Landroid/widget/Button;
    :cond_5
    return-void

    .line 467
    .end local v9           #initialArguments:Landroid/os/Bundle;
    .end local v10           #initialFragment:Ljava/lang/String;
    .end local v11           #initialShortTitle:I
    .end local v13           #initialTitle:I
    .end local v15           #intent:Landroid/content/Intent;
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 487
    .restart local v9       #initialArguments:Landroid/os/Bundle;
    .restart local v10       #initialFragment:Ljava/lang/String;
    .restart local v11       #initialShortTitle:I
    .restart local v13       #initialTitle:I
    :cond_7
    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mSinglePane:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 491
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Lcom/oppo/preference/OppoPreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 492
    if-eqz v13, :cond_1

    .line 493
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/oppo/preference/OppoPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 494
    .restart local v14       #initialTitleStr:Ljava/lang/CharSequence;
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/oppo/preference/OppoPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 496
    .restart local v12       #initialShortTitleStr:Ljava/lang/CharSequence;
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lcom/oppo/preference/OppoPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 494
    .end local v12           #initialShortTitleStr:Ljava/lang/CharSequence;
    :cond_8
    const/4 v12, 0x0

    goto :goto_6

    .line 501
    .end local v14           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_1

    .line 507
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mSinglePane:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 508
    if-nez v10, :cond_a

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/preference/OppoPreferenceActivity;->onGetInitialHeader()Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-result-object v6

    .line 510
    .local v6, h:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oppo/preference/OppoPreferenceActivity;->switchToHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V

    goto/16 :goto_1

    .line 512
    .end local v6           #h:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Lcom/oppo/preference/OppoPreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 527
    .restart local v14       #initialTitleStr:Ljava/lang/CharSequence;
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 531
    .end local v14           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_e

    .line 532
    new-instance v17, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 533
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mSinglePane:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->setSelectedHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V

    .line 539
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 544
    :cond_e
    const v17, 0x109009d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->setContentView(I)V

    .line 545
    const v17, 0x10203b1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/preference/OppoPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 546
    const v17, 0x10203b3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/preference/OppoPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 547
    new-instance v17, Landroid/preference/PreferenceManager;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    goto/16 :goto_3

    .line 586
    .restart local v3       #backButton:Landroid/widget/Button;
    .restart local v4       #buttonText:Ljava/lang/String;
    .restart local v15       #intent:Landroid/content/Intent;
    .restart local v16       #skipButton:Landroid/widget/Button;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 595
    :cond_10
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 859
    invoke-super {p0}, Loppo/internal/app/OppoListActivity;->onDestroy()V

    .line 861
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 869
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroupAdapter;->recycleBufferView()V

    .line 873
    :cond_1
    return-void
.end method

.method public onGetInitialHeader()Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    return-object v0
.end method

.method public onGetNewHeader()Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Lcom/oppo/preference/OppoPreferenceActivity$Header;I)V
    .locals 7
    .parameter "header"
    .parameter "position"

    .prologue
    .line 961
    iget-object v0, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 962
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    .line 963
    iget v5, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 964
    .local v5, titleRes:I
    iget v6, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 965
    .local v6, shortTitleRes:I
    if-nez v5, :cond_0

    .line 966
    iget v5, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->titleRes:I

    .line 967
    const/4 v6, 0x0

    .line 969
    :cond_0
    iget-object v1, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/preference/OppoPreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 977
    .end local v5           #titleRes:I
    .end local v6           #shortTitleRes:I
    :cond_1
    :goto_0
    return-void

    .line 972
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceActivity;->switchToHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V

    goto :goto_0

    .line 974
    :cond_3
    iget-object v0, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 975
    iget-object v0, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .locals 3

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 628
    .local v0, preferMultiPane:Z
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 943
    invoke-super/range {p0 .. p5}, Loppo/internal/app/OppoListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 945
    iget-object v1, p0, Loppo/internal/app/OppoListActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Loppo/internal/app/OppoListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 947
    .local v0, item:Ljava/lang/Object;
    instance-of v1, v0, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    .end local v0           #item:Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Lcom/oppo/preference/OppoPreferenceActivity;->onHeaderClick(Lcom/oppo/preference/OppoPreferenceActivity$Header;I)V

    .line 949
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 1449
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 836
    invoke-super {p0}, Loppo/internal/app/OppoListActivity;->onPause()V

    .line 838
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityPause()V

    .line 843
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 1277
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/preference/OppoPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1279
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceToggle(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 1421
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1417
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 901
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v2, :cond_0

    .line 902
    const-string v2, "oppo:OppoPreferenceActivity"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 903
    .local v0, container:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 904
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 905
    .local v1, preferenceScreen:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 906
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 907
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 916
    .end local v0           #container:Landroid/os/Bundle;
    .end local v1           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 915
    :cond_0
    invoke-super {p0, p1}, Loppo/internal/app/OppoListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 877
    invoke-super {p0, p1}, Loppo/internal/app/OppoListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 879
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 880
    const-string v3, ":android:headers"

    iget-object v4, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 881
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

    if-eqz v3, :cond_0

    .line 882
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 883
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 884
    const-string v3, ":android:cur_header"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 889
    .end local v1           #index:I
    :cond_0
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_1

    .line 890
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 891
    .local v2, preferenceScreen:Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_1

    .line 892
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 893
    .local v0, container:Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 894
    const-string v3, "oppo:OppoPreferenceActivity"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 897
    .end local v0           #container:Landroid/os/Bundle;
    .end local v2           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 849
    invoke-super {p0}, Loppo/internal/app/OppoListActivity;->onStop()V

    .line 851
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    .line 854
    :cond_0
    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 826
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "title"
    .parameter "shortTitle"
    .parameter "listener"

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1080
    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter "preferenceScreen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1348
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->requirePreferenceManager()V

    .line 1350
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1351
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->postBindPreferences()V

    .line 1352
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1354
    .local v0, title:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1355
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1358
    .end local v0           #title:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method setSelectedHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V
    .locals 3
    .parameter "header"

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

    .line 1084
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1085
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 1086
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1090
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceActivity;->showBreadCrumbs(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V

    .line 1091
    return-void

    .line 1088
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0
.end method

.method showBreadCrumbs(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V
    .locals 3
    .parameter "header"

    .prologue
    .line 1094
    if-eqz p1, :cond_2

    .line 1095
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oppo/preference/OppoPreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1096
    .local v0, title:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oppo/preference/OppoPreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1097
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1098
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oppo/preference/OppoPreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1102
    .end local v0           #title:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1100
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/preference/OppoPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "title"
    .parameter "shortTitle"

    .prologue
    const/4 v4, 0x0

    .line 1047
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v2, :cond_2

    .line 1048
    const v2, 0x1020016

    invoke-virtual {p0, v2}, Lcom/oppo/preference/OppoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1051
    .local v0, crumbs:Landroid/view/View;
    :try_start_0
    check-cast v0, Landroid/app/FragmentBreadCrumbs;

    .end local v0           #crumbs:Landroid/view/View;
    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v2, :cond_1

    .line 1056
    if-eqz p1, :cond_0

    .line 1057
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1052
    :catch_0
    move-exception v1

    .line 1053
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1061
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_1
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1062
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v2, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 1064
    :cond_2
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v2, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v2, v4, v4, v4}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .parameter "fragment"
    .parameter "push"

    .prologue
    .line 1198
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1199
    .local v0, transaction:Landroid/app/FragmentTransaction;
    const v1, 0x10203b3

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1200
    if-eqz p2, :cond_0

    .line 1201
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1202
    const-string v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1206
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1207
    return-void

    .line 1204
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 9
    .parameter "fragmentClass"
    .parameter "args"
    .parameter "titleRes"
    .parameter "titleText"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    .line 1230
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 1231
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/preference/OppoPreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1248
    :goto_0
    return-void

    .line 1233
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v7

    .line 1234
    .local v7, f:Landroid/app/Fragment;
    if-eqz p5, :cond_1

    .line 1235
    invoke-virtual {v7, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1237
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 1238
    .local v8, transaction:Landroid/app/FragmentTransaction;
    const v0, 0x10203b3

    invoke-virtual {v8, v0, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1239
    if-eqz p3, :cond_3

    .line 1240
    invoke-virtual {v8, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1244
    :cond_2
    :goto_1
    const/16 v0, 0x1001

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1245
    const-string v0, ":android:prefs"

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1246
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1241
    :cond_3
    if-eqz p4, :cond_2

    .line 1242
    invoke-virtual {v8, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 7
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    const/4 v5, 0x0

    .line 1011
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/preference/OppoPreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1012
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 1033
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/oppo/preference/OppoPreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1034
    .local v0, intent:Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1035
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1039
    :goto_0
    return-void

    .line 1037
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public switchToHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V
    .locals 4
    .parameter "header"

    .prologue
    .line 1133
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

    if-ne v1, p1, :cond_0

    .line 1136
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ":android:prefs"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1143
    :goto_0
    return-void

    .line 1139
    :cond_0
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sub-int v0, v1, v2

    .line 1140
    .local v0, direction:I
    iget-object v1, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2, v0}, Lcom/oppo/preference/OppoPreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1141
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceActivity;->setSelectedHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V

    goto :goto_0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 1122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreferenceActivity;->setSelectedHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V

    .line 1123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoPreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1124
    return-void
.end method
