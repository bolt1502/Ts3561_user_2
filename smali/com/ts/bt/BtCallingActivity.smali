.class public Lcom/ts/bt/BtCallingActivity;
.super Lcom/ts/bt/BtBaseActivity;
.source "BtCallingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final BT_ACTIVITY_ID:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BtCallingActivity"

.field public static mbShow:Z


# instance fields
.field private final CALL_HOLD_TIME:J

.field private bt:Lcom/ts/bt/BtExe;

.field private mBtnAnswer:Landroid/widget/ImageButton;

.field private mBtnHangup:Landroid/widget/ImageButton;

.field private mBtnMicMute:Landroid/widget/ImageButton;

.field private mBtnSound:Landroid/widget/ImageButton;

.field private mBtnVoiceSW:Landroid/widget/ImageButton;

.field private mHoldBegin:J

.field private mOldSta:I

.field private mStrOldCallName:Ljava/lang/String;

.field private mStrOldNo:Ljava/lang/String;

.field private mStrSta:Ljava/lang/String;

.field private mTvName:Landroid/widget/TextView;

.field private mTvNo:Landroid/widget/TextView;

.field private mTvSta:Landroid/widget/TextView;

.field private mbHold:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/bt/BtBaseActivity;-><init>()V

    .line 35
    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lcom/ts/bt/BtCallingActivity;->CALL_HOLD_TIME:J

    .line 17
    return-void
.end method


# virtual methods
.method ResetSta()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    iput v1, p0, Lcom/ts/bt/BtCallingActivity;->mOldSta:I

    .line 128
    const-string v0, "unkown"

    iput-object v0, p0, Lcom/ts/bt/BtCallingActivity;->mStrOldNo:Ljava/lang/String;

    .line 129
    iput-boolean v1, p0, Lcom/ts/bt/BtCallingActivity;->mbHold:Z

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/bt/BtCallingActivity;->mStrOldCallName:Ljava/lang/String;

    .line 131
    return-void
.end method

.method UpdateCallingUI()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v3, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-wide/16 v7, 0x3c

    .line 136
    iget v1, p0, Lcom/ts/bt/BtCallingActivity;->mOldSta:I

    sget v2, Lcom/ts/bt/BtExe;->mCallSta:I

    if-eq v1, v2, :cond_5

    .line 138
    sget v1, Lcom/ts/bt/BtExe;->mCallSta:I

    if-ne v1, v9, :cond_3

    .line 139
    iget v1, p0, Lcom/ts/bt/BtCallingActivity;->mOldSta:I

    if-le v1, v9, :cond_3

    .line 141
    iput-boolean v9, p0, Lcom/ts/bt/BtCallingActivity;->mbHold:Z

    .line 142
    invoke-static {}, Lcom/ts/bt/BtExe;->getTickCount()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ts/bt/BtCallingActivity;->mHoldBegin:J

    .line 149
    :goto_0
    sget v1, Lcom/ts/bt/BtExe;->mCallSta:I

    iput v1, p0, Lcom/ts/bt/BtCallingActivity;->mOldSta:I

    .line 150
    invoke-virtual {p0}, Lcom/ts/bt/BtCallingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/ts/bt/BtExe;->mCallSta:I

    packed-switch v1, :pswitch_data_0

    .line 166
    const-string v1, ""

    iput-object v1, p0, Lcom/ts/bt/BtCallingActivity;->mStrSta:Ljava/lang/String;

    .line 170
    :goto_1
    iget-boolean v1, p0, Lcom/ts/bt/BtCallingActivity;->mbHold:Z

    if-nez v1, :cond_4

    .line 172
    iget-object v1, p0, Lcom/ts/bt/BtCallingActivity;->mTvSta:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/bt/BtCallingActivity;->mStrSta:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/ts/bt/BtCallingActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->isHaveCall()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 192
    iget-object v1, p0, Lcom/ts/bt/BtCallingActivity;->mStrOldNo:Ljava/lang/String;

    sget-object v2, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ts/bt/BtCallingActivity;->mStrOldNo:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/ts/bt/BtCallingActivity;->mTvNo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/bt/BtCallingActivity;->mStrOldNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/ts/bt/BtCallingActivity;->mStrOldCallName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ts/bt/BtCallingActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v2}, Lcom/ts/bt/BtExe;->GetCallName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 200
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ts/bt/BtCallingActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v2}, Lcom/ts/bt/BtExe;->GetCallName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ts/bt/BtCallingActivity;->mStrOldCallName:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/ts/bt/BtCallingActivity;->mTvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/bt/BtCallingActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v2}, Lcom/ts/bt/BtExe;->GetCallName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :cond_2
    :goto_3
    return-void

    .line 146
    :cond_3
    iput-boolean v10, p0, Lcom/ts/bt/BtCallingActivity;->mbHold:Z

    goto :goto_0

    .line 154
    .restart local v0    # "res":Landroid/content/res/Resources;
    :pswitch_0
    sget v1, Lcom/ts/MainUI/R$string;->str_bt_call_in:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/bt/BtCallingActivity;->mStrSta:Ljava/lang/String;

    goto :goto_1

    .line 158
    :pswitch_1
    sget v1, Lcom/ts/MainUI/R$string;->str_bt_call_out:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/bt/BtCallingActivity;->mStrSta:Ljava/lang/String;

    goto :goto_1

    .line 162
    :pswitch_2
    const-string v1, "%s, %02d:%02d:%02d"

    new-array v2, v3, [Ljava/lang/Object;

    sget v3, Lcom/ts/MainUI/R$string;->str_bt_call_active:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    sget-wide v3, Lcom/ts/bt/BtExe;->mActiveSecond:J

    const-wide/16 v5, 0xe10

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    sget-wide v3, Lcom/ts/bt/BtExe;->mActiveSecond:J

    div-long/2addr v3, v7

    rem-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v11

    const/4 v3, 0x3

    sget-wide v4, Lcom/ts/bt/BtExe;->mActiveSecond:J

    rem-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/bt/BtCallingActivity;->mStrSta:Ljava/lang/String;

    goto/16 :goto_1

    .line 176
    :cond_4
    iget-object v1, p0, Lcom/ts/bt/BtCallingActivity;->mTvSta:Landroid/widget/TextView;

    sget v2, Lcom/ts/MainUI/R$string;->str_bt_call_end:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 182
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_5
    sget v1, Lcom/ts/bt/BtExe;->mCallSta:I

    if-ne v3, v1, :cond_0

    .line 184
    const-string v1, "%s, %02d:%02d:%02d"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/bt/BtCallingActivity;->res:Landroid/content/res/Resources;

    sget v4, Lcom/ts/MainUI/R$string;->str_bt_call_active:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    sget-wide v3, Lcom/ts/bt/BtExe;->mActiveSecond:J

    const-wide/16 v5, 0xe10

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    sget-wide v3, Lcom/ts/bt/BtExe;->mActiveSecond:J

    div-long/2addr v3, v7

    rem-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v11

    const/4 v3, 0x3

    sget-wide v4, Lcom/ts/bt/BtExe;->mActiveSecond:J

    rem-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/bt/BtCallingActivity;->mStrSta:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/ts/bt/BtCallingActivity;->mTvSta:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/bt/BtCallingActivity;->mStrSta:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 206
    :cond_6
    iget-boolean v1, p0, Lcom/ts/bt/BtCallingActivity;->mbHold:Z

    if-eqz v1, :cond_7

    .line 208
    invoke-static {}, Lcom/ts/bt/BtExe;->getTickCount()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ts/bt/BtCallingActivity;->mHoldBegin:J

    const-wide/16 v5, 0xfa0

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 210
    iput-boolean v10, p0, Lcom/ts/bt/BtCallingActivity;->mbHold:Z

    goto/16 :goto_3

    .line 218
    :cond_7
    const-string v1, "BtCallingActivity"

    const-string v2, "Hold\u4e0d\u4f4f\u5566\uff0c\u6d88\u706d\u7a97\u53e3\u662f\u4e5f"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v1, ""

    sput-object v1, Lcom/ts/bt/BtCallingActivity;->mBaseStrDialNo:Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Lcom/ts/bt/BtCallingActivity;->finish()V

    .line 222
    invoke-virtual {p0}, Lcom/ts/bt/BtCallingActivity;->resetBaseActivity()V

    goto/16 :goto_3

    .line 151
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public UserAll()V
    .locals 0

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/ts/bt/BtCallingActivity;->onTimer()V

    .line 236
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 92
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->btBtnCallSound:I

    if-ne v0, v1, :cond_1

    .line 94
    invoke-static {}, Lcom/ts/main/common/MainVolume;->GetInstance()Lcom/ts/main/common/MainVolume;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/main/common/MainVolume;->VolWinShow()V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    sget v1, Lcom/ts/MainUI/R$id;->btBtnCallVoiceSW:I

    if-ne v0, v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/ts/bt/BtCallingActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->audioSwitch()V

    goto :goto_0

    .line 100
    :cond_2
    sget v1, Lcom/ts/MainUI/R$id;->btBtnCallMicMute:I

    if-ne v0, v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/ts/bt/BtCallingActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->micMute()V

    goto :goto_0

    .line 104
    :cond_3
    sget v1, Lcom/ts/MainUI/R$id;->btBtnCallAnswer:I

    if-ne v0, v1, :cond_4

    .line 106
    iget-object v1, p0, Lcom/ts/bt/BtCallingActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->answer()V

    goto :goto_0

    .line 108
    :cond_4
    sget v1, Lcom/ts/MainUI/R$id;->btBtnCallHangup:I

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/ts/bt/BtCallingActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->hangup()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/ts/bt/BtBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lcom/ts/MainUI/R$layout;->activity_bt_calling:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtCallingActivity;->setContentView(I)V

    .line 47
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtCallingActivity;->bt:Lcom/ts/bt/BtExe;

    .line 49
    sget v0, Lcom/ts/MainUI/R$id;->btBtnCallSound:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtCallingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtCallingActivity;->mBtnSound:Landroid/widget/ImageButton;

    .line 50
    sget v0, Lcom/ts/MainUI/R$id;->btBtnCallVoiceSW:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtCallingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtCallingActivity;->mBtnVoiceSW:Landroid/widget/ImageButton;

    .line 51
    sget v0, Lcom/ts/MainUI/R$id;->btBtnCallMicMute:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtCallingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtCallingActivity;->mBtnMicMute:Landroid/widget/ImageButton;

    .line 52
    sget v0, Lcom/ts/MainUI/R$id;->btBtnCallAnswer:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtCallingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtCallingActivity;->mBtnAnswer:Landroid/widget/ImageButton;

    .line 53
    sget v0, Lcom/ts/MainUI/R$id;->btBtnCallHangup:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtCallingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtCallingActivity;->mBtnHangup:Landroid/widget/ImageButton;

    .line 55
    sget v0, Lcom/ts/MainUI/R$id;->btTvCallingName:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtCallingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/bt/BtCallingActivity;->mTvName:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/ts/MainUI/R$id;->btTvCallingNo:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtCallingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/bt/BtCallingActivity;->mTvNo:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/ts/MainUI/R$id;->btTvCallingSta:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtCallingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/bt/BtCallingActivity;->mTvSta:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/ts/bt/BtCallingActivity;->mBtnSound:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/ts/bt/BtCallingActivity;->mBtnVoiceSW:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/ts/bt/BtCallingActivity;->mBtnMicMute:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/ts/bt/BtCallingActivity;->mBtnAnswer:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/ts/bt/BtCallingActivity;->mBtnHangup:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 84
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onPause()V

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/bt/BtCallingActivity;->mbShow:Z

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x3

    invoke-virtual {p0, p0, v0}, Lcom/ts/bt/BtCallingActivity;->SubItemsInit(Landroid/app/Activity;I)V

    .line 72
    invoke-virtual {p0}, Lcom/ts/bt/BtCallingActivity;->ResetSta()V

    .line 73
    invoke-virtual {p0}, Lcom/ts/bt/BtCallingActivity;->UpdateCallingUI()V

    .line 74
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onResume()V

    .line 75
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/bt/BtCallingActivity;->mbShow:Z

    .line 77
    return-void
.end method

.method public onTimer()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/ts/bt/BtCallingActivity;->UpdateCallingUI()V

    .line 123
    return-void
.end method
