.class public Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanBaicEC180PwrInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;


# static fields
.field public static final ITEM_BATVAL:I = 0x2

.field public static final ITEM_CARWARN:I = 0x1

.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanBaicEC180PwrInfoActivity"


# instance fields
.field protected mCarWarn:I

.field protected mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

.field protected mImgBat:[Lcom/ts/other/CustomImgView;

.field protected mItemCarBat:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemCarWarn:Lcom/ts/canview/CanItemMsgBox;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mCarWarn:I

    .line 43
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    .line 22
    return-void
.end method


# virtual methods
.method public AddViewWrapContent(Landroid/widget/RelativeLayout;Landroid/view/View;II)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/RelativeLayout;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v1, -0x2

    .line 182
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 183
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 184
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 185
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 187
    return-void
.end method

.method protected InitUI()V
    .locals 7

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 126
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 128
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    sget v1, Lcom/ts/MainUI/R$string;->can_dfqc_battery_e:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mItemCarBat:Lcom/ts/canview/CanItemTextBtnList;

    .line 129
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mItemCarBat:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 130
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mItemCarBat:Lcom/ts/canview/CanItemTextBtnList;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 131
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mItemCarBat:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    const/4 v4, -0x2

    const/16 v5, 0x55

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 133
    new-array v0, v3, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mImgBat:[Lcom/ts/other/CustomImgView;

    .line 134
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mImgBat:[Lcom/ts/other/CustomImgView;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 141
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mImgBat:[Lcom/ts/other/CustomImgView;

    new-instance v1, Lcom/ts/other/CustomImgView;

    invoke-direct {v1, p0}, Lcom/ts/other/CustomImgView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 137
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mImgBat:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->can_dc_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_dc_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 138
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mItemCarBat:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mImgBat:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v6

    mul-int/lit8 v2, v6, 0x12

    add-int/lit16 v2, v2, 0x320

    const/16 v3, 0x14

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->AddViewWrapContent(Landroid/widget/RelativeLayout;Landroid/view/View;II)V

    .line 134
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 162
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 151
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->ShowItem(I)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->BaicEcQuery(I)V

    .line 100
    return-void
.end method

.method protected ResetData(Z)V
    .locals 5
    .param p1, "check"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 59
    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->BaicEcGetCarInfo(Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;)V

    .line 60
    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;->Update:I

    invoke-static {v1}, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;->Update:I

    .line 66
    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;->CarWarn:I

    iget v2, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mCarWarn:I

    if-eq v1, v2, :cond_1

    .line 68
    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;->CarWarn:I

    iput v1, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mCarWarn:I

    .line 69
    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;->CarWarn:I

    if-ne v1, v3, :cond_3

    .line 71
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    sget v2, Lcom/ts/MainUI/R$string;->can_ec_warn1:I

    invoke-direct {v1, v3, p0, v2, p0}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    .line 80
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-lt v0, v1, :cond_4

    .line 95
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;->CarWarn:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 75
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    sget v2, Lcom/ts/MainUI/R$string;->can_ec_warn2:I

    invoke-direct {v1, v3, p0, v2, p0}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    goto :goto_0

    .line 82
    .restart local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;->BatVal:I

    if-ge v0, v1, :cond_5

    .line 84
    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mImgBat:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 80
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_5
    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mImgBat:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_2
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 177
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->ResetData(Z)V

    .line 209
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 201
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->InitUI()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mCarWarn:I

    .line 55
    return-void
.end method

.method public onOK(I)V
    .locals 0
    .param p1, "param"    # I

    .prologue
    .line 215
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 119
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 121
    const-string v0, "CanBaicEC180PwrInfoActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 106
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->ResetData(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->QueryData()V

    .line 109
    iput v1, p0, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;->mCarWarn:I

    .line 110
    const-string v0, "CanBaicEC180PwrInfoActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method
