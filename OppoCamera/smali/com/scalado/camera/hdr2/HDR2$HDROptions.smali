.class public Lcom/scalado/camera/hdr2/HDR2$HDROptions;
.super Ljava/lang/Object;
.source "HDR2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/hdr2/HDR2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HDROptions"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/hdr2/HDR2;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/hdr2/HDR2;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/scalado/camera/hdr2/HDR2$HDROptions;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExposureDifference()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$HDROptions;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mExposureDiff:I
    invoke-static {v0}, Lcom/scalado/camera/hdr2/HDR2;->access$1(Lcom/scalado/camera/hdr2/HDR2;)I

    move-result v0

    return v0
.end method

.method public setExposureDifference(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$HDROptions;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mExposureDiff:I
    invoke-static {v0, p1}, Lcom/scalado/camera/hdr2/HDR2;->access$0(Lcom/scalado/camera/hdr2/HDR2;I)V

    .line 112
    return-void
.end method
