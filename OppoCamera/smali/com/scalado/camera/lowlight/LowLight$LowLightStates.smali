.class final enum Lcom/scalado/camera/lowlight/LowLight$LowLightStates;
.super Ljava/lang/Enum;
.source "LowLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/lowlight/LowLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LowLightStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scalado/camera/lowlight/LowLight$LowLightStates;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAPTURING:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

.field private static final synthetic ENUM$VALUES:[Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

.field public static final enum FINISHED:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

.field public static final enum READY:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->READY:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    .line 88
    new-instance v0, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    const-string v1, "CAPTURING"

    invoke-direct {v0, v1, v3}, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->CAPTURING:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    .line 89
    new-instance v0, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->FINISHED:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    sget-object v1, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->READY:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->CAPTURING:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->FINISHED:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->ENUM$VALUES:[Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scalado/camera/lowlight/LowLight$LowLightStates;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    return-object v0
.end method

.method public static values()[Lcom/scalado/camera/lowlight/LowLight$LowLightStates;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->ENUM$VALUES:[Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    array-length v1, v0

    new-array v2, v1, [Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method