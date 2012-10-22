.class public final Landroid/os/OppoManager;
.super Ljava/lang/Object;
.source "OppoManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final INIT_TRY_TIMES:I = 0x3

.field public static final SERVICE_NAME:Ljava/lang/String; = "OPPO"

.field public static final TAG:Ljava/lang/String; = "OppoManager"

.field private static sService:Landroid/os/IOppoService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final adjustLCDFrequency(I)I
    .locals 4
    .parameter "rate"

    .prologue
    .line 32
    const/high16 v1, -0x8000

    .line 33
    .local v1, res:I
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/OppoManager;->init()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 41
    .end local v1           #res:I
    .local v2, res:I
    :goto_0
    return v2

    .line 36
    .end local v2           #res:I
    .restart local v1       #res:I
    :cond_0
    :try_start_0
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    invoke-interface {v3, p0}, Landroid/os/IOppoService;->adjustLCDFrequency(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 41
    .end local v1           #res:I
    .restart local v2       #res:I
    goto :goto_0

    .line 37
    .end local v2           #res:I
    .restart local v1       #res:I
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSaveModeState()I
    .locals 5

    .prologue
    .line 46
    const/4 v1, -0x1

    .line 47
    .local v1, res:I
    sget-object v2, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/OppoManager;->init()Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    :goto_0
    return v1

    .line 51
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    invoke-interface {v2}, Landroid/os/IOppoService;->getSaveModeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "OppoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSaveModeState RemoteException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final init()Z
    .locals 4

    .prologue
    .line 21
    const/4 v0, 0x3

    .line 23
    .local v0, times:I
    :cond_0
    const-string v1, "OppoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to OppoService Instance! times = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v1, "OPPO"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IOppoService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoService;

    move-result-object v1

    sput-object v1, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    .line 25
    sget-object v1, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-eqz v1, :cond_1

    .line 26
    const/4 v1, 0x1

    .line 28
    :goto_0
    return v1

    .line 27
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 28
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setSaveModeState(I)I
    .locals 6
    .parameter "state"

    .prologue
    .line 60
    const/4 v1, -0x1

    .line 61
    .local v1, res:I
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/OppoManager;->init()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 70
    .end local v1           #res:I
    .local v2, res:I
    :goto_0
    return v2

    .line 65
    .end local v2           #res:I
    .restart local v1       #res:I
    :cond_0
    :try_start_0
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    invoke-interface {v3, p0}, Landroid/os/IOppoService;->setSaveModeState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 70
    .end local v1           #res:I
    .restart local v2       #res:I
    goto :goto_0

    .line 66
    .end local v2           #res:I
    .restart local v1       #res:I
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "OppoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSaveModeState RemoteException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
