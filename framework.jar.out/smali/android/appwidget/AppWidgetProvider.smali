.class public Landroid/appwidget/AppWidgetProvider;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public onClicked(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "viewId"

    .prologue
    .line 109
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 163
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 197
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 182
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 58
    .local v5, extras:Landroid/os/Bundle;
    if-eqz v5, :cond_0

    .line 59
    const-string v6, "appWidgetIds"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 60
    .local v2, appWidgetIds:[I
    if-eqz v2, :cond_0

    array-length v6, v2

    if-lez v6, :cond_0

    .line 61
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v2}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 93
    .end local v2           #appWidgetIds:[I
    .end local v5           #extras:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v6, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 67
    .restart local v5       #extras:Landroid/os/Bundle;
    if-eqz v5, :cond_0

    const-string v6, "appWidgetId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    const-string v6, "appWidgetId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, appWidgetId:I
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    invoke-virtual {p0, p1, v6}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    goto :goto_0

    .line 72
    .end local v1           #appWidgetId:I
    .end local v5           #extras:Landroid/os/Bundle;
    :cond_2
    const-string v6, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 73
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    goto :goto_0

    .line 75
    :cond_3
    const-string v6, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 76
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    goto :goto_0

    .line 78
    :cond_4
    const-string v6, "android.appwidget.action.APPWIDGET_ON_CLICK"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 80
    .restart local v5       #extras:Landroid/os/Bundle;
    if-eqz v5, :cond_0

    .line 81
    const-string v6, "appWidgetClickId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 82
    .local v3, appWidgetViewId:I
    invoke-virtual {p0, p1, v3}, Landroid/appwidget/AppWidgetProvider;->onClicked(Landroid/content/Context;I)V

    goto :goto_0

    .line 85
    .end local v3           #appWidgetViewId:I
    .end local v5           #extras:Landroid/os/Bundle;
    :cond_5
    const-string v6, "android.appwidget.action.APPWIDGET_ON_TOUCH"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 87
    .restart local v5       #extras:Landroid/os/Bundle;
    if-eqz v5, :cond_0

    .line 88
    const-string v6, "appWidgetTouchId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 89
    .restart local v3       #appWidgetViewId:I
    const-string v6, "appWidgetTouchEvent"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/view/MotionEvent;

    .line 90
    .local v4, event:Landroid/view/MotionEvent;
    invoke-virtual {p0, p1, v3, v4}, Landroid/appwidget/AppWidgetProvider;->onTouched(Landroid/content/Context;ILandroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onTouched(Landroid/content/Context;ILandroid/view/MotionEvent;)V
    .locals 0
    .parameter "context"
    .parameter "viewId"
    .parameter "event"

    .prologue
    .line 125
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 147
    return-void
.end method
