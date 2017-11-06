.class public Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanToyotaSpyCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_CAR_INFO:I = 0x0

.field public static final ITEM_CONSUMPTION:I = 0x1

.field public static final ITEM_HYBRID:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanToyotaSpyCarInfoActivity"

.field protected static final TOTAL_ITEM:I = 0x3

.field public static final mOptIco:[I

.field public static final mOptId:[I

.field public static final mOptTitle:[I


# instance fields
.field private mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

.field protected mOpt:[Lcom/ts/canview/CanItemIcoList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 32
    new-array v0, v4, [I

    .line 34
    aput v2, v0, v2

    .line 35
    aput v3, v0, v3

    .line 31
    sput-object v0, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mOptId:[I

    .line 39
    new-array v0, v4, [I

    .line 40
    sget v1, Lcom/ts/MainUI/R$string;->can_car_info:I

    aput v1, v0, v5

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_consumption:I

    aput v1, v0, v2

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_hybrid_image:I

    aput v1, v0, v3

    .line 38
    sput-object v0, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mOptTitle:[I

    .line 46
    new-array v0, v4, [I

    .line 47
    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_service:I

    aput v1, v0, v5

    .line 48
    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_consumption:I

    aput v1, v0, v2

    .line 49
    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_hybrid:I

    aput v1, v0, v3

    .line 45
    sput-object v0, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mOptIco:[I

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;-><init>()V

    iput-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    .line 16
    return-void
.end method

.method private ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ToyotaGetHybrid(Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;)V

    .line 124
    iget-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->UpdateOnce:I

    if-eqz v0, :cond_1

    .line 126
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->Update:I

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->Update:I

    .line 129
    iget-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->fgHybrid:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(I)V

    .line 140
    :cond_1
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->ResetData(Z)V

    .line 147
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 84
    :pswitch_0
    const-class v1, Lcom/ts/can/toyota/spy/CanToyotaSpyBaseInfoActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 89
    :pswitch_1
    const-class v1, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 94
    :pswitch_2
    const-class v1, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x3

    .line 55
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget v2, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v2}, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->setContentView(I)V

    .line 59
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    .line 60
    .local v1, "sl":Lcom/ts/canview/CanScrollList;
    new-array v2, v6, [Lcom/ts/canview/CanItemIcoList;

    iput-object v2, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 70
    iget-object v2, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 74
    return-void

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    new-instance v3, Lcom/ts/canview/CanItemIcoList;

    sget-object v4, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mOptIco:[I

    aget v4, v4, v0

    sget-object v5, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mOptTitle:[I

    aget v5, v5, v0

    invoke-direct {v3, p0, v4, v5}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    aput-object v3, v2, v0

    .line 65
    iget-object v2, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v2, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mOptId:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v2, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 106
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 107
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 114
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyCarInfoActivity;->ResetData(Z)V

    .line 119
    return-void
.end method
