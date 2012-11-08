.class final enum Lcom/oppo/camera/lomo/LomoCamera$FocusState;
.super Ljava/lang/Enum;
.source "LomoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FocusState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/camera/lomo/LomoCamera$FocusState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/camera/lomo/LomoCamera$FocusState;

.field public static final enum AF:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

.field public static final enum CAF:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

.field public static final enum FINISH:Lcom/oppo/camera/lomo/LomoCamera$FocusState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 215
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    const-string v1, "AF"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/lomo/LomoCamera$FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->AF:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    const-string v1, "CAF"

    invoke-direct {v0, v1, v3}, Lcom/oppo/camera/lomo/LomoCamera$FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->CAF:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    const-string v1, "FINISH"

    invoke-direct {v0, v1, v4}, Lcom/oppo/camera/lomo/LomoCamera$FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->FINISH:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    .line 214
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->AF:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->CAF:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->FINISH:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->$VALUES:[Lcom/oppo/camera/lomo/LomoCamera$FocusState;

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
    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/camera/lomo/LomoCamera$FocusState;
    .locals 1
    .parameter

    .prologue
    .line 214
    const-class v0, Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    return-object v0
.end method

.method public static values()[Lcom/oppo/camera/lomo/LomoCamera$FocusState;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->$VALUES:[Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    invoke-virtual {v0}, [Lcom/oppo/camera/lomo/LomoCamera$FocusState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    return-object v0
.end method
