.class public Lcom/oppo/internal/usb/UsbSelectionDiscription;
.super Ljava/lang/Object;
.source "UsbSelectionDiscription.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbSelectionDiscription"

.field public static final USB_ADB:I = 0x2

.field public static final USB_CHARGE:I = 0x0

.field public static final USB_INTERNET:I = 0x3

.field public static final USB_STORAGE:I = 0x1


# instance fields
.field mDetailText:I

.field mText:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 30
    const v0, 0x10404e1

    iput v0, p0, Lcom/oppo/internal/usb/UsbSelectionDiscription;->mText:I

    .line 31
    const v0, 0x10404e2

    iput v0, p0, Lcom/oppo/internal/usb/UsbSelectionDiscription;->mDetailText:I

    .line 52
    :goto_0
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 35
    const v0, 0x10404e3

    iput v0, p0, Lcom/oppo/internal/usb/UsbSelectionDiscription;->mText:I

    .line 36
    const v0, 0x10404e4

    iput v0, p0, Lcom/oppo/internal/usb/UsbSelectionDiscription;->mDetailText:I

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 40
    const v0, 0x10404e5

    iput v0, p0, Lcom/oppo/internal/usb/UsbSelectionDiscription;->mText:I

    .line 41
    const v0, 0x10404e7

    iput v0, p0, Lcom/oppo/internal/usb/UsbSelectionDiscription;->mDetailText:I

    goto :goto_0

    .line 43
    :cond_2
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    .line 45
    const v0, 0x10404e8

    iput v0, p0, Lcom/oppo/internal/usb/UsbSelectionDiscription;->mText:I

    .line 46
    const v0, 0x10404e9

    iput v0, p0, Lcom/oppo/internal/usb/UsbSelectionDiscription;->mDetailText:I

    goto :goto_0

    .line 50
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/ASSERT;->ASSERT(Z)V

    goto :goto_0
.end method
