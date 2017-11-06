.class public Lcom/ts/can/CanToyotaCarInfoActivity;
.super Lcom/ts/can/CanToyotaBaseActivity;
.source "CanToyotaCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_CARTYPE_SET:I = 0x0

.field public static final ITEM_CONSUMPTION:I = 0x2

.field public static final ITEM_HYBRID:I = 0x4

.field public static final ITEM_PERSON_SET:I = 0x1

.field public static final ITEM_TPMS:I = 0x3

.field public static final ITEM_VOL:I = 0x5

.field public static final TAG:Ljava/lang/String; = "CanToyotaCarInfoActivity"

.field protected static final TOTAL_ITEM:I = 0x5

.field public static final mOptIco:[I

.field public static final mOptId:[I

.field public static final mOptTitle:[I

.field public static mVol:I


# instance fields
.field private mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

.field protected mItemVol:Lcom/ts/canview/CanItemProgressList;

.field protected mOpt:[Lcom/ts/canview/CanItemIcoList;

.field private mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 33
    sput v6, Lcom/ts/can/CanToyotaCarInfoActivity;->mVol:I

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 42
    aput v2, v0, v2

    .line 43
    aput v3, v0, v3

    .line 44
    aput v4, v0, v4

    .line 45
    aput v5, v0, v5

    .line 39
    sput-object v0, Lcom/ts/can/CanToyotaCarInfoActivity;->mOptId:[I

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 50
    sget v1, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    aput v1, v0, v6

    .line 51
    sget v1, Lcom/ts/MainUI/R$string;->can_car_gxh:I

    aput v1, v0, v2

    .line 52
    sget v1, Lcom/ts/MainUI/R$string;->can_consumption:I

    aput v1, v0, v3

    .line 53
    sget v1, Lcom/ts/MainUI/R$string;->can_pressure:I

    aput v1, v0, v4

    .line 54
    sget v1, Lcom/ts/MainUI/R$string;->can_hybrid_image:I

    aput v1, v0, v5

    .line 48
    sput-object v0, Lcom/ts/can/CanToyotaCarInfoActivity;->mOptTitle:[I

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 59
    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_service:I

    aput v1, v0, v6

    .line 60
    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    aput v1, v0, v2

    .line 61
    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_consumption:I

    aput v1, v0, v3

    .line 62
    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_tpms:I

    aput v1, v0, v4

    .line 63
    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_hybrid:I

    aput v1, v0, v5

    .line 57
    sput-object v0, Lcom/ts/can/CanToyotaCarInfoActivity;->mOptIco:[I

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanToyotaBaseActivity;-><init>()V

    .line 35
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    .line 36
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    .line 18
    return-void
.end method

.method private ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ToyotaGetTpms(Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;)V

    .line 148
    iget-object v0, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;->UpdateOnce:I

    if-eqz v0, :cond_4

    .line 150
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;->Update:I

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;->Update:I

    .line 153
    iget-object v0, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;->fgAvalid:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(I)V

    .line 165
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ToyotaGetHybrid(Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;)V

    .line 166
    iget-object v0, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->UpdateOnce:I

    if-eqz v0, :cond_5

    .line 168
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->Update:I

    if-eqz v0, :cond_3

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->Update:I

    .line 171
    iget-object v0, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->fgHybrid:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(I)V

    .line 184
    :cond_3
    :goto_1
    return-void

    .line 159
    :cond_4
    if-nez p1, :cond_1

    .line 161
    const/16 v0, 0x25

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->ToyotaQuery(II)V

    goto :goto_0

    .line 177
    :cond_5
    if-nez p1, :cond_3

    .line 179
    const/16 v0, 0x1f

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->ToyotaQuery(II)V

    goto :goto_1
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/CanToyotaCarInfoActivity;->ResetData(Z)V

    .line 191
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mItemVol:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, p2}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 198
    const/4 v0, 0x7

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->ToyotaAmpSet(II)V

    .line 199
    sput p2, Lcom/ts/can/CanToyotaCarInfoActivity;->mVol:I

    .line 200
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 99
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 102
    :pswitch_0
    const-class v1, Lcom/ts/can/CanToyotaCarTypeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanToyotaCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 106
    :pswitch_1
    const-class v1, Lcom/ts/can/CanToyotaSetMainActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanToyotaCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 110
    :pswitch_2
    const-class v1, Lcom/ts/can/CanToyotaTripPerMinActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanToyotaCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 114
    :pswitch_3
    const-class v1, Lcom/ts/can/CanToyotaTpmsActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanToyotaCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 118
    :pswitch_4
    const-class v1, Lcom/ts/can/CanToyotaHybridActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanToyotaCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/ts/can/CanToyotaBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget v2, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanToyotaCarInfoActivity;->setContentView(I)V

    .line 73
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    .line 74
    .local v1, "sl":Lcom/ts/canview/CanScrollList;
    new-array v2, v7, [Lcom/ts/canview/CanItemIcoList;

    iput-object v2, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v7, :cond_0

    .line 84
    iget-object v2, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2, v6}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 85
    iget-object v2, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2, v6}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 87
    new-instance v2, Lcom/ts/canview/CanItemProgressList;

    const-string v3, "\u97f3\u91cf"

    invoke-direct {v2, p0, v3}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mItemVol:Lcom/ts/canview/CanItemProgressList;

    .line 88
    iget-object v2, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mItemVol:Lcom/ts/canview/CanItemProgressList;

    const/16 v3, 0x3f

    invoke-virtual {v2, v6, v3}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 89
    iget-object v2, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mItemVol:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v2, v7, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 92
    return-void

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    new-instance v3, Lcom/ts/canview/CanItemIcoList;

    sget-object v4, Lcom/ts/can/CanToyotaCarInfoActivity;->mOptIco:[I

    aget v4, v4, v0

    sget-object v5, Lcom/ts/can/CanToyotaCarInfoActivity;->mOptTitle:[I

    aget v5, v5, v0

    invoke-direct {v3, p0, v4, v5}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    aput-object v3, v2, v0

    .line 79
    iget-object v2, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/ts/can/CanToyotaCarInfoActivity;->mOptId:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object v2, p0, Lcom/ts/can/CanToyotaCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 130
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onPause()V

    .line 131
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onResume()V

    .line 138
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/CanToyotaCarInfoActivity;->ResetData(Z)V

    .line 143
    return-void
.end method
