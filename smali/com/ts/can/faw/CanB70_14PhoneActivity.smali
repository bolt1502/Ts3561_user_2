.class public Lcom/ts/can/faw/CanB70_14PhoneActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanB70_14PhoneActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_VOL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CanMbRelativeActivity"


# instance fields
.field protected mManager:Lcom/ts/other/RelativeLayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method

.method public static DealStatus(Z)V
    .locals 1
    .param p0, "isCamMode"    # Z

    .prologue
    .line 73
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->B70IsPhoneActive()I

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    if-nez p0, :cond_0

    .line 77
    const-class v0, Lcom/ts/can/faw/CanB70_14PhoneActivity;

    invoke-static {v0}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 80
    :cond_0
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/MainUI/Evc;->evol_aux_hold()V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/MainUI/Evc;->evol_aux_release()V

    goto :goto_0
.end method

.method private ResetData(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 62
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->B70IsPhoneActive()I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/ts/can/faw/CanB70_14PhoneActivity;->finish()V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/faw/CanB70_14PhoneActivity;->ResetData(Z)V

    .line 109
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 120
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 100
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/faw/CanB70_14PhoneActivity;->setContentView(I)V

    .line 35
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/faw/CanB70_14PhoneActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 36
    iget-object v0, p0, Lcom/ts/can/faw/CanB70_14PhoneActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x1ac

    const/16 v2, 0x6c

    sget v3, Lcom/ts/MainUI/R$drawable;->original_car_phone:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 38
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 54
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 55
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 45
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/faw/CanB70_14PhoneActivity;->ResetData(Z)V

    .line 47
    return-void
.end method
