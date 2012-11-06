.class Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity$1;
.super Ljava/lang/Object;
.source "BluetoothOppIncomingCalendarFileActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v2, "BluetoothOppIncomingCalendarFileActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick:arg2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " arg3="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-wide/16 v2, 0x1

    cmp-long v2, v2, p4

    if-nez v2, :cond_0

    .line 116
    const-string v2, "BluetoothOppIncomingCalendarFileActivity"

    const-string v3, "just save as file"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->finish()V

    .line 135
    return-void

    .line 120
    :cond_0
    const-string v2, "BluetoothOppIncomingCalendarFileActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "import to calendar:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->filename:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->access$000(Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.IMPORT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->filename:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->access$000(Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "*/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "BluetoothOppIncomingCalendarFileActivity"

    const-string v3, "no calendar-import activity"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
