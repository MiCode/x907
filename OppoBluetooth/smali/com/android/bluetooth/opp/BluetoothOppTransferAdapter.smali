.class public Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BluetoothOppTransferAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 67
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 25
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 75
    .local v11, r:Landroid/content/res/Resources;
    const v21, 0x7f060003

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 76
    .local v10, iv:Landroid/widget/ImageView;
    const-string v21, "status"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 77
    .local v13, status:I
    const-string v21, "direction"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 78
    .local v9, dir:I
    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 79
    const v21, 0x1080078

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    :goto_0
    const v21, 0x7f060004

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 90
    .local v20, tv:Landroid/widget/TextView;
    const-string v21, "hint"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 92
    .local v17, title:Ljava/lang/String;
    if-nez v17, :cond_0

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f040036

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 95
    :cond_0
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v21, 0x7f060005

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20           #tv:Landroid/widget/TextView;
    check-cast v20, Landroid/widget/TextView;

    .line 99
    .restart local v20       #tv:Landroid/widget/TextView;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 100
    .local v3, adapter:Landroid/bluetooth/BluetoothAdapter;
    const-string v21, "destination"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 101
    .local v7, destinationColumnId:I
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    .line 103
    .local v12, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {p2 .. p2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, deviceName:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const-string v21, "total_bytes"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 108
    .local v18, totalBytes:J
    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 109
    const v21, 0x7f060007

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20           #tv:Landroid/widget/TextView;
    check-cast v20, Landroid/widget/TextView;

    .line 110
    .restart local v20       #tv:Landroid/widget/TextView;
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13, v8}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :goto_1
    const-string v21, "timestamp"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 126
    .local v6, dateColumnId:I
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 127
    .local v15, time:J
    new-instance v5, Ljava/util/Date;

    move-wide v0, v15

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 128
    .local v5, d:Ljava/util/Date;
    invoke-static/range {v15 .. v16}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 130
    .local v14, str:Ljava/lang/CharSequence;
    :goto_2
    const v21, 0x7f060006

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20           #tv:Landroid/widget/TextView;
    check-cast v20, Landroid/widget/TextView;

    .line 131
    .restart local v20       #tv:Landroid/widget/TextView;
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .end local v5           #d:Ljava/util/Date;
    .end local v6           #dateColumnId:I
    .end local v14           #str:Ljava/lang/CharSequence;
    .end local v15           #time:J
    :cond_1
    return-void

    .line 81
    .end local v3           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v7           #destinationColumnId:I
    .end local v8           #deviceName:Ljava/lang/String;
    .end local v12           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v17           #title:Ljava/lang/String;
    .end local v18           #totalBytes:J
    .end local v20           #tv:Landroid/widget/TextView;
    :cond_2
    if-nez v9, :cond_3

    .line 82
    const v21, 0x1080089

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 84
    :cond_3
    const v21, 0x1080082

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 115
    .restart local v3       #adapter:Landroid/bluetooth/BluetoothAdapter;
    .restart local v7       #destinationColumnId:I
    .restart local v8       #deviceName:Ljava/lang/String;
    .restart local v12       #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    .restart local v17       #title:Ljava/lang/String;
    .restart local v18       #totalBytes:J
    .restart local v20       #tv:Landroid/widget/TextView;
    :cond_4
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_5

    .line 116
    const v21, 0x7f040052

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, completeText:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 119
    .end local v4           #completeText:Ljava/lang/String;
    :cond_5
    const v21, 0x7f040053

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #completeText:Ljava/lang/String;
    goto :goto_3

    .line 128
    .end local v4           #completeText:Ljava/lang/String;
    .restart local v5       #d:Ljava/util/Date;
    .restart local v6       #dateColumnId:I
    .restart local v15       #time:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2
.end method
