.class public Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanPg3008ScrKeyActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ITEM_DARK:I = 0x8

.field public static final ITEM_DN:I = 0x3

.field public static final ITEM_ESC:I = 0x9

.field public static final ITEM_LT:I = 0x4

.field public static final ITEM_MENU:I = 0x7

.field public static final ITEM_MODE:I = 0x1

.field public static final ITEM_OK:I = 0x6

.field public static final ITEM_RT:I = 0x5

.field public static final ITEM_UP:I = 0x2

.field protected static PRESS_MIN_TIME:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "CanPg3008ScrKeyActivity"


# instance fields
.field private mKey:I

.field protected mLastTick:J

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mfgNeedSendUp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-wide/16 v0, 0x96

    sput-wide v0, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->PRESS_MIN_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 34
    iput v0, p0, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->mKey:I

    .line 36
    iput-boolean v0, p0, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->mfgNeedSendUp:Z

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->mLastTick:J

    .line 18
    return-void
.end method

.method private ResetData(Z)V
    .locals 7
    .param p1, "check"    # Z

    .prologue
    const/4 v6, 0x0

    .line 105
    iget-boolean v0, p0, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->mfgNeedSendUp:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->GetTickCount()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->mLastTick:J

    sget-wide v4, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->PRESS_MIN_TIME:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 109
    iput-boolean v6, p0, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->mfgNeedSendUp:Z

    .line 110
    invoke-virtual {p0, v6}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    .line 113
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
    .line 67
    iget-object v1, p0, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 69
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method protected KeySet(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 243
    invoke-static {p1}, Lcom/lgb/canmodule/CanJni;->Pg3008KeySet(I)V

    .line 244
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->ResetData(Z)V

    .line 171
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 120
    .local v0, "id":I
    iput v0, p0, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->mKey:I

    .line 121
    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 124
    :pswitch_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 128
    :pswitch_1
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 132
    :pswitch_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 136
    :pswitch_3
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 140
    :pswitch_4
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 144
    :pswitch_5
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 148
    :pswitch_6
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 152
    :pswitch_7
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 156
    :pswitch_8
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0xe8

    const/16 v11, 0x2b3

    const/16 v10, 0x1a7

    const/16 v2, 0xbc

    const/16 v3, 0x33

    .line 45
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->setContentView(I)V

    .line 49
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 51
    const/4 v1, 0x1

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_mode_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_mode_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->AddBtn(IIIII)V

    .line 52
    const/4 v5, 0x2

    const/16 v6, 0x1b7

    sget v8, Lcom/ts/MainUI/R$drawable;->can_psa_on_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->can_psa_on_dn:I

    move-object v4, p0

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->AddBtn(IIIII)V

    .line 53
    const/4 v5, 0x7

    sget v8, Lcom/ts/MainUI/R$drawable;->can_psa_menu_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->can_psa_menu_dn:I

    move-object v4, p0

    move v6, v11

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->AddBtn(IIIII)V

    .line 55
    const/4 v1, 0x4

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_left_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_left_dn:I

    move-object v0, p0

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->AddBtn(IIIII)V

    .line 56
    const/4 v4, 0x6

    const/16 v5, 0x1a5

    const/16 v6, 0xaf

    sget v7, Lcom/ts/MainUI/R$drawable;->can_psa_ok_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_psa_ok_dn:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->AddBtn(IIIII)V

    .line 57
    const/4 v4, 0x5

    sget v7, Lcom/ts/MainUI/R$drawable;->can_psa_right_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_psa_right_dn:I

    move-object v3, p0

    move v5, v11

    move v6, v12

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->AddBtn(IIIII)V

    .line 59
    const/16 v1, 0x8

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_dark_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_dark_dn:I

    move-object v0, p0

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->AddBtn(IIIII)V

    .line 60
    const/4 v1, 0x3

    const/16 v2, 0x1b7

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_down_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_down_dn:I

    move-object v0, p0

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->AddBtn(IIIII)V

    .line 61
    const/16 v1, 0x9

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_esc_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_esc_dn:I

    move-object v0, p0

    move v2, v11

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->AddBtn(IIIII)V

    .line 63
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 89
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 90
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 79
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 80
    iput-boolean v1, p0, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->mfgNeedSendUp:Z

    .line 81
    invoke-direct {p0, v1}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->ResetData(Z)V

    .line 82
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 177
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 178
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 180
    const-string v4, "CanPg3008ScrKeyActivity"

    const-string v5, "****ACTION_DOWN*****"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 182
    .local v3, "id":I
    invoke-static {}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->GetTickCount()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->mLastTick:J

    .line 183
    packed-switch v3, :pswitch_data_0

    .line 238
    .end local v3    # "id":I
    :cond_0
    :goto_0
    return v8

    .line 186
    .restart local v3    # "id":I
    :pswitch_0
    invoke-virtual {p0, v9}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 190
    :pswitch_1
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 194
    :pswitch_2
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 198
    :pswitch_3
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 202
    :pswitch_4
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 206
    :pswitch_5
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 210
    :pswitch_6
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 214
    :pswitch_7
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 218
    :pswitch_8
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    goto :goto_0

    .line 225
    .end local v3    # "id":I
    :cond_1
    if-ne v9, v0, :cond_0

    .line 227
    invoke-static {}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->GetTickCount()J

    move-result-wide v1

    .line 228
    .local v1, "curTick":J
    iget-wide v4, p0, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->mLastTick:J

    sget-wide v6, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->PRESS_MIN_TIME:J

    add-long/2addr v4, v6

    cmp-long v4, v1, v4

    if-lez v4, :cond_2

    .line 230
    invoke-virtual {p0, v8}, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->KeySet(I)V

    .line 231
    iput-boolean v8, p0, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->mfgNeedSendUp:Z

    goto :goto_0

    .line 235
    :cond_2
    iput-boolean v9, p0, Lcom/ts/can/psa/pg3008/CanPg3008ScrKeyActivity;->mfgNeedSendUp:Z

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
