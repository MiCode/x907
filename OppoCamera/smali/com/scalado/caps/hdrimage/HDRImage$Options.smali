.class public Lcom/scalado/caps/hdrimage/HDRImage$Options;
.super Ljava/lang/Object;
.source "HDRImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/hdrimage/HDRImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field private exposure:F

.field private gamma:F

.field private registration:Lcom/scalado/caps/hdrimage/HDRImage$Registration;


# direct methods
.method public constructor <init>(FFLcom/scalado/caps/hdrimage/HDRImage$Registration;)V
    .locals 2
    .parameter "exposure"
    .parameter "gamma"
    .parameter "registration"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exposure must be in range [0, inf)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    cmpg-float v0, p2, v1

    if-ltz v0, :cond_1

    const/high16 v0, 0x4000

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Gamma must be in range [0,2]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    if-nez p3, :cond_3

    .line 126
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Registration cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_3
    iput p1, p0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->exposure:F

    .line 130
    iput p2, p0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F

    .line 131
    iput-object p3, p0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->registration:Lcom/scalado/caps/hdrimage/HDRImage$Registration;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/scalado/caps/hdrimage/HDRImage$Options;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->exposure:F

    return v0
.end method

.method static synthetic access$100(Lcom/scalado/caps/hdrimage/HDRImage$Options;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F

    return v0
.end method

.method static synthetic access$200(Lcom/scalado/caps/hdrimage/HDRImage$Options;)Lcom/scalado/caps/hdrimage/HDRImage$Registration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->registration:Lcom/scalado/caps/hdrimage/HDRImage$Registration;

    return-object v0
.end method


# virtual methods
.method public getExposure()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->exposure:F

    return v0
.end method

.method public getGamma()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F

    return v0
.end method

.method public getRegistration()Lcom/scalado/caps/hdrimage/HDRImage$Registration;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->registration:Lcom/scalado/caps/hdrimage/HDRImage$Registration;

    return-object v0
.end method

.method public setExposure(F)V
    .locals 0
    .parameter "exposure"

    .prologue
    .line 72
    iput p1, p0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->exposure:F

    .line 73
    return-void
.end method

.method public setGamma(F)V
    .locals 0
    .parameter "gamma"

    .prologue
    .line 84
    iput p1, p0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F

    .line 85
    return-void
.end method

.method public setRegistration(Lcom/scalado/caps/hdrimage/HDRImage$Registration;)V
    .locals 0
    .parameter "registration"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->registration:Lcom/scalado/caps/hdrimage/HDRImage$Registration;

    .line 97
    return-void
.end method
