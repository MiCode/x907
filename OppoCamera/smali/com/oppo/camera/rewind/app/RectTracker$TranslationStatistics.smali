.class Lcom/oppo/camera/rewind/app/RectTracker$TranslationStatistics;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslationStatistics"
.end annotation


# instance fields
.field private mId:I

.field private mImageIndex:I

.field private mRelDx:F

.field private mRelDy:F

.field private mRelVftDx:F

.field private mRelVftDy:F

.field private mSeqCount:I

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RectTracker;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;IIIFFFF)V
    .locals 0
    .parameter
    .parameter "seqCount"
    .parameter "index"
    .parameter "id"
    .parameter "relDx"
    .parameter "relDy"
    .parameter "relVftDx"
    .parameter "relVftDy"

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TranslationStatistics;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1164
    iput p2, p0, Lcom/oppo/camera/rewind/app/RectTracker$TranslationStatistics;->mSeqCount:I

    .line 1165
    iput p3, p0, Lcom/oppo/camera/rewind/app/RectTracker$TranslationStatistics;->mImageIndex:I

    .line 1166
    iput p4, p0, Lcom/oppo/camera/rewind/app/RectTracker$TranslationStatistics;->mId:I

    .line 1167
    iput p5, p0, Lcom/oppo/camera/rewind/app/RectTracker$TranslationStatistics;->mRelDx:F

    .line 1168
    iput p6, p0, Lcom/oppo/camera/rewind/app/RectTracker$TranslationStatistics;->mRelDy:F

    .line 1169
    iput p7, p0, Lcom/oppo/camera/rewind/app/RectTracker$TranslationStatistics;->mRelVftDx:F

    .line 1170
    iput p8, p0, Lcom/oppo/camera/rewind/app/RectTracker$TranslationStatistics;->mRelVftDy:F

    .line 1171
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;IIIFFFFLcom/oppo/camera/rewind/app/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 1153
    invoke-direct/range {p0 .. p8}, Lcom/oppo/camera/rewind/app/RectTracker$TranslationStatistics;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;IIIFFFF)V

    return-void
.end method
