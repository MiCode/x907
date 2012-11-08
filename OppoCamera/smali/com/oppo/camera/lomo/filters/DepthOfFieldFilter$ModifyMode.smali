.class public final enum Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;
.super Ljava/lang/Enum;
.source "DepthOfFieldFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModifyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

.field public static final enum Grow:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

.field public static final enum Move:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

.field public static final enum None:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;->None:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    new-instance v0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;->Move:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    new-instance v0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    const-string v1, "Grow"

    invoke-direct {v0, v1, v4}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;->Grow:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    sget-object v1, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;->None:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;->Move:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;->Grow:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;->$VALUES:[Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;
    .locals 1
    .parameter

    .prologue
    .line 78
    const-class v0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    return-object v0
.end method

.method public static values()[Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;->$VALUES:[Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    invoke-virtual {v0}, [Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    return-object v0
.end method
