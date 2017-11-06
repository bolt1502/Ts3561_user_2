.class public Lcom/ts/can/ts/CanTSPhoneActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanTSPhoneActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_VOL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CanTSPhoneActivity"


# instance fields
.field protected mManager:Lcom/ts/other/RelativeLayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method

.method private ResetData(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 60
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->TsGetPhone()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/ts/can/ts/CanTSPhoneActivity;->finish()V

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/ts/CanTSPhoneActivity;->ResetData(Z)V

    .line 89
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 100
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 80
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/ts/CanTSPhoneActivity;->setContentView(I)V

    .line 33
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/ts/CanTSPhoneActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 34
    iget-object v0, p0, Lcom/ts/can/ts/CanTSPhoneActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x1ac

    const/16 v2, 0x6c

    sget v3, Lcom/ts/MainUI/R$drawable;->original_car_phone:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 36
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 52
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 53
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 43
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/ts/CanTSPhoneActivity;->ResetData(Z)V

    .line 45
    return-void
.end method
