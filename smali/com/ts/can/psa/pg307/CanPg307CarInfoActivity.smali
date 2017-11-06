.class public Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanPg307CarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_DISTANCE_XSLC:I = 0x2

.field public static final ITEM_DSITANCE_YSLC:I = 0x1

.field private static final ITEM_MAX:I = 0x6

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_PJCS:I = 0x5

.field public static final ITEM_PJYH:I = 0x3

.field public static final ITEM_SSCS:I = 0x6

.field public static final ITEM_SSYH:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanPg307CarInfoActivity"


# instance fields
.field private mItemPjcs:Lcom/ts/canview/CanItemTitleValList;

.field private mItemPjyh:Lcom/ts/canview/CanItemTitleValList;

.field private mItemSscs:Lcom/ts/canview/CanItemTitleValList;

.field private mItemSsyh:Lcom/ts/canview/CanItemTitleValList;

.field private mItemXslc:Lcom/ts/canview/CanItemTitleValList;

.field private mItemYslc:Lcom/ts/canview/CanItemTitleValList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mPjcs:Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;

.field private mPjyh:Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;

.field private mSscs:Lcom/lgb/canmodule/CanDataInfo$Pg2xSscs;

.field private mSsyh:Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;

.field private mXslc:Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;

.field private mYslc:Lcom/lgb/canmodule/CanDataInfo$Pg2xYslc;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xYslc;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Pg2xYslc;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mYslc:Lcom/lgb/canmodule/CanDataInfo$Pg2xYslc;

    .line 45
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mXslc:Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;

    .line 46
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mPjyh:Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;

    .line 47
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mSsyh:Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;

    .line 48
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mPjcs:Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;

    .line 49
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xSscs;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Pg2xSscs;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mSscs:Lcom/lgb/canmodule/CanDataInfo$Pg2xSscs;

    .line 21
    return-void
.end method


# virtual methods
.method protected AddItemTitleVal(II)Lcom/ts/canview/CanItemTitleValList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 223
    new-instance v0, Lcom/ts/canview/CanItemTitleValList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTitleValList;-><init>(Landroid/content/Context;I)V

    .line 224
    .local v0, "item":Lcom/ts/canview/CanItemTitleValList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTitleValList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 225
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetIconVisibility(I)V

    .line 226
    iget-object v1, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 227
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->ShowGone(Z)V

    .line 228
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetIconVisibility(I)V

    .line 229
    return-object v0
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 179
    sget v0, Lcom/ts/MainUI/R$string;->can_dis_trav:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->AddItemTitleVal(II)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mItemYslc:Lcom/ts/canview/CanItemTitleValList;

    .line 180
    sget v0, Lcom/ts/MainUI/R$string;->can_range_xhlc:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->AddItemTitleVal(II)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mItemXslc:Lcom/ts/canview/CanItemTitleValList;

    .line 181
    sget v0, Lcom/ts/MainUI/R$string;->can_pjyh:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->AddItemTitleVal(II)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mItemPjyh:Lcom/ts/canview/CanItemTitleValList;

    .line 182
    sget v0, Lcom/ts/MainUI/R$string;->can_ssyh:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->AddItemTitleVal(II)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mItemSsyh:Lcom/ts/canview/CanItemTitleValList;

    .line 183
    sget v0, Lcom/ts/MainUI/R$string;->can_avg_speed:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->AddItemTitleVal(II)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mItemPjcs:Lcom/ts/canview/CanItemTitleValList;

    .line 186
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 196
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->ShowItem(I)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method protected ResetData(Z)V
    .locals 7
    .param p1, "check"    # Z

    .prologue
    const v6, 0xffff

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mYslc:Lcom/lgb/canmodule/CanDataInfo$Pg2xYslc;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->Pg2xGetYslcData(Lcom/lgb/canmodule/CanDataInfo$Pg2xYslc;)V

    .line 69
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mYslc:Lcom/lgb/canmodule/CanDataInfo$Pg2xYslc;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xYslc;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mYslc:Lcom/lgb/canmodule/CanDataInfo$Pg2xYslc;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xYslc;->Update:I

    invoke-static {v0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mYslc:Lcom/lgb/canmodule/CanDataInfo$Pg2xYslc;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xYslc;->Update:I

    .line 74
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mItemYslc:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "%d Km"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mYslc:Lcom/lgb/canmodule/CanDataInfo$Pg2xYslc;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Pg2xYslc;->uwLC:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mXslc:Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->Pg2xGetXhlcData(Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;)V

    .line 79
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mXslc:Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mXslc:Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;->Update:I

    invoke-static {v0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mXslc:Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;->Update:I

    .line 84
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mXslc:Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;->uwLC:I

    if-ne v0, v6, :cond_a

    .line 86
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mItemXslc:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "--"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 93
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mPjyh:Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->Pg2xGetPjyhData(Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;)V

    .line 94
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mPjyh:Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mPjyh:Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;->Update:I

    invoke-static {v0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mPjyh:Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;->Update:I

    .line 99
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mPjyh:Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;->uwYH:I

    if-ne v0, v6, :cond_b

    .line 101
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mItemPjyh:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "--"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 108
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mSsyh:Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->Pg2xGetSsyhData(Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;)V

    .line 109
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mSsyh:Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mSsyh:Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;->Update:I

    invoke-static {v0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 113
    :cond_6
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mSsyh:Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;->Update:I

    .line 114
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mSsyh:Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;->uwYH:I

    if-ne v0, v6, :cond_c

    .line 116
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mItemSsyh:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "--"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 123
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mPjcs:Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->Pg2xGetPjcsData(Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;)V

    .line 124
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mPjcs:Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 126
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mPjcs:Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;->Update:I

    invoke-static {v0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 128
    :cond_8
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mPjcs:Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;->Update:I

    .line 129
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mPjcs:Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;->uwSpeed:I

    const/16 v1, 0xfa

    if-le v0, v1, :cond_d

    .line 131
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mItemPjcs:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "--"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 148
    :cond_9
    :goto_3
    return-void

    .line 89
    :cond_a
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mItemXslc:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "%d Km"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mXslc:Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;->uwLC:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :cond_b
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mItemPjyh:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "%d L/100km"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mPjyh:Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;->uwYH:I

    div-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 119
    :cond_c
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mItemSsyh:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "%d L/100km"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mSsyh:Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;->uwYH:I

    div-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 134
    :cond_d
    iget-object v0, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mItemPjcs:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "%d Km/h"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->mPjcs:Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;->uwSpeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 213
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->ResetData(Z)V

    .line 253
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 245
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->InitUI()V

    .line 63
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 172
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 173
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 159
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->ResetData(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/ts/can/psa/pg307/CanPg307CarInfoActivity;->QueryData()V

    .line 165
    return-void
.end method
