.class public Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanOldFiestaLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity$LogAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CanBZLogInfoActivity"


# instance fields
.field protected mAdapter:Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity$LogAdapter;

.field protected mLogData:Lcom/lgb/canmodule/CanDataInfo$FiestaCar;

.field protected mLogInfo:Lcom/lgb/canmodule/CanDataInfo$FiestaInfo;

.field protected mLvLog:Landroid/widget/ListView;

.field protected mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$FiestaCar;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$FiestaCar;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->mLogData:Lcom/lgb/canmodule/CanDataInfo$FiestaCar;

    .line 30
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$FiestaInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$FiestaInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->mLogInfo:Lcom/lgb/canmodule/CanDataInfo$FiestaInfo;

    .line 24
    return-void
.end method


# virtual methods
.method protected LayoutUI()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->mLogData:Lcom/lgb/canmodule/CanDataInfo$FiestaCar;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->OldFiestaGetCarData(Lcom/lgb/canmodule/CanDataInfo$FiestaCar;)V

    .line 53
    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->mLogData:Lcom/lgb/canmodule/CanDataInfo$FiestaCar;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiestaCar;->UpdateOne:I

    invoke-static {v0}, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->mLogData:Lcom/lgb/canmodule/CanDataInfo$FiestaCar;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiestaCar;->Update:I

    invoke-static {v0}, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->mLogData:Lcom/lgb/canmodule/CanDataInfo$FiestaCar;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$FiestaCar;->Update:I

    .line 58
    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->mAdapter:Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity$LogAdapter;

    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->mLogData:Lcom/lgb/canmodule/CanDataInfo$FiestaCar;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FiestaCar;->dwNum:I

    invoke-virtual {v0, v1}, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity$LogAdapter;->SetSize(I)V

    .line 59
    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->mLvLog:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    if-nez p1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->mLvLog:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->ResetData(Z)V

    .line 124
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_listview:I

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->setContentView(I)V

    .line 44
    sget v0, Lcom/ts/MainUI/R$id;->list_view:I

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->mLvLog:Landroid/widget/ListView;

    .line 45
    new-instance v0, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity$LogAdapter;

    invoke-direct {v0, p0, p0}, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity$LogAdapter;-><init>(Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->mAdapter:Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity$LogAdapter;

    .line 46
    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->mLvLog:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->mAdapter:Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity$LogAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 93
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->QueryData()V

    .line 81
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 82
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;->ResetData(Z)V

    .line 86
    return-void
.end method
