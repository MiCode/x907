.class public Landroid/widget/TextView$EmoData;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmoData"
.end annotation


# instance fields
.field public mEnd:I

.field public mNum:Ljava/lang/String;

.field public mStart:I

.field public mStr:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 12734
    iput-object p1, p0, Landroid/widget/TextView$EmoData;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12735
    iput v0, p0, Landroid/widget/TextView$EmoData;->mStart:I

    .line 12736
    iput v0, p0, Landroid/widget/TextView$EmoData;->mEnd:I

    .line 12737
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/TextView$EmoData;->mStr:Ljava/lang/String;

    .line 12738
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/TextView$EmoData;->mNum:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public EmoDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/widget/TextView$EmoData;->mStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$EmoData;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$EmoData;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
