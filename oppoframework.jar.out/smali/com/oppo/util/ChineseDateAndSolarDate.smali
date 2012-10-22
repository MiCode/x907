.class public Lcom/oppo/util/ChineseDateAndSolarDate;
.super Ljava/lang/Object;
.source "ChineseDateAndSolarDate.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "ChineseDateAndSolarDate"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method private static native NativeChineseDateToSunDate(III)[I
.end method

.method private static native NativeGetChineseLeapMonth(I)I
.end method

.method private static native NativeGetChineseMonthDays(II)I
.end method

.method private static native NativeGetSunMonthDays(II)I
.end method

.method private static native NativeSunDateToChineseDate(III)[I
.end method


# virtual methods
.method public ChineseDateToSunDate(III)[I
    .locals 1
    .parameter "iChineseYear"
    .parameter "iChineseMonth"
    .parameter "iChineseDay"

    .prologue
    .line 25
    invoke-static {p1, p2, p3}, Lcom/oppo/util/ChineseDateAndSolarDate;->NativeChineseDateToSunDate(III)[I

    move-result-object v0

    return-object v0
.end method

.method public GetChLeapMonth(I)I
    .locals 1
    .parameter "iChineseYear"

    .prologue
    .line 36
    invoke-static {p1}, Lcom/oppo/util/ChineseDateAndSolarDate;->NativeGetChineseLeapMonth(I)I

    move-result v0

    return v0
.end method

.method public GetChMonthDays(II)I
    .locals 1
    .parameter "iChineseYear"
    .parameter "iChineseMonth"

    .prologue
    .line 41
    invoke-static {p1, p2}, Lcom/oppo/util/ChineseDateAndSolarDate;->NativeGetChineseMonthDays(II)I

    move-result v0

    return v0
.end method

.method public GetSolarMonthDays(II)I
    .locals 1
    .parameter "iSolarYear"
    .parameter "iSolarMonth"

    .prologue
    .line 46
    invoke-static {p1, p2}, Lcom/oppo/util/ChineseDateAndSolarDate;->NativeGetSunMonthDays(II)I

    move-result v0

    return v0
.end method

.method public SunDateToChineseDate(III)[I
    .locals 1
    .parameter "iChineseYear"
    .parameter "iChineseMonth"
    .parameter "iChineseDay"

    .prologue
    .line 30
    invoke-static {p1, p2, p3}, Lcom/oppo/util/ChineseDateAndSolarDate;->NativeSunDateToChineseDate(III)[I

    move-result-object v0

    return-object v0
.end method
