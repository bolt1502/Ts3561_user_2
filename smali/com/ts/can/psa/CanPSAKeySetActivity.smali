.class public Lcom/ts/can/psa/CanPSAKeySetActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanPSAKeySetActivity.java"

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

.field public static final TAG:Ljava/lang/String; = "CanPSAKeySetActivity"


# instance fields
.field private mKey:I

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/psa/CanPSAKeySetActivity;->mKey:I

    .line 18
    return-void
.end method

.method private ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    const/4 v1, 0x0

    .line 91
    iget v0, p0, Lcom/ts/can/psa/CanPSAKeySetActivity;->mKey:I

    if-eqz v0, :cond_0

    .line 93
    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    .line 94
    iput v1, p0, Lcom/ts/can/psa/CanPSAKeySetActivity;->mKey:I

    .line 96
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
    .line 63
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAKeySetActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 65
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/psa/CanPSAKeySetActivity;->ResetData(Z)V

    .line 154
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 103
    .local v0, "id":I
    iput v0, p0, Lcom/ts/can/psa/CanPSAKeySetActivity;->mKey:I

    .line 104
    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 107
    :pswitch_0
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 111
    :pswitch_1
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 115
    :pswitch_2
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 119
    :pswitch_3
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 123
    :pswitch_4
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 127
    :pswitch_5
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 131
    :pswitch_6
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 135
    :pswitch_7
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 139
    :pswitch_8
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 104
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

    .line 41
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSAKeySetActivity;->setContentView(I)V

    .line 45
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAKeySetActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 47
    const/4 v1, 0x1

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_mode_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_mode_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/CanPSAKeySetActivity;->AddBtn(IIIII)V

    .line 48
    const/4 v5, 0x2

    const/16 v6, 0x1b7

    sget v8, Lcom/ts/MainUI/R$drawable;->can_psa_on_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->can_psa_on_dn:I

    move-object v4, p0

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/psa/CanPSAKeySetActivity;->AddBtn(IIIII)V

    .line 49
    const/4 v5, 0x7

    sget v8, Lcom/ts/MainUI/R$drawable;->can_psa_menu_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->can_psa_menu_dn:I

    move-object v4, p0

    move v6, v11

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/psa/CanPSAKeySetActivity;->AddBtn(IIIII)V

    .line 51
    const/4 v1, 0x4

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_left_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_left_dn:I

    move-object v0, p0

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/CanPSAKeySetActivity;->AddBtn(IIIII)V

    .line 52
    const/4 v4, 0x6

    const/16 v5, 0x1a5

    const/16 v6, 0xaf

    sget v7, Lcom/ts/MainUI/R$drawable;->can_psa_ok_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_psa_ok_dn:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/psa/CanPSAKeySetActivity;->AddBtn(IIIII)V

    .line 53
    const/4 v4, 0x5

    sget v7, Lcom/ts/MainUI/R$drawable;->can_psa_right_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_psa_right_dn:I

    move-object v3, p0

    move v5, v11

    move v6, v12

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/psa/CanPSAKeySetActivity;->AddBtn(IIIII)V

    .line 55
    const/16 v1, 0x8

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_dark_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_dark_dn:I

    move-object v0, p0

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/CanPSAKeySetActivity;->AddBtn(IIIII)V

    .line 56
    const/4 v1, 0x3

    const/16 v2, 0x1b7

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_down_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_down_dn:I

    move-object v0, p0

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/CanPSAKeySetActivity;->AddBtn(IIIII)V

    .line 57
    const/16 v1, 0x9

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_esc_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_esc_dn:I

    move-object v0, p0

    move v2, v11

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/CanPSAKeySetActivity;->AddBtn(IIIII)V

    .line 59
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
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 85
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 75
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/psa/CanPSAKeySetActivity;->ResetData(Z)V

    .line 77
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 160
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 161
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 163
    const-string v2, "CanPSAKeySetActivity"

    const-string v3, "****ACTION_DOWN*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 165
    .local v1, "id":I
    packed-switch v1, :pswitch_data_0

    .line 211
    .end local v1    # "id":I
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 168
    .restart local v1    # "id":I
    :pswitch_0
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 172
    :pswitch_1
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 176
    :pswitch_2
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 180
    :pswitch_3
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 184
    :pswitch_4
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 188
    :pswitch_5
    const/16 v2, 0x9

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 192
    :pswitch_6
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 196
    :pswitch_7
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 200
    :pswitch_8
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->PSAKeySet(I)V

    goto :goto_0

    .line 165
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
