.class public Lcom/ts/can/psa/hc/CanBZLogInfoActivity;
.super Lcom/ts/can/psa/hc/CanBZBaseActivity;
.source "CanBZLogInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CanBZLogInfoActivity"


# instance fields
.field protected mAdapter:Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;

.field protected mLogData:Lcom/lgb/canmodule/CanDataInfo$PSALogUnit;

.field protected mLogInfo:Lcom/lgb/canmodule/CanDataInfo$PSALogInfo;

.field protected mLogType:I

.field protected mLvLog:Landroid/widget/ListView;

.field protected mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ts/can/psa/hc/CanBZBaseActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PSALogUnit;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PSALogUnit;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLogData:Lcom/lgb/canmodule/CanDataInfo$PSALogUnit;

    .line 30
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PSALogInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PSALogInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLogInfo:Lcom/lgb/canmodule/CanDataInfo$PSALogInfo;

    .line 24
    return-void
.end method


# virtual methods
.method protected LayoutUI()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLogType:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->BZStartQueryLog(II)V

    .line 80
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 57
    iget v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLogType:I

    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLogInfo:Lcom/lgb/canmodule/CanDataInfo$PSALogInfo;

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->BZGetLogInfo(ILcom/lgb/canmodule/CanDataInfo$PSALogInfo;)V

    .line 58
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLogInfo:Lcom/lgb/canmodule/CanDataInfo$PSALogInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PSALogInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLogInfo:Lcom/lgb/canmodule/CanDataInfo$PSALogInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PSALogInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLogInfo:Lcom/lgb/canmodule/CanDataInfo$PSALogInfo;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$PSALogInfo;->Update:I

    .line 63
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mAdapter:Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;

    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLogInfo:Lcom/lgb/canmodule/CanDataInfo$PSALogInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PSALogInfo;->Total:I

    invoke-virtual {v0, v1}, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;->SetSize(I)V

    .line 64
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLvLog:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    if-nez p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLvLog:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected SetLogType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLogType:I

    .line 53
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->ResetData(Z)V

    .line 130
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 122
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/ts/can/psa/hc/CanBZBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_listview:I

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->setContentView(I)V

    .line 44
    sget v0, Lcom/ts/MainUI/R$id;->list_view:I

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLvLog:Landroid/widget/ListView;

    .line 45
    new-instance v0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;

    invoke-direct {v0, p0, p0}, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;-><init>(Lcom/ts/can/psa/hc/CanBZLogInfoActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mAdapter:Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;

    .line 46
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLvLog:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mAdapter:Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    const/16 v0, 0x85

    iput v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLogType:I

    .line 48
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 98
    iget v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLogType:I

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->BZStopQueryLog(I)V

    .line 99
    invoke-super {p0}, Lcom/ts/can/psa/hc/CanBZBaseActivity;->onPause()V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->QueryData()V

    .line 86
    invoke-super {p0}, Lcom/ts/can/psa/hc/CanBZBaseActivity;->onResume()V

    .line 87
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->ResetData(Z)V

    .line 91
    return-void
.end method
