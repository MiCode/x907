.class final enum Lcom/oppo/widget/OppoAppSecurityPermissions$State;
.super Ljava/lang/Enum;
.source "OppoAppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoAppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/widget/OppoAppSecurityPermissions$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/widget/OppoAppSecurityPermissions$State;

.field public static final enum BOTH:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

.field public static final enum DANGEROUS_ONLY:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

.field public static final enum NORMAL_ONLY:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

.field public static final enum NO_PERMS:Lcom/oppo/widget/OppoAppSecurityPermissions$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    const-string v1, "NO_PERMS"

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoAppSecurityPermissions$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/widget/OppoAppSecurityPermissions$State;->NO_PERMS:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    .line 51
    new-instance v0, Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    const-string v1, "DANGEROUS_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/oppo/widget/OppoAppSecurityPermissions$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/widget/OppoAppSecurityPermissions$State;->DANGEROUS_ONLY:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    .line 52
    new-instance v0, Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    const-string v1, "NORMAL_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/oppo/widget/OppoAppSecurityPermissions$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/widget/OppoAppSecurityPermissions$State;->NORMAL_ONLY:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    .line 53
    new-instance v0, Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v5}, Lcom/oppo/widget/OppoAppSecurityPermissions$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/widget/OppoAppSecurityPermissions$State;->BOTH:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    sget-object v1, Lcom/oppo/widget/OppoAppSecurityPermissions$State;->NO_PERMS:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/widget/OppoAppSecurityPermissions$State;->DANGEROUS_ONLY:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oppo/widget/OppoAppSecurityPermissions$State;->NORMAL_ONLY:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oppo/widget/OppoAppSecurityPermissions$State;->BOTH:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oppo/widget/OppoAppSecurityPermissions$State;->$VALUES:[Lcom/oppo/widget/OppoAppSecurityPermissions$State;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/widget/OppoAppSecurityPermissions$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 49
    const-class v0, Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    return-object v0
.end method

.method public static values()[Lcom/oppo/widget/OppoAppSecurityPermissions$State;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/oppo/widget/OppoAppSecurityPermissions$State;->$VALUES:[Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    invoke-virtual {v0}, [Lcom/oppo/widget/OppoAppSecurityPermissions$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    return-object v0
.end method
