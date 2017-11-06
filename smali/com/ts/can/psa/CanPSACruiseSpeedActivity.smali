.class public Lcom/ts/can/psa/CanPSACruiseSpeedActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanPSACruiseSpeedActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/canview/CanNumInuptDlg$onInputOK;


# static fields
.field public static final ITEM_OK:I = 0xb

.field public static final ITEM_RESET:I = 0xa

.field public static final ITEM_VAL_BASE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanPSACruiseSpeedActivity"


# instance fields
.field private mBtnSpeed:[Lcom/ts/other/ParamButton;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

.field protected mbModify:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 30
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    .line 20
    return-void
.end method

.method private ResetData(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    .line 107
    iget-boolean v1, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mbModify:Z

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->PSAGetCruiseSpeed(Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;)V

    .line 110
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->Update:I

    invoke-static {v1}, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    const/4 v2, 0x0

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->Update:I

    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    .line 122
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 117
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mBtnSpeed:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    iget-object v3, v3, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->Data:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected AddCtrlBtn(IIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "id"    # I
    .param p4, "text"    # I

    .prologue
    const/4 v4, 0x0

    .line 72
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x8f

    const/16 v3, 0x4a

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 73
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget v1, Lcom/ts/MainUI/R$drawable;->can_psa_c4l_rect_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_psa_c4l_rect_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 76
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 77
    const v1, 0x41b89d8a

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextSize(F)V

    .line 78
    const/4 v1, 0x5

    invoke-virtual {v0, v4, v1, v4, v4}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 79
    invoke-virtual {v0, p4}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 80
    return-void
.end method

.method protected AddValBtn(III)Lcom/ts/other/ParamButton;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "id"    # I

    .prologue
    .line 61
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 62
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    sget v1, Lcom/ts/MainUI/R$drawable;->can_psa_yuan_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_psa_yuan_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 65
    const/high16 v1, -0x1000000

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setColorUpDn(II)V

    .line 66
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextSize(F)V

    .line 67
    return-object v0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->ResetData(Z)V

    .line 162
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 169
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 133
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 146
    if-lt v0, v3, :cond_0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 148
    new-instance v1, Lcom/ts/canview/CanNumInuptDlg;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p0, v2, v0}, Lcom/ts/canview/CanNumInuptDlg;-><init>(Landroid/content/Context;Lcom/ts/canview/CanNumInuptDlg$onInputOK;II)V

    .line 149
    iput-boolean v3, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mbModify:Z

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iput-boolean v2, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mbModify:Z

    .line 137
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    invoke-static {v1, v3}, Lcom/lgb/canmodule/CanJni;->PSACruiseSpeedSet(Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;I)V

    goto :goto_0

    .line 141
    :pswitch_1
    iput-boolean v2, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mbModify:Z

    .line 142
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->PSACruiseSpeedSet(Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;I)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x1b6

    const/4 v5, 0x6

    .line 40
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->setContentView(I)V

    .line 44
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 46
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0xb4

    const/16 v3, 0x69

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_c4l_bg:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 48
    new-array v1, v5, [Lcom/ts/other/ParamButton;

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mBtnSpeed:[Lcom/ts/other/ParamButton;

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 54
    const/16 v1, 0xf3

    const/16 v2, 0xa

    sget v3, Lcom/ts/MainUI/R$string;->can_setup_reset:I

    invoke-virtual {p0, v1, v6, v2, v3}, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->AddCtrlBtn(IIII)V

    .line 55
    const/16 v1, 0x27f

    const/16 v2, 0xb

    sget v3, Lcom/ts/MainUI/R$string;->can_confirm:I

    invoke-virtual {p0, v1, v6, v2, v3}, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->AddCtrlBtn(IIII)V

    .line 57
    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mBtnSpeed:[Lcom/ts/other/ParamButton;

    rem-int/lit8 v2, v0, 0x3

    mul-int/lit16 v2, v2, 0xc3

    add-int/lit16 v2, v2, 0x10e

    div-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x79

    add-int/lit8 v3, v3, 0x58

    add-int/lit8 v3, v3, 0x32

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->AddValBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onOK(Ljava/lang/String;II)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "num"    # I
    .param p3, "id"    # I

    .prologue
    .line 175
    const/16 v0, 0xff

    if-le p2, v0, :cond_0

    .line 177
    const/16 p2, 0xff

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    iget-object v0, v0, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->Data:[I

    add-int/lit8 v1, p3, -0x1

    aput p2, v0, v1

    .line 181
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->mBtnSpeed:[Lcom/ts/other/ParamButton;

    add-int/lit8 v1, p3, -0x1

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 99
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 87
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 88
    invoke-direct {p0, v1}, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;->ResetData(Z)V

    .line 89
    const/16 v0, 0x3d

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSAQuery(II)V

    .line 90
    return-void
.end method
