.class public Lcom/ts/can/psa/CanPSAMemTabActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanPSAMemTabActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/canview/CanNumInuptDlg$onInputOK;


# static fields
.field public static final ITEM_OK:I = 0xb

.field public static final ITEM_RESET:I = 0xa

.field public static final ITEM_SUBCHK_BASE:I = 0x10

.field public static final ITEM_TOP_CHK:I = 0xc

.field public static final ITEM_VAL_BASE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanPSAMemTabActivity"


# instance fields
.field private mBtnSpeed:[Lcom/ts/other/ParamButton;

.field private mBtnSubChk:[Lcom/ts/other/ParamButton;

.field private mBtnTopChk:Lcom/ts/other/ParamButton;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

.field protected mbModify:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    .line 24
    return-void
.end method

.method private ResetData(Z)V
    .locals 5
    .param p1, "check"    # Z

    .prologue
    const/4 v4, 0x5

    .line 142
    iget-boolean v1, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mbModify:Z

    if-nez v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->PSAGetMemTab(Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;)V

    .line 145
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/psa/CanPSAMemTabActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->Update:I

    invoke-static {v1}, Lcom/ts/can/psa/CanPSAMemTabActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    const/4 v2, 0x0

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->Update:I

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_2

    .line 156
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->fgTabAvalid:I

    invoke-direct {p0, v4, v1}, Lcom/ts/can/psa/CanPSAMemTabActivity;->SetChk(II)V

    .line 160
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 152
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mBtnSpeed:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    iget-object v3, v3, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->Data:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->fgDatAvalid:[I

    aget v1, v1, v0

    invoke-direct {p0, v0, v1}, Lcom/ts/can/psa/CanPSAMemTabActivity;->SetChk(II)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private SetChk(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "chk"    # I

    .prologue
    .line 165
    const-string v1, "CanPSAMemTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetChk index = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", chk = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "btn":Lcom/ts/other/ParamButton;
    const/4 v1, 0x5

    if-ne v1, p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mBtnTopChk:Lcom/ts/other/ParamButton;

    .line 176
    :goto_0
    if-nez p2, :cond_1

    .line 178
    sget v1, Lcom/ts/MainUI/R$drawable;->can_psa_c4l_hook_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_psa_c4l_hook_up:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 184
    :goto_1
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->invalidate()V

    .line 185
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mBtnSubChk:[Lcom/ts/other/ParamButton;

    aget-object v0, v1, p1

    goto :goto_0

    .line 182
    :cond_1
    sget v1, Lcom/ts/MainUI/R$drawable;->can_psa_c4l_hook_dn:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_psa_c4l_hook_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    goto :goto_1
.end method


# virtual methods
.method protected AddChkBtn(III)Lcom/ts/other/ParamButton;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "id"    # I

    .prologue
    .line 98
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x2e

    const/16 v3, 0x2d

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 99
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget v1, Lcom/ts/MainUI/R$drawable;->can_psa_c4l_hook_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_psa_c4l_hook_up:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 102
    return-object v0
.end method

.method protected AddCtrlBtn(IIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "id"    # I
    .param p4, "text"    # I

    .prologue
    const/4 v4, 0x0

    .line 107
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x8f

    const/16 v3, 0x4a

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 108
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget v1, Lcom/ts/MainUI/R$drawable;->can_psa_c4l_rect_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_psa_c4l_rect_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 111
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 112
    const v1, 0x41b89d8a

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextSize(F)V

    .line 113
    const/4 v1, 0x5

    invoke-virtual {v0, v4, v1, v4, v4}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 114
    invoke-virtual {v0, p4}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 115
    return-void
.end method

.method protected AddValBtn(III)Lcom/ts/other/ParamButton;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 85
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x6e

    const/16 v3, 0x38

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 86
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget v1, Lcom/ts/MainUI/R$drawable;->can_psa_c4l_box:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_psa_c4l_box:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 89
    const/4 v1, -0x1

    const/high16 v2, -0x10000

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setColorUpDn(II)V

    .line 90
    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v4, v1}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 91
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setGravity(I)V

    .line 92
    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 93
    return-object v0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/psa/CanPSAMemTabActivity;->ResetData(Z)V

    .line 235
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 242
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 193
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 212
    if-lt v0, v4, :cond_1

    const/4 v2, 0x6

    if-gt v0, v2, :cond_1

    .line 214
    new-instance v2, Lcom/ts/canview/CanNumInuptDlg;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/ts/canview/CanNumInuptDlg;-><init>(Landroid/content/Context;Lcom/ts/canview/CanNumInuptDlg$onInputOK;II)V

    .line 215
    iput-boolean v4, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mbModify:Z

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 196
    :pswitch_0
    iput-boolean v3, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mbModify:Z

    .line 197
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    invoke-static {v2, v4}, Lcom/lgb/canmodule/CanJni;->PSAMemTabSet(Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;I)V

    goto :goto_0

    .line 201
    :pswitch_1
    iput-boolean v3, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mbModify:Z

    .line 202
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->PSAMemTabSet(Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;I)V

    goto :goto_0

    .line 206
    :pswitch_2
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    iget-object v3, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->fgTabAvalid:I

    invoke-virtual {p0, v3}, Lcom/ts/can/psa/CanPSAMemTabActivity;->Neg(I)I

    move-result v3

    iput v3, v2, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->fgTabAvalid:I

    .line 207
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->fgTabAvalid:I

    invoke-direct {p0, v2, v3}, Lcom/ts/can/psa/CanPSAMemTabActivity;->SetChk(II)V

    .line 208
    iput-boolean v4, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mbModify:Z

    goto :goto_0

    .line 217
    :cond_1
    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/16 v2, 0x15

    if-gt v0, v2, :cond_0

    .line 219
    add-int/lit8 v1, v0, -0x10

    .line 220
    .local v1, "index":I
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->fgDatAvalid:[I

    iget-object v3, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    iget-object v3, v3, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->fgDatAvalid:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/ts/can/psa/CanPSAMemTabActivity;->Neg(I)I

    move-result v3

    aput v3, v2, v1

    .line 221
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->fgDatAvalid:[I

    aget v2, v2, v1

    invoke-direct {p0, v1, v2}, Lcom/ts/can/psa/CanPSAMemTabActivity;->SetChk(II)V

    .line 222
    iput-boolean v4, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mbModify:Z

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x1b6

    const/16 v9, 0x38

    const/16 v8, 0x28

    const/16 v7, 0x13

    const/4 v6, 0x6

    .line 48
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v2, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/CanPSAMemTabActivity;->setContentView(I)V

    .line 52
    new-instance v2, Lcom/ts/other/RelativeLayoutManager;

    sget v3, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v2, p0, v3}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 54
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0xb4

    const/16 v4, 0x69

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_c4l_bg:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 56
    new-array v2, v6, [Lcom/ts/other/ParamButton;

    iput-object v2, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mBtnSpeed:[Lcom/ts/other/ParamButton;

    .line 57
    new-array v2, v6, [Lcom/ts/other/ParamButton;

    iput-object v2, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mBtnSubChk:[Lcom/ts/other/ParamButton;

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0xf4

    const/16 v4, 0x70

    const/16 v5, 0xc8

    invoke-virtual {v2, v3, v4, v5, v9}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v1

    .line 72
    .local v1, "tv":Lcom/ts/other/CustomTextView;
    invoke-virtual {v1, v8}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 73
    sget v2, Lcom/ts/MainUI/R$string;->can_car_active:I

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(I)V

    .line 74
    invoke-virtual {v1, v7}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 76
    const/16 v2, 0xc2

    const/16 v3, 0x76

    const/16 v4, 0xc

    invoke-virtual {p0, v2, v3, v4}, Lcom/ts/can/psa/CanPSAMemTabActivity;->AddChkBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mBtnTopChk:Lcom/ts/other/ParamButton;

    .line 78
    const/16 v2, 0xf3

    const/16 v3, 0xa

    sget v4, Lcom/ts/MainUI/R$string;->can_setup_reset:I

    invoke-virtual {p0, v2, v10, v3, v4}, Lcom/ts/can/psa/CanPSAMemTabActivity;->AddCtrlBtn(IIII)V

    .line 79
    const/16 v2, 0x27f

    const/16 v3, 0xb

    sget v4, Lcom/ts/MainUI/R$string;->can_confirm:I

    invoke-virtual {p0, v2, v10, v3, v4}, Lcom/ts/can/psa/CanPSAMemTabActivity;->AddCtrlBtn(IIII)V

    .line 81
    return-void

    .line 62
    .end local v1    # "tv":Lcom/ts/other/CustomTextView;
    :cond_0
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mBtnSpeed:[Lcom/ts/other/ParamButton;

    rem-int/lit8 v3, v0, 0x2

    mul-int/lit16 v3, v3, 0x12c

    add-int/lit16 v3, v3, 0x17f

    div-int/lit8 v4, v0, 0x2

    mul-int/lit8 v4, v4, 0x43

    add-int/lit8 v4, v4, 0x7f

    add-int/lit8 v4, v4, 0x32

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/ts/can/psa/CanPSAMemTabActivity;->AddValBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v3

    aput-object v3, v2, v0

    .line 63
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mBtnSubChk:[Lcom/ts/other/ParamButton;

    rem-int/lit8 v3, v0, 0x2

    mul-int/lit16 v3, v3, 0x12c

    add-int/lit16 v3, v3, 0xf1

    div-int/lit8 v4, v0, 0x2

    mul-int/lit8 v4, v4, 0x43

    add-int/lit16 v4, v4, 0x85

    add-int/lit8 v4, v4, 0x32

    add-int/lit8 v5, v0, 0x10

    invoke-virtual {p0, v3, v4, v5}, Lcom/ts/can/psa/CanPSAMemTabActivity;->AddChkBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v3

    aput-object v3, v2, v0

    .line 65
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v3, v0, 0x2

    mul-int/lit16 v3, v3, 0x12c

    add-int/lit16 v3, v3, 0x123

    div-int/lit8 v4, v0, 0x2

    mul-int/lit8 v4, v4, 0x43

    add-int/lit8 v4, v4, 0x7f

    add-int/lit8 v4, v4, 0x32

    const/16 v5, 0x5a

    invoke-virtual {v2, v3, v4, v5, v9}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v1

    .line 66
    .restart local v1    # "tv":Lcom/ts/other/CustomTextView;
    invoke-virtual {v1, v8}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 67
    const-string v2, "M%d:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v1, v7}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public onOK(Ljava/lang/String;II)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "num"    # I
    .param p3, "id"    # I

    .prologue
    .line 248
    const/16 v0, 0xff

    if-le p2, v0, :cond_0

    .line 250
    const/16 p2, 0xff

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;

    iget-object v0, v0, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->Data:[I

    add-int/lit8 v1, p3, -0x1

    aput p2, v0, v1

    .line 254
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAMemTabActivity;->mBtnSpeed:[Lcom/ts/other/ParamButton;

    add-int/lit8 v1, p3, -0x1

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 134
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 135
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 122
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 123
    invoke-direct {p0, v1}, Lcom/ts/can/psa/CanPSAMemTabActivity;->ResetData(Z)V

    .line 124
    const/16 v0, 0x3b

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSAQuery(II)V

    .line 125
    return-void
.end method
