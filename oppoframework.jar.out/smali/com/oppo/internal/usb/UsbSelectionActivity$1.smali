.class Lcom/oppo/internal/usb/UsbSelectionActivity$1;
.super Ljava/lang/Object;
.source "UsbSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/internal/usb/UsbSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;


# direct methods
.method constructor <init>(Lcom/oppo/internal/usb/UsbSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oppo/internal/usb/UsbSelectionActivity$1;->this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 76
    sput p2, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelected:I

    .line 77
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity$1;->this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;

    #getter for: Lcom/oppo/internal/usb/UsbSelectionActivity;->mAlwaysUse:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/oppo/internal/usb/UsbSelectionActivity;->access$000(Lcom/oppo/internal/usb/UsbSelectionActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/oppo/internal/usb/UsbSelectionActivity;->saveUsbFuncType(Z)V

    .line 78
    sget v0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelected:I

    invoke-static {v0}, Lcom/oppo/internal/usb/UsbSelectionActivity;->writeUsbFuncType(I)V

    .line 79
    sget v0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelected:I

    sget v1, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelectedBeforeConfirm:I

    if-eq v0, v1, :cond_0

    .line 80
    sget v0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelected:I

    sput v0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelectedBeforeConfirm:I

    .line 81
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity$1;->this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;

    sget v1, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelected:I

    #calls: Lcom/oppo/internal/usb/UsbSelectionActivity;->handleUsbSelected(I)V
    invoke-static {v0, v1}, Lcom/oppo/internal/usb/UsbSelectionActivity;->access$100(Lcom/oppo/internal/usb/UsbSelectionActivity;I)V

    .line 82
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity$1;->this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;

    invoke-virtual {v0}, Lcom/oppo/internal/usb/UsbSelectionActivity;->dismiss()V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity$1;->this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;

    invoke-virtual {v0}, Lcom/oppo/internal/usb/UsbSelectionActivity;->dismiss()V

    goto :goto_0
.end method
