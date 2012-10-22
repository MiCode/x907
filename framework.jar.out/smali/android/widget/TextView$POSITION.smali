.class final enum Landroid/widget/TextView$POSITION;
.super Ljava/lang/Enum;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "POSITION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/TextView$POSITION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/TextView$POSITION;

.field public static final enum BOTTOM:Landroid/widget/TextView$POSITION;

.field public static final enum MIDDLE:Landroid/widget/TextView$POSITION;

.field public static final enum TOP:Landroid/widget/TextView$POSITION;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13206
    new-instance v0, Landroid/widget/TextView$POSITION;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$POSITION;->TOP:Landroid/widget/TextView$POSITION;

    new-instance v0, Landroid/widget/TextView$POSITION;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v3}, Landroid/widget/TextView$POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$POSITION;->BOTTOM:Landroid/widget/TextView$POSITION;

    new-instance v0, Landroid/widget/TextView$POSITION;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v4}, Landroid/widget/TextView$POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$POSITION;->MIDDLE:Landroid/widget/TextView$POSITION;

    .line 13205
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView$POSITION;

    sget-object v1, Landroid/widget/TextView$POSITION;->TOP:Landroid/widget/TextView$POSITION;

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/TextView$POSITION;->BOTTOM:Landroid/widget/TextView$POSITION;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/TextView$POSITION;->MIDDLE:Landroid/widget/TextView$POSITION;

    aput-object v1, v0, v4

    sput-object v0, Landroid/widget/TextView$POSITION;->$VALUES:[Landroid/widget/TextView$POSITION;

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
    .line 13205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/TextView$POSITION;
    .locals 1
    .parameter "name"

    .prologue
    .line 13205
    const-class v0, Landroid/widget/TextView$POSITION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView$POSITION;

    return-object v0
.end method

.method public static values()[Landroid/widget/TextView$POSITION;
    .locals 1

    .prologue
    .line 13205
    sget-object v0, Landroid/widget/TextView$POSITION;->$VALUES:[Landroid/widget/TextView$POSITION;

    invoke-virtual {v0}, [Landroid/widget/TextView$POSITION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView$POSITION;

    return-object v0
.end method
