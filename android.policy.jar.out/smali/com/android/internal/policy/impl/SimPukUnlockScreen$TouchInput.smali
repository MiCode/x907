.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mEight:Landroid/view/View;

.field private mFive:Landroid/view/View;

.field private mFour:Landroid/view/View;

.field private mNine:Landroid/view/View;

.field private mOne:Landroid/view/View;

.field private mOppoDeleteBtn:Landroid/view/View;

.field private mOppoEmergencyBtn:Landroid/view/View;

.field private mSeven:Landroid/view/View;

.field private mSix:Landroid/view/View;

.field private mThree:Landroid/view/View;

.field private mTwo:Landroid/view/View;

.field private mZero:Landroid/view/View;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 559
    const v0, 0x10203c6

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mZero:Landroid/view/View;

    .line 560
    const v0, 0x10203bc

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOne:Landroid/view/View;

    .line 561
    const v0, 0x10203bd

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/view/View;

    .line 562
    const v0, 0x10203be

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mThree:Landroid/view/View;

    .line 563
    const v0, 0x10203bf

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFour:Landroid/view/View;

    .line 564
    const v0, 0x10203c0

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFive:Landroid/view/View;

    .line 565
    const v0, 0x10203c1

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSix:Landroid/view/View;

    .line 566
    const v0, 0x10203c2

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/view/View;

    .line 567
    const v0, 0x10203c3

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mEight:Landroid/view/View;

    .line 568
    const v0, 0x10203c4

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mNine:Landroid/view/View;

    .line 570
    const v0, 0x10203c5

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOppoEmergencyBtn:Landroid/view/View;

    .line 571
    const v0, 0x102035b

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOppoDeleteBtn:Landroid/view/View;

    .line 583
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mZero:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOne:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mThree:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFour:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFive:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSix:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mEight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mNine:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOppoEmergencyBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOppoDeleteBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 641
    const/4 v0, -0x1

    .line 642
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mZero:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 643
    const/4 v0, 0x0

    .line 663
    :cond_0
    :goto_0
    return v0

    .line 644
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOne:Landroid/view/View;

    if-ne p1, v1, :cond_2

    .line 645
    const/4 v0, 0x1

    goto :goto_0

    .line 646
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/view/View;

    if-ne p1, v1, :cond_3

    .line 647
    const/4 v0, 0x2

    goto :goto_0

    .line 648
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mThree:Landroid/view/View;

    if-ne p1, v1, :cond_4

    .line 649
    const/4 v0, 0x3

    goto :goto_0

    .line 650
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFour:Landroid/view/View;

    if-ne p1, v1, :cond_5

    .line 651
    const/4 v0, 0x4

    goto :goto_0

    .line 652
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFive:Landroid/view/View;

    if-ne p1, v1, :cond_6

    .line 653
    const/4 v0, 0x5

    goto :goto_0

    .line 654
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSix:Landroid/view/View;

    if-ne p1, v1, :cond_7

    .line 655
    const/4 v0, 0x6

    goto :goto_0

    .line 656
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/view/View;

    if-ne p1, v1, :cond_8

    .line 657
    const/4 v0, 0x7

    goto :goto_0

    .line 658
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mEight:Landroid/view/View;

    if-ne p1, v1, :cond_9

    .line 659
    const/16 v0, 0x8

    goto :goto_0

    .line 660
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mNine:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 661
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 615
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOppoEmergencyBtn:Landroid/view/View;

    if-ne p1, v3, :cond_0

    .line 617
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 620
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOppoDeleteBtn:Landroid/view/View;

    if-ne p1, v3, :cond_2

    .line 622
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 623
    .local v1, digits:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 624
    .local v2, len:I
    if-lez v2, :cond_1

    .line 625
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 627
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 633
    .end local v1           #digits:Landroid/text/Editable;
    .end local v2           #len:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 634
    .local v0, digit:I
    if-ltz v0, :cond_3

    .line 635
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    const/16 v4, 0x1388

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 636
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->reportDigit(I)V
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)V

    .line 638
    :cond_3
    return-void
.end method
