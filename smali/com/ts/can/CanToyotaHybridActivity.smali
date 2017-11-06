.class public Lcom/ts/can/CanToyotaHybridActivity;
.super Lcom/ts/can/CanToyotaBaseActivity;
.source "CanToyotaHybridActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanToyotaHybridActivity"

.field private static final X_CAR:I = 0x52

.field private static final Y_CAR:I = 0x14

.field private static final mBattery:[I


# instance fields
.field private mDirPaint:Lcom/ts/other/CustomImgView$onPaint;

.field private mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

.field protected mImgCar:Lcom/ts/other/CustomImgView;

.field protected mImgDirect:Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 30
    sget v2, Lcom/ts/MainUI/R$drawable;->can_ydhh_dc_00:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 31
    sget v2, Lcom/ts/MainUI/R$drawable;->can_ydhh_dc_01:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 32
    sget v2, Lcom/ts/MainUI/R$drawable;->can_ydhh_dc_02:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 33
    sget v2, Lcom/ts/MainUI/R$drawable;->can_ydhh_dc_03:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 34
    sget v2, Lcom/ts/MainUI/R$drawable;->can_ydhh_dc_04:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 35
    sget v2, Lcom/ts/MainUI/R$drawable;->can_ydhh_dc_05:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 36
    sget v2, Lcom/ts/MainUI/R$drawable;->can_ydhh_dc_06:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 37
    sget v2, Lcom/ts/MainUI/R$drawable;->can_ydhh_dc_07:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 38
    sget v2, Lcom/ts/MainUI/R$drawable;->can_ydhh_dc_08:I

    aput v2, v0, v1

    .line 28
    sput-object v0, Lcom/ts/can/CanToyotaHybridActivity;->mBattery:[I

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanToyotaBaseActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    .line 47
    new-instance v0, Lcom/ts/can/CanToyotaHybridActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/can/CanToyotaHybridActivity$1;-><init>(Lcom/ts/can/CanToyotaHybridActivity;)V

    iput-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity;->mDirPaint:Lcom/ts/other/CustomImgView$onPaint;

    .line 18
    return-void
.end method

.method private ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ToyotaGetHybrid(Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;)V

    .line 165
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->Update:I

    .line 170
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity;->mImgDirect:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0}, Lcom/ts/other/CustomImgView;->invalidate()V

    .line 173
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/ts/can/CanToyotaHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    return-object v0
.end method

.method static synthetic access$1()[I
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/ts/can/CanToyotaHybridActivity;->mBattery:[I

    return-object v0
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/CanToyotaHybridActivity;->ResetData(Z)V

    .line 200
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 191
    .local v0, "Id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x331

    const/16 v4, 0x18c

    const/16 v3, 0x52

    const/16 v2, 0x46

    .line 129
    invoke-super {p0, p1}, Lcom/ts/can/CanToyotaBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaHybridActivity;->setContentView(I)V

    .line 133
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 135
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v0, v3, v2, v5, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity;->mImgCar:Lcom/ts/other/CustomImgView;

    .line 136
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity;->mImgCar:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_ydhh_bg:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 138
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v0, v3, v2, v5, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity;->mImgDirect:Lcom/ts/other/CustomImgView;

    .line 139
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity;->mImgDirect:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/CanToyotaHybridActivity;->mDirPaint:Lcom/ts/other/CustomImgView$onPaint;

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setUserPaint(Lcom/ts/other/CustomImgView$onPaint;)V

    .line 140
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 156
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onPause()V

    .line 157
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onResume()V

    .line 147
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/CanToyotaHybridActivity;->ResetData(Z)V

    .line 149
    return-void
.end method
