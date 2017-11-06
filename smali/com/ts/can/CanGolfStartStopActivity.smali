.class public Lcom/ts/can/CanGolfStartStopActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfStartStopActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanGolfStartStopActivity"


# instance fields
.field private mItemSS:[Lcom/ts/canview/CanItemTextBtnList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mSSData:Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;

.field private mStrMsgArray:[Ljava/lang/String;

.field private mStrStaArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 19
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfStartStopActivity;->mSSData:Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;

    .line 13
    return-void
.end method


# virtual methods
.method protected QueryData()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ts/can/CanGolfStartStopActivity;->mSSData:Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfStartStopActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/16 v0, 0x60

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 92
    :cond_0
    return-void
.end method

.method protected ResetData(Z)V
    .locals 7
    .param p1, "check"    # Z

    .prologue
    const/4 v6, 0x0

    .line 45
    iget-object v3, p0, Lcom/ts/can/CanGolfStartStopActivity;->mSSData:Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;

    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->GolfGetCarTip(Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;)V

    .line 46
    iget-object v3, p0, Lcom/ts/can/CanGolfStartStopActivity;->mSSData:Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/CanGolfStartStopActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/ts/can/CanGolfStartStopActivity;->mSSData:Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;->Update:I

    invoke-static {v3}, Lcom/ts/can/CanGolfStartStopActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    :cond_0
    iget-object v3, p0, Lcom/ts/can/CanGolfStartStopActivity;->mSSData:Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;

    iput v6, v3, Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;->Update:I

    .line 51
    iget-object v3, p0, Lcom/ts/can/CanGolfStartStopActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v3}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 53
    iget-object v3, p0, Lcom/ts/can/CanGolfStartStopActivity;->mSSData:Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;->Num:I

    if-nez v3, :cond_2

    .line 55
    iget-object v3, p0, Lcom/ts/can/CanGolfStartStopActivity;->mSSData:Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;->StartStop:I

    iget-object v4, p0, Lcom/ts/can/CanGolfStartStopActivity;->mStrStaArray:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 57
    iget-object v3, p0, Lcom/ts/can/CanGolfStartStopActivity;->mItemSS:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/ts/can/CanGolfStartStopActivity;->mStrStaArray:[Ljava/lang/String;

    iget-object v5, p0, Lcom/ts/can/CanGolfStartStopActivity;->mSSData:Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;->StartStop:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    .line 58
    iget-object v3, p0, Lcom/ts/can/CanGolfStartStopActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v4, p0, Lcom/ts/can/CanGolfStartStopActivity;->mItemSS:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 84
    :cond_1
    return-void

    .line 63
    :cond_2
    iget-object v3, p0, Lcom/ts/can/CanGolfStartStopActivity;->mSSData:Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;

    iget v2, v3, Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;->Num:I

    .line 64
    .local v2, "num":I
    iget-object v3, p0, Lcom/ts/can/CanGolfStartStopActivity;->mItemSS:[Lcom/ts/canview/CanItemTextBtnList;

    array-length v3, v3

    if-le v2, v3, :cond_3

    .line 66
    iget-object v3, p0, Lcom/ts/can/CanGolfStartStopActivity;->mItemSS:[Lcom/ts/canview/CanItemTextBtnList;

    array-length v2, v3

    .line 69
    :cond_3
    const/4 v1, 0x0

    .line 70
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 72
    iget-object v3, p0, Lcom/ts/can/CanGolfStartStopActivity;->mSSData:Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;

    iget-object v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;->TipData:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/ts/can/CanGolfStartStopActivity;->mStrMsgArray:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 74
    iget-object v3, p0, Lcom/ts/can/CanGolfStartStopActivity;->mItemSS:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/ts/can/CanGolfStartStopActivity;->mStrMsgArray:[Ljava/lang/String;

    iget-object v5, p0, Lcom/ts/can/CanGolfStartStopActivity;->mSSData:Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;

    iget-object v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;->TipData:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    .line 75
    iget-object v3, p0, Lcom/ts/can/CanGolfStartStopActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v4, p0, Lcom/ts/can/CanGolfStartStopActivity;->mItemSS:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 70
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfStartStopActivity;->ResetData(Z)V

    .line 118
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanGolfStartStopActivity;->setContentView(I)V

    .line 30
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ts/can/CanGolfStartStopActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 32
    const/16 v1, 0x1e

    new-array v1, v1, [Lcom/ts/canview/CanItemTextBtnList;

    iput-object v1, p0, Lcom/ts/can/CanGolfStartStopActivity;->mItemSS:[Lcom/ts/canview/CanItemTextBtnList;

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanGolfStartStopActivity;->mItemSS:[Lcom/ts/canview/CanItemTextBtnList;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/ts/can/CanGolfStartStopActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$array;->can_start_stop_other_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfStartStopActivity;->mStrStaArray:[Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/ts/can/CanGolfStartStopActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$array;->can_start_stop_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfStartStopActivity;->mStrMsgArray:[Ljava/lang/String;

    .line 41
    return-void

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanGolfStartStopActivity;->mItemSS:[Lcom/ts/canview/CanItemTextBtnList;

    new-instance v2, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v2, p0, v3}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    aput-object v2, v1, v0

    .line 36
    iget-object v1, p0, Lcom/ts/can/CanGolfStartStopActivity;->mItemSS:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 110
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 111
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 99
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfStartStopActivity;->ResetData(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/ts/can/CanGolfStartStopActivity;->QueryData()V

    .line 103
    return-void
.end method
