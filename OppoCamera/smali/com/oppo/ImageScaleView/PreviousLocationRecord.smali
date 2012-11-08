.class public Lcom/oppo/ImageScaleView/PreviousLocationRecord;
.super Ljava/lang/Object;
.source "PreviousLocationRecord.java"


# static fields
.field private static final sSelf:Lcom/oppo/ImageScaleView/PreviousLocationRecord;


# instance fields
.field private preX:F

.field private preY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/oppo/ImageScaleView/PreviousLocationRecord;

    invoke-direct {v0}, Lcom/oppo/ImageScaleView/PreviousLocationRecord;-><init>()V

    sput-object v0, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->sSelf:Lcom/oppo/ImageScaleView/PreviousLocationRecord;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v0, p0, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->preX:F

    iput v0, p0, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->preY:F

    return-void
.end method

.method public static final instance()Lcom/oppo/ImageScaleView/PreviousLocationRecord;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->sSelf:Lcom/oppo/ImageScaleView/PreviousLocationRecord;

    return-object v0
.end method


# virtual methods
.method public getDistanceX(F)F
    .locals 1
    .parameter "currentX"

    .prologue
    .line 25
    iget v0, p0, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->preX:F

    sub-float v0, p1, v0

    return v0
.end method

.method public getDistanceY(F)F
    .locals 1
    .parameter "currentY"

    .prologue
    .line 29
    iget v0, p0, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->preY:F

    sub-float v0, p1, v0

    return v0
.end method

.method public recordPreviousCoordinate(FF)V
    .locals 0
    .parameter "currentX"
    .parameter "currentY"

    .prologue
    .line 12
    iput p1, p0, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->preX:F

    .line 13
    iput p2, p0, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->preY:F

    .line 14
    return-void
.end method
