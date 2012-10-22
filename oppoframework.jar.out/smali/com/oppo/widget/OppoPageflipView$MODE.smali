.class public final enum Lcom/oppo/widget/OppoPageflipView$MODE;
.super Ljava/lang/Enum;
.source "OppoPageflipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoPageflipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/widget/OppoPageflipView$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/widget/OppoPageflipView$MODE;

.field public static final enum BUTTON_MODE:Lcom/oppo/widget/OppoPageflipView$MODE;

.field public static final enum FINGER_MODE:Lcom/oppo/widget/OppoPageflipView$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 500
    new-instance v0, Lcom/oppo/widget/OppoPageflipView$MODE;

    const-string v1, "BUTTON_MODE"

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoPageflipView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/widget/OppoPageflipView$MODE;->BUTTON_MODE:Lcom/oppo/widget/OppoPageflipView$MODE;

    new-instance v0, Lcom/oppo/widget/OppoPageflipView$MODE;

    const-string v1, "FINGER_MODE"

    invoke-direct {v0, v1, v3}, Lcom/oppo/widget/OppoPageflipView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/widget/OppoPageflipView$MODE;->FINGER_MODE:Lcom/oppo/widget/OppoPageflipView$MODE;

    .line 499
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oppo/widget/OppoPageflipView$MODE;

    sget-object v1, Lcom/oppo/widget/OppoPageflipView$MODE;->BUTTON_MODE:Lcom/oppo/widget/OppoPageflipView$MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/widget/OppoPageflipView$MODE;->FINGER_MODE:Lcom/oppo/widget/OppoPageflipView$MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/widget/OppoPageflipView$MODE;->$VALUES:[Lcom/oppo/widget/OppoPageflipView$MODE;

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
    .line 499
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/widget/OppoPageflipView$MODE;
    .locals 1
    .parameter "name"

    .prologue
    .line 499
    const-class v0, Lcom/oppo/widget/OppoPageflipView$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoPageflipView$MODE;

    return-object v0
.end method

.method public static values()[Lcom/oppo/widget/OppoPageflipView$MODE;
    .locals 1

    .prologue
    .line 499
    sget-object v0, Lcom/oppo/widget/OppoPageflipView$MODE;->$VALUES:[Lcom/oppo/widget/OppoPageflipView$MODE;

    invoke-virtual {v0}, [Lcom/oppo/widget/OppoPageflipView$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/widget/OppoPageflipView$MODE;

    return-object v0
.end method
