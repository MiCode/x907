.class public final enum Landroid/view/IndicateMenuImpl$Position;
.super Ljava/lang/Enum;
.source "IndicateMenuImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IndicateMenuImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/IndicateMenuImpl$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/IndicateMenuImpl$Position;

.field public static final enum Above:Landroid/view/IndicateMenuImpl$Position;

.field public static final enum Below:Landroid/view/IndicateMenuImpl$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 591
    new-instance v0, Landroid/view/IndicateMenuImpl$Position;

    const-string v1, "Above"

    invoke-direct {v0, v1, v2}, Landroid/view/IndicateMenuImpl$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/IndicateMenuImpl$Position;->Above:Landroid/view/IndicateMenuImpl$Position;

    new-instance v0, Landroid/view/IndicateMenuImpl$Position;

    const-string v1, "Below"

    invoke-direct {v0, v1, v3}, Landroid/view/IndicateMenuImpl$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/IndicateMenuImpl$Position;->Below:Landroid/view/IndicateMenuImpl$Position;

    .line 590
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/IndicateMenuImpl$Position;

    sget-object v1, Landroid/view/IndicateMenuImpl$Position;->Above:Landroid/view/IndicateMenuImpl$Position;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/IndicateMenuImpl$Position;->Below:Landroid/view/IndicateMenuImpl$Position;

    aput-object v1, v0, v3

    sput-object v0, Landroid/view/IndicateMenuImpl$Position;->$VALUES:[Landroid/view/IndicateMenuImpl$Position;

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
    .line 590
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/IndicateMenuImpl$Position;
    .locals 1
    .parameter "name"

    .prologue
    .line 590
    const-class v0, Landroid/view/IndicateMenuImpl$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/IndicateMenuImpl$Position;

    return-object v0
.end method

.method public static values()[Landroid/view/IndicateMenuImpl$Position;
    .locals 1

    .prologue
    .line 590
    sget-object v0, Landroid/view/IndicateMenuImpl$Position;->$VALUES:[Landroid/view/IndicateMenuImpl$Position;

    invoke-virtual {v0}, [Landroid/view/IndicateMenuImpl$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/IndicateMenuImpl$Position;

    return-object v0
.end method
