.class Landroid/webkit/WebView$InvokeListBox;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvokeListBox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;,
        Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;,
        Landroid/webkit/WebView$InvokeListBox$Container;
    }
.end annotation


# instance fields
.field private mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

.field private mMultiple:Z

.field private mSelectedArray:[I

.field private mSelection:I

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[II)V
    .locals 5
    .parameter
    .parameter "array"
    .parameter "enabled"
    .parameter "selection"

    .prologue
    .line 9681
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9682
    iput p4, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    .line 9683
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    .line 9685
    array-length v1, p2

    .line 9686
    .local v1, length:I
    new-array v2, v1, [Landroid/webkit/WebView$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    .line 9687
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 9688
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$InvokeListBox$Container;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$1;)V

    aput-object v3, v2, v0

    .line 9689
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 9690
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    .line 9691
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mId:I

    .line 9687
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9693
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[IILandroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 9523
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[II)V

    return-void
.end method

.method private constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[I)V
    .locals 5
    .parameter
    .parameter "array"
    .parameter "enabled"
    .parameter "selected"

    .prologue
    .line 9667
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9668
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    .line 9669
    iput-object p4, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    .line 9671
    array-length v1, p2

    .line 9672
    .local v1, length:I
    new-array v2, v1, [Landroid/webkit/WebView$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    .line 9673
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 9674
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$InvokeListBox$Container;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$1;)V

    aput-object v3, v2, v0

    .line 9675
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 9676
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    .line 9677
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mId:I

    .line 9673
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9679
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[ILandroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 9523
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[I)V

    return-void
.end method

.method static synthetic access$10400(Landroid/webkit/WebView$InvokeListBox;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 9523
    iget-boolean v0, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    return v0
.end method

.method static synthetic access$10500(Landroid/webkit/WebView$InvokeListBox;)[Landroid/webkit/WebView$InvokeListBox$Container;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9523
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 9740
    iget-object v3, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebView;->access$11000(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900dc

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 9742
    .local v1, listView:Landroid/widget/ListView;
    new-instance v7, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;

    invoke-direct {v7, p0}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    .line 9744
    .local v7, adapter:Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebView;->access$11100(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9745
    .local v0, b:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->getOppoManufacture()Z
    invoke-static {v3}, Landroid/webkit/WebView;->access$3300(Landroid/webkit/WebView;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    move v4, v2

    move v5, v2

    .line 9746
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 9752
    :goto_0
    iget-object v3, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->getOppoManufacture()Z
    invoke-static {v3}, Landroid/webkit/WebView;->access$3300(Landroid/webkit/WebView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9753
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 9756
    :cond_0
    iget-boolean v3, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    if-eqz v3, :cond_1

    .line 9757
    const v3, 0x104000a

    new-instance v4, Landroid/webkit/WebView$InvokeListBox$1;

    invoke-direct {v4, p0, v7, v1}, Landroid/webkit/WebView$InvokeListBox$1;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9764
    const/high16 v3, 0x104

    new-instance v4, Landroid/webkit/WebView$InvokeListBox$2;

    invoke-direct {v4, p0}, Landroid/webkit/WebView$InvokeListBox$2;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9772
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    #setter for: Landroid/webkit/WebView;->mListBoxDialog:Landroid/app/AlertDialog;
    invoke-static {v3, v4}, Landroid/webkit/WebView;->access$11202(Landroid/webkit/WebView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 9774
    iget-object v3, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->getOppoManufacture()Z
    invoke-static {v3}, Landroid/webkit/WebView;->access$3300(Landroid/webkit/WebView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9775
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 9778
    :cond_2
    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9779
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 9786
    iget-boolean v3, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    if-nez v3, :cond_3

    move v2, v6

    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 9787
    iget-boolean v3, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    if-eqz v3, :cond_5

    .line 9788
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 9789
    iget-object v3, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    array-length v9, v3

    .line 9790
    .local v9, length:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_6

    .line 9791
    iget-object v3, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    aget v3, v3, v8

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9790
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 9748
    .end local v8           #i:I
    .end local v9           #length:I
    :cond_4
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 9794
    :cond_5
    :try_start_1
    new-instance v3, Landroid/webkit/WebView$InvokeListBox$3;

    invoke-direct {v3, p0}, Landroid/webkit/WebView$InvokeListBox$3;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9805
    iget v3, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    if-eq v3, v10, :cond_6

    .line 9806
    iget v3, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 9807
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 9808
    iget v3, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 9809
    new-instance v2, Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;

    iget v3, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v7, v3}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getItemId(I)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;-><init>(Landroid/webkit/WebView$InvokeListBox;JLandroid/widget/ListView;Landroid/widget/Adapter;)V

    .line 9811
    .local v2, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v7, v2}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 9814
    .end local v2           #observer:Landroid/database/DataSetObserver;
    :cond_6
    iget-object v3, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mListBoxDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Landroid/webkit/WebView;->access$11200(Landroid/webkit/WebView;)Landroid/app/AlertDialog;

    move-result-object v3

    new-instance v4, Landroid/webkit/WebView$InvokeListBox$4;

    invoke-direct {v4, p0}, Landroid/webkit/WebView$InvokeListBox$4;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 9821
    iget-object v3, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mListBoxDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Landroid/webkit/WebView;->access$11200(Landroid/webkit/WebView;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9825
    :goto_2
    return-void

    .line 9822
    :catch_0
    move-exception v3

    goto :goto_2
.end method
