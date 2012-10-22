.class final enum Landroid/view/IndicateMenuView$DRAWABLE_TYPE;
.super Ljava/lang/Enum;
.source "IndicateMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IndicateMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DRAWABLE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/IndicateMenuView$DRAWABLE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

.field public static final enum LEFT:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

.field public static final enum MIDDLE:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

.field public static final enum ONLY_ONE:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

.field public static final enum RIGHT:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1056
    new-instance v0, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    const-string v1, "ONLY_ONE"

    invoke-direct {v0, v1, v2}, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;->ONLY_ONE:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    new-instance v0, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;->LEFT:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    new-instance v0, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v4}, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;->MIDDLE:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    new-instance v0, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v5}, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;->RIGHT:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    .line 1055
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    sget-object v1, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;->ONLY_ONE:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;->LEFT:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;->MIDDLE:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;->RIGHT:Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;->$VALUES:[Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

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
    .line 1055
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/IndicateMenuView$DRAWABLE_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 1055
    const-class v0, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    return-object v0
.end method

.method public static values()[Landroid/view/IndicateMenuView$DRAWABLE_TYPE;
    .locals 1

    .prologue
    .line 1055
    sget-object v0, Landroid/view/IndicateMenuView$DRAWABLE_TYPE;->$VALUES:[Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    invoke-virtual {v0}, [Landroid/view/IndicateMenuView$DRAWABLE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/IndicateMenuView$DRAWABLE_TYPE;

    return-object v0
.end method
