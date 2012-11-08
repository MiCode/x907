.class Lcom/oppo/camera/views/FocusSurfaceView$1;
.super Landroid/os/Handler;
.source "FocusSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/views/FocusSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/views/FocusSurfaceView;


# direct methods
.method constructor <init>(Lcom/oppo/camera/views/FocusSurfaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/oppo/camera/views/FocusSurfaceView$1;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, canvas:Landroid/graphics/Canvas;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView$1;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    #getter for: Lcom/oppo/camera/views/FocusSurfaceView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/oppo/camera/views/FocusSurfaceView;->access$400(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView$1;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    #getter for: Lcom/oppo/camera/views/FocusSurfaceView;->mPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/oppo/camera/views/FocusSurfaceView;->access$500(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 191
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView$1;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    #getter for: Lcom/oppo/camera/views/FocusSurfaceView;->mFocusSuccessNP:Landroid/graphics/NinePatch;
    invoke-static {v1}, Lcom/oppo/camera/views/FocusSurfaceView;->access$700(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/graphics/NinePatch;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/views/FocusSurfaceView$1;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    #getter for: Lcom/oppo/camera/views/FocusSurfaceView;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/oppo/camera/views/FocusSurfaceView;->access$600(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 192
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView$1;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    #getter for: Lcom/oppo/camera/views/FocusSurfaceView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/oppo/camera/views/FocusSurfaceView;->access$400(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView$1;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    #getter for: Lcom/oppo/camera/views/FocusSurfaceView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/oppo/camera/views/FocusSurfaceView;->access$400(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView$1;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    #getter for: Lcom/oppo/camera/views/FocusSurfaceView;->mPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/oppo/camera/views/FocusSurfaceView;->access$500(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 199
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView$1;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    #getter for: Lcom/oppo/camera/views/FocusSurfaceView;->mFocusFailNP:Landroid/graphics/NinePatch;
    invoke-static {v1}, Lcom/oppo/camera/views/FocusSurfaceView;->access$800(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/graphics/NinePatch;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/views/FocusSurfaceView$1;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    #getter for: Lcom/oppo/camera/views/FocusSurfaceView;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/oppo/camera/views/FocusSurfaceView;->access$600(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 200
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView$1;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    #getter for: Lcom/oppo/camera/views/FocusSurfaceView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/oppo/camera/views/FocusSurfaceView;->access$400(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView$1;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    #getter for: Lcom/oppo/camera/views/FocusSurfaceView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/oppo/camera/views/FocusSurfaceView;->access$400(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView$1;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    #getter for: Lcom/oppo/camera/views/FocusSurfaceView;->mPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/oppo/camera/views/FocusSurfaceView;->access$500(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 207
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView$1;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    #getter for: Lcom/oppo/camera/views/FocusSurfaceView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/oppo/camera/views/FocusSurfaceView;->access$400(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
