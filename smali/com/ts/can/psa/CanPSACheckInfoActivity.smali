.class public Lcom/ts/can/psa/CanPSACheckInfoActivity;
.super Lcom/ts/can/psa/CanPSABaseActivity;
.source "CanPSACheckInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanPSACheckInfoActivity"


# instance fields
.field private CHK_MAX:I

.field private mCheckData:Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;

.field private mChkArr:[Ljava/lang/String;

.field private mItemChk:[Lcom/ts/canview/CanItemTextBtnList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/psa/CanPSABaseActivity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->CHK_MAX:I

    .line 25
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mCheckData:Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;

    .line 15
    return-void
.end method


# virtual methods
.method protected InitUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 81
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSACheckInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->can_psa_check:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mChkArr:[Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mChkArr:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->CHK_MAX:I

    .line 84
    iget v0, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->CHK_MAX:I

    new-array v0, v0, [Lcom/ts/canview/CanItemTextBtnList;

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mItemChk:[Lcom/ts/canview/CanItemTextBtnList;

    .line 85
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mItemChk:[Lcom/ts/canview/CanItemTextBtnList;

    new-instance v1, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v1, p0, v2}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, v2

    .line 86
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mItemChk:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 87
    return-void
.end method

.method protected LayoutUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 91
    iget-object v2, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v2}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 92
    iget-object v2, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mCheckData:Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;

    iget v1, v2, Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;->Num:I

    .line 93
    .local v1, "num":I
    iget v2, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->CHK_MAX:I

    if-le v1, v2, :cond_0

    .line 95
    iget v1, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->CHK_MAX:I

    .line 98
    :cond_0
    if-nez v1, :cond_2

    .line 100
    iget-object v2, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mItemChk:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v5

    sget v3, Lcom/ts/MainUI/R$string;->can_check_end:I

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(I)V

    .line 101
    iget-object v2, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v3, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mItemChk:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 119
    :cond_1
    return-void

    .line 106
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 108
    iget-object v2, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mItemChk:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    .line 110
    iget-object v2, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mItemChk:[Lcom/ts/canview/CanItemTextBtnList;

    new-instance v3, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v3, p0, v5}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    aput-object v3, v2, v0

    .line 111
    iget-object v2, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mItemChk:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 113
    :cond_3
    iget-object v2, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mItemChk:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mChkArr:[Ljava/lang/String;

    iget-object v4, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mCheckData:Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;->Info:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v3, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mItemChk:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->PSAQueryCheck()V

    .line 58
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mCheckData:Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->PSAGetCheck(Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;)V

    .line 43
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mCheckData:Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/psa/CanPSACheckInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mCheckData:Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/psa/CanPSACheckInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACheckInfoActivity;->mCheckData:Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;->Update:I

    .line 48
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSACheckInfoActivity;->LayoutUI()V

    .line 53
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSACheckInfoActivity;->ResetData(Z)V

    .line 141
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 133
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/ts/can/psa/CanPSABaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSACheckInfoActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSACheckInfoActivity;->InitUI()V

    .line 38
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 75
    invoke-super {p0}, Lcom/ts/can/psa/CanPSABaseActivity;->onPause()V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/ts/can/psa/CanPSABaseActivity;->onResume()V

    .line 64
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSACheckInfoActivity;->ResetData(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSACheckInfoActivity;->QueryData()V

    .line 68
    return-void
.end method
