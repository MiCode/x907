.class Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;
.super Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;
.source "MSimSimUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MSimSimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MSimTouchInput"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    .line 272
    const v0, 0x10203c6

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/view/View;

    .line 273
    const v0, 0x10203bc

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/view/View;

    .line 274
    const v0, 0x10203bd

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/view/View;

    .line 275
    const v0, 0x10203be

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/view/View;

    .line 276
    const v0, 0x10203bf

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/view/View;

    .line 277
    const v0, 0x10203c0

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/view/View;

    .line 278
    const v0, 0x10203c1

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/view/View;

    .line 279
    const v0, 0x10203c2

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/view/View;

    .line 280
    const v0, 0x10203c3

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/view/View;

    .line 281
    const v0, 0x10203c4

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/view/View;

    .line 283
    const v0, 0x10203c5

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOppoEmergencyBtn:Landroid/view/View;

    .line 284
    const v0, 0x102035b

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOppoDeleteBtn:Landroid/view/View;

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOppoEmergencyBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOppoDeleteBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 330
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOppoEmergencyBtn:Landroid/view/View;

    if-ne p1, v3, :cond_0

    .line 332
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 335
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOppoDeleteBtn:Landroid/view/View;

    if-ne p1, v3, :cond_2

    .line 337
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 338
    .local v1, digits:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 339
    .local v2, len:I
    if-lez v2, :cond_1

    .line 340
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 341
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget v4, v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 343
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 349
    .end local v1           #digits:Landroid/text/Editable;
    .end local v2           #len:I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 350
    .local v0, digit:I
    if-ltz v0, :cond_3

    .line 351
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v4, 0x1388

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 352
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->reportDigit(I)V

    .line 354
    :cond_3
    return-void
.end method
