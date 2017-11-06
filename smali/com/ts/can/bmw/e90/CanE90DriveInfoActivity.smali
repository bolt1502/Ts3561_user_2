.class public Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanE90DriveInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_CONSUMP:I = 0x2

.field private static final ITEM_MAX:I = 0x3

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_RANGE:I = 0x1

.field public static final ITEM_SPEED:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CanE90DriveInfoActivity"


# instance fields
.field protected mConsumpArr:[Ljava/lang/String;

.field protected mItemConsump:Lcom/ts/canview/CanItemIcoVal;

.field protected mItemRange:Lcom/ts/canview/CanItemIcoVal;

.field protected mItemSpeed:Lcom/ts/canview/CanItemIcoVal;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mRangeArr:[Ljava/lang/String;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

.field protected mSpeedArr:[Ljava/lang/String;

.field protected mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 33
    const-string v1, "l/100km"

    aput-object v1, v0, v3

    .line 34
    const-string v1, "mpg(US)"

    aput-object v1, v0, v4

    .line 35
    const-string v1, "mpg(UK)"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    .line 5
    const-string v2, "km/l"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mConsumpArr:[Ljava/lang/String;

    .line 40
    new-array v0, v5, [Ljava/lang/String;

    .line 41
    const-string v1, "km"

    aput-object v1, v0, v3

    .line 42
    const-string v1, "mls"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mRangeArr:[Ljava/lang/String;

    .line 46
    new-array v0, v5, [Ljava/lang/String;

    .line 47
    const-string v1, "km/h"

    aput-object v1, v0, v3

    .line 48
    const-string v1, "mls/h"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mSpeedArr:[Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;-><init>()V

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;

    .line 60
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;-><init>()V

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    .line 19
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 192
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 193
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 194
    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 196
    return-object v0
.end method

.method protected AddIcoValItem(III)Lcom/ts/canview/CanItemIcoVal;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 201
    new-instance v0, Lcom/ts/canview/CanItemIcoVal;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoVal;-><init>(Landroid/content/Context;II)V

    .line 202
    .local v0, "item":Lcom/ts/canview/CanItemIcoVal;
    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoVal;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 203
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 148
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_kdlc:I

    sget v1, Lcom/ts/MainUI/R$string;->can_kd_range:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->AddIcoValItem(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mItemRange:Lcom/ts/canview/CanItemIcoVal;

    .line 149
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_youhao:I

    sget v1, Lcom/ts/MainUI/R$string;->can_consumption:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->AddIcoValItem(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mItemConsump:Lcom/ts/canview/CanItemIcoVal;

    .line 150
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_sudu:I

    sget v1, Lcom/ts/MainUI/R$string;->can_speed:I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->AddIcoValItem(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mItemSpeed:Lcom/ts/canview/CanItemIcoVal;

    .line 152
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 173
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 158
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 162
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->ShowItem(I)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method protected ResetData(Z)V
    .locals 10
    .param p1, "check"    # Z

    .prologue
    const v9, 0x3dcccccd    # 0.1f

    const/16 v8, 0xfa0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->E90GetSetData(Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;)V

    .line 77
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->E90GetDriveData(Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;)V

    .line 78
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;->Update:I

    invoke-static {v0}, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;->Update:I

    invoke-static {v0}, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;->Update:I

    .line 83
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;->Update:I

    .line 85
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;->Range:I

    if-le v0, v8, :cond_2

    .line 87
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mItemRange:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "----"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;->Speed:I

    if-le v0, v8, :cond_3

    .line 96
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mItemSpeed:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "--.-"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 103
    :goto_1
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;->Consumption:I

    if-le v0, v8, :cond_4

    .line 105
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mItemConsump:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "--.-"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 115
    :cond_1
    :goto_2
    return-void

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mItemRange:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "%d %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;->Range:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mRangeArr:[Ljava/lang/String;

    iget-object v4, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;->DWJl:I

    and-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mItemSpeed:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "%.1f %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;->Speed:I

    int-to-float v3, v3

    mul-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mSpeedArr:[Ljava/lang/String;

    iget-object v4, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;->DWJl:I

    and-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mItemConsump:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "%.1f %s"

    new-array v2, v7, [Ljava/lang/Object;

    .line 110
    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;->Consumption:I

    int-to-float v3, v3

    mul-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mConsumpArr:[Ljava/lang/String;

    iget-object v4, p0, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;->DWConsumption:I

    and-int/lit8 v4, v4, 0x3

    aget-object v3, v3, v4

    aput-object v3, v2, v6

    .line 109
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 188
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->ResetData(Z)V

    .line 226
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 218
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->InitUI()V

    .line 72
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 139
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 141
    const-string v0, "CanE90DriveInfoActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 126
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->ResetData(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;->QueryData()V

    .line 130
    const-string v0, "CanE90DriveInfoActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method
