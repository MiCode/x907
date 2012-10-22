.class public final enum Lcom/oppo/widget/OppoPageflipView$CORNER;
.super Ljava/lang/Enum;
.source "OppoPageflipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoPageflipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CORNER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/widget/OppoPageflipView$CORNER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/widget/OppoPageflipView$CORNER;

.field public static final enum CORNER_BOTTOM_LEFT:Lcom/oppo/widget/OppoPageflipView$CORNER;

.field public static final enum CORNER_BOTTOM_RIGHT:Lcom/oppo/widget/OppoPageflipView$CORNER;

.field public static final enum CORNER_TOP_LEFT:Lcom/oppo/widget/OppoPageflipView$CORNER;

.field public static final enum CORNER_TOP_RIGHT:Lcom/oppo/widget/OppoPageflipView$CORNER;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 516
    new-instance v0, Lcom/oppo/widget/OppoPageflipView$CORNER;

    const-string v1, "CORNER_BOTTOM_LEFT"

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoPageflipView$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/widget/OppoPageflipView$CORNER;->CORNER_BOTTOM_LEFT:Lcom/oppo/widget/OppoPageflipView$CORNER;

    .line 517
    new-instance v0, Lcom/oppo/widget/OppoPageflipView$CORNER;

    const-string v1, "CORNER_BOTTOM_RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/oppo/widget/OppoPageflipView$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/widget/OppoPageflipView$CORNER;->CORNER_BOTTOM_RIGHT:Lcom/oppo/widget/OppoPageflipView$CORNER;

    .line 518
    new-instance v0, Lcom/oppo/widget/OppoPageflipView$CORNER;

    const-string v1, "CORNER_TOP_LEFT"

    invoke-direct {v0, v1, v4}, Lcom/oppo/widget/OppoPageflipView$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/widget/OppoPageflipView$CORNER;->CORNER_TOP_LEFT:Lcom/oppo/widget/OppoPageflipView$CORNER;

    .line 519
    new-instance v0, Lcom/oppo/widget/OppoPageflipView$CORNER;

    const-string v1, "CORNER_TOP_RIGHT"

    invoke-direct {v0, v1, v5}, Lcom/oppo/widget/OppoPageflipView$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/widget/OppoPageflipView$CORNER;->CORNER_TOP_RIGHT:Lcom/oppo/widget/OppoPageflipView$CORNER;

    .line 514
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oppo/widget/OppoPageflipView$CORNER;

    sget-object v1, Lcom/oppo/widget/OppoPageflipView$CORNER;->CORNER_BOTTOM_LEFT:Lcom/oppo/widget/OppoPageflipView$CORNER;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/widget/OppoPageflipView$CORNER;->CORNER_BOTTOM_RIGHT:Lcom/oppo/widget/OppoPageflipView$CORNER;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oppo/widget/OppoPageflipView$CORNER;->CORNER_TOP_LEFT:Lcom/oppo/widget/OppoPageflipView$CORNER;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oppo/widget/OppoPageflipView$CORNER;->CORNER_TOP_RIGHT:Lcom/oppo/widget/OppoPageflipView$CORNER;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oppo/widget/OppoPageflipView$CORNER;->$VALUES:[Lcom/oppo/widget/OppoPageflipView$CORNER;

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
    .line 514
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/widget/OppoPageflipView$CORNER;
    .locals 1
    .parameter "name"

    .prologue
    .line 514
    const-class v0, Lcom/oppo/widget/OppoPageflipView$CORNER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoPageflipView$CORNER;

    return-object v0
.end method

.method public static values()[Lcom/oppo/widget/OppoPageflipView$CORNER;
    .locals 1

    .prologue
    .line 514
    sget-object v0, Lcom/oppo/widget/OppoPageflipView$CORNER;->$VALUES:[Lcom/oppo/widget/OppoPageflipView$CORNER;

    invoke-virtual {v0}, [Lcom/oppo/widget/OppoPageflipView$CORNER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/widget/OppoPageflipView$CORNER;

    return-object v0
.end method
