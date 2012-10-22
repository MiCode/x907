.class Lcom/android/server/BatteryPolicy$WarringDialog;
.super Ljava/lang/Object;
.source "BatteryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WarringDialog"
.end annotation


# instance fields
.field public mDialog:Landroid/app/AlertDialog;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field public mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/server/BatteryPolicy;

.field private titleId:I


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryPolicy;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 241
    iput-object p1, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->this$0:Lcom/android/server/BatteryPolicy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const v0, 0x104052d

    iput v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->titleId:I

    .line 245
    iput-object v1, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 246
    iput-object v1, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryPolicy;Lcom/android/server/BatteryPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/BatteryPolicy$WarringDialog;-><init>(Lcom/android/server/BatteryPolicy;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/BatteryPolicy$WarringDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/server/BatteryPolicy$WarringDialog;->enableKeyguard()V

    return-void
.end method

.method private declared-synchronized disableKeyguard()V
    .locals 2

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->this$0:Lcom/android/server/BatteryPolicy;

    #getter for: Lcom/android/server/BatteryPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/BatteryPolicy;->access$1200(Lcom/android/server/BatteryPolicy;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "BatteryPolicy"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized enableKeyguard()V
    .locals 2

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->this$0:Lcom/android/server/BatteryPolicy;

    #getter for: Lcom/android/server/BatteryPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/BatteryPolicy;->access$1200(Lcom/android/server/BatteryPolicy;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "BatteryPolicy"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected dismissWarring()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mDialog:Landroid/app/AlertDialog;

    .line 317
    invoke-direct {p0}, Lcom/android/server/BatteryPolicy$WarringDialog;->enableKeyguard()V

    .line 319
    :cond_0
    return-void
.end method

.method protected setWarringContent(I)V
    .locals 1
    .parameter "textId"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    return-void
.end method

.method protected showWarring(I)V
    .locals 6
    .parameter "textId"

    .prologue
    .line 273
    iget-object v3, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->this$0:Lcom/android/server/BatteryPolicy;

    #getter for: Lcom/android/server/BatteryPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/BatteryPolicy;->access$1200(Lcom/android/server/BatteryPolicy;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090033

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 274
    .local v2, v:Landroid/view/View;
    const v3, 0x10202c4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mTextView:Landroid/widget/TextView;

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryPolicy$WarringDialog;->setWarringContent(I)V

    .line 277
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->this$0:Lcom/android/server/BatteryPolicy;

    #getter for: Lcom/android/server/BatteryPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/BatteryPolicy;->access$1200(Lcom/android/server/BatteryPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 279
    iget v3, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->titleId:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 280
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 281
    const v3, 0x104000a

    new-instance v4, Lcom/android/server/BatteryPolicy$WarringDialog$1;

    invoke-direct {v4, p0}, Lcom/android/server/BatteryPolicy$WarringDialog$1;-><init>(Lcom/android/server/BatteryPolicy$WarringDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 302
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 303
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x68

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 306
    invoke-direct {p0}, Lcom/android/server/BatteryPolicy$WarringDialog;->disableKeyguard()V

    .line 308
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 310
    iput-object v1, p0, Lcom/android/server/BatteryPolicy$WarringDialog;->mDialog:Landroid/app/AlertDialog;

    .line 311
    return-void
.end method
