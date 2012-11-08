.class Lcom/oppo/camera/setting/SettingMenuBase$SettingItem$1;
.super Ljava/lang/Object;
.source "SettingMenuBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;


# direct methods
.method constructor <init>(Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem$1;->this$1:Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem$1;->this$1:Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;

    #calls: Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->handleClick()V
    invoke-static {v0}, Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;->access$100(Lcom/oppo/camera/setting/SettingMenuBase$SettingItem;)V

    .line 294
    return-void
.end method
