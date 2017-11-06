.class public Lcom/ts/can/CanPradoCarInfoActivity;
.super Lcom/ts/can/CanToyotaBaseActivity;
.source "CanPradoCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_CONSUMPTION:I = 0x0

.field public static final ITEM_DSP:I = 0x2

.field public static final ITEM_PARK_ASSIST:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanPradoCarInfoActivity"

.field protected static final TOTAL_ITEM:I = 0x3

.field public static final mOptId:[I


# instance fields
.field protected mOpt:[Lcom/ts/canview/CanItemTextBtnList;

.field private mSysData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSysInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 33
    aput v1, v0, v1

    .line 34
    aput v2, v0, v2

    .line 30
    sput-object v0, Lcom/ts/can/CanPradoCarInfoActivity;->mOptId:[I

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/CanToyotaBaseActivity;-><init>()V

    .line 26
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSysInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ToyotaSysInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanPradoCarInfoActivity;->mSysData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSysInfo;

    .line 15
    return-void
.end method

.method private ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/ts/can/CanPradoCarInfoActivity;->mSysData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSysInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ToyotaGetSysInfo(Lcom/lgb/canmodule/CanDataInfo$ToyotaSysInfo;)V

    .line 108
    iget-object v0, p0, Lcom/ts/can/CanPradoCarInfoActivity;->mSysData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSysInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSysInfo;->UpdateOnce:I

    if-eqz v0, :cond_2

    .line 110
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanPradoCarInfoActivity;->mSysData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSysInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSysInfo;->Update:I

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanPradoCarInfoActivity;->mSysData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSysInfo;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSysInfo;->Update:I

    .line 113
    iget-object v0, p0, Lcom/ts/can/CanPradoCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemTextBtnList;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/ts/can/CanPradoCarInfoActivity;->mSysData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSysInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSysInfo;->fgAmp:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(I)V

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    if-nez p1, :cond_1

    .line 121
    const/16 v0, 0x32

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->ToyotaQuery(II)V

    goto :goto_0
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/CanPradoCarInfoActivity;->ResetData(Z)V

    .line 132
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 70
    :pswitch_0
    const-class v1, Lcom/ts/can/CanToyotaTripPerMinActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanPradoCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 74
    :pswitch_1
    const-class v1, Lcom/ts/can/CanPradoParkAssistActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanPradoCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 78
    :pswitch_2
    const-class v1, Lcom/ts/can/CanPradoDspActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanPradoCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 67
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

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/ts/can/CanToyotaBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v2, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanPradoCarInfoActivity;->setContentView(I)V

    .line 45
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    .line 46
    .local v1, "sl":Lcom/ts/canview/CanScrollList;
    new-array v2, v6, [Lcom/ts/canview/CanItemTextBtnList;

    iput-object v2, p0, Lcom/ts/can/CanPradoCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemTextBtnList;

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 55
    iget-object v2, p0, Lcom/ts/can/CanPradoCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v4

    sget v3, Lcom/ts/MainUI/R$string;->can_consumption:I

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(I)V

    .line 56
    iget-object v2, p0, Lcom/ts/can/CanPradoCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemTextBtnList;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v3, "Park Assist"

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/ts/can/CanPradoCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v5

    const-string v3, "DSP"

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/ts/can/CanPradoCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v5

    invoke-virtual {v2, v4}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 60
    return-void

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/ts/can/CanPradoCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemTextBtnList;

    new-instance v3, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v3, p0, v4}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    aput-object v3, v2, v0

    .line 51
    iget-object v2, p0, Lcom/ts/can/CanPradoCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v0

    sget-object v3, Lcom/ts/can/CanPradoCarInfoActivity;->mOptId:[I

    aget v3, v3, v0

    invoke-virtual {v2, p0, v3}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 52
    iget-object v2, p0, Lcom/ts/can/CanPradoCarInfoActivity;->mOpt:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 90
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onPause()V

    .line 91
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onResume()V

    .line 98
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/CanPradoCarInfoActivity;->ResetData(Z)V

    .line 103
    return-void
.end method
