.class public Lcom/ts/can/psa/CanPSAFuncInfoActivity;
.super Lcom/ts/can/psa/CanPSABaseActivity;
.source "CanPSAFuncInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanPSAFuncInfoActivity"


# instance fields
.field private FUNC_MAX:I

.field private mFuncArr:[Ljava/lang/String;

.field private mFuncData:Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;

.field private mItemFunc:[Lcom/ts/canview/CanItemTextBtnList;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/psa/CanPSABaseActivity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->FUNC_MAX:I

    .line 26
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mFuncData:Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;

    .line 15
    return-void
.end method


# virtual methods
.method protected InitUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 82
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->can_psa_func:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mFuncArr:[Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mFuncArr:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->FUNC_MAX:I

    .line 85
    iget v0, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->FUNC_MAX:I

    new-array v0, v0, [Lcom/ts/canview/CanItemTextBtnList;

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mItemFunc:[Lcom/ts/canview/CanItemTextBtnList;

    .line 86
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mItemFunc:[Lcom/ts/canview/CanItemTextBtnList;

    new-instance v1, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v1, p0, v2}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, v2

    .line 87
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mItemFunc:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 88
    return-void
.end method

.method protected LayoutUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 92
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v2}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 93
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mFuncData:Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;

    iget v1, v2, Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;->Num:I

    .line 94
    .local v1, "num":I
    iget v2, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->FUNC_MAX:I

    if-le v1, v2, :cond_0

    .line 96
    iget v1, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->FUNC_MAX:I

    .line 99
    :cond_0
    if-nez v1, :cond_2

    .line 101
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mItemFunc:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v5

    sget v3, Lcom/ts/MainUI/R$string;->can_check_end:I

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(I)V

    .line 102
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v3, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mItemFunc:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 121
    :cond_1
    return-void

    .line 107
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 109
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mItemFunc:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    .line 111
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mItemFunc:[Lcom/ts/canview/CanItemTextBtnList;

    new-instance v3, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v3, p0, v5}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    aput-object v3, v2, v0

    .line 112
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mItemFunc:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 115
    :cond_3
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mItemFunc:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mFuncArr:[Ljava/lang/String;

    iget-object v4, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mFuncData:Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;->Info:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v3, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mItemFunc:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 58
    const/16 v0, 0x39

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSAQuery(II)V

    .line 59
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mFuncData:Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->PSAGetFunc(Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;)V

    .line 44
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mFuncData:Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mFuncData:Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->mFuncData:Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;->Update:I

    .line 49
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->LayoutUI()V

    .line 54
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->ResetData(Z)V

    .line 143
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/ts/can/psa/CanPSABaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->InitUI()V

    .line 39
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 76
    invoke-super {p0}, Lcom/ts/can/psa/CanPSABaseActivity;->onPause()V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/ts/can/psa/CanPSABaseActivity;->onResume()V

    .line 65
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->ResetData(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSAFuncInfoActivity;->QueryData()V

    .line 69
    return-void
.end method
