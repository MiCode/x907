.class Landroid/view/View$MyThread;
.super Ljava/lang/Thread;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 15433
    iput-object p1, p0, Landroid/view/View$MyThread;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 15436
    const/16 v0, 0xff

    .line 15438
    .local v0, alpha:I
    invoke-static {}, Landroid/view/View;->access$2200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 15439
    :try_start_0
    iget-object v2, p0, Landroid/view/View$MyThread;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mPressedDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/view/View;->access$2300(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v3

    .line 15478
    :goto_0
    return-void

    .line 15440
    :cond_0
    iget-object v2, p0, Landroid/view/View$MyThread;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mPressedDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/view/View;->access$2300(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 15441
    iget-object v2, p0, Landroid/view/View$MyThread;->this$0:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->postInvalidate()V

    .line 15442
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15445
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Landroid/view/View$MyThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 15452
    :goto_1
    const/16 v2, 0x64

    if-le v0, v2, :cond_2

    .line 15453
    invoke-static {}, Landroid/view/View;->access$2200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 15454
    :try_start_2
    iget-object v2, p0, Landroid/view/View$MyThread;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mPressedDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/view/View;->access$2300(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 15457
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 15442
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 15446
    :catch_0
    move-exception v1

    .line 15448
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 15455
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    :try_start_4
    iget-object v2, p0, Landroid/view/View$MyThread;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mPressedDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/view/View;->access$2300(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 15456
    iget-object v2, p0, Landroid/view/View$MyThread;->this$0:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->postInvalidate()V

    .line 15457
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15459
    add-int/lit8 v0, v0, -0xf

    .line 15462
    const-wide/16 v2, 0x2

    :try_start_5
    invoke-static {v2, v3}, Landroid/view/View$MyThread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 15463
    :catch_1
    move-exception v1

    .line 15465
    .restart local v1       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 15470
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_2
    invoke-static {}, Landroid/view/View;->access$2200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 15471
    :try_start_6
    iget-object v2, p0, Landroid/view/View$MyThread;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mPressedDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/view/View;->access$2300(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    monitor-exit v3

    goto :goto_0

    .line 15474
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 15472
    :cond_3
    :try_start_7
    iget-object v2, p0, Landroid/view/View$MyThread;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mPressedDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/view/View;->access$2300(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 15473
    iget-object v2, p0, Landroid/view/View$MyThread;->this$0:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->postInvalidate()V

    .line 15474
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 15476
    iget-object v2, p0, Landroid/view/View$MyThread;->this$0:Landroid/view/View;

    const/4 v3, 0x0

    #setter for: Landroid/view/View;->mDrawFlag:Z
    invoke-static {v2, v3}, Landroid/view/View;->access$2402(Landroid/view/View;Z)Z

    .line 15477
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    goto :goto_0
.end method
