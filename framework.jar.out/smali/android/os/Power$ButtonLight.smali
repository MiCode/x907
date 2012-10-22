.class public final Landroid/os/Power$ButtonLight;
.super Ljava/lang/Object;
.source "Power.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Power;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ButtonLight"
.end annotation


# static fields
.field private static final ACCEPT_ACTION:I = 0x0

.field private static final ACCEPT_KEY:[I = null

.field public static final BRIGHTNESS_DEFAULT:I = 0x64

.field public static final MODE_ALWAYS_OFF:I = 0x2

.field public static final MODE_ALWAYS_ON:I = 0x1

.field public static final MODE_AUTO_SENSOR:I = 0x4

.field public static final MODE_AUTO_TIMEOUT:I = 0x3

.field public static final TIMEOUT_DEFAULT:J = 0x1770L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/os/Power$ButtonLight;->ACCEPT_KEY:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x52t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method public static acceptKey(II)Z
    .locals 3
    .parameter "keyCode"
    .parameter "action"

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, accept:Z
    if-nez p1, :cond_0

    .line 142
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Landroid/os/Power$ButtonLight;->ACCEPT_KEY:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 143
    sget-object v2, Landroid/os/Power$ButtonLight;->ACCEPT_KEY:[I

    aget v2, v2, v1

    if-ne p0, v2, :cond_1

    .line 144
    const/4 v0, 0x1

    .line 150
    .end local v1           #i:I
    :cond_0
    return v0

    .line 142
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
