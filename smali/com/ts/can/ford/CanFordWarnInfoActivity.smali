.class public Lcom/ts/can/ford/CanFordWarnInfoActivity;
.super Lcom/ts/can/ford/CanFordBaseActivity;
.source "CanFordWarnInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanFordWarnInfoActivity"


# instance fields
.field private WARN_MAX:I

.field private mItemWarn:[Lcom/ts/canview/CanItemTextBtnList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mWarnArr:[Ljava/lang/String;

.field private mWarnData:Lcom/lgb/canmodule/CanDataInfo$FordWarn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/ford/CanFordBaseActivity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->WARN_MAX:I

    .line 27
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$FordWarn;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$FordWarn;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$FordWarn;

    .line 16
    return-void
.end method


# virtual methods
.method protected InitUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 85
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordWarnInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->can_ford_warn_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mWarnArr:[Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mWarnArr:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->WARN_MAX:I

    .line 88
    iget v0, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->WARN_MAX:I

    new-array v0, v0, [Lcom/ts/canview/CanItemTextBtnList;

    iput-object v0, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mItemWarn:[Lcom/ts/canview/CanItemTextBtnList;

    .line 89
    iget-object v0, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mItemWarn:[Lcom/ts/canview/CanItemTextBtnList;

    new-instance v1, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v1, p0, v2}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, v2

    .line 90
    iget-object v0, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mItemWarn:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 91
    return-void
.end method

.method protected LayoutUI()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 95
    iget-object v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v2}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 96
    iget-object v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$FordWarn;

    iget v1, v2, Lcom/lgb/canmodule/CanDataInfo$FordWarn;->Num:I

    .line 97
    .local v1, "num":I
    iget v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->WARN_MAX:I

    if-le v1, v2, :cond_0

    .line 99
    iget v1, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->WARN_MAX:I

    .line 102
    :cond_0
    if-nez v1, :cond_2

    .line 104
    iget-object v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mItemWarn:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v5

    sget v3, Lcom/ts/MainUI/R$string;->can_check_end:I

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(I)V

    .line 105
    iget-object v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mItemWarn:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v5

    invoke-virtual {v2, v6}, Lcom/ts/canview/CanItemTextBtnList;->SetColor(I)V

    .line 106
    iget-object v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v3, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mItemWarn:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 143
    :cond_1
    return-void

    .line 111
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 113
    iget-object v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mItemWarn:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mItemWarn:[Lcom/ts/canview/CanItemTextBtnList;

    new-instance v3, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v3, p0, v5}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    aput-object v3, v2, v0

    .line 116
    iget-object v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mItemWarn:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$FordWarn;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$FordWarn;->Color:[I

    aget v2, v2, v0

    packed-switch v2, :pswitch_data_0

    .line 130
    iget-object v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mItemWarn:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Lcom/ts/canview/CanItemTextBtnList;->SetColor(I)V

    .line 134
    :goto_1
    iget-object v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$FordWarn;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$FordWarn;->Value:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mWarnArr:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget-object v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$FordWarn;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$FordWarn;->Value:[I

    aget v2, v2, v0

    if-ltz v2, :cond_4

    .line 136
    iget-object v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mItemWarn:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mWarnArr:[Ljava/lang/String;

    iget-object v4, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$FordWarn;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$FordWarn;->Value:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v3, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mItemWarn:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 111
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :pswitch_0
    iget-object v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mItemWarn:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v0

    const/16 v3, -0x100

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanItemTextBtnList;->SetColor(I)V

    goto :goto_1

    .line 126
    :pswitch_1
    iget-object v2, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mItemWarn:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v0

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanItemTextBtnList;->SetColor(I)V

    goto :goto_1

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$FordWarn;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FordWarn;->UpdateOnce:I

    if-nez v0, :cond_0

    .line 60
    const/16 v0, 0x2a

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->FordQuery(II)V

    .line 62
    :cond_0
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$FordWarn;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FordGetWarn(Lcom/lgb/canmodule/CanDataInfo$FordWarn;)V

    .line 45
    iget-object v0, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$FordWarn;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FordWarn;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/ford/CanFordWarnInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$FordWarn;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FordWarn;->Update:I

    invoke-static {v0}, Lcom/ts/can/ford/CanFordWarnInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/ts/can/ford/CanFordWarnInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$FordWarn;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$FordWarn;->Update:I

    .line 50
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordWarnInfoActivity;->LayoutUI()V

    .line 54
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordWarnInfoActivity;->ResetData(Z)V

    .line 165
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 157
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/ts/can/ford/CanFordBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordWarnInfoActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordWarnInfoActivity;->InitUI()V

    .line 40
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 79
    invoke-super {p0}, Lcom/ts/can/ford/CanFordBaseActivity;->onPause()V

    .line 80
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/ts/can/ford/CanFordBaseActivity;->onResume()V

    .line 68
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordWarnInfoActivity;->ResetData(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordWarnInfoActivity;->QueryData()V

    .line 72
    return-void
.end method
