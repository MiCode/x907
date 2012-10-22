.class final enum Landroid/view/View$MagnifierType;
.super Ljava/lang/Enum;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MagnifierType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/View$MagnifierType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/View$MagnifierType;

.field public static final enum Oval:Landroid/view/View$MagnifierType;

.field public static final enum Rect:Landroid/view/View$MagnifierType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15829
    new-instance v0, Landroid/view/View$MagnifierType;

    const-string v1, "Oval"

    invoke-direct {v0, v1, v2}, Landroid/view/View$MagnifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/View$MagnifierType;->Oval:Landroid/view/View$MagnifierType;

    new-instance v0, Landroid/view/View$MagnifierType;

    const-string v1, "Rect"

    invoke-direct {v0, v1, v3}, Landroid/view/View$MagnifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/View$MagnifierType;->Rect:Landroid/view/View$MagnifierType;

    .line 15828
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View$MagnifierType;

    sget-object v1, Landroid/view/View$MagnifierType;->Oval:Landroid/view/View$MagnifierType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/View$MagnifierType;->Rect:Landroid/view/View$MagnifierType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/view/View$MagnifierType;->$VALUES:[Landroid/view/View$MagnifierType;

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
    .line 15828
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/View$MagnifierType;
    .locals 1
    .parameter "name"

    .prologue
    .line 15828
    const-class v0, Landroid/view/View$MagnifierType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/View$MagnifierType;

    return-object v0
.end method

.method public static values()[Landroid/view/View$MagnifierType;
    .locals 1

    .prologue
    .line 15828
    sget-object v0, Landroid/view/View$MagnifierType;->$VALUES:[Landroid/view/View$MagnifierType;

    invoke-virtual {v0}, [Landroid/view/View$MagnifierType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View$MagnifierType;

    return-object v0
.end method
