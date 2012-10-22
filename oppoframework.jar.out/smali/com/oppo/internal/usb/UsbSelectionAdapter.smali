.class Lcom/oppo/internal/usb/UsbSelectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "UsbSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/internal/usb/UsbSelectionAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/internal/usb/UsbSelectionDiscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/internal/usb/UsbSelectionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/internal/usb/UsbSelectionDiscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/internal/usb/UsbSelectionDiscription;>;"
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionAdapter;->mList:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/oppo/internal/usb/UsbSelectionAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/oppo/internal/usb/UsbSelectionAdapter;->mList:Ljava/util/List;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 79
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 96
    if-nez p2, :cond_0

    .line 97
    iget-object v1, p0, Lcom/oppo/internal/usb/UsbSelectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109010c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 101
    new-instance v0, Lcom/oppo/internal/usb/UsbSelectionAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/oppo/internal/usb/UsbSelectionAdapter$ViewHolder;-><init>()V

    .line 102
    .local v0, holder:Lcom/oppo/internal/usb/UsbSelectionAdapter$ViewHolder;
    const v1, 0x102044b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/oppo/internal/usb/UsbSelectionAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 103
    const v1, 0x102044c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/oppo/internal/usb/UsbSelectionAdapter$ViewHolder;->detailText:Landroid/widget/TextView;

    .line 104
    const v1, 0x102044d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/oppo/internal/usb/UsbSelectionAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 106
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    :goto_0
    iget-object v2, v0, Lcom/oppo/internal/usb/UsbSelectionAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oppo/internal/usb/UsbSelectionAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/internal/usb/UsbSelectionDiscription;

    iget v1, v1, Lcom/oppo/internal/usb/UsbSelectionDiscription;->mText:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v2, v0, Lcom/oppo/internal/usb/UsbSelectionAdapter$ViewHolder;->detailText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oppo/internal/usb/UsbSelectionAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/internal/usb/UsbSelectionDiscription;

    iget v1, v1, Lcom/oppo/internal/usb/UsbSelectionDiscription;->mDetailText:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    sget v1, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelected:I

    if-ne v1, p1, :cond_1

    .line 119
    iget-object v1, v0, Lcom/oppo/internal/usb/UsbSelectionAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    :goto_1
    return-object p2

    .line 110
    .end local v0           #holder:Lcom/oppo/internal/usb/UsbSelectionAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/internal/usb/UsbSelectionAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/oppo/internal/usb/UsbSelectionAdapter$ViewHolder;
    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, v0, Lcom/oppo/internal/usb/UsbSelectionAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public setSelectionList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/internal/usb/UsbSelectionDiscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/internal/usb/UsbSelectionDiscription;>;"
    iput-object p1, p0, Lcom/oppo/internal/usb/UsbSelectionAdapter;->mList:Ljava/util/List;

    .line 37
    return-void
.end method
