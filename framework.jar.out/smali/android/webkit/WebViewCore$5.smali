.class Landroid/webkit/WebViewCore$5;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Landroid/webkit/GeolocationPermissions$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore;->navigatorPermissionsShowPrompt(Ljava/util/Vector;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Landroid/webkit/WebViewCore$5;->this$0:Landroid/webkit/WebViewCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;ZZ)V
    .locals 9
    .parameter "appid"
    .parameter "allow"
    .parameter "remember"

    .prologue
    .line 460
    new-instance v0, Landroid/webkit/WebViewCore$NavigatorPermissionsData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$NavigatorPermissionsData;-><init>()V

    .line 465
    .local v0, data:Landroid/webkit/WebViewCore$NavigatorPermissionsData;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 466
    .local v4, nJson:Lorg/json/JSONObject;
    const-string v6, "appid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 467
    const-string v6, "appid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Landroid/webkit/WebViewCore$NavigatorPermissionsData;->mAppid:Ljava/lang/String;

    .line 469
    :cond_0
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 471
    .local v5, tmpFeatures:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const-string v6, "features"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 472
    const-string v6, "features"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 473
    .local v3, jArr:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 474
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 473
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    .end local v2           #i:I
    .end local v3           #jArr:Lorg/json/JSONArray;
    :cond_1
    iput-object v5, v0, Landroid/webkit/WebViewCore$NavigatorPermissionsData;->mFeatures:Ljava/util/Vector;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v4           #nJson:Lorg/json/JSONObject;
    .end local v5           #tmpFeatures:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_1
    iput-boolean p2, v0, Landroid/webkit/WebViewCore$NavigatorPermissionsData;->mAllow:Z

    .line 481
    iput-boolean p3, v0, Landroid/webkit/WebViewCore$NavigatorPermissionsData;->mRemember:Z

    .line 483
    iget-object v6, p0, Landroid/webkit/WebViewCore$5;->this$0:Landroid/webkit/WebViewCore;

    const/16 v7, 0xc5

    invoke-virtual {v6, v7, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 484
    return-void

    .line 477
    :catch_0
    move-exception v1

    .line 478
    .local v1, e:Lorg/json/JSONException;
    const-string/jumbo v6, "webcore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught excepttion"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
