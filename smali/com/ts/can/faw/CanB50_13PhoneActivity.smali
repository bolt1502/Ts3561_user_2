.class public Lcom/ts/can/faw/CanB50_13PhoneActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanB50_13PhoneActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_VOL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CanB50_13PhoneActivity"

.field protected static mIsActive:Z


# instance fields
.field protected mManager:Lcom/ts/other/RelativeLayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method

.method public static DealStatus(ZZ)V
    .locals 1
    .param p0, "isCamMode"    # Z
    .param p1, "on"    # Z

    .prologue
    .line 74
    sget-boolean v0, Lcom/ts/can/faw/CanB50_13PhoneActivity;->mIsActive:Z

    if-eq v0, p1, :cond_1

    .line 76
    sput-boolean p1, Lcom/ts/can/faw/CanB50_13PhoneActivity;->mIsActive:Z

    .line 77
    if-eqz p1, :cond_2

    .line 79
    if-nez p0, :cond_0

    .line 81
    const-class v0, Lcom/ts/can/faw/CanB50_13PhoneActivity;

    invoke-static {v0}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 84
    :cond_0
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/MainUI/Evc;->evol_aux_hold()V

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/MainUI/Evc;->evol_aux_release()V

    goto :goto_0
.end method

.method private ResetData(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 63
    sget-boolean v0, Lcom/ts/can/faw/CanB50_13PhoneActivity;->mIsActive:Z

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/ts/can/faw/CanB50_13PhoneActivity;->finish()V

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/faw/CanB50_13PhoneActivity;->ResetData(Z)V

    .line 114
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 125
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 105
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/faw/CanB50_13PhoneActivity;->setContentView(I)V

    .line 36
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/faw/CanB50_13PhoneActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 37
    iget-object v0, p0, Lcom/ts/can/faw/CanB50_13PhoneActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x1ac

    const/16 v2, 0x6c

    sget v3, Lcom/ts/MainUI/R$drawable;->original_car_phone:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 39
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 55
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 46
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/faw/CanB50_13PhoneActivity;->ResetData(Z)V

    .line 48
    return-void
.end method
