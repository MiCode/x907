.class Lcom/oppo/server/storage/OppoStorageFormatter$4;
.super Ljava/lang/Thread;
.source "OppoStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/server/storage/OppoStorageFormatter;->formatExternalSD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

.field final synthetic val$extStoragePath:Ljava/lang/String;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/oppo/server/storage/OppoStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/oppo/server/storage/OppoStorageFormatter$4;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    iput-object p2, p0, Lcom/oppo/server/storage/OppoStorageFormatter$4;->val$mountService:Landroid/os/storage/IMountService;

    iput-object p3, p0, Lcom/oppo/server/storage/OppoStorageFormatter$4;->val$extStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 342
    const/4 v1, 0x0

    .line 344
    .local v1, success:Z
    :try_start_0
    iget-object v2, p0, Lcom/oppo/server/storage/OppoStorageFormatter$4;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/oppo/server/storage/OppoStorageFormatter$4;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    .line 345
    const/4 v1, 0x1

    .line 346
    iget-object v2, p0, Lcom/oppo/server/storage/OppoStorageFormatter$4;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    const/4 v3, 0x1

    #setter for: Lcom/oppo/server/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z
    invoke-static {v2, v3}, Lcom/oppo/server/storage/OppoStorageFormatter;->access$102(Lcom/oppo/server/storage/OppoStorageFormatter;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/oppo/server/storage/OppoStorageFormatter$4;->this$0:Lcom/oppo/server/storage/OppoStorageFormatter;

    const v3, 0x1040470

    invoke-virtual {v2, v3}, Lcom/oppo/server/storage/OppoStorageFormatter;->fail(I)V

    goto :goto_0
.end method
