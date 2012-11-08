.class public final enum Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
.super Ljava/lang/Enum;
.source "LomoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShotMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/camera/lomo/LomoCamera$ShotMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

.field public static final enum BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

.field public static final enum FILTER:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

.field public static final enum PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    const-string v1, "PANORAMA"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    const-string v1, "BURST"

    invoke-direct {v0, v1, v3}, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    const-string v1, "FILTER"

    invoke-direct {v0, v1, v4}, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->FILTER:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    .line 126
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->FILTER:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->$VALUES:[Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    .locals 1
    .parameter

    .prologue
    .line 126
    const-class v0, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    return-object v0
.end method

.method public static values()[Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->$VALUES:[Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    invoke-virtual {v0}, [Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    return-object v0
.end method
