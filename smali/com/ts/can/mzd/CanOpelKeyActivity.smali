.class public Lcom/ts/can/mzd/CanOpelKeyActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanOpelKeyActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ITEM_BC:I = 0x3

.field public static final ITEM_CDMP3:I = 0x2

.field public static final ITEM_LT:I = 0x4

.field public static final ITEM_NUM1:I = 0x8

.field public static final ITEM_NUM9:I = 0x10

.field public static final ITEM_OK:I = 0x6

.field public static final ITEM_RT:I = 0x5

.field public static final ITEM_SETTING:I = 0x7

.field public static final ITEM_TUNER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanOpelKeyActivity"


# instance fields
.field private mKey:I

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/mzd/CanOpelKeyActivity;->mKey:I

    .line 20
    return-void
.end method

.method private ResetData(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 121
    iget v0, p0, Lcom/ts/can/mzd/CanOpelKeyActivity;->mKey:I

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/mzd/CanOpelKeyActivity;->mKey:I

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method protected AddBtn(IIIII)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "up"    # I
    .param p5, "dn"    # I

    .prologue
    .line 68
    iget-object v1, p0, Lcom/ts/can/mzd/CanOpelKeyActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 69
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method protected AddNumBtn(IIILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v1, p0, Lcom/ts/can/mzd/CanOpelKeyActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 90
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    sget v1, Lcom/ts/MainUI/R$drawable;->can_mzd_digital_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_mzd_digital_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v0, p4}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v3, v1}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 95
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 96
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 97
    return-void
.end method

.method protected AddTextBtn(IIILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-object v1, p0, Lcom/ts/can/mzd/CanOpelKeyActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 78
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 79
    sget v1, Lcom/ts/MainUI/R$drawable;->can_mzd_rect_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_mzd_rect_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v0, p4}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v3, v1}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 83
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 84
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 85
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/mzd/CanOpelKeyActivity;->ResetData(Z)V

    .line 141
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x163

    const/16 v3, 0xd6

    const/16 v4, 0x49

    const/16 v11, 0x1cf

    const/16 v2, 0x3b

    .line 43
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/CanOpelKeyActivity;->setContentView(I)V

    .line 47
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/mzd/CanOpelKeyActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 49
    const/4 v0, 0x1

    const-string v1, "TUNER"

    invoke-virtual {p0, v0, v2, v4, v1}, Lcom/ts/can/mzd/CanOpelKeyActivity;->AddTextBtn(IIILjava/lang/String;)V

    .line 50
    const/4 v0, 0x2

    const-string v1, "CD/MP3"

    invoke-virtual {p0, v0, v11, v4, v1}, Lcom/ts/can/mzd/CanOpelKeyActivity;->AddTextBtn(IIILjava/lang/String;)V

    .line 52
    const/4 v1, 0x4

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_left_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_left_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/mzd/CanOpelKeyActivity;->AddBtn(IIIII)V

    .line 53
    const/4 v5, 0x6

    const/16 v6, 0xf3

    const/16 v7, 0x9d

    sget v8, Lcom/ts/MainUI/R$drawable;->can_psa_ok_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->can_psa_ok_dn:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/mzd/CanOpelKeyActivity;->AddBtn(IIIII)V

    .line 54
    const/4 v5, 0x5

    sget v8, Lcom/ts/MainUI/R$drawable;->can_psa_right_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->can_psa_right_dn:I

    move-object v4, p0

    move v6, v11

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/mzd/CanOpelKeyActivity;->AddBtn(IIIII)V

    .line 56
    const/4 v0, 0x3

    const-string v1, "BC"

    invoke-virtual {p0, v0, v2, v12, v1}, Lcom/ts/can/mzd/CanOpelKeyActivity;->AddTextBtn(IIILjava/lang/String;)V

    .line 57
    const/4 v0, 0x7

    const-string v1, "SETTING"

    invoke-virtual {p0, v0, v11, v12, v1}, Lcom/ts/can/mzd/CanOpelKeyActivity;->AddTextBtn(IIILjava/lang/String;)V

    .line 59
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v0, 0x9

    if-lt v10, v0, :cond_0

    .line 64
    return-void

    .line 61
    :cond_0
    add-int/lit8 v0, v10, 0x8

    rem-int/lit8 v1, v10, 0x3

    mul-int/lit8 v1, v1, 0x69

    add-int/lit16 v1, v1, 0x2a5

    div-int/lit8 v2, v10, 0x3

    mul-int/lit16 v2, v2, 0x98

    add-int/lit8 v2, v2, 0x46

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v10, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/can/mzd/CanOpelKeyActivity;->AddNumBtn(IIILjava/lang/String;)V

    .line 59
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 114
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 115
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 105
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/mzd/CanOpelKeyActivity;->ResetData(Z)V

    .line 107
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 148
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 149
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 151
    const-string v2, "CanOpelKeyActivity"

    const-string v3, "****ACTION_DOWN*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 153
    .local v1, "id":I
    iput v1, p0, Lcom/ts/can/mzd/CanOpelKeyActivity;->mKey:I

    .line 154
    packed-switch v1, :pswitch_data_0

    .line 185
    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    const/16 v2, 0x10

    if-gt v1, v2, :cond_0

    .line 187
    add-int/lit8 v2, v1, 0x8

    add-int/lit8 v2, v2, -0x8

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->MZDSendKey(I)V

    .line 197
    .end local v1    # "id":I
    :cond_0
    :goto_0
    return v4

    .line 157
    .restart local v1    # "id":I
    :pswitch_0
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->MZDSendKey(I)V

    goto :goto_0

    .line 161
    :pswitch_1
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->MZDSendKey(I)V

    goto :goto_0

    .line 165
    :pswitch_2
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->MZDSendKey(I)V

    goto :goto_0

    .line 169
    :pswitch_3
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->MZDSendKey(I)V

    goto :goto_0

    .line 173
    :pswitch_4
    invoke-static {v5}, Lcom/lgb/canmodule/CanJni;->MZDSendKey(I)V

    goto :goto_0

    .line 177
    :pswitch_5
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->MZDSendKey(I)V

    goto :goto_0

    .line 181
    :pswitch_6
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->MZDSendKey(I)V

    goto :goto_0

    .line 192
    .end local v1    # "id":I
    :cond_1
    if-ne v5, v0, :cond_0

    .line 195
    invoke-static {v4}, Lcom/lgb/canmodule/CanJni;->MZDSendKey(I)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
