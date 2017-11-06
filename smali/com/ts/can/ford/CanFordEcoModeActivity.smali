.class public Lcom/ts/can/ford/CanFordEcoModeActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanFordEcoModeActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_HOT:I = 0x2

.field public static final ITEM_PLAN:I = 0x0

.field public static final ITEM_SPEED:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanMbRelativeActivity"

.field private static final mEcoModeArr:[I


# instance fields
.field protected mImgHot:Lcom/ts/other/CustomImgView;

.field protected mImgPlan:Lcom/ts/other/CustomImgView;

.field protected mImgSpeed:Lcom/ts/other/CustomImgView;

.field protected mItemEngHot:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemPlan:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemSpeed:Lcom/ts/canview/CanItemTextBtnList;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

.field protected mStrHot:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 30
    sget v2, Lcom/ts/MainUI/R$drawable;->can_jnh_icon_00:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 31
    sget v2, Lcom/ts/MainUI/R$drawable;->can_jnh_icon_01:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 32
    sget v2, Lcom/ts/MainUI/R$drawable;->can_jnh_icon_02:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 33
    sget v2, Lcom/ts/MainUI/R$drawable;->can_jnh_icon_03:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 34
    sget v2, Lcom/ts/MainUI/R$drawable;->can_jnh_icon_04:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 35
    sget v2, Lcom/ts/MainUI/R$drawable;->can_jnh_icon_05:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 36
    sget v2, Lcom/ts/MainUI/R$drawable;->can_jnh_icon_02:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 37
    sget v2, Lcom/ts/MainUI/R$drawable;->can_jnh_icon_02:I

    aput v2, v0, v1

    .line 28
    sput-object v0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mEcoModeArr:[I

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$FordSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$FordSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    .line 19
    return-void
.end method

.method private ResetData(Z)V
    .locals 6
    .param p1, "check"    # Z

    .prologue
    const/4 v5, 0x0

    .line 108
    iget-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FordGetSetup(Lcom/lgb/canmodule/CanDataInfo$FordSet;)V

    .line 109
    iget-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FordSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/ford/CanFordEcoModeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FordSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/ford/CanFordEcoModeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$FordSet;->Update:I

    .line 114
    iget-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mImgPlan:Lcom/ts/other/CustomImgView;

    sget-object v1, Lcom/ts/can/ford/CanFordEcoModeActivity;->mEcoModeArr:[I

    iget-object v2, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FordSet;->Plane:I

    and-int/lit8 v2, v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setBackgroundResource(I)V

    .line 115
    iget-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mImgSpeed:Lcom/ts/other/CustomImgView;

    sget-object v1, Lcom/ts/can/ford/CanFordEcoModeActivity;->mEcoModeArr:[I

    iget-object v2, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FordSet;->Speed:I

    and-int/lit8 v2, v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setBackgroundResource(I)V

    .line 116
    iget-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mItemEngHot:Lcom/ts/canview/CanItemTextBtnList;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FordSet;->EHotShow:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(I)V

    .line 117
    iget-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mImgHot:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FordSet;->EHotShow:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 118
    iget-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FordSet;->EHotShow:I

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mItemEngHot:Lcom/ts/canview/CanItemTextBtnList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$FordSet;->EHotVal:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mStrHot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    .line 126
    :cond_1
    return-void
.end method


# virtual methods
.method protected AddItem(III)Lcom/ts/canview/CanItemTextBtnList;
    .locals 7
    .param p1, "line"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 79
    new-instance v6, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v6, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 80
    .local v6, "item":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v6, v2}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 81
    invoke-virtual {v6, p0, p3}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 82
    iget-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v6}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    mul-int/lit8 v3, p1, 0x55

    add-int/lit8 v3, v3, 0xa

    const/4 v4, -0x2

    const/16 v5, 0x55

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 83
    return-object v6
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/ford/CanFordEcoModeActivity;->ResetData(Z)V

    .line 151
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 158
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x389

    .line 58
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordEcoModeActivity;->setContentView(I)V

    .line 62
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 64
    sget v0, Lcom/ts/MainUI/R$string;->can_plan_df:I

    invoke-virtual {p0, v2, v0, v2}, Lcom/ts/can/ford/CanFordEcoModeActivity;->AddItem(III)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mItemPlan:Lcom/ts/canview/CanItemTextBtnList;

    .line 65
    sget v0, Lcom/ts/MainUI/R$string;->can_speed_df:I

    invoke-virtual {p0, v4, v0, v4}, Lcom/ts/can/ford/CanFordEcoModeActivity;->AddItem(III)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mItemSpeed:Lcom/ts/canview/CanItemTextBtnList;

    .line 66
    sget v0, Lcom/ts/MainUI/R$string;->can_lc_yqwr:I

    invoke-virtual {p0, v5, v0, v5}, Lcom/ts/can/ford/CanFordEcoModeActivity;->AddItem(III)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mItemEngHot:Lcom/ts/canview/CanItemTextBtnList;

    .line 68
    iget-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x13

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jnh_icon_00:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mImgPlan:Lcom/ts/other/CustomImgView;

    .line 69
    iget-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x68

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jnh_icon_00:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mImgSpeed:Lcom/ts/other/CustomImgView;

    .line 70
    iget-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0xbd

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jnh_oil:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mImgHot:Lcom/ts/other/CustomImgView;

    .line 72
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordEcoModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$string;->can_lc_yqwr:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordEcoModeActivity;->mStrHot:Ljava/lang/String;

    .line 74
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 100
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 91
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/ford/CanFordEcoModeActivity;->ResetData(Z)V

    .line 93
    return-void
.end method
