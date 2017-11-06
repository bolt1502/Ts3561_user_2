.class public Lcom/ts/can/CanGolfSetUnitsActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfSetUnitsActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final ITEM_MAX:I = 0x6

.field private static final ITEM_MIN:I = 0x1

.field private static final ITEM_OIL:I = 0x5

.field private static final ITEM_RANGE:I = 0x1

.field private static final ITEM_SPEED:I = 0x2

.field private static final ITEM_TEMP:I = 0x3

.field private static final ITEM_TYRES:I = 0x6

.field private static final ITEM_VOLUME:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanGolfSetUnitsActivity"

.field private static final mOilDW:[Ljava/lang/String;

.field private static final mRangeDW:[Ljava/lang/String;

.field private static final mSpeedDW:[Ljava/lang/String;

.field private static final mTempDW:[Ljava/lang/String;

.field private static final mTyresDW:[Ljava/lang/String;

.field private static final mVolumeDW:[Ljava/lang/String;


# instance fields
.field private mAdtUnits:Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;

.field private mItemOil:Lcom/ts/canview/CanItemPopupList;

.field private mItemRange:Lcom/ts/canview/CanItemPopupList;

.field private mItemSpeed:Lcom/ts/canview/CanItemPopupList;

.field private mItemTemp:Lcom/ts/canview/CanItemPopupList;

.field private mItemTyres:Lcom/ts/canview/CanItemPopupList;

.field private mItemVolume:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mUnitsData:Lcom/lgb/canmodule/CanDataInfo$GolfUnits;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "km"

    aput-object v1, v0, v2

    const-string v1, "mi"

    aput-object v1, v0, v3

    sput-object v0, Lcom/ts/can/CanGolfSetUnitsActivity;->mRangeDW:[Ljava/lang/String;

    .line 29
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "km/h"

    aput-object v1, v0, v2

    const-string v1, "mph"

    aput-object v1, v0, v3

    sput-object v0, Lcom/ts/can/CanGolfSetUnitsActivity;->mSpeedDW:[Ljava/lang/String;

    .line 30
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u2103"

    aput-object v1, v0, v2

    const-string v1, "\u2109"

    aput-object v1, v0, v3

    sput-object v0, Lcom/ts/can/CanGolfSetUnitsActivity;->mTempDW:[Ljava/lang/String;

    .line 31
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "L"

    aput-object v1, v0, v2

    const-string v1, "gal(UK)"

    aput-object v1, v0, v3

    const-string v1, "gal(US)"

    aput-object v1, v0, v4

    sput-object v0, Lcom/ts/can/CanGolfSetUnitsActivity;->mVolumeDW:[Ljava/lang/String;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mpg(UK)"

    aput-object v1, v0, v2

    const-string v1, "L/100km"

    aput-object v1, v0, v3

    const-string v1, "mpg(US)"

    aput-object v1, v0, v4

    const-string v1, "km/l"

    aput-object v1, v0, v5

    sput-object v0, Lcom/ts/can/CanGolfSetUnitsActivity;->mOilDW:[Ljava/lang/String;

    .line 33
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "bar"

    aput-object v1, v0, v2

    const-string v1, "psi"

    aput-object v1, v0, v3

    const-string v1, "kPa"

    aput-object v1, v0, v4

    sput-object v0, Lcom/ts/can/CanGolfSetUnitsActivity;->mTyresDW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfUnits;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfUnits;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mUnitsData:Lcom/lgb/canmodule/CanDataInfo$GolfUnits;

    .line 45
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mAdtUnits:Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;

    .line 15
    return-void
.end method


# virtual methods
.method protected AddItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/ts/can/CanGolfSetUnitsActivity;->IsHaveItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 193
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 196
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemRange:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 200
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemSpeed:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemTemp:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 208
    :pswitch_3
    iget-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemVolume:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 212
    :pswitch_4
    iget-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemOil:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 216
    :pswitch_5
    iget-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemTyres:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 129
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 130
    iget-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 132
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_distance_l_c:I

    sget-object v2, Lcom/ts/can/CanGolfSetUnitsActivity;->mRangeDW:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemRange:Lcom/ts/canview/CanItemPopupList;

    .line 133
    iget-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemRange:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 135
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_speed:I

    sget-object v2, Lcom/ts/can/CanGolfSetUnitsActivity;->mSpeedDW:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemSpeed:Lcom/ts/canview/CanItemPopupList;

    .line 136
    iget-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemSpeed:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 138
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_temperature:I

    sget-object v2, Lcom/ts/can/CanGolfSetUnitsActivity;->mTempDW:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemTemp:Lcom/ts/canview/CanItemPopupList;

    .line 139
    iget-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemTemp:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 141
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_volume:I

    sget-object v2, Lcom/ts/can/CanGolfSetUnitsActivity;->mVolumeDW:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemVolume:Lcom/ts/canview/CanItemPopupList;

    .line 142
    iget-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemVolume:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 144
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_consumption:I

    sget-object v2, Lcom/ts/can/CanGolfSetUnitsActivity;->mOilDW:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemOil:Lcom/ts/canview/CanItemPopupList;

    .line 145
    iget-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemOil:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 147
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_pressure:I

    sget-object v2, Lcom/ts/can/CanGolfSetUnitsActivity;->mTyresDW:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemTyres:Lcom/ts/canview/CanItemPopupList;

    .line 148
    iget-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemTyres:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 149
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 183
    :goto_0
    invoke-static {v0}, Lcom/ts/can/CanGolfSetUnitsActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 157
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mAdtUnits:Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;->Distance:I

    .line 158
    goto :goto_0

    .line 161
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mAdtUnits:Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;->Speed:I

    .line 162
    goto :goto_0

    .line 165
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mAdtUnits:Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;->Temp:I

    .line 166
    goto :goto_0

    .line 169
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mAdtUnits:Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;->Volume:I

    .line 170
    goto :goto_0

    .line 173
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mAdtUnits:Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;->Consumption:I

    .line 174
    goto :goto_0

    .line 177
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mAdtUnits:Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;->Pressure:I

    .line 178
    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected QueryData()V
    .locals 3

    .prologue
    const/16 v2, 0x90

    .line 97
    iget-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mAdtUnits:Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetUnitsActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const/16 v0, 0x41

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 100
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetUnitsActivity;->Sleep(J)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mUnitsData:Lcom/lgb/canmodule/CanDataInfo$GolfUnits;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfUnits;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetUnitsActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    const/16 v0, 0x40

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 107
    :cond_1
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    .line 60
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mAdtUnits:Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetUnitsActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mAdtUnits:Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GolfGetAdtUntis(Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;)V

    .line 63
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mAdtUnits:Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetUnitsActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v1}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 68
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-le v0, v1, :cond_3

    .line 79
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mUnitsData:Lcom/lgb/canmodule/CanDataInfo$GolfUnits;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GolfGetUnits(Lcom/lgb/canmodule/CanDataInfo$GolfUnits;)V

    .line 80
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mUnitsData:Lcom/lgb/canmodule/CanDataInfo$GolfUnits;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfUnits;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetUnitsActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mUnitsData:Lcom/lgb/canmodule/CanDataInfo$GolfUnits;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfUnits;->Update:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetUnitsActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mUnitsData:Lcom/lgb/canmodule/CanDataInfo$GolfUnits;

    const/4 v2, 0x0

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$GolfUnits;->Update:I

    .line 85
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemOil:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mUnitsData:Lcom/lgb/canmodule/CanDataInfo$GolfUnits;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfUnits;->ConsumptionDW:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 86
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemRange:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mUnitsData:Lcom/lgb/canmodule/CanDataInfo$GolfUnits;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfUnits;->DistanceDW:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 87
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemSpeed:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mUnitsData:Lcom/lgb/canmodule/CanDataInfo$GolfUnits;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfUnits;->SpeedDW:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 88
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemTemp:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mUnitsData:Lcom/lgb/canmodule/CanDataInfo$GolfUnits;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfUnits;->TempDW:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 89
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemTyres:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mUnitsData:Lcom/lgb/canmodule/CanDataInfo$GolfUnits;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfUnits;->PressureDW:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 90
    iget-object v1, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mItemVolume:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetUnitsActivity;->mUnitsData:Lcom/lgb/canmodule/CanDataInfo$GolfUnits;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfUnits;->VolumeDW:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 93
    :cond_2
    return-void

    .line 70
    .restart local v0    # "i":I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetUnitsActivity;->AddItem(I)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetUnitsActivity;->ResetData(Z)V

    .line 264
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetUnitsActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetUnitsActivity;->InitUI()V

    .line 56
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 228
    packed-switch p1, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 231
    :pswitch_0
    const/16 v0, 0x90

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 235
    :pswitch_1
    const/16 v0, 0x91

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 239
    :pswitch_2
    const/16 v0, 0x92

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 243
    :pswitch_3
    const/16 v0, 0x93

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 247
    :pswitch_4
    const/16 v0, 0x94

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 251
    :pswitch_5
    const/16 v0, 0x95

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 124
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 125
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 113
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetUnitsActivity;->ResetData(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetUnitsActivity;->QueryData()V

    .line 117
    return-void
.end method
