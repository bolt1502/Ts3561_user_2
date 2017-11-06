.class public Lcom/ts/can/CanGolfSetServiceActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfSetServiceActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanGolfSetServiceActivity"


# instance fields
.field private mInspecDays:Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;

.field private mInspecDis:Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;

.field private mItemInspecTitle:Lcom/ts/canview/CanItemBlankTextList;

.field private mItemInspection:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemNoTitle:Lcom/ts/canview/CanItemBlankTextList;

.field private mItemOil:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemOilTitle:Lcom/ts/canview/CanItemBlankTextList;

.field private mItemVehiNo:Lcom/ts/canview/CanItemTextBtnList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mOilDays:Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;

.field private mOilDis:Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;

.field private mStrDays:Ljava/lang/String;

.field private mStrDisDWArray:[Ljava/lang/String;

.field private mStrFm1:Ljava/lang/String;

.field private mStrFm2:Ljava/lang/String;

.field private mStrOverDue:Ljava/lang/String;

.field private mVehicleNo:Lcom/lgb/canmodule/CanDataInfo$GolfVehicleNo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 30
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfVehicleNo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfVehicleNo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mVehicleNo:Lcom/lgb/canmodule/CanDataInfo$GolfVehicleNo;

    .line 31
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mInspecDays:Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;

    .line 32
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mOilDays:Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;

    .line 33
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mInspecDis:Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;

    .line 34
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mOilDis:Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    const-string v2, "km"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 43
    const-string v2, "mi"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mStrDisDWArray:[Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected FormatData(Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;)Ljava/lang/String;
    .locals 11
    .param p1, "days"    # Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;
    .param p2, "dis"    # Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 167
    const-string v0, ""

    .line 168
    .local v0, "strData":Ljava/lang/String;
    const-string v1, ""

    .line 169
    .local v1, "strDays":Ljava/lang/String;
    const-string v2, ""

    .line 170
    .local v2, "strDis":Ljava/lang/String;
    iget v3, p1, Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;->ShowType:I

    packed-switch v3, :pswitch_data_0

    .line 188
    :goto_0
    iget v3, p2, Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;->ShowType:I

    packed-switch v3, :pswitch_data_1

    .line 206
    :goto_1
    const-string v3, "%s %s %s %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mStrFm1:Ljava/lang/String;

    aput-object v5, v4, v7

    aput-object v2, v4, v8

    iget-object v5, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mStrFm2:Ljava/lang/String;

    aput-object v5, v4, v9

    aput-object v1, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    return-object v0

    .line 173
    :pswitch_0
    const-string v1, "--"

    .line 174
    goto :goto_0

    .line 177
    :pswitch_1
    const-string v3, "%d %s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, p1, Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;->Value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mStrDays:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 178
    goto :goto_0

    .line 181
    :pswitch_2
    const-string v3, "%s %d %s"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mStrOverDue:Ljava/lang/String;

    aput-object v5, v4, v7

    iget v5, p1, Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;->Value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mStrDays:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 182
    goto :goto_0

    .line 191
    :pswitch_3
    const-string v2, "--"

    .line 192
    goto :goto_1

    .line 195
    :pswitch_4
    const-string v3, "%d %s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, p2, Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;->Value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mStrDisDWArray:[Ljava/lang/String;

    iget v6, p2, Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;->DW:I

    and-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 196
    goto :goto_1

    .line 199
    :pswitch_5
    const-string v3, "%s %d %s"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mStrOverDue:Ljava/lang/String;

    aput-object v5, v4, v7

    iget v5, p1, Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;->Value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mStrDisDWArray:[Ljava/lang/String;

    iget v6, p2, Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;->DW:I

    and-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 200
    goto/16 :goto_1

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 188
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 142
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 144
    new-instance v0, Lcom/ts/canview/CanItemBlankTextList;

    sget v1, Lcom/ts/MainUI/R$string;->can_vehi_n_o:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemBlankTextList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemNoTitle:Lcom/ts/canview/CanItemBlankTextList;

    .line 145
    new-instance v0, Lcom/ts/canview/CanItemBlankTextList;

    sget v1, Lcom/ts/MainUI/R$string;->can_inspection:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemBlankTextList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemInspecTitle:Lcom/ts/canview/CanItemBlankTextList;

    .line 146
    new-instance v0, Lcom/ts/canview/CanItemBlankTextList;

    sget v1, Lcom/ts/MainUI/R$string;->can_oil_change:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemBlankTextList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemOilTitle:Lcom/ts/canview/CanItemBlankTextList;

    .line 148
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, v2}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemVehiNo:Lcom/ts/canview/CanItemTextBtnList;

    .line 149
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemVehiNo:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 150
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, v2}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemInspection:Lcom/ts/canview/CanItemTextBtnList;

    .line 151
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemInspection:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 152
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, v2}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemOil:Lcom/ts/canview/CanItemTextBtnList;

    .line 153
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemOil:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 155
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemNoTitle:Lcom/ts/canview/CanItemBlankTextList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemBlankTextList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemVehiNo:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemInspecTitle:Lcom/ts/canview/CanItemBlankTextList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemBlankTextList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemInspection:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemOilTitle:Lcom/ts/canview/CanItemBlankTextList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemBlankTextList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemOil:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 162
    return-void
.end method

.method protected QueryData()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x5

    const/16 v1, 0x63

    .line 106
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 107
    invoke-virtual {p0, v2, v3}, Lcom/ts/can/CanGolfSetServiceActivity;->Sleep(J)V

    .line 109
    const/16 v0, 0x10

    invoke-static {v1, v0}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 110
    invoke-virtual {p0, v2, v3}, Lcom/ts/can/CanGolfSetServiceActivity;->Sleep(J)V

    .line 112
    const/16 v0, 0x11

    invoke-static {v1, v0}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 113
    invoke-virtual {p0, v2, v3}, Lcom/ts/can/CanGolfSetServiceActivity;->Sleep(J)V

    .line 115
    const/16 v0, 0x20

    invoke-static {v1, v0}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 116
    invoke-virtual {p0, v2, v3}, Lcom/ts/can/CanGolfSetServiceActivity;->Sleep(J)V

    .line 118
    const/16 v0, 0x21

    invoke-static {v1, v0}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 119
    return-void
.end method

.method protected ResetData(Z)V
    .locals 6
    .param p1, "check"    # Z

    .prologue
    const/4 v5, 0x0

    .line 72
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mVehicleNo:Lcom/lgb/canmodule/CanDataInfo$GolfVehicleNo;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mInspecDays:Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mOilDays:Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;

    iget-object v3, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mInspecDis:Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;

    iget-object v4, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mOilDis:Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lgb/canmodule/CanJni;->GolfGetService(Lcom/lgb/canmodule/CanDataInfo$GolfVehicleNo;Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;)V

    .line 73
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mVehicleNo:Lcom/lgb/canmodule/CanDataInfo$GolfVehicleNo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfVehicleNo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetServiceActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mVehicleNo:Lcom/lgb/canmodule/CanDataInfo$GolfVehicleNo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfVehicleNo;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetServiceActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mVehicleNo:Lcom/lgb/canmodule/CanDataInfo$GolfVehicleNo;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$GolfVehicleNo;->Update:I

    .line 78
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemVehiNo:Lcom/ts/canview/CanItemTextBtnList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mVehicleNo:Lcom/lgb/canmodule/CanDataInfo$GolfVehicleNo;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfVehicleNo;->szNo:[B

    invoke-static {v1}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mInspecDays:Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetServiceActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mInspecDis:Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetServiceActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mInspecDays:Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetServiceActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mInspecDis:Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetServiceActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mInspecDays:Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;->Update:I

    .line 87
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mInspecDis:Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;->Update:I

    .line 88
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemInspection:Lcom/ts/canview/CanItemTextBtnList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mInspecDays:Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mInspecDis:Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanGolfSetServiceActivity;->FormatData(Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mOilDays:Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetServiceActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mOilDis:Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetServiceActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mOilDays:Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetServiceActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mOilDis:Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetServiceActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mOilDays:Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;->Update:I

    .line 97
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mOilDis:Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;->Update:I

    .line 98
    iget-object v0, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mItemOil:Lcom/ts/canview/CanItemTextBtnList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mOilDays:Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mOilDis:Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanGolfSetServiceActivity;->FormatData(Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    .line 101
    :cond_5
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetServiceActivity;->ResetData(Z)V

    .line 137
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanGolfSetServiceActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetServiceActivity;->InitUI()V

    .line 57
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/ts/MainUI/R$string;->can_days:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mStrDays:Ljava/lang/String;

    .line 59
    sget v1, Lcom/ts/MainUI/R$string;->can_overdue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mStrOverDue:Ljava/lang/String;

    .line 60
    sget v1, Lcom/ts/MainUI/R$string;->can_gf_service_fm1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mStrFm1:Ljava/lang/String;

    .line 61
    sget v1, Lcom/ts/MainUI/R$string;->can_gf_service_fm2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfSetServiceActivity;->mStrFm2:Ljava/lang/String;

    .line 63
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "file.encoding"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "user.language"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "user.region"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 127
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetServiceActivity;->ResetData(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetServiceActivity;->QueryData()V

    .line 130
    return-void
.end method
