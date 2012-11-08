.class Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;
.super Landroid/os/Handler;
.source "SourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/SourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/SourceManager;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/SourceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/SourceManager;Lcom/oppo/camera/rewind/app/SourceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;-><init>(Lcom/oppo/camera/rewind/app/SourceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 106
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;

    .line 108
    .local v1, entry:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 111
    :pswitch_0
    :try_start_0
    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->getThumbnail()Lcom/scalado/base/Image;

    move-result-object v3

    .line 112
    .local v3, image:Lcom/scalado/base/Image;
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mListeners:Ljava/util/Vector;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager;->access$000(Lcom/oppo/camera/rewind/app/SourceManager;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 114
    .local v5, weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;

    .line 115
    .local v4, listener:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;
    if-nez v4, :cond_1

    .line 117
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 124
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;>;"
    .end local v3           #image:Lcom/scalado/base/Image;
    .end local v4           #listener:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;
    .end local v5           #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;"
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager;->access$200(Lcom/oppo/camera/rewind/app/SourceManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 120
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;>;"
    .restart local v3       #image:Lcom/scalado/base/Image;
    .restart local v4       #listener:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;
    .restart local v5       #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;"
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #calls: Lcom/oppo/camera/rewind/app/SourceManager;->getEntryIndex(Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;)I
    invoke-static {v6, v1}, Lcom/oppo/camera/rewind/app/SourceManager;->access$100(Lcom/oppo/camera/rewind/app/SourceManager;Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;)I

    move-result v6

    invoke-interface {v4, v6, v3}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;->onThumbnailReady(ILcom/scalado/base/Image;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 131
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;>;"
    .end local v3           #image:Lcom/scalado/base/Image;
    .end local v4           #listener:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;
    .end local v5           #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;"
    :pswitch_1
    :try_start_2
    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->getBackgroundImage()Lcom/scalado/base/Image;

    move-result-object v3

    .line 132
    .restart local v3       #image:Lcom/scalado/base/Image;
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mListeners:Ljava/util/Vector;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager;->access$000(Lcom/oppo/camera/rewind/app/SourceManager;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 134
    .restart local v5       #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;

    .line 135
    .restart local v4       #listener:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;
    if-nez v4, :cond_2

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 144
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;>;"
    .end local v3           #image:Lcom/scalado/base/Image;
    .end local v4           #listener:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;
    .end local v5           #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;"
    :catch_1
    move-exception v0

    .line 145
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager;->access$200(Lcom/oppo/camera/rewind/app/SourceManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 140
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;>;"
    .restart local v3       #image:Lcom/scalado/base/Image;
    .restart local v4       #listener:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;
    .restart local v5       #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;"
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #calls: Lcom/oppo/camera/rewind/app/SourceManager;->getEntryIndex(Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;)I
    invoke-static {v6, v1}, Lcom/oppo/camera/rewind/app/SourceManager;->access$100(Lcom/oppo/camera/rewind/app/SourceManager;Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;)I

    move-result v6

    invoke-interface {v4, v6, v3}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;->onBackgroundReady(ILcom/scalado/base/Image;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 152
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;>;"
    .end local v3           #image:Lcom/scalado/base/Image;
    .end local v4           #listener:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;
    .end local v5           #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;"
    :pswitch_2
    :try_start_4
    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->getThumbnail()Lcom/scalado/base/Image;

    move-result-object v3

    .line 153
    .restart local v3       #image:Lcom/scalado/base/Image;
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mListeners:Ljava/util/Vector;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager;->access$000(Lcom/oppo/camera/rewind/app/SourceManager;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 155
    .restart local v5       #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;

    .line 156
    .restart local v4       #listener:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;
    if-nez v4, :cond_5

    .line 158
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 165
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;>;"
    .end local v3           #image:Lcom/scalado/base/Image;
    .end local v4           #listener:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;
    .end local v5           #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;"
    :catch_2
    move-exception v0

    .line 166
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager;->access$200(Lcom/oppo/camera/rewind/app/SourceManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->getBackgroundImage()Lcom/scalado/base/Image;

    move-result-object v3

    .line 171
    .restart local v3       #image:Lcom/scalado/base/Image;
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mListeners:Ljava/util/Vector;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager;->access$000(Lcom/oppo/camera/rewind/app/SourceManager;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;>;"
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 172
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 173
    .restart local v5       #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;

    .line 174
    .restart local v4       #listener:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;
    if-nez v4, :cond_6

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 183
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;>;"
    .end local v3           #image:Lcom/scalado/base/Image;
    .end local v4           #listener:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;
    .end local v5           #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;"
    :catch_3
    move-exception v0

    .line 184
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager;->access$200(Lcom/oppo/camera/rewind/app/SourceManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mIsCompleted:Z

    .line 188
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mListeners:Ljava/util/Vector;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager;->access$000(Lcom/oppo/camera/rewind/app/SourceManager;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;>;"
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 190
    .restart local v5       #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;

    .line 191
    .restart local v4       #listener:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;
    if-nez v4, :cond_7

    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 161
    .restart local v3       #image:Lcom/scalado/base/Image;
    :cond_5
    :try_start_6
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #calls: Lcom/oppo/camera/rewind/app/SourceManager;->getEntryIndex(Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;)I
    invoke-static {v6, v1}, Lcom/oppo/camera/rewind/app/SourceManager;->access$100(Lcom/oppo/camera/rewind/app/SourceManager;Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;)I

    move-result v6

    invoke-interface {v4, v6, v3}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;->onThumbnailReady(ILcom/scalado/base/Image;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 179
    :cond_6
    :try_start_7
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #calls: Lcom/oppo/camera/rewind/app/SourceManager;->getEntryIndex(Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;)I
    invoke-static {v6, v1}, Lcom/oppo/camera/rewind/app/SourceManager;->access$100(Lcom/oppo/camera/rewind/app/SourceManager;Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;)I

    move-result v6

    invoke-interface {v4, v6, v3}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;->onBackgroundReady(ILcom/scalado/base/Image;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 196
    .end local v3           #image:Lcom/scalado/base/Image;
    :cond_7
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerHandler;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #calls: Lcom/oppo/camera/rewind/app/SourceManager;->getEntryIndex(Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;)I
    invoke-static {v6, v1}, Lcom/oppo/camera/rewind/app/SourceManager;->access$100(Lcom/oppo/camera/rewind/app/SourceManager;Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;)I

    move-result v6

    invoke-interface {v4, v6}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;->onEntryReady(I)V

    goto :goto_5

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
