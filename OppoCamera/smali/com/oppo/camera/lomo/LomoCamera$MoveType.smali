.class final enum Lcom/oppo/camera/lomo/LomoCamera$MoveType;
.super Ljava/lang/Enum;
.source "LomoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MoveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/camera/lomo/LomoCamera$MoveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/camera/lomo/LomoCamera$MoveType;

.field public static final enum FLING:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

.field public static final enum NOT_MOVE:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

.field public static final enum SCALE:Lcom/oppo/camera/lomo/LomoCamera$MoveType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 252
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    const-string v1, "NOT_MOVE"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/lomo/LomoCamera$MoveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/camera/lomo/LomoCamera$MoveType;->NOT_MOVE:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    const-string v1, "SCALE"

    invoke-direct {v0, v1, v3}, Lcom/oppo/camera/lomo/LomoCamera$MoveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/camera/lomo/LomoCamera$MoveType;->SCALE:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    const-string v1, "FLING"

    invoke-direct {v0, v1, v4}, Lcom/oppo/camera/lomo/LomoCamera$MoveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/camera/lomo/LomoCamera$MoveType;->FLING:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    .line 251
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$MoveType;->NOT_MOVE:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$MoveType;->SCALE:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$MoveType;->FLING:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oppo/camera/lomo/LomoCamera$MoveType;->$VALUES:[Lcom/oppo/camera/lomo/LomoCamera$MoveType;

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
    .line 251
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/camera/lomo/LomoCamera$MoveType;
    .locals 1
    .parameter

    .prologue
    .line 251
    const-class v0, Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    return-object v0
.end method

.method public static values()[Lcom/oppo/camera/lomo/LomoCamera$MoveType;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera$MoveType;->$VALUES:[Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    invoke-virtual {v0}, [Lcom/oppo/camera/lomo/LomoCamera$MoveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    return-object v0
.end method
