.class public Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;
.super Lcom/oppo/camera/views/RotateImageView;
.source "SettingMenuBase.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/setting/SettingMenuBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SettingItem"
.end annotation


# instance fields
.field private clickRunnable:Ljava/lang/Runnable;

.field private mDrawables:[Landroid/graphics/drawable/Drawable;

.field private mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mValues:[Ljava/lang/String;

.field final synthetic this$0:Lcom/oppo/camera/setting/SettingMenuBase;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/setting/SettingMenuBase;Landroid/content/Context;[Landroid/graphics/drawable/Drawable;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "icons"
    .parameter "values"
    .parameter "key"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->this$0:Lcom/oppo/camera/setting/SettingMenuBase;

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/oppo/camera/views/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 289
    new-instance v0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem$1;-><init>(Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;)V

    iput-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->clickRunnable:Ljava/lang/Runnable;

    .line 208
    iput-object p3, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 209
    iput-object p4, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mValues:[Ljava/lang/String;

    .line 210
    iput-object p5, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mKey:Ljava/lang/String;

    .line 211
    invoke-direct {p0}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->init()V

    .line 212
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->handleClick()V

    return-void
.end method

.method private getIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 237
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    .end local v0           #i:I
    :goto_1
    return v0

    .line 237
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleClick()V
    .locals 4

    .prologue
    .line 246
    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 247
    .local v0, index:I
    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mValues:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 248
    const/4 v0, 0x0

    .line 253
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mValue:Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->setBackground(Ljava/lang/String;)V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->this$0:Lcom/oppo/camera/setting/SettingMenuBase;

    iget-object v2, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/setting/SettingMenuBase;->OnSettingsChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void

    .line 250
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0, p0}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    return-void
.end method

.method private setBackground(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->getIndex(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    return-void
.end method


# virtual methods
.method protected getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 262
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 286
    :cond_0
    :goto_0
    return v4

    .line 264
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/oppo/camera/setting/SettingMenuBase$Mutex;->lock(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->this$0:Lcom/oppo/camera/setting/SettingMenuBase;

    iget v0, v0, Lcom/oppo/camera/setting/SettingMenuBase;->mCameraState:I

    if-eq v0, v4, :cond_0

    .line 267
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->this$0:Lcom/oppo/camera/setting/SettingMenuBase;

    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/SettingMenuBase;->actionDown(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->this$0:Lcom/oppo/camera/setting/SettingMenuBase;

    #getter for: Lcom/oppo/camera/setting/SettingMenuBase;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/camera/setting/SettingMenuBase;->access$000(Lcom/oppo/camera/setting/SettingMenuBase;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->this$0:Lcom/oppo/camera/setting/SettingMenuBase;

    #getter for: Lcom/oppo/camera/setting/SettingMenuBase;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/camera/setting/SettingMenuBase;->access$000(Lcom/oppo/camera/setting/SettingMenuBase;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 273
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/oppo/camera/setting/SettingMenuBase$Mutex;->lock(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Lcom/oppo/camera/setting/SettingMenuBase$Mutex;->unLock()V

    .line 277
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->this$0:Lcom/oppo/camera/setting/SettingMenuBase;

    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/SettingMenuBase;->actionUp(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->this$0:Lcom/oppo/camera/setting/SettingMenuBase;

    iget v0, v0, Lcom/oppo/camera/setting/SettingMenuBase;->mCameraState:I

    if-eq v0, v4, :cond_0

    .line 281
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->this$0:Lcom/oppo/camera/setting/SettingMenuBase;

    #getter for: Lcom/oppo/camera/setting/SettingMenuBase;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/camera/setting/SettingMenuBase;->access$000(Lcom/oppo/camera/setting/SettingMenuBase;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->clickRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->mValue:Ljava/lang/String;

    .line 225
    invoke-direct {p0, p1}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->setBackground(Ljava/lang/String;)V

    .line 226
    return-void
.end method
