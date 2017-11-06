.class public Lcom/ts/can/mzd/CanMZDKeyActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanMZDKeyActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ITEM_CLOCK:I = 0x2

.field public static final ITEM_HOUR:I = 0x1

.field public static final ITEM_MIN:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CanMZDKeyActivity"


# instance fields
.field private mKey:I

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/mzd/CanMZDKeyActivity;->mKey:I

    .line 20
    return-void
.end method

.method private ResetData(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 93
    iget v0, p0, Lcom/ts/can/mzd/CanMZDKeyActivity;->mKey:I

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/mzd/CanMZDKeyActivity;->mKey:I

    .line 97
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
    .line 53
    iget-object v1, p0, Lcom/ts/can/mzd/CanMZDKeyActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 55
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 56
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 58
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

    .line 62
    iget-object v1, p0, Lcom/ts/can/mzd/CanMZDKeyActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 63
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 64
    sget v1, Lcom/ts/MainUI/R$drawable;->can_mzd_rect_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_mzd_rect_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {v0, p4}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v3, v1}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 68
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 69
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 70
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/mzd/CanMZDKeyActivity;->ResetData(Z)V

    .line 120
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 104
    .local v0, "id":I
    iput v0, p0, Lcom/ts/can/mzd/CanMZDKeyActivity;->mKey:I

    .line 111
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0xf0

    .line 38
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/CanMZDKeyActivity;->setContentView(I)V

    .line 42
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/mzd/CanMZDKeyActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 44
    const/4 v0, 0x1

    const/16 v1, 0xed

    const-string v2, "Hour"

    invoke-virtual {p0, v0, v1, v6, v2}, Lcom/ts/can/mzd/CanMZDKeyActivity;->AddTextBtn(IIILjava/lang/String;)V

    .line 45
    const/4 v1, 0x2

    const/16 v2, 0x1a5

    const/16 v3, 0xb9

    sget v4, Lcom/ts/MainUI/R$drawable;->can_mzd_clock_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_mzd_clock_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/mzd/CanMZDKeyActivity;->AddBtn(IIIII)V

    .line 46
    const/4 v0, 0x3

    const/16 v1, 0x281

    const-string v2, "Min"

    invoke-virtual {p0, v0, v1, v6, v2}, Lcom/ts/can/mzd/CanMZDKeyActivity;->AddTextBtn(IIILjava/lang/String;)V

    .line 49
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 86
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 87
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 77
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/mzd/CanMZDKeyActivity;->ResetData(Z)V

    .line 79
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 127
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 129
    const-string v2, "CanMZDKeyActivity"

    const-string v3, "****ACTION_DOWN*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 131
    .local v1, "id":I
    packed-switch v1, :pswitch_data_0

    .line 153
    .end local v1    # "id":I
    :cond_0
    :goto_0
    return v4

    .line 134
    .restart local v1    # "id":I
    :pswitch_0
    const/16 v2, 0x40

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->MZDSendKey(I)V

    goto :goto_0

    .line 138
    :pswitch_1
    const/16 v2, 0x20

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->MZDSendKey(I)V

    goto :goto_0

    .line 142
    :pswitch_2
    const/16 v2, 0x80

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->MZDSendKey(I)V

    goto :goto_0

    .line 149
    .end local v1    # "id":I
    :cond_1
    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 151
    invoke-static {v4}, Lcom/lgb/canmodule/CanJni;->MZDSendKey(I)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
