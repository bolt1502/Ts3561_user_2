.class public Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanX1DriveInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_CLDHZS:I = 0x4

.field public static final ITEM_CLYDZS:I = 0x3

.field private static final ITEM_MAX:I = 0x7

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_RANGE:I = 0x1

.field public static final ITEM_RYSL:I = 0x5

.field public static final ITEM_RYZXLC:I = 0x7

.field public static final ITEM_SPEED:I = 0x2

.field public static final ITEM_XSLC:I = 0x6

.field public static final TAG:Ljava/lang/String; = "CanX1DriveInfoActivity"


# instance fields
.field protected mDrive:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;

.field protected mItemCldhzs:Lcom/ts/canview/CanItemIcoVal;

.field protected mItemClydzs:Lcom/ts/canview/CanItemIcoVal;

.field protected mItemRange:Lcom/ts/canview/CanItemIcoVal;

.field protected mItemRysl:Lcom/ts/canview/CanItemIcoVal;

.field protected mItemRyxhlc:Lcom/ts/canview/CanItemIcoVal;

.field protected mItemSpeed:Lcom/ts/canview/CanItemIcoVal;

.field protected mItemXslc:Lcom/ts/canview/CanItemIcoVal;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mRangeArr:[Ljava/lang/String;

.field protected mRyslArr:[Ljava/lang/String;

.field protected mSpeedArr:[Ljava/lang/String;

.field protected mState:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;

.field protected mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;

.field private mbLayout:Z

.field protected mlcArr:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 37
    new-array v0, v3, [Ljava/lang/String;

    .line 38
    const-string v1, "L"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mRyslArr:[Ljava/lang/String;

    .line 42
    new-array v0, v3, [Ljava/lang/String;

    .line 43
    const-string v1, "rpm"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mRangeArr:[Ljava/lang/String;

    .line 47
    new-array v0, v3, [Ljava/lang/String;

    .line 48
    const-string v1, "km/h"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mSpeedArr:[Ljava/lang/String;

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    .line 53
    const-string v1, "\u516c\u91cc"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mlcArr:[Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;-><init>()V

    iput-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;

    .line 69
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;-><init>()V

    iput-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mState:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;

    .line 70
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;-><init>()V

    iput-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mDrive:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;

    .line 20
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 252
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 253
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 254
    iget-object v1, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 255
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 256
    return-object v0
.end method

.method protected AddIcoValItem(III)Lcom/ts/canview/CanItemIcoVal;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 261
    new-instance v0, Lcom/ts/canview/CanItemIcoVal;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoVal;-><init>(Landroid/content/Context;II)V

    .line 262
    .local v0, "item":Lcom/ts/canview/CanItemIcoVal;
    iget-object v1, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoVal;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 263
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 202
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 204
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_tyres:I

    sget v1, Lcom/ts/MainUI/R$string;->can_rpm:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->AddIcoValItem(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemRange:Lcom/ts/canview/CanItemIcoVal;

    .line 205
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_sudu:I

    sget v1, Lcom/ts/MainUI/R$string;->can_speed:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->AddIcoValItem(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemSpeed:Lcom/ts/canview/CanItemIcoVal;

    .line 206
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_pm:I

    sget v1, Lcom/ts/MainUI/R$string;->can_xc_info:I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->AddIcoValItem(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemClydzs:Lcom/ts/canview/CanItemIcoVal;

    .line 207
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_lock3:I

    sget v1, Lcom/ts/MainUI/R$string;->can_vehi_status:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->AddIcoValItem(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemCldhzs:Lcom/ts/canview/CanItemIcoVal;

    .line 208
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_units:I

    sget v1, Lcom/ts/MainUI/R$string;->can_rest_oil:I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->AddIcoValItem(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemRysl:Lcom/ts/canview/CanItemIcoVal;

    .line 209
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_youhao:I

    sget v1, Lcom/ts/MainUI/R$string;->can_yslc:I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->AddIcoValItem(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemXslc:Lcom/ts/canview/CanItemIcoVal;

    .line 210
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_mfd:I

    sget v1, Lcom/ts/MainUI/R$string;->can_range_xhlc:I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->AddIcoValItem(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemRyxhlc:Lcom/ts/canview/CanItemIcoVal;

    .line 212
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 233
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 222
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->ShowItem(I)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 173
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->BmwX1CarQuery(I)V

    .line 174
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->BmwX1CarQuery(I)V

    .line 175
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->BmwX1CarQuery(I)V

    .line 176
    return-void
.end method

.method protected ResetData(Z)V
    .locals 7
    .param p1, "check"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->BmwX1GetTrip(Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;)V

    .line 86
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;->Update:I

    invoke-static {v0}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;->Range:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_6

    .line 92
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemRange:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "----"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;->Speed:I

    const/16 v1, 0x190

    if-le v0, v1, :cond_7

    .line 101
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemSpeed:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "--.-"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 109
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mState:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->BmwX1GetState(Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;)V

    .line 110
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mState:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mState:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;->Update:I

    invoke-static {v0}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mState:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;->Clydzs:I

    invoke-static {v0}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 116
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemClydzs:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "\u79fb\u52a8"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 123
    :goto_2
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mState:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;->Cldhzs:I

    invoke-static {v0}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 125
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemCldhzs:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "\u542f\u52a8"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 132
    :goto_3
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mState:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;->Rysl:I

    const/16 v1, 0x50

    if-le v0, v1, :cond_a

    .line 134
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemRysl:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "--.-"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 143
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mDrive:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->BmwX1GetDrive(Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;)V

    .line 144
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mDrive:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mDrive:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;->Update:I

    invoke-static {v0}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mDrive:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;->Xskc:I

    const v1, 0x989680

    if-le v0, v1, :cond_b

    .line 150
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemXslc:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "--.-"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 157
    :goto_5
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mDrive:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;->ryxhlc:I

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_c

    .line 159
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemRyxhlc:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "--.-"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 169
    :cond_5
    :goto_6
    return-void

    .line 96
    :cond_6
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemRange:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "%d %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;->Range:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mRangeArr:[Ljava/lang/String;

    aget-object v3, v3, v4

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_7
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemSpeed:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "%d %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;->Speed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mSpeedArr:[Ljava/lang/String;

    aget-object v3, v3, v4

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 120
    :cond_8
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemClydzs:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "\u9759\u6b62"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 129
    :cond_9
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemCldhzs:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "\u7184\u706b"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 138
    :cond_a
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemRysl:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "%d %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mState:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;->Rysl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mRyslArr:[Ljava/lang/String;

    aget-object v3, v3, v4

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 154
    :cond_b
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemXslc:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "%d %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mDrive:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;->Xskc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mlcArr:[Ljava/lang/String;

    aget-object v3, v3, v4

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 163
    :cond_c
    iget-object v0, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mItemRyxhlc:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "%d %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mDrive:Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;->ryxhlc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->mlcArr:[Ljava/lang/String;

    aget-object v3, v3, v4

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 248
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->ResetData(Z)V

    .line 286
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 278
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->InitUI()V

    .line 81
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 195
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 197
    const-string v0, "CanX1DriveInfoActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 182
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->ResetData(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/ts/can/bmw/x1/CanX1DriveInfoActivity;->QueryData()V

    .line 186
    const-string v0, "CanX1DriveInfoActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method
